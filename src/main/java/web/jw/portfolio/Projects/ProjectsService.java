package web.jw.portfolio.Projects;

import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;


import java.util.List;

@Service
public class ProjectsService {
    private final ProjectsRepository repository;

    public ProjectsService(ProjectsRepository repository) {
        this.repository = repository;
    }

    public List<Projects> getProjectsByYear(String year){
        return repository.findByYear(year);

    }

    public List<Projects> getProjectsById(Integer id){
        return repository.findById(id);
    }

    public List<Projects> getProjects(){
        Sort sort = Sort.by(Sort.Direction.DESC, "id");
        return repository.findAll(sort);
    }

}
