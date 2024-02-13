package web.jw.portfolio.History;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


import java.util.List;

@RestController
@RequestMapping("/api/history")
public class HistoryController {
    private final HistoryRepository repository;
    private final HistoryService service;

    public HistoryController(HistoryRepository repository, HistoryService service) {
        this.repository = repository;
        this.service = service;
    }


    @GetMapping("/year/{year}")
    public List<History> getHistoryByYear(@PathVariable("year") Integer year) {
        return service.getHistoryByYear(year);
    }

    @GetMapping("/id/{id}")
    public List<History> getHistoryById(@PathVariable("id") Integer id){
        return service.getHistoryById(id);
    }

    @GetMapping
    public List<History> getHistory(){
        return service.getHistory();
    }


}
