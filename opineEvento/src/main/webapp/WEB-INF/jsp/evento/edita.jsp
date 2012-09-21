<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>VRaptor Blank Project</title>
</head>
<body>

	<form action="<c:url value="/evento/${evento.id}"/>" method="post">
		<fieldset>
			<legend>Editar Evento</legend>
			
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
			
			<button type="submit" name="_method" value="PUT">Enviar</button>
		</fieldset>
	</form>

</body>
</html>