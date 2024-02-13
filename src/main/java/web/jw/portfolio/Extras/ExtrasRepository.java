package web.jw.portfolio.Extras;

import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import web.jw.portfolio.History.History;


import java.util.List;

public interface ExtrasRepository extends JpaRepository<Extras, Long> {
    List<Extras> findByCategory(Integer category);

    List<Extras> findAll(Sort sort);

}
