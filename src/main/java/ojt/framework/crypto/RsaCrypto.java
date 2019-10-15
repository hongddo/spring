package ojt.framework.crypto;

import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.RSAPublicKeySpec;

import javax.crypto.Cipher;

/**
 * @author summit.park
 * RSA �˰����� ����Ͽ� ����Ű�� ��ȣȭ �� ����Ű�� ��ȣȭ�ϴ� ����� �����ϴ� Ŭ����<br>
 * �� Ŭ������ �ν��Ͻ��� Thread-Safe���� �����Ƿ� �ν��Ͻ��� �������� �ʾƾ� �Ѵ�.
 */
public class RsaCrypto {
	public static final String ALGORITHM="RSA";
	
	public static final String MODE = "ECB";
	
	public static final String PADDING_SCHEME ="PKCS1Padding";
	
	public static final String ALGORITHM_TRANSFORMATION = ALGORITHM + "/" + MODE + "/" + PADDING_SCHEME;
	
	public static final int KEY_BIT_LENGTH = 2048;
	
	public static final String RSA_PUBLIC_KEY = "__RSA_PUBLIC_KEY__" ;
	
	public static final String RSA_PRIVATE_KEY = "__RSA_PRIVATE_KEY__";
	
	public static final String RSA_PUBLIC_EXPONENT = "__RSA_PUBLIC_EXPONENT__";
	
	public static final String RSA_PRIVATE_EXPONENT = "__RSA_PRIVATE_EXPONENT__";
	
	public static final String RSA_MODULUS = "__RSA_MODULUS__";
	
	private static final int RSA_KEY_REPRESENTATION_RADIX = 16;
	
	private PublicKey publicKey; //����Ű
	
	private PrivateKey privateKey; //����Ű
	
	private RsaCrypto() {
		try {
			SecureRandom random = new SecureRandom();
			random.setSeed(System.currentTimeMillis());
			KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance(RsaCrypto.ALGORITHM);
			keyPairGenerator.initialize(RsaCrypto.KEY_BIT_LENGTH, random);
			KeyPair keyPair = keyPairGenerator.genKeyPair();
			this.publicKey = keyPair.getPublic();
			this.privateKey = keyPair.getPrivate();
		} catch (Exception e) {
			throw new IllegalStateException("Can't generate public/private key pair.", e);
		}
	}
	
	private RsaCrypto(PrivateKey privateKey) {
		if(privateKey == null) {
			throw new IllegalArgumentException("The private key should not be null");
		}
		this.privateKey = privateKey;
	}
	
	/**
	 * ��ȣȭ/��ȣȭ RsaCrypto ��ü ���� factory �޼ҵ�<br>
	 * - �����ϰ� ������ ����Ű/����Ű ���� ������ ��ü�� �����Ѵ�.<br>
	 * - ������ ��ü�� ����Ű/����Ű�� ��� �����ϹǷ� ����Ű�� ��ȣȭ �� ����Ű�� ��ȣȭ�Ѵ�.
	 * @return
	 */
	public static RsaCrypto getInstance() {
		return new RsaCrypto();
	}
	
	public PublicKey getPublicKey() {
		return this.publicKey;
	}
	
	public PrivateKey getPrivateKey() {
		return this.privateKey;
	}
	
	/**
	 * ����Ű�� ���� ��ȣȭ�Ѵ�.
	 * @param plainStr ��
	 * @return ��ȣȭ�� ���ڿ�
	 */
	public String encrypt(String plainStr) {
		if(plainStr == null) {
			throw new IllegalArgumentException("It's not allow This plain string is null.");
		}
		if(this.publicKey == null) {
			throw new IllegalArgumentException("Encryption by public key is not possible");
		}
		
		SecureRandom random = new SecureRandom();
		random.setSeed(System.currentTimeMillis());
		String encryptedStr = null;
		try {
			Cipher cipher = Cipher.getInstance(ALGORITHM_TRANSFORMATION);
			cipher.init(Cipher.ENCRYPT_MODE, publicKey, random);
			byte[] encrypted = cipher.doFinal(Base64.getBytesUtf8(plainStr));
			encryptedStr = Base64.newStringUtf8(Base64.encodeBase64(encrypted));
		} catch (Exception e) {
			throw new IllegalStateException("Encryption is failed.", e);
		}
		
		return encryptedStr;
	}
	
	public String decrypt(String encryptedStr) {
		if(encryptedStr == null) {
			throw new IllegalStateException("This encrypted string should not be null.");
		}
		if(this.privateKey == null) {
			throw new IllegalStateException("Decryption by private key is not possible.");
		}
		
		String decryptedStr = null;
		try {
			Cipher cipher = Cipher.getInstance(ALGORITHM_TRANSFORMATION);
			cipher.init(Cipher.DECRYPT_MODE, privateKey);
			byte[] decrypted = cipher.doFinal(Base64.decodeBase64(Base64.getBytesUtf8(encryptedStr)));
			decryptedStr = Base64.newStringUtf8(decrypted);
		} catch (Exception e) {
			throw new IllegalStateException("Decryption failed.", e);
		}
		return decryptedStr;
	}

	public static String decrypt(PrivateKey privateKey, String encryptedStr) {
		return new RsaCrypto(privateKey).decrypt(encryptedStr);
	}
	
	/**
	 * ����Ű�κ��� modulus�� �����Ͽ� 16���� ���ڿ� ���·� ��ȯ�Ѵ�.
	 * @param publicKey ����Ű
	 * @return ������ modulus (16���� ���ڿ� ����)
	 */
	public static String extractModulus(PublicKey publicKey) {
		if(publicKey == null) {
			throw new IllegalArgumentException("The public key should not be null");
		}
		
		String modulus = null;
		try {
			KeyFactory keyFactory = KeyFactory.getInstance(ALGORITHM);
			RSAPublicKeySpec rsaPublicKeySpec = (RSAPublicKeySpec) keyFactory.getKeySpec(publicKey, RSAPublicKeySpec.class);
			modulus = rsaPublicKeySpec.getModulus().toString(RSA_KEY_REPRESENTATION_RADIX);
		} catch(Exception e) {
			throw new IllegalStateException("Can't extract modulus from public key.", e);
		}
		
		return modulus;
	}
	
	public static String extractPublicExponent(PublicKey publicKey) {
		if(publicKey == null) {
			throw new IllegalArgumentException("The public key should not be null.");
		}
		
		String publicExponent = null;
		
		try {
			KeyFactory keyFactory = KeyFactory.getInstance(ALGORITHM);
			RSAPublicKeySpec rsaPublicKeySpect = (RSAPublicKeySpec) keyFactory.getKeySpec(publicKey, RSAPublicKeySpec.class);
			publicExponent = rsaPublicKeySpect.getPublicExponent().toString(RSA_KEY_REPRESENTATION_RADIX);
		} catch (Exception e) {
			throw new IllegalStateException("Can't extract pulbic exponent from public key.",e);
		}
		
		return publicExponent;
	}
}
