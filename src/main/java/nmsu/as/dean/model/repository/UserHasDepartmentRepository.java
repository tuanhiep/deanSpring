package nmsu.as.dean.model.repository;

import nmsu.as.dean.model.entity.UserHasDepartment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface UserHasDepartmentRepository extends JpaRepository<UserHasDepartment, Integer>, JpaSpecificationExecutor<UserHasDepartment> {

}