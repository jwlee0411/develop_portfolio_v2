package web.jw.portfolio.History;

import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;


import java.util.List;

public interface HistoryRepository extends JpaRepository<History, Long> {
    List<History> findByYear(Integer year);

    List<History> findById(Integer id);

    List<History> findAll(Sort sort);

}
