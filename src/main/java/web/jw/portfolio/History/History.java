package web.jw.portfolio.History;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Entity
@Table(name = "history")
public class History {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private Integer year, month;

    private String data;

    public History() {

    }

    public History(String data, Integer id) {
         this.data = data;
       this.id = id;

    }

}