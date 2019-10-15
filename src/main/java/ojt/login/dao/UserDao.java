package ojt.login.dao;

import java.util.List;

import ojt.cmmn.model.LoginModel;

public interface UserDao {
	public void insertUser(LoginModel loginModel);

	public List<LoginModel> getUserInfo(String email);
}
