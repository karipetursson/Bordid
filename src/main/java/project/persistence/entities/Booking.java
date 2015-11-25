package project.persistence.entities;

import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;

/**
 * Created by IngviÞór on 27/10/2015.
 */
@Entity
@Table(name = "booking") // If you want to specify a table name, you can do so here
public class Booking {

    // Declare that this attribute is the id
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotEmpty
    private String restaurantName;
    @NotEmpty
    private String customerName;
    @NotEmpty
    private String email;
    @NotEmpty
    private String date;

    // Notice the empty constructor, because we need to be able to create an empty PostitNote to add
    // to our model so we can use it with our form
    public Booking() {
    }

    public Booking(String customerName, String restaurantName, String email, String date) {
        this.customerName = customerName;
        this.restaurantName = restaurantName;
        this.email = email;
        this.date = date;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCustomerName() {
        return this.customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getRestaurantName() { return this.restaurantName; }

    public void setRestaurantName(String restaurantName) { this.restaurantName = restaurantName; }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
}
