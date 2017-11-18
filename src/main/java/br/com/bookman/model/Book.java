package br.com.bookman.model;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.NumberFormat;

import javax.persistence.*;
import javax.validation.ValidationException;
import javax.validation.constraints.NotNull;
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
    @NotNull(message = "ISBN não pode ser vazio")
    private String isbn;

    @Column
    @NotNull(message = "Título não pode ser vazio")
    @NotEmpty(message = "Titulo não pode estar vazio")
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

    public void validate(){

        if(this.title == null || this.title.isEmpty())
            throw new ValidationException("O título não pode estar vazio !");

        if(this.isbn == null || this.isbn.isEmpty())
            throw new ValidationException("O ISBN não pode estar vazio !");


        if(this.UrlFolder == null || this.UrlFolder.isEmpty())
            throw new ValidationException("Todo livro deve ter uma imagem, coloque o link da mesma !");

        if(this.price == null || this.price.isNaN())
            throw new ValidationException("Você precisa especificar um preço válido !");

    }
}
