package br.com.bookman.model;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "GENRE")
@NamedQueries({@NamedQuery(name = "Genre.findAll", query = "select b from Genre b")})
public class Genre {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column
    private Integer code;

    @Column
    private String genre;
}
