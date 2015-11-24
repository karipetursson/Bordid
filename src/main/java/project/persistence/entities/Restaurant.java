package project.persistence.entities;

import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import javax.validation.constraints.*;

/**
 * Created by IngviÞór on 27/10/2015.
 */
@Entity
@Table(name = "restaurant") // If you want to specify a table name, you can do so here
public class Restaurant {

    // Declare that this attribute is the id
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotEmpty
    private String name;

    @NotEmpty
    private String address;

    @NotEmpty
    private String location;

    private double rating;

    @NotEmpty
    private String shortDescription;

    private String longDescription;

    private String linkToHomepage;

    // Notice the empty constructor, because we need to be able to create an empty PostitNote to add
    // to our model so we can use it with our form
    public Restaurant() {
    }

    public Restaurant(String name, String address, String location, Double rating, String shortDescription, String longDescription, String linkToHomepage) {
        this.name = name;
        this.address = address;
        this.location = location;
        this.rating = rating;
        this.shortDescription = shortDescription;
        this.longDescription = longDescription;
        this.linkToHomepage = linkToHomepage;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLocation() { return location; }

    public void setLocation(String location) { this.location = location; }

    public double getRating() {
        return rating;
    }

    public void setRating(double rating) {
        this.rating = rating;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getShortDescription() {
        return shortDescription;
    }

    public void setShortDescription(String shortDescription) {
        this.shortDescription = shortDescription;
    }

    public String getLongDescription() {
        return longDescription;
    }

    public void setLongDescription(String longDescription) {
        this.longDescription = longDescription;
    }

    public String getLinkToHomepage() {
        return linkToHomepage;
    }

    public void setLinkToHomepage(String linkToHomepage) {
        this.linkToHomepage = linkToHomepage;
    }
}
