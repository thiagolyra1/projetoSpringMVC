package br.com.unipe.aula.model;

import java.io.Serializable;

import javax.persistence.*;

@Entity
@Table(name="estudantes")
public class Estudante implements Serializable {
	
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(nullable=false, length=100)
	private String nome;
	@Column(nullable=false, length=100)
	private String curso;
	@Column(nullable=false)
	private Integer taxa;
	
	public Estudante() {}
	public Estudante(Long id, String nome, String curso) {
		super();
		this.id = id;
		this.nome = nome;
		this.curso = curso;
	}
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCurso() {
		return curso;
	}
	public void setCurso(String curso) {
		this.curso = curso;
	}
	public Integer getTaxa() {
		return taxa;
	}
	public void setTaxa(Integer taxa) {
		this.taxa = taxa;
	}
	
	

}
