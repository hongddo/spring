package ojt.keyword.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ojt.cmmn.model.KeywordModel;

@Service
public class NewTechDaoImpl implements NewTechDao{
	private static final Logger LOGGER = LogManager.getLogger(NewTechDao.class);
	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<KeywordModel> getNewTechListAll() {
		LOGGER.info("#### Get NewTech All ####");
		return sqlSession.selectList("keyword.selectNewTechAll");
	}

}
