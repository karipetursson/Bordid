package project.service.Implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import project.persistence.entities.Booking;
import project.persistence.repositories.BookingRepository;
import project.service.BookingService;

import java.util.Collections;
import java.util.List;

/**
 * Created by IngviÞór on 27/10/2015.
 */
@Service
public class BookingServiceImplementation implements BookingService {

    // Instance Variables
    BookingRepository repository;

    // Dependency Injection
    @Autowired
    public BookingServiceImplementation(BookingRepository repository) {
        this.repository = repository;
    }

    @Override
    public Booking save(Booking booking) {
        return repository.save(booking);
    }

    @Override
    public void delete(Booking booking) {
        repository.delete(booking);
    }

    @Override
    public List<Booking> findByCustomerName(String customerName) {
        return repository.findAllByCustomerName(customerName);
    }

    @Override
    public List<Booking> findByRestaurantName(String customerName) {
        return repository.findAllByRestaurantName(customerName);
    }
}
