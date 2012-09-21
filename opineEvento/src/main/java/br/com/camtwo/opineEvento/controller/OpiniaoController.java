package br.com.camtwo.opineEvento.controller;

import java.util.List;

import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.com.camtwo.opineEvento.model.Opiniao;
import br.com.camtwo.opineEvento.repository.OpiniaoRepository;

@Resource
@Path("/opiniao")
public class OpiniaoController {

	private OpiniaoRepository opiniaoRepository;
	private Result result;
	private Validator validator;
	
	public OpiniaoController(OpiniaoRepository opiniaoRepository, Result result, Validator validator) {
		this.opiniaoRepository = opiniaoRepository;
		this.result = result;
		this.validator = validator;
	}
	
	@Get
	@Path("/opine/{apelido}")
	public void opine(String apelido) {
		
	}

	@Post
	@Path("")
	public void adiciona(Opiniao opiniao) {
		opiniaoRepository.save(opiniao);
		result.redirectTo(this).lista(opiniao.getEvento().getApelido());
	}

	@Get
	@Path("/{apelido}")
	public List<Opiniao> lista(String apelido) {
		return opiniaoRepository.findByEventoApelido(apelido);
	}
	
}
