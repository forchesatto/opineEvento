package br.com.camtwo.opineEvento.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.camtwo.opineEvento.model.Opiniao;

public interface OpiniaoRepository extends JpaRepository<Opiniao, Long> {
	
	List<Opiniao> findByEventoApelido(String apelido);

}
