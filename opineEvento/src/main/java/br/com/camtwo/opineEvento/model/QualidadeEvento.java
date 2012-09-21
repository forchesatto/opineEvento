package br.com.camtwo.opineEvento.model;

public enum QualidadeEvento {
	Otimo("Ótimo"), Bom("Bom"), Regular("Regular"), Pessimo("Péssimo");
	
	QualidadeEvento(String descricao){
		this.descricao = descricao;
	}
	
	private String descricao;
	

	public String getDescricao() {
		return descricao;
	}

}
