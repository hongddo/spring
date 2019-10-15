package ojt.login.service;

import java.util.List;

import ojt.cmmn.model.LoginModel;

public interface LoginService {
	public void insertUser(LoginModel loginModel) ;

	public List<LoginModel> getUserInfo(String email);
}
