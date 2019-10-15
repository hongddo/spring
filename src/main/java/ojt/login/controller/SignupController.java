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
public class SignupController {
	
	
	@Autowired
	LoginService loginService;

	private static final Logger LOGGER = LogManager.getLogger(LoginController.class);
	
	@RequestMapping("/signup")
	public String initSignup() {
		LOGGER.info("Called signup.");
		return "/login/signup";
	}
	@RequestMapping("/sucsses")
	public String sucsses() {
		LOGGER.info("Called sucsses.");
		return "/main/sucsses";
	}
	
	@ResponseBody
	@RequestMapping(value="/signup", method=RequestMethod.POST)
	public ResponseModel signup(@RequestBody LoginModel loginModel, HttpServletRequest request, ModelMap modelMap) {
		LOGGER.info("Called Sigup.");
		System.out.println("회원가입 ㄱㄱ");
		System.out.println(loginModel.getEmail()+loginModel.getName());
		ResponseModel responseModel = new ResponseModel();
		List<LoginModel> logincheck = loginService.getUserInfo(loginModel.getEmail());
		if(logincheck.size()>0)
			responseModel.setSuccess("N");
		else {
			if (loginModel.getEmail() != null && loginModel.getName() != null && loginModel.getPassword() != null) {
				responseModel.setSuccess("Y");
				loginService.insertUser(loginModel);
				LOGGER.info("Success Register!");
			} else {
				responseModel.setSuccess("N");
				LOGGER.info("Fail Register");
			}
		}
		
		return responseModel;
	}
	
}
		

