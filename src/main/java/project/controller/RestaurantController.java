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


    @RequestMapping(value = "/restaurants", method = RequestMethod.GET)
    public String restaurantsViewGet(Model model){

        // Add a new Restaurant to the model for the form
        model.addAttribute("restaurant",new Restaurant());

        // Get all restaurants in alphabetical order
        model.addAttribute("restaurants",restaurantService.findAllAlphabetical());

        // Return the view
        return "restaurants/Restaurants";
    }


    // Method that searches within the restaurant view
    @RequestMapping(value = "/restaurants", method = RequestMethod.POST)
    public String restaurantsViewPost(@ModelAttribute("restaurant") Restaurant restaurant,
                              Model model){

        // Get the name from the passed in "dummy" Restaurant object
        String searchName = restaurant.getName();

        // Use that name to find all restaurants with the same name
        model.addAttribute("restaurants", restaurantService.findByName(searchName));

        // I'm not sure if we need this.. Tried commenting out and nothing changed
        model.addAttribute("restaurant", new Restaurant());

        // Return the view
        return "restaurants/Restaurants";
    }


    // Method that gives detailed info about a certain restaurant
    @RequestMapping(value = "/restaurantInfo/{name}", method = RequestMethod.GET)
    public String restaurantInfoViewGet(@PathVariable String name,
                                             Model model){

        // Get all Postit Notes with this name and add them to the model
        model.addAttribute("restaurants", restaurantService.findByName(name));

        // Add a new Postit Note to the model for the form
        // If you look at the form in PostitNotes.jsp, you can see that we
        // reference this attribute there by the name `postitNote`.
        model.addAttribute("restaurant", new Restaurant());

        // Return the view
        return "restaurants/RestaurantInfo";
    }


    // Method that returns the correct view for the URL /postit
    // This handles the GET request for this URL
    // Notice the `method = RequestMethod.GET` part
    @RequestMapping(value = "/addNewRestaurant", method = RequestMethod.GET)
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

    @RequestMapping(value = "/addNewRestaurant", method = RequestMethod.POST)
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
}
