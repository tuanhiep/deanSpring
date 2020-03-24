package nmsu.as.dean.controller.service;

import nmsu.as.dean.model.entity.Request;
import nmsu.as.dean.model.repository.RequestRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RequestService {
    @Autowired
    RequestRepository requestRepository;

    public List<Request> findAll() {
        return requestRepository.findAll();
    }

}
