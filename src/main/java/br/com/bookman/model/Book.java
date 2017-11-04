package br.com.bookman.model;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.NumberFormat;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "BOOK")
@Data
@AllArgsConstructor
@NoArgsConstructor
@NamedQueries({
        @NamedQuery(name = "Book.findAll", query = "select b from Book b where b.visible = :visible"),
        @NamedQuery(name = "Book.findNews", query = "select b from Book b where b.visible =:visible order by b.dateInserted DESC"),
        @NamedQuery(name = "Book.findByGenre", query = "select b from Book b where b.genre.code =:codeGenre and b.visible =:visible")
    })
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

    @ManyToOne
    @JoinColumn(name = "genre", referencedColumnName = "code")
    private Genre genre;

    @Column
    @NumberFormat(style = NumberFormat.Style.CURRENCY)
    private Double price;

    @Column
    private String sinopsis;

    @Column
    private Integer pageQuantity;

    @Column
    private Date dateInserted;

    @Column
    private Boolean visible;

    @Column
    private String UrlFolder;

    public void subtractOneUnity(){
        this.quantity = this.quantity - 1;
    }
}
