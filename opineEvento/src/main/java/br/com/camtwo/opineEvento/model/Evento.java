package br.com.camtwo.opineEvento.model;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;

@Entity
public class Evento implements Serializable {

	private static final long serialVersionUID = -245443261421806716L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	@Column(length=150, nullable=false)
	private String nome;
	@Column(length=15, nullable=false)
	private String apelido;
	@Temporal(TemporalType.DATE)
	private Date dataInicial;
	@Temporal(TemporalType.DATE)
	private Date dataFinal;
	@Column(length=150, nullable=false)
	private String coordenador;

	@OneToMany(mappedBy="evento")
	private Set<Opiniao> opinioes;
	
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
	public String getApelido() {
		return apelido;
	}
	public void setApelido(String apelido) {
		this.apelido = apelido;
	}
	public Date getDataInicial() {
		return dataInicial;
	}
	public void setDataInicial(Date dataInicial) {
		this.dataInicial = dataInicial;
	}
	public Date getDataFinal() {
		return dataFinal;
	}
	public void setDataFinal(Date dataFinal) {
		this.dataFinal = dataFinal;
	}
	public String getCoordenador() {
		return coordenador;
	}
	public void setCoordenador(String coordenador) {
		this.coordenador = coordenador;
	}
	
	public Set<Opiniao> getOpinioes() {
		return opinioes;
	}
	public void setOpinioes(Set<Opiniao> opinioes) {
		this.opinioes = opinioes;
	}

	@Override
	public int hashCode() {
		return new HashCodeBuilder().append(this.getNome()).append(this.getApelido()).toHashCode();
	}
	
	@Override
	public boolean equals(Object obj) {
		if(!(obj instanceof Evento)){
			return false;
		}
		Evento evento = (Evento) obj;
		return new EqualsBuilder().append(evento.getNome(), this.getNome()).append(evento.getApelido(), this.getApelido()).isEquals();
	}
	
	
}
