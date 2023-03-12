<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>Gerenciamento de Usuários</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"/>
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark bg-dark">
			<div>
				<a href="" class="navbar-brand">Gerenciamento de Clientes</a>
			</div>
			<ul class="navbar-nav">
				<li class="nav-item">
					<a href="<%=request.getContextPath()%>/listagem" class="nav-link">Clientes</a>
				</li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-12">
				<h3 class="d-inline-block">Listagem de Clientes</h3>
				<a href="<%=request.getContextPath()%>/novo" class="btn btn-success btn-sm float-right">Adicionar</a>
			</div>
		</div>
		<br>
		<div class="table-responsive">
			<table class="table table-hover table-sm">
				<thead class="thead-dark">
					<tr>
						<th scope="col">Matrícula</th>
						<th scope="col">Cliente</th>
						<th scope="col">Endereço</th>
						<th scope="col">Cidade</th>
						<th scope="col">Estado</th>
						<th scope="col">Modalidade</th>
						<th scope="col">Ações</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="cliente" items="${listarCliente}">
						<tr>
							<td><c:out value="${cliente.matricula}" /></td>
							<td><c:out value="${cliente.nome}" /></td>
							<td><c:out value="${cliente.endereco}" /></td>
							<td><c:out value="${cliente.cidade}" /></td>
							<td><c:out value="${cliente.estado}" /></td>
							<td><c:out value="${cliente.modalidade}" /></td>
							<td>
								<a href="editar?matricula=<c:out value='${cliente.matricula}' />" class="btn btn-primary btn-sm">Editar</a>
								<a href="deletar?matricula=<c:out value='${cliente.matricula}' />" class="btn btn-danger btn-sm">Excluir</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

</body>
</html> 
