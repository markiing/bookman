package br.com.bookman.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "PURCHASE")
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Purchase {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column
    private Integer code;

    @ManyToOne
    @JoinColumn(name = "book",referencedColumnName = "isbn")
    private Book book;

    @Temporal(TemporalType.TIMESTAMP)
    @Column
    private Date datePurchase;

    @Column
    private String reponsable;

    @Column
    private String observation;
}
