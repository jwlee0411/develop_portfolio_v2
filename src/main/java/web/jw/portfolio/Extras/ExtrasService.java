package web.jw.portfolio.Extras;

import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;


import java.util.List;

@Service
public class ExtrasService {
    private final ExtrasRepository repository;

    public ExtrasService(ExtrasRepository repository) {
        this.repository = repository;
    }

    public List<Extras> getExtrasByCategory(Integer category){
        return repository.findByCategory(category);
    }

    public List<Extras> getExtras(){
        Sort sort = Sort.by(Sort.Direction.DESC, "category", "sequence");
        return repository.findAll(sort);
    }

}
