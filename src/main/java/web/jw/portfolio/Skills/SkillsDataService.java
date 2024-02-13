package web.jw.portfolio.Skills;

import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SkillsDataService {
    private final SkillsDataRepository repository;

    public SkillsDataService(SkillsDataRepository repository) {
        this.repository = repository;
    }

    public List<SkillsData> getSkillsByType(String type){
        return repository.findByType(type);

    }
}
