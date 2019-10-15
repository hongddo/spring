package ojt.login.controller;

import java.security.Key;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import ojt.cmmn.model.LoginModel;
import ojt.cmmn.model.ResponseModel;
import ojt.framework.crypto.RsaCrypto;
import ojt.framework.session.SessionManager;
import ojt.login.service.LoginService;
import ojt.util.WebSecurityUtil;

@Controller
public class LoginController {
	
	
	@Autowired
	LoginService loginService;
	
	private static final Logger LOGGER = LogManager.getLogger(LoginController.class);
		
	@RequestMapping("/login")
	public String init() {
		LOGGER.info("Called init.");
		return "/login/login";
	}
	
	@RequestMapping("/signin")
	public String initSignin() {
		LOGGER.info("로그인페이지 호출");
		return "/login/signin";
	}
	
	
	@ResponseBody
	@RequestMapping(value="/encrypt", method= RequestMethod.GET)
	public Map<String, String> encrypt(HttpSession session, ModelMap modelMap) {
		LOGGER.info("로그인기능작동.");
		Map<String, String> publicKeyInfo = new HashMap<String, String>();
		PublicKey publicKey = (PublicKey) SessionManager.getAttribute(session, RsaCrypto.RSA_PUBLIC_KEY);
		PrivateKey privateKey = (PrivateKey) SessionManager.getAttribute(session, RsaCrypto.RSA_PRIVATE_KEY);

		if(publicKey == null || privateKey == null) {
			Map<String, Key> asymmetricKey = WebSecurityUtil.generateAsymmetricKey();
			publicKey = (PublicKey) asymmetricKey.get(RsaCrypto.RSA_PUBLIC_KEY);
			privateKey = (PrivateKey) asymmetricKey.get(RsaCrypto.RSA_PRIVATE_KEY);
			SessionManager.setAttribute(session, RsaCrypto.RSA_PUBLIC_KEY, publicKey);
			SessionManager.setAttribute(session, RsaCrypto.RSA_PRIVATE_KEY, privateKey);
		}
			System.out.println("여긴?");
		publicKeyInfo.put(RsaCrypto.RSA_MODULUS,RsaCrypto.extractModulus(publicKey));
		publicKeyInfo.put(RsaCrypto.RSA_PUBLIC_EXPONENT, RsaCrypto.extractPublicExponent(publicKey));
		return publicKeyInfo; 
	}
	
	@ResponseBody
	@RequestMapping(value="/signin", method=RequestMethod.POST)
	public ResponseModel sigin(@RequestBody LoginModel loginModel, HttpServletRequest request, ModelMap modelMap) {
		LOGGER.info("Called Sigin.");
		ResponseModel responseModel = new ResponseModel();
		
		String encryptedPassword = loginModel.getPassword();
		
		PrivateKey privateKey = (PrivateKey) SessionManager.getAttribute(request, RsaCrypto.RSA_PRIVATE_KEY);
		String password = null;
		try {
			password = WebSecurityUtil.decrypt(privateKey, encryptedPassword);
		} catch (Exception e) {
			LOGGER.error("Failed to decrypt encrypted password", e);
			password = null;
		}
		
		if(password != null) {
			loginModel.setPassword(password);
//			loginServie.insertUser(loginModel);
			List<LoginModel> loginUserList = loginService.getUserInfo(loginModel.getEmail());
			if(loginUserList.size() > 0 ) {
				
				LOGGER.info("There are some users");
				if(loginUserList.get(0).getPassword().equals(loginModel.getPassword()))
				{
				responseModel.setSuccess("Y");
				responseModel.setData(loginUserList.get(0));
				SessionManager.setAttribute(request.getSession(), loginModel.getEmail(), request.getSession().getId());
				}
				else
					responseModel.setSuccess("N");					
			} else {
				responseModel.setSuccess("N");				
				LOGGER.info("There is no user.");
			}
		} else {
			responseModel.setSuccess("N");
			responseModel.setTrMsg("Error Password is null.");
		}
		
		return responseModel;
	}
		
	@RequestMapping(value="/body", method= RequestMethod.POST)
	public String body2( @RequestParam("email") String email,@RequestParam("password") String password, HttpServletRequest request, ModelMap modelMap) {
		LOGGER.info("Called Body.");
		Object sessionId = SessionManager.getAttribute(request.getSession(), email);
		LOGGER.info("###Session Data: ###" + sessionId);
		if(sessionId != null) {
			List<LoginModel> loginUserList = loginService.getUserInfo(email);
			modelMap.addAttribute("name", loginUserList.get(0).getName());
			return "/login/body";			
		} else {
			return "redirect:/web/signin";
		}
	}
}
