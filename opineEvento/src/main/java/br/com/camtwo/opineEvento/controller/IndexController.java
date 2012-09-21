package br.com.camtwo.opineEvento.controller;

import java.util.List;

import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Resource;
import br.com.camtwo.opineEvento.model.Evento;
import br.com.camtwo.opineEvento.repository.EventoRepository;

@Resource
public class IndexController {

	private EventoRepository eventoRepository;
	
	public IndexController(EventoRepository eventoRepository) {
		this.eventoRepository = eventoRepository;
	}
	
	@Get
	@Path("/")
	public List<Evento> index() {
		return eventoRepository.findAll();
	}
	
}
