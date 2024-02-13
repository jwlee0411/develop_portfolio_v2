package web.jw.portfolio.Projects;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Entity
@Table(name = "projects")
public class Projects {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private Integer imgs;

    private String title, description, duration, button_link, button_description, github_link, tags, year;

    private String duration_plus, text_1, text_2, text_3, text_4, text_5, specs;

    // todo
    public Projects() {


    }


}