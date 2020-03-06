package nmsu.as.dean.model.repository;

import nmsu.as.dean.model.entity.Request;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface RequestRepository extends JpaRepository<Request, Integer>, JpaSpecificationExecutor<Request> {

}