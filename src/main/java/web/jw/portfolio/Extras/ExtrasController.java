package web.jw.portfolio.Extras;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


import java.util.List;

@RestController
@RequestMapping("/api/extras")
public class ExtrasController {
    private final ExtrasRepository repository;
    private final ExtrasService service;

    public ExtrasController(ExtrasRepository repository, ExtrasService service) {
        this.repository = repository;
        this.service = service;
    }


    @GetMapping("/category/{category}")
    public List<Extras> getExtrasByCategory(@PathVariable("category") Integer category) {
        return service.getExtrasByCategory(category);
    }

    @GetMapping
    public List<Extras> getExtras(){
        return service.getExtras();
    }



}
