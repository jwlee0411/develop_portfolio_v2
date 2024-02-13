package web.jw.portfolio.Skills;

import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/skillsdata")
public class SkillsDataController {
    private final SkillsDataRepository repository;
    private final SkillsDataService service;

    // 생성자에서 SkillsDataService를 올바르게 초기화하기 위해 수정
    public SkillsDataController(SkillsDataRepository repository, SkillsDataService service) {
        this.repository = repository;
        this.service = service;
    }

    // @RequestParam 대신 @PathVariable 사용

    @GetMapping("/{type}")
    public List<SkillsData> getSkillsByType(@PathVariable String type) {
        return service.getSkillsByType(type);
    }
}
