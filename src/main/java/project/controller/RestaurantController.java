package project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import project.persistence.entities.Restaurant;
import project.service.RestaurantService;

/**
 * Created by IngviÞór on 27/10/2015.
 */
@Controller
public class RestaurantController {

    // Instance Variables
    RestaurantService restaurantService;

    // Dependency Injection
    @Autowired
    public RestaurantController(RestaurantService restaurantService) {
        this.restaurantService = restaurantService;
    }

    // Method that returns the correct view for the URL /postit
    // This handles the GET request for this URL
    // Notice the `method = RequestMethod.GET` part
    @RequestMapping(value = "/restaurants", method = RequestMethod.GET)
    public String restaurantViewGet(Model model){

        // Add a new Postit Note to the model for the form
        // If you look at the form in PostitNotes.jsp, you can see that we
        // reference this attribute there by the name `postitNote`.
        model.addAttribute("restaurant",new Restaurant());

        // Here we get all the Postit Notes (in a reverse order) and add them to the model
        model.addAttribute("restaurants",restaurantService.findAllReverseOrder());

        // Return the view
        return "restaurants/Restaurants";
    }
/*
    // Method that receives the POST request on the URL /postit
    // and receives the ModelAttribute("postitNote")
    // That attribute is the attribute that is mapped to the form, so here
    // we can save the postit note because we get the data that was entered
    // into the form.
    // Notice the `method = RequestMethod.POST` part
    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String restaurantViewPost(@PathVariable String name,
                                     Model model){

        // Get all Postit Notes with this name and add them to the model
        model.addAttribute("restaurants", restaurantService.findByName(name));

        // Add a new Postit Note to the model for the form
        // If you look at the form in PostitNotes.jsp, you can see that we
        // reference this attribute there by the name `postitNote`.
        model.addAttribute("restaurant", new Restaurant());

        // Return the view
        return "restaurants/Restaurants";
    }
*/
    // Method that returns the correct view for the URL /postit
    // This handles the GET request for this URL
    // Notice the `method = RequestMethod.GET` part
    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addViewGet(Model model){

        // Add a new Postit Note to the model for the form
        // If you look at the form in PostitNotes.jsp, you can see that we
        // reference this attribute there by the name `postitNote`.
        model.addAttribute("restaurant",new Restaurant());

        // Return the view
        return "restaurants/NewRestaurant";
    }


    // Method that receives the POST request on the URL /postit
    // and receives the ModelAttribute("postitNote")
    // That attribute is the attribute that is mapped to the form, so here
    // we can save the postit note because we get the data that was entered
    // into the form.
    // Notice the `method = RequestMethod.POST` part
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addViewPost(@ModelAttribute("restaurant") Restaurant restaurant,
                                     Model model){

        // Save the Postit Note that we received from the form
        restaurantService.save(restaurant);

        // Add a new Postit Note to the model for the form
        // If you look at the form in PostitNotes.jsp, you can see that we
        // reference this attribute there by the name `postitNote`.
        model.addAttribute("restaurant", new Restaurant());

        // Return the view
        return "restaurants/NewRestaurant";
    }

    // Method that returns the correct view for the URL /postit/{name}
    // The {name} part is a Path Variable, and we can reference that in our method
    // parameters as a @PathVariable. This enables us to create dynamic URLs that are
    // based on the data that we have.
    // This method finds all Postit Notes posted by someone with the requested {name}
    // and returns a list with all those Postit Notes.
    @RequestMapping(value = "/restaurants/{name}", method = RequestMethod.GET)
    public String restaurantGetNotesFromName(@PathVariable String name,
                                             Model model){

        // Get all Postit Notes with this name and add them to the model
        model.addAttribute("restaurants", restaurantService.findByName(name));

        // Add a new Postit Note to the model for the form
        // If you look at the form in PostitNotes.jsp, you can see that we
        // reference this attribute there by the name `postitNote`.
        model.addAttribute("restaurant", new Restaurant());

        // Return the view
        return "restaurants/Restaurants";
    }
}
