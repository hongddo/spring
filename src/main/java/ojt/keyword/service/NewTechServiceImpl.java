package ojt.keyword.service;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ojt.cmmn.model.KeywordModel;
import ojt.keyword.dao.NewTechDao;

@Service
public class NewTechServiceImpl implements NewTechService{
	private static final Logger LOGGER = LogManager.getLogger(NewTechService.class);

	@Autowired
	NewTechDao newTechDao ; 

	@Override
	public List<KeywordModel> getNewTechListAll() {
		LOGGER.info("#### getNewTechListAll ####");
		return newTechDao.getNewTechListAll();
	}
	
}
