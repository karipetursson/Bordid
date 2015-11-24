package project.controller;

import org.springframework.stereotype.Controller;;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import project.persistence.entities.Restaurant;

@Controller
public class HomeController {

    // Method that requests the frontpage
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String homeViewGet(Model model) {

        Restaurant fokkface = new Restaurant();

        fokkface.setName("");

        // Add a new Restaurant to the model for the form
        model.addAttribute("restaurant",fokkface);

        //model.addAttribute("name", fokkface.getName());

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
