package project.persistence.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import project.persistence.entities.Restaurant;

import java.util.List;

/**
 * Created by IngviÞór on 27/10/2015.
 */
public interface RestaurantRepository extends JpaRepository<Restaurant, Long> {

    Restaurant save(Restaurant restaurant);

    void delete(Restaurant restaurant);

    List<Restaurant> findAll();

    // If we need a custom query that maybe doesn't fit the naming convention used by the JPA repository,
    // then we can write it quite easily with the @Query notation, like you see below.
    // This method returns all PostitNotes where the length of the name is equal or greater than 3 characters.
    //@Query(value = "SELECT p FROM Restaurant p where length(p.name) >= 3 ")
    //List<Restaurant> findAllWithNameLongerThan3Chars();

    // Instead of the method findAllReverseOrder() in PostitNoteService.java,
    // We could have used this method by adding the words
    // ByOrderByIdDesc, which mean: Order By Id in a Descending order
    //
    List<Restaurant> findAllByOrderByNameAsc();

    Restaurant findOne(Long id);

    List<Restaurant> findByName(String name);

    List<Restaurant> findByNameAndLocation(String name, String location);

    Restaurant findById(Long id);
}