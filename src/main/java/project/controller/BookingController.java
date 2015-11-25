package project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import project.persistence.entities.Booking;
import project.service.BookingService;

import javax.validation.Valid;

/**
 * Created by IngviÞór on 27/10/2015.
 */
@Controller
public class BookingController {

    // Instance Variable
    BookingService bookingService;

    // Dependency Injection
    @Autowired
    public BookingController(BookingService bookingService) {
        this.bookingService = bookingService;
    }


    // Returns the view for /bookings
    // Just a search bar
    @RequestMapping(value = "/bookings", method = RequestMethod.GET)
    public String BookingsViewGet(Model model){

        // Add a new Booking to the model
        model.addAttribute("booking",new Booking());

        // Return the view
        return "bookings/Bookings";
    }

    // Method that searches within the bookings view
    // We get restaurantName and use that to search both columns in the database
    @RequestMapping(value = "/bookings", method = RequestMethod.POST)
    public String bookingsViewPost(@ModelAttribute("booking") Booking booking,
                                      Model model){

        // Get the search string from the passed in Booking
        String searchName = booking.getRestaurantName();

        // Use that name to find correct bookings
        model.addAttribute("bookings", bookingService.findByCustomerNameOrRestaurantName(searchName, searchName));

        // Return the view
        return "bookings/Bookings";
    }


    // Method that adds a booking to the database and returns confirmation view
    @RequestMapping(value = "/bookRestaurant", method = RequestMethod.POST)
    public String bookingConfirmationViewGet(Model model,@Valid @ModelAttribute("booking") Booking booking, BindingResult result){

        if(result.hasErrors()) {

            if(booking.getCustomerName() == "") {
                model.addAttribute("customerNameError", "*Please enter a name");
            }

            if(booking.getEmail() == "") {
                model.addAttribute("emailError", "*Please enter email");
            }

            if(booking.getDate() == "") {
                model.addAttribute("dateError", "*Please select date");
            }

            model.addAttribute("booking", booking);

            return "bookings/BookRestaurant";
        }

        else {

            // Save the passed in booking
            bookingService.save(booking);

            model.addAttribute("confirmation", "You have booked a table at ");

            model.addAttribute("bookedName", booking.getRestaurantName());

            // Add the passed in booking to the model again
            model.addAttribute("booking", new Booking());

            // Return the view
            return "bookings/BookRestaurant";
        }
    }

    // Method that returns a view to book the currently selected restaurant
    @RequestMapping(value = "/bookRestaurant/{name}", method = RequestMethod.GET)
    public String bookRestaurantViewGet(@PathVariable String name,
                                        Model model){

        // Add the passed in name to the model
        model.addAttribute("name", name);

        // Add a new Booking to the model
        model.addAttribute("booking", new Booking());

        // Return the view
        return "bookings/BookRestaurant";
    }
}
