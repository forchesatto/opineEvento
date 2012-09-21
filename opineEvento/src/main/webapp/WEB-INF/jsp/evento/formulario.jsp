<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>

<c:forEach items="${errors}" var="error">
	${error.category} - ${error.message} <br>
</c:forEach>

	<form id="eventoForm" action="<c:url value="/evento"/>" method="post">

		<fieldset>
			<legend>Adicionar Evento</legend>
			teste
			<label for="nome">Nome:</label> 
			<input id="nome" type="text" name="evento.nome" value="${evento.nome}" autofocus maxlength="150" />
			
			<label for="apelido">Nome:</label> 
			<input id="apelido" type="text" name="evento.apelido" value="${evento.apelido}" maxlength="150" />
			
			<label for="dataInicial">Data inicial:</label> 
			<input id="dataInicial" type="text" name="evento.dataInicial" value="${evento.dataFinal}" maxlength="150" />
			
			<label for="dataFinal">Data final:</label> 
			<input id="dataFinal" type="text" name="evento.dataFinal" value="${evento.dataFinal}" maxlength="150" />
			
			
			<label for="coordenador">Coordenador</label> 
			<input id="coordenador" type="text" name="evento.coordenador" value="${evento.coordenador}" maxlength="150" />
			
			
			<button type="submit">Enviar</button>
		</fieldset>
	</form>
</body>
</html>