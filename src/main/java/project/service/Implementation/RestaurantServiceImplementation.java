package project.service.Implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import project.persistence.entities.Restaurant;
import project.persistence.repositories.RestaurantRepository;
import project.service.RestaurantService;

import java.util.Collections;
import java.util.List;

/**
 * Created by IngviÞór on 27/10/2015.
 */
@Service
public class RestaurantServiceImplementation implements RestaurantService {

    // Instance Variables
    RestaurantRepository repository;

    // Dependency Injection
    @Autowired
    public RestaurantServiceImplementation(RestaurantRepository repository) {
        this.repository = repository;
    }

    @Override
    public Restaurant save(Restaurant restaurant) {
        return repository.save(restaurant);
    }

    @Override
    public void delete(Restaurant restaurant) {
        repository.delete(restaurant);
    }

    @Override
    public List<Restaurant> findAll() {
        return repository.findAll();
    }

    @Override
    public List<Restaurant> findAllAlphabetical() { return repository.findAllByOrderByNameAsc();}

    @Override
    public List<Restaurant> findByName(String name) {
        return repository.findByName(name);
    }

    @Override
    public List<Restaurant> findByLocation(String name) {
        return repository.findByLocation(name);
    }

    @Override
    public List<Restaurant> findByNameOrLocation(String name, String location) {
        return repository.findAllByNameOrLocation(name, location);
    }

    @Override
    public List<Restaurant> findHigherRatedThan(double rating) {
        return repository.findByRatingGreaterThan(rating);
    }

    @Override
    public Restaurant findById(Long id){
        return repository.findById(id);
    }

    @Override
    public List<Restaurant> checkName(String name) {
        return repository.findByName(name);
    }
}
