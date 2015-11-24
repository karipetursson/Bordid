package project.persistence.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import project.persistence.entities.Restaurant;

import java.util.List;

/**
 * Created by IngviÞór on 27/10/2015.
 */
public interface RestaurantRepository extends JpaRepository<Restaurant, Long> {

    // Save restaurant to the database
    Restaurant save(Restaurant restaurant);

    // Delete restaurant from the database
    void delete(Restaurant restaurant);

    // Find all restaurants in the database
    List<Restaurant> findAll();

    // Find all restaurants and order them by name
    List<Restaurant> findAllByOrderByNameAsc();

    // Find all restaurants with the passed in name
    List<Restaurant> findByName(String name);

    // Find all restaurants with rating higher or equal to 4
    List<Restaurant> findByRatingGreaterThan(double rating);

    // Find a restaurant with the passed in id
    Restaurant findById(Long id);

    List<Restaurant> findByLocation(String name);

    List<Restaurant> findAllByNameOrLocation(String name, String location);
}