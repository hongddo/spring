package ojt.main.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	private static final Logger LOGGER = LogManager.getLogger(MainController.class);
	
	@RequestMapping("/main")
	public String init() {
		LOGGER.info("Called main");
		return "/main/main";
	}
	
	@RequestMapping("/maintwo")
	public String init22() {
		LOGGER.info("Called main");
		return "/main/main";
	}
}
