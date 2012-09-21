<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Lista evento</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="<c:url value="/css/bootstrap.css"/>" rel="stylesheet">
<link href="<c:url value="/css/bootstrap-responsive.css"/>" rel="stylesheet">
</head>
<body>
	<div class="navbar navbar-inverse">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a class="btn btn-navbar" data-target=".nav-collapse" data-toggle="collapse"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
				</a> <a class="brand" href="/opineEvento">OpineEvento</a>
				<div class="nav-collapse subnav-collapse">
					<ul class="nav">
						<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Eventos<b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="/opineEvento/evento/novo">Novo Evento</a></li>
								<li><a href="/opineEvento/evento">Eventos</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Opiniões<b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="/opineEvento/opiniao/opine/opine">Nova Opinião</a></li>
								<li><a href="/opineEvento/opiniao/opine">Opiniões</a></li>
							</ul></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<c:forEach items="${errors}" var="error">
					<div class="alert">
						<button type="button" class="close" data-dismiss="alert">×</button>
						${error.category} - ${error.message}
					</div>
				</c:forEach>
				<h1>${evento.nome}</h1>

				<form id="opiniaoForm" action="<c:url value="/opiniao"/>" method="post" class="form-horizontal">

					<input id="evento" name="opiniao.evento.id" type="hidden" value="${evento.id}" /> <input id="apelido" name="opiniao.evento.apelido" type="hidden" value="${evento.apelido}" />

					<legend>Adicionar Opinião</legend>
					<div class="control-group">
						<label class="control-label" for="qualidade">Qualidade</label>
						<div class="controls">
							<select id="qualidade" name="opiniao.qualidade">
								<option value="Otimo">Ótimo</option>
								<option value="Bom">Bom</option>
								<option value="Regular">Regular</option>
								<option value="Pessimo">Péssimo</option>
							</select>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="opiniao">Opinião</label>
						<div class="controls">
							<input id="opiniao" type="text" required name="opiniao.opiniao" autofocus maxlength="150" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" required for="nome">Nome</label>
						<div class="controls">
							<input id="nome" type="text" name="opiniao.nomePessoa" maxlength="150" />
						</div>
					</div>

					<div class="form-actions">
						<button type="submit" class="btn btn-primary">Enviar</button>
						</div>
				</form>
			</div>
		</div>
	</div>

	<script src="<c:url value="/js/widgets.js"/>"></script>
	<script src="<c:url value="/js/jquery.js"/>"></script>
	<script src="<c:url value="/js/prettify.js"/>"></script>
	<script src="<c:url value="/js/bootstrap-transition.js"/>"></script>
	<script src="<c:url value="/js/bootstrap-alert.js"/>"></script>
	<script src="<c:url value="/js/bootstrap-modal.js"/>"></script>
	<script src="<c:url value="/js/bootstrap-dropdown.js"/>"></script>
	<script src="<c:url value="/js/bootstrap-scrollspy.js"/>"></script>
	<script src="<c:url value="/js/bootstrap-tab.js"/>"></script>
	<script src="<c:url value="/js/bootstrap-tooltip.js"/>"></script>
	<script src="<c:url value="/js/bootstrap-popover.js"/>"></script>
	<script src="<c:url value="/js/bootstrap-button.js"/>"></script>
	<script src="<c:url value="/js/bootstrap-collapse.js"/>"></script>
	<script src="<c:url value="/js/bootstrap-carousel.js"/>"></script>
	<script src="<c:url value="/js/bootstrap-typeahead.js"/>"></script>
	<script src="<c:url value="/js/application.js"/>"></script>
</body>
</html>