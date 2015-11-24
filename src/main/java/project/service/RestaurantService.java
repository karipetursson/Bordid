package project.service;

import project.persistence.entities.Restaurant;

import java.util.List;

public interface RestaurantService {

    /**
     * Save a {@link Restaurant}
     * @param restaurant {@link Restaurant} to be saved
     * @return {@link Restaurant} that was saved
     */
    Restaurant save(Restaurant restaurant);

    /**
     * Delete {@link Restaurant}
     * @param restaurant {@link Restaurant} to be deleted
     */
    void delete(Restaurant restaurant);

    /**
     * Get all {@link Restaurant}s
     * @return A list of {@link Restaurant}s
     */
    List<Restaurant> findAll();

    /**
     * Get all {@link Restaurant}s in a reverse order
     * @return A reversed list of {@link Restaurant}s
     */
    List<Restaurant> findAllReverseOrder();

    List<Restaurant> findByNameAndLocation(String name, String location);

    List<Restaurant> findAllAlphabetical();

    /**
     * Find a {@link Restaurant} based on {@link Long id}
     * @param id {@link Long}
     * @return A {@link Restaurant} with {@link Long id}
     */
    Restaurant findOne(Long id);

    /**
     * Find all {@link Restaurant}s with {@link String name}
     * @param name {@link String}
     * @return All {@link Restaurant}s with the {@link String name} passed
     */
    List<Restaurant> findByName(String name);

    Restaurant findById(Long id);
}
