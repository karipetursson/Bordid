package project.service;

import project.persistence.entities.Booking;

import java.util.List;

public interface BookingService {

    Booking save(Booking booking);

    void delete(Booking booking);

    List<Booking> findByCustomerName(String customerName);

    List<Booking> findByRestaurantName(String restaurantName);

    List<Booking> findByCustomerNameOrRestaurantName(String customerName, String restaurantName);

    List<Booking> findAll();

}
