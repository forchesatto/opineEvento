package br.com.camtwo.opineEvento.controller;

import java.util.Date;
import java.util.List;

import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.com.camtwo.opineEvento.model.Opiniao;
import br.com.camtwo.opineEvento.repository.EventoRepository;
import br.com.camtwo.opineEvento.repository.OpiniaoRepository;

@Resource
@Path("/opiniao")
public class OpiniaoController {

	private OpiniaoRepository opiniaoRepository;
	private EventoRepository eventoRepository;
	private Result result;
	private Validator validator;
	
	public OpiniaoController(OpiniaoRepository opiniaoRepository, EventoRepository eventoRepository, Result result, Validator validator) {
		this.opiniaoRepository = opiniaoRepository;
		this.eventoRepository = eventoRepository;
		this.result = result;
		this.validator = validator;
	}
	
	@Get
	@Path("/opine/{apelido}")
	public void opine(String apelido) {
		result.include("evento", eventoRepository.findByApelido(apelido));
	}

	@Post
	@Path("")
	public void adiciona(Opiniao opiniao) {
		opiniao.setDataPost(new Date());
		opiniaoRepository.save(opiniao);
		result.redirectTo(this).lista(opiniao.getEvento().getApelido());
	}

	@Get
	@Path("/{apelido}")
	public List<Opiniao> lista(String apelido) {
		result.include("apelido", apelido);
		return opiniaoRepository.findByEventoApelido(apelido);
	}
	
}
