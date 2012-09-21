<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista opiniões</title>
</head>
<body>
<body>
<a href="opine/${apelido}">Nova Opinião</a>
	<table>
		<thead>
			<tr>
				<th>Data</th>
				<th>Pessoa</th>
				<th>Qualidade</th>
				<th>Opinião</th>
				
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${opiniaoList}" var="opiniao">
				<tr>
					<td>${opiniao.dataPost}</td>
					<td>${opiniao.nomePessoa}</td>
					<td>${opiniao.qualidade.descricao}</td>
					<td>${opiniao.opiniao}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>