package ojt;

import java.util.List;
import java.util.Locale;
 
//import javax.inject.Inject;
 
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
 
import ojt.cmmn.model.LoginModel;
import ojt.login.service.LoginService;
 
/**
 * Handles requests for the application home page.
 */
@Controller
public class Sqltesing {
    
    private static final Logger logger = LogManager.getLogger(Sqltesing.class);
    
   // @Inject
    private LoginService service;
    
    /**
     * Simply selects the home view to render by returning its name.
     */
    @RequestMapping(value = "/wows", method = RequestMethod.GET)
    public String home(Locale locale, Model model) throws Exception{
 
        logger.info("home");
        
        List<LoginModel> memberList = service.getUserInfo("hongseo@naver.com");
        System.out.println("여까진됌");
        model.addAttribute("memberList", memberList);
        System.out.println("자료:"+model.toString());
        return "/home";
    }
    
}

