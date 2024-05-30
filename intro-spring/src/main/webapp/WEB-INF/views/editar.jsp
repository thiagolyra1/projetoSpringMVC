<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Universidade do SPRING MVC</title>
<spring:url var="css" value="/static/bootstrap.css" />
<link type="text/css" rel="stylesheet" href="${css}" />
</head>
<body>
	<nav class="navbar navbar-expand-md bg-dark navbar-dark">
		<a class="navbar-brand" href="#"> Universidade do SPRING MVC</a>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="#">Edição de estudante</a></li>
			</ul>
		</div>
	</nav>
	
	<br>
	
	<div class="container">
		<div class="row">
        	<div class="col-lg-6 col-md-6 col-sm-6 container justify-content-center card">
            	<h1 class="text-center">Editar estudante</h1>
	            	<div class="card-body">
					<form:form method="POST" modelAttribute="estudante">
					<div class="form-group">
						<label>Nome: </label> 
						<form:input path="nome" class="form-control" placeholder="Digite o nome do estudante..."/>
					</div>
					
					<div class="form-group">
						<label>Curso: </label> 
						<form:input path="curso" class="form-control" placeholder="Digite o curso do estudante..."/>
					</div>
					<div class="form-group">
						<label>Taxa de matrícula: </label> 
						<form:input path="taxa" class="form-control" placeholder="Digite o valor em reais..."/>
					</div>
					
					<br>
					
					<div class="box-footer">
						<form:button class="btn btn-success">Enviar</form:button>
					</div>
					
					</form:form>
					</div>
			</div>
		</div>
	</div>
</body>
</html>