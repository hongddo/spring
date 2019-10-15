package ojt.login.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ojt.cmmn.model.LoginModel;
import ojt.login.dao.UserDao;

@Service
public class LoginServiceImpl implements LoginService{
	@Autowired
	UserDao userDao;
	
	@Override
	public void insertUser(LoginModel loginModel) {
		userDao.insertUser(loginModel);
	}

	@Override
	public List<LoginModel> getUserInfo(String email) {
		return userDao.getUserInfo(email);
	}
}
