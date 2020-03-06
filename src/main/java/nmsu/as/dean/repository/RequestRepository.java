package nmsu.as.dean.repository;

import nmsu.as.dean.entity.Request;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface RequestRepository extends JpaRepository<Request, Integer>, JpaSpecificationExecutor<Request> {

}