package nmsu.as.dean.repository;

import nmsu.as.dean.entity.UserHasDepartment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface UserHasDepartmentRepository extends JpaRepository<UserHasDepartment, Integer>, JpaSpecificationExecutor<UserHasDepartment> {

}