package project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import project.persistence.entities.Booking;
import project.persistence.entities.Restaurant;
import project.service.BookingService;

/**
 * Created by IngviÞór on 27/10/2015.
 */
@Controller
public class BookingController {

    // Instance Variables
    BookingService bookingService;

    // Dependency Injection
    @Autowired
    public BookingController(BookingService BookingService) {
        this.bookingService = BookingService;
    }

    // Method that returns the correct view for the URL /postit
    // This handles the GET request for this URL
    // Notice the `method = RequestMethod.GET` part
    @RequestMapping(value = "/bookings", method = RequestMethod.GET)
    public String BookingsViewGet(Model model){

        // Add a new Postit Note to the model for the form
        // If you look at the form in PostitNotes.jsp, you can see that we
        // reference this attribute there by the name `postitNote`.
        model.addAttribute("Booking",new Booking());

        // Here we get all the Postit Notes (in a reverse order) and add them to the model
        //model.addAttribute("Bookings",BookingService.findAllAlphabetical());

        // Return the view
        return "bookings/Bookings";
    }


    // Method that searches within the Booking view

    @RequestMapping(value = "/bookings", method = RequestMethod.POST)
    public String BookingsViewPost(@ModelAttribute("Booking") Booking booking,
                                      Model model){

        String searchName = booking.getCustomerName();

        model.addAttribute("Bookings", bookingService.findByCustomerName(searchName));

        // Add a new Postit Note to the model for the form
        // If you look at the form in PostitNotes.jsp, you can see that we
        // reference this attribute there by the name `postitNote`.
        model.addAttribute("Booking", new Booking());

        // Return the view
        return "Bookings/Bookings";
    }


    // Method that returns the correct view for the URL /postit/{name}
    // The {name} part is a Path Variable, and we can reference that in our method
    // parameters as a @PathVariable. This enables us to create dynamic URLs that are
    // based on the data that we have.
    // This method finds all Postit Notes posted by someone with the requested {name}
    // and returns a list with all those Postit Notes.
    @RequestMapping(value = "/bookRestaurant/{name}_{location}", method = RequestMethod.GET)
    public String BookingGetNotesFromName(@PathVariable String name, @PathVariable String location,
                                             Model model){

        // Get all Postit Notes with this name and add them to the model
        //model.addAttribute("Bookings", BookingService.findByName(name));

        // Add a new Postit Note to the model for the form
        // If you look at the form in PostitNotes.jsp, you can see that we
        // reference this attribute there by the name `postitNote`.
        model.addAttribute("Booking", new Booking());

        // Return the view
        return "bookings/BookRestaurant";
    }


    // Method that returns the correct view for the URL /postit
    // This handles the GET request for this URL
    // Notice the `method = RequestMethod.GET` part
    @RequestMapping(value = "/addNewBooking", method = RequestMethod.GET)
    public String addViewGet(Model model){

        // Add a new Postit Note to the model for the form
        // If you look at the form in PostitNotes.jsp, you can see that we
        // reference this attribute there by the name `postitNote`.
        model.addAttribute("Booking",new Booking());

        // Return the view
        return "bookings/NewBooking";
    }

    @RequestMapping(value = "/bookingConfirmation", method = RequestMethod.POST)
    public String bookingConfirmationViewGet(@ModelAttribute("booking") Booking booking,
                                   Model model){

        bookingService.save(booking);

        // Add a new Postit Note to the model for the form
        // If you look at the form in PostitNotes.jsp, you can see that we
        // reference this attribute there by the name `postitNote`.
        model.addAttribute("booking", booking);

        // Return the view
        return "bookings/BookingConfirmed";
    }

    @RequestMapping(value = "/bookRestaurant/{name}", method = RequestMethod.GET)
    public String bookRestaurantViewGet(@PathVariable String name,
                                        Model model){

        model.addAttribute("name", name);

        model.addAttribute("booking", new Booking());

        // Return the view
        return "bookings/BookRestaurant";
    }
}
