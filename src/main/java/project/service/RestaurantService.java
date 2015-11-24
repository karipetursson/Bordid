package project.service;

import project.persistence.entities.Restaurant;

import java.util.List;

public interface RestaurantService {

    Restaurant save(Restaurant restaurant);

    void delete(Restaurant restaurant);

    List<Restaurant> findAll();

    List<Restaurant> findAllAlphabetical();

    List<Restaurant> findByName(String name);

    List<Restaurant> findByLocation(String name);

    List<Restaurant> findByNameOrLocation(String name, String location);

    List<Restaurant> findHigherRatedThan(double rating);

    Restaurant findById(Long id);
}
