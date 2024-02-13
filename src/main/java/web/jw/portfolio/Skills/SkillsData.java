package web.jw.portfolio.Skills;

import jakarta.persistence.*;
@Entity
@Table(name = "skills_data")
public class SkillsData {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    private String data;
    private String type;

    public SkillsData() {
        //todo

    }

    public SkillsData(String data, String type) {
        this.data = data;
        this.type = type;
    }

    public void setData(String data) {
        this.data = data;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getData() {
        return data;
    }

    public String getType() {
        return type;
    }
}