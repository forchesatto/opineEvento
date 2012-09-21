<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista evento</title>
</head>
<body>
<body>
	<table>
		<thead>
			<tr>
				<th>Código</th>
				<th>Nome</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${eventoList}" var="evento">
				<tr>
					<td>${evento.id}</td>
					<td><a href="<c:url value="/opiniao/${evento.apelido}"/>">${evento.nome}</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>