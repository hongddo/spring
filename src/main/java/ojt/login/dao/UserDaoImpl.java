package ojt.login.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.logging.log4j.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ojt.cmmn.model.LoginModel;

@Service
public class UserDaoImpl implements UserDao{
	private static final Logger LOGGER = LogManager.getLogger(UserDao.class);
	@Autowired
	SqlSession sqlSession ;
	
	@Override
	public void insertUser(LoginModel loginModel) {
		LOGGER.info("#### Insert Query #####");
		System.out.println("인서트중");
		sqlSession.insert("signup.insertUser", loginModel);
	}

	@Override
	public List<LoginModel> getUserInfo(String email) {
		LOGGER.info("#### Select User Info ####");
		return sqlSession.selectList("login.selectUser", email);
	}
}
