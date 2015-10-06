package project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class FormController {

    // Method that returns the correct view for the URL /form
    // This handles the GET request for this URL
    // Notice the `method = RequestMethod.GET` part
    @RequestMapping(value = "/form", method = RequestMethod.GET)
    public String getFormView(Model model){

        // Return the view
        return "FormView";
    }

    // Method that receives the POST request on the URL /form
    // and Requests the Parameters from the form
    // Notice the `method = RequestMethod.POST` part
    @RequestMapping(value = "/form", method = RequestMethod.POST)
    public String getFormView(@RequestParam("firstInput") String firstInput,
                              @RequestParam("secondInput") String secondInput,
                              Model model){

        // Just print out into the console the received text input
        System.out.println("First input received: " + firstInput);
        System.out.println("Second input received: " + secondInput);

        // Add the strings together with a space between them
        // Just is not an important step, just creating a new variable
        String textSentFromBackend = firstInput + " " + secondInput;

        // Attach the new variable to the Model, that way you can access it
        // in the view when you return to the view
        model.addAttribute("textSentFromBackend", textSentFromBackend);

        // Return the view
        return "FormView";
    }
}