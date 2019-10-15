package ojt.keyword.controller;


import java.util.List;

import org.apache.logging.log4j.*;
//import org.codehaus.jettison.json.JSONException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ojt.cmmn.model.KeywordModel;
import ojt.cmmn.model.RestModel;
import ojt.keyword.service.NewTechService;

@Controller
public class KeywordController {
	private static final Logger LOGGER = LogManager.getLogger(KeywordController.class);

	@Autowired
	NewTechService newTechService ; 
	
	@RequestMapping("/keyword/newtech")
	public String init() {
		LOGGER.info("Called keyword init.");
		return "/keyword/newtech";
	}
	/*
	@RequestMapping(value="/keylist", method=RequestMethod.POST)
	public void listKeyword(@ModelAttribute RestModel restModel, ModelMap model) throws JSONException {
		LOGGER.info("Called keylist for json");
		
		List<KeywordModel> keyModelList = newTechService.getNewTechListAll();
		
		model.addAttribute("ajaxtags", keyModelList);
	}*/

}
