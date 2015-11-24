package project.controller;

import org.springframework.stereotype.Controller;;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

    // Method that requests the frontpage
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String homeViewGet() {

        // Return the view
        return "Index";
    }

    // Method that request the "about" page that includes info on the company
    @RequestMapping(value = "/about", method = RequestMethod.GET)
    public String aboutViewGet() {

        // Return the view
        return "About";
    }
}