package project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import project.persistence.entities.Restaurant;
import project.service.RestaurantService;
import javax.validation.Valid;

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

    // Method that requests the all restaurants page
    // Displays all restaurants currently in the database
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

        // Get the searchString from the passed in "dummy" Restaurant object
        String searchString = restaurant.getName();

        // Find all restaurants matching the searchString
        model.addAttribute("restaurants", restaurantService.findByNameOrLocation(searchString, searchString));

        // Add a new Restaurant to the model (not sure if we need this)
        model.addAttribute("restaurant", new Restaurant());

        // Return the view
        return "restaurants/Restaurants";
    }

    // Method that requests the all restaurants page
    // Displays all restaurants currently in the database
    @RequestMapping(value = "/restaurants/top", method = RequestMethod.GET)
    public String topRestaurantsViewGet(Model model){

        // Add a new Restaurant to the model for the form
        model.addAttribute("restaurant",new Restaurant());

        // Get all restaurants in alphabetical order
        model.addAttribute("restaurants",restaurantService.findHigherRatedThan(4.0));

        // Return the view
        return "restaurants/Restaurants";
    }


    // Method that returns a view giving detailed info about a certain restaurant
    @RequestMapping(value = "/restaurantInfo/{id}", method = RequestMethod.GET)
    public String restaurantInfoViewGet(@PathVariable Long id,
                                             Model model){

        // Find the restaurant in the database with the passed in id
        Restaurant infoRestaurant = restaurantService.findById(id);

        // We can be sure that there is always just one restaurant with that id
        // We add that restaurant to the model
        model.addAttribute("restaurant", infoRestaurant);

        // Return the view
        return "restaurants/RestaurantInformation";
    }

    // Method that returns a view allowing users to add new restaurants to the system
    @RequestMapping(value = "/addNewRestaurant", method = RequestMethod.GET)
    public String addViewGet(Model model){

        // Add a new restaurant to the model
        model.addAttribute("restaurant",new Restaurant());

        // Return the view
         return "restaurants/NewRestaurant";
    }

    // Method that adds the passed in restaurant to the database
    @RequestMapping(value = "/addNewRestaurant", method = RequestMethod.POST)
    public String addViewPost(Model model, @Valid @ModelAttribute("restaurant") Restaurant restaurant, BindingResult result){

        // Send error messages to view
        if(result.hasErrors()){

            if(restaurant.getName().isEmpty()){
                model.addAttribute("nameError", "*Please enter a name");
            }

            if(restaurant.getAddress().isEmpty()){
                model.addAttribute("addressError", "*Please enter an address");
            }

            if(restaurant.getLocation().isEmpty()){
                model.addAttribute("locationError", "*Please enter a location");
            }

            // Add the passed in restaurant to the model
            // so the information is "saved"
            model.addAttribute("restaurant", restaurant);

            return "restaurants/NewRestaurant";
        }

        // If we have no errors we save the restaurant and go to restaurants page
        else{
            // Save the restaurant passed in from the form
            restaurantService.save(restaurant);

            // Add a new restaurant to the model
            model.addAttribute("restaurant", new Restaurant());

            model.addAttribute("confirmation", "Your restaurant has been added to the system");

            // Return the view
            return "restaurants/NewRestaurant";
        }
    }
}
