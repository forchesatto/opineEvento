package br.com.camtwo.opineEvento.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.camtwo.opineEvento.model.Evento;

public interface EventoRepository extends JpaRepository<Evento, Long> {

}
