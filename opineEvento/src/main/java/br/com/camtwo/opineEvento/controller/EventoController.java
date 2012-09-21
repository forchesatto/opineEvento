package br.com.camtwo.opineEvento.controller;

import java.util.List;

import br.com.caelum.vraptor.Delete;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.com.camtwo.opineEvento.model.Evento;
import br.com.camtwo.opineEvento.repository.EventoRepository;

@Resource
@Path("/evento")
public class EventoController {

	private EventoRepository eventoRepository;
	private Result result;
	private Validator validator;
	
	public EventoController(EventoRepository eventoRepository, Result result, Validator validator) {
		this.eventoRepository = eventoRepository;
		this.result = result;
		this.validator = validator;
	}
	
	@Get
	@Path("/novo")
	public void formulario() {
	}

	@Post
	@Path("")
	public void adiciona(Evento evento) {
		salva(evento);
	}

	@Put
	@Path("/{evento.id}")
	public void altera(Evento evento) {
		salva(evento);
	}

	@Get
	@Path("/{id}")
	public Evento edita(Long id) {
		return eventoRepository.findOne(id);
	}

	@Delete
	@Path("/{id}")
	public void remove(Long id) {
		eventoRepository.delete(id);
		result.forwardTo(this).lista();
	}

	@Get
	@Path("")
	public List<Evento> lista() {
		return eventoRepository.findAll();
	}
	
	private void salva(Evento evento) {
		validator.validate(evento);
		validator.onErrorUsePageOf(this).formulario();
		eventoRepository.save(evento);
		result.redirectTo(this).lista();
	}
	
}
