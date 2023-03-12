<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Gerenciamento de Clientes</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<style>
		body {
			padding-top: 50px;
			background-color: #f2f2f2;
		}
		h1 {
			text-align: center;
			font-size: 2.5em;
			margin-bottom: 50px;
			color: #555;
		}
		form {
			max-width: 500px;
			margin: 0 auto;
			background-color: #fff;
			padding: 20px;
			border-radius: 5px;
			box-shadow: 0 5px 10px rgba(0,0,0,0.1);
		}
		fieldset {
			margin-bottom: 20px;
			border: none;
		}
		label {
			display: block;
			font-size: 1.2em;
			margin-bottom: 5px;
			color: #555;
		}
		input[type="text"]{
			width: 100%;
			padding: 10px;
			border: none;
			border-radius: 3px;
			box-shadow: 0 1px 0 rgba(0,0,0,0.1);
			background-color: #f5f5f5;
			color: #333;
			font-size: 1.1em;
			margin-bottom: 10px;
		}
		button[type="submit"] {
			background-color: #3cba54;
			color: #fff;
			border: none;
			border-radius: 3px;
			padding: 10px 20px;
			font-size: 1.1em;
			cursor: pointer;
			transition: background-color 0.2s ease;
		}
		button[type="submit"]:hover {
			background-color: #369c48;
		}
	</style>
</head>
<body>
	<header>
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span> 
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>  
					</button>
					<a class="navbar-brand" href="#">Gerenciamento de Clientes</a>
				</div>
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="<%=request.getContextPath()%>/listagem">Clientes Cadastrados</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
<c:if test="${cliente != null}">
	<form action="${pageContext.request.contextPath}/atualizar" method="post">   
</c:if>
<c:if test="${cliente == null}">
	<form action="${pageContext.request.contextPath}/inserir" method="post">
</c:if>
<c:if test="${cliente != null}">
	<input type="hidden" name="matricula" value="<c:out value='${cliente.matricula}' />" />
</c:if>

<fieldset class="form-group">
	<label>Cliente</label> 
	<input type="text" value="<c:out value='${cliente.nome}' />" class="form-control" name="nome" required>
</fieldset>

<fieldset class="form-group">
	<label>Endereco</label> 
	<input type="text" value="<c:out value='${cliente.endereco}' />" class="form-control" name="endereco" required>
</fieldset>

<fieldset class="form-group">
	<label>Cidade</label> 
	<input type="text" value="<c:out value='${cliente.cidade}' />" class="form-control" name="cidade" required>
</fieldset>

<fieldset class="form-group">
	<label>Estado</label> 
	<input type="text" value="<c:out value='${cliente.estado}' />" class="form-control" name="estado" required>
</fieldset>

<fieldset class="form-group">
	<label>Modalidade</label> 
	<input type="text" value="<c:out value='${cliente.modalidade}' />" class="form-control" name="modalidade" required>
</fieldset>

<button type="submit" class="btn btn-success btn-sm">Salvar</button>

		
</html>
