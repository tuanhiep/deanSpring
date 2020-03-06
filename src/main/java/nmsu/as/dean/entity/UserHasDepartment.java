package nmsu.as.dean.entity;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "User_has_Department")
@Data
public class UserHasDepartment implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @Column(name = "User_id", insertable = false, nullable = false)
    private Integer userId;

    @Id
    @Column(insertable = false, name = "Department_id", nullable = false)
    private Integer departmentId;

    
}