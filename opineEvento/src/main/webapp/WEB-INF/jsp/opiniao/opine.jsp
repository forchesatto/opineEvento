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

	<h1>${evento.nome}</h1>

	<form id="opiniaoForm" action="<c:url value="/opiniao"/>" method="post">

		<input id="evento" name="opiniao.evento.id" type="hidden" value="${evento.id}"/>
		<input id="apelido" name="opiniao.evento.apelido" type="hidden" value="${evento.apelido}"/>

		<fieldset>
			<legend>Adicionar Opinião</legend>
			<select id="qualidade" name="opiniao.qualidade">
				<option value="Otimo">Ótimo</option>
				<option value="Bom">Bom</option>
				<option value="Regular">Regular</option>
				<option value="Pessimo">Péssimo</option>
			</select>
			
			
			
			<label for="opiniao">Opinião</label> 
			<input id="opiniao" type="text" name="opiniao.opiniao" autofocus maxlength="150" />
			
			<label for="nome">Nome</label> 
			<input id="nome" type="text" name="opiniao.nomePessoa" maxlength="150" />
			
			<button type="submit">Enviar</button>
		</fieldset>
	</form>
</body>
</html>