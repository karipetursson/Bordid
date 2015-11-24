package project.persistence.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import project.persistence.entities.Booking;

import java.util.List;

/**
 * Created by IngviÞór on 27/10/2015.
 */
public interface BookingRepository extends JpaRepository<Booking, Long> {

    // Save booking to the database
    Booking save(Booking booking);

    // Delete booking from the database
    void delete(Booking booking);

    // Find all bookings that have either the passed in customerName or restaurantName
    List<Booking> findAllByCustomerNameOrRestaurantName(String customerName, String restaurantName);

    // Find all bookings with the passed in customerName
    List<Booking> findAllByCustomerName(String customerName);

    // Find all bookings with the passed in restaurantName
    List<Booking> findAllByRestaurantName(String restaurantName);

    // Find all bookings in the database
    List<Booking> findAll();
}
