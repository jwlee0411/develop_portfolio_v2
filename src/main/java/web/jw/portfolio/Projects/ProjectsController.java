package web.jw.portfolio.Projects;

import org.springframework.web.bind.annotation.*;
import web.jw.portfolio.History.History;

import java.util.List;

@RestController
@RequestMapping("/api/projects")
public class ProjectsController {
    private final ProjectsRepository repository;
    private final ProjectsService service;

    public ProjectsController(ProjectsRepository repository, ProjectsService service) {
        this.repository = repository;
        this.service = service;
    }


    @GetMapping("/year/{year}")
    public List<Projects> getProjectsByYear(@PathVariable("year") String year) {
        return service.getProjectsByYear(year);
    }

    @GetMapping("/id/{id}")
    public List<Projects> getProjectsById(@PathVariable("id") Integer id){
        return service.getProjectsById(id);
    }

    @GetMapping
    public List<Projects> getProjects(){
        return service.getProjects();
    }
}
