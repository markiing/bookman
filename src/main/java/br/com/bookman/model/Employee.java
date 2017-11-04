package br.com.bookman.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Calendar;

@Entity
@Table(name = "EMPLOYEE")
@Data
@AllArgsConstructor
@NoArgsConstructor
@NamedQueries({@NamedQuery(name = "Employee.findByIdentifierAndPassword", query = "select e from Employee e where e.identifier =:identifier and e.password =:password and e.enabled = true")})
public class Employee {

    @Column
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer code;

    @Column
    private String name;

    @Column
    private String identifier;

    @Column
    private String password;

    @Column
    private String sex;

    @Column
    private Boolean enabled;

    @Column
    private Calendar birthDate;
}
