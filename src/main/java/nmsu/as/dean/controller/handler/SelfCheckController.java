package nmsu.as.dean.controller.handler;

import nmsu.as.dean.controller.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("name")
public class SelfCheckController {

    @RequestMapping(value = {"/corona"}, method = RequestMethod.GET)
    public String selfCheck(ModelMap model) {
        return "selfcheck/selfCheck";
    }


}