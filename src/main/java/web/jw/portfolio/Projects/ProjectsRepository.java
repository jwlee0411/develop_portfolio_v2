package web.jw.portfolio.Projects;

import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface ProjectsRepository extends JpaRepository<Projects, Long> {
    List<Projects> findByYear(String year);

    List<Projects> findById(Integer id);

    List<Projects> findAll(Sort sort);

}
