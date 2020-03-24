package nmsu.as.dean.model.entity;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.time.LocalDateTime;

@Entity
@Data
@Table(name = "Request")
public class Request implements Serializable {
    private static final long serialVersionUID = 1L;

    @Column(name = "amount", nullable = false)
    private String amount;

    @Column(name = "commitment")
    private String commitment;

    @Column(name = "course", nullable = false)
    private String course;

    @Column(name = "date_created")
    private LocalDateTime dateCreated;

    @Column(name = "date_revision")
    private LocalDateTime dateRevision;

    @Column(name = "de")
    private Integer de;

    @Column(name = "Department_id", nullable = false)
    private Integer departmentId;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", insertable = false, nullable = false)
    private Integer id;

    @Column(name = "instructor", nullable = false)
    private String instructor;

    @Column(name = "motivation")
    private String motivation;

    @Column(name = "note")
    private String note;

    @Column(name = "priority")
    private String priority;

    @Column(name = "section", nullable = false)
    private String section;

    @Column(name = "size", nullable = false)
    private String size;

    
}