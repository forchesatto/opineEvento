<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Lista evento</title>
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

				<form id="eventoForm" action="<c:url value="/evento"/>" method="post" class="form-horizontal">
					<legend>Cadastrar novo Evento</legend>
					<p>
						<small>Todos os campos são obrogatórios.</small>
					</p>
					<div class="control-group">
						<label class="control-label" for="nome">Nome:</label>

						<div class="controls">
							<input id="nome" type="text" required name="evento.nome" value="${evento.nome}" autofocus maxlength="150" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="apelido">Apelido:</label>
						<div class="controls">
							<input id="apelido" type="text" required name="evento.apelido" value="${evento.apelido}" maxlength="150" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="dataInicial">Data inicial:</label>
						<div class="controls">
							<input id="dataInicial" type="date" required name="evento.dataInicial" placeholder="MM/DD/YYYY" pattern="(0[1-9]|1[0-2])\/(0[1-9]|[12][0-9]|3[01])\/\d{4}" value="${evento.dataFinal}" maxlength="150" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="dataFinal">Data final:</label>
						<div class="controls">
							<input id="dataFinal" type="date" required name="evento.dataFinal" placeholder="MM/DD/YYYY" pattern="(0[1-9]|1[0-2])\/(0[1-9]|[12][0-9]|3[01])\/\d{4}" value="${evento.dataFinal}" maxlength="150" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="coordenador">Coordenador</label>
						<div class="controls">
							<input id="coordenador" type="text" required name="evento.coordenador" value="${evento.coordenador}" maxlength="150" />
						</div>
					</div>

					<div class="form-actions">
						<button type="submit" class="btn btn-primary">Enviar</button>
					</div>
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