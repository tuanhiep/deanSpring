package nmsu.as.dean.model.entity;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Data
@Table(name = "User_has_Department")
@IdClass(UserHasDepartment.class)
public class UserHasDepartment implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @Column(insertable = false, name = "Department_id", nullable = false)
    private Integer departmentId;

    @Id
    @Column(name = "User_id", insertable = false, nullable = false)
    private Integer userId;

    
}