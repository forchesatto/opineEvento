package br.com.camtwo.opineEvento.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;

@Entity
public class Opiniao implements Serializable {

	private static final long serialVersionUID = -2086956207574075962L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long codigo;
	@Column(length=1000, nullable=false)
	private String opiniao;
	@Temporal(TemporalType.TIMESTAMP)
	private Date dataPost;
	@Column(length=150)
	private String nomePessoa;
	@ManyToOne
	private Evento evento;
	
	@Enumerated(EnumType.STRING)
	@Column(name = "qualidade", nullable = false)
	private QualidadeEvento qualidade;

	public Long getCodigo() {
		return codigo;
	}

	public void setCodigo(Long codigo) {
		this.codigo = codigo;
	}

	public String getOpiniao() {
		return opiniao;
	}

	public void setOpiniao(String opiniao) {
		this.opiniao = opiniao;
	}

	public QualidadeEvento getQualidade() {
		return qualidade;
	}

	public void setQualidade(QualidadeEvento qualidade) {
		this.qualidade = qualidade;
	}

	public Date getDataPost() {
		return dataPost;
	}

	public void setDataPost(Date dataPost) {
		this.dataPost = dataPost;
	}

	public String getNomePessoa() {
		return nomePessoa;
	}

	public void setNomePessoa(String nomePessoa) {
		this.nomePessoa = nomePessoa;
	}
	public Evento getEvento() {
		return evento;
	}

	public void setEvento(Evento evento) {
		this.evento = evento;
	}

	@Override
	public int hashCode() {
		return new HashCodeBuilder().append(this.getCodigo()).toHashCode();
	}

	@Override
	public boolean equals(Object obj) {
		if (!(obj instanceof Opiniao)) {
			return false;
		}
		Opiniao evento = (Opiniao) obj;
		return new EqualsBuilder().append(evento.getCodigo(), this.getCodigo())
				.isEquals();
	}

}
