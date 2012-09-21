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
				<h1>Eventos</h1>
				<a href="/opineEvento/evento/novo" class="btn btn-primary"><i class="icon-plus-sign icon-white"></i> Novo evento</a>
				<table class="table table-striped">
					<thead>
						<tr>
							<th>#</th>
							<th>Nome</th>
							<th>Opções</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${eventoList}" var="evento">
							<tr>
								<td>${evento.id}</td>
								<td>${evento.nome}</td>

								<td><form style="margin: 0;" action="<c:url value="/evento/${evento.id}"/>" method="post">
										<a href="<c:url value="/evento/${evento.id}"/>" class="btn btn-info btn-mini"> Editar</a>

										<button class="btn btn-danger btn-mini" name="_method" value="DELETE">Remover</button>
									</form></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
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