package web.jw.portfolio.Skills;

import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface SkillsDataRepository extends CrudRepository<SkillsData, Long> {
    List<SkillsData> findByType(String type);
}
