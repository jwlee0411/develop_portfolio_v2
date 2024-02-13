package web.jw.portfolio.History;

import org.springframework.stereotype.Service;

import java.util.List;
import org.springframework.data.domain.Sort;

@Service
public class HistoryService {
    private final HistoryRepository repository;

    public HistoryService(HistoryRepository repository) {
        this.repository = repository;
    }

    public List<History> getHistoryByYear(Integer year){
        return repository.findByYear(year);
    }

    public List<History> getHistory(){
        // Sort 객체를 생성하여 year과 month를 기준으로 내림차순 정렬
        Sort sort = Sort.by(Sort.Direction.DESC, "year", "month");
        return repository.findAll(sort);
    }

    public List<History> getHistoryById(Integer id){
        return repository.findById(id);
    }
}
