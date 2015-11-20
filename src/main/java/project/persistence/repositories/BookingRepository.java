package project.persistence.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import project.persistence.entities.Booking;

import java.util.List;

/**
 * Created by IngviÞór on 27/10/2015.
 */
public interface BookingRepository extends JpaRepository<Booking, Long> {

    Booking save(Booking restaurant);

    void delete(Booking restaurant);

    List<Booking> findAllByCustomerName(String customerName);

    List<Booking> findAllByRestaurantName(String restaurantName);
}
