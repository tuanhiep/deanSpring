package nmsu.as.dean.controller.handler;

import nmsu.as.dean.controller.service.DepartmentService;
import nmsu.as.dean.controller.service.RequestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("name")
public class DepartmentController {

    @Autowired
    DepartmentService service;

    @RequestMapping(value = "/department", method = RequestMethod.GET)
    public String showRequestPage(ModelMap model) {

        service.findAll();
        return "welcome";
    }

}