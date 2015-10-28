package project.persistence.entities;

import javax.persistence.*;

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
    private String name;
    private String note;

    // Notice the empty constructor, because we need to be able to create an empty PostitNote to add
    // to our model so we can use it with our form
    public Restaurant() {
    }

    public Restaurant(String name, String note) {
        this.name = name;
        this.note = note;
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

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    // This is for easier debug.
    @Override
    public String toString() {
        return String.format(
                "Restaurant[name=%s, note=%s]",
                name,note);
    }
}
