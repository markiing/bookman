package br.com.bookman.model;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "BOOK")
@Data
@AllArgsConstructor
@NoArgsConstructor
@NamedQueries({@NamedQuery(name = "Book.findAll", query = "select b from Book b where b.visible = :visible")})
public class Book {

    @Id
    @Column(name = "ISBN")
    private String isbn;

    @Column
    private String title;

    @Column
    private Integer quantity;

    @Column
    private Integer yearPublished;

    @Column
    private String genre;

    @Column
    private Double price;

    @Column
    private String sinopsis;

    @Column
    private Date dateInserted;

    @Column
    private Boolean visible;
}
