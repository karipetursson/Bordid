package project.service;

import project.persistence.entities.Restaurant;

import java.util.List;

public interface RestaurantService {

    Restaurant save(Restaurant restaurant);

    void delete(Restaurant restaurant);

    List<Restaurant> findAll();

    List<Restaurant> findAllAlphabetical();

    List<Restaurant> findByName(String name);

    Restaurant findById(Long id);
}
