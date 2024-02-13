package web.jw.portfolio.Extras;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Entity
@Table(name = "extras")
public class Extras {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private Integer sequence, category;

    private String title, date, description, button1_link, button2_link, button1_description, button2_description;

    public Extras() {

    }

}