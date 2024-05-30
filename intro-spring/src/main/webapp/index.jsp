<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
				<li class="nav-item"><a class="nav-link" href="#">Universidade do SPRING MVC</a></li>
			</ul>
		</div>
	</nav>
	
	<br>
	<div class="container-md p-3 my-3 border">
		<div class="text-justify">
			<h2>Prezados colaboradores da Universidade do SPRING MVC,</h2>
			<br>
			
			<p>É com grande entusiasmo que saudamos cada um de vocês, que contribuem diariamente para o sucesso e crescimento desta instituição dedicada à formação de profissionais na área de tecnologia e programação. Nosso compromisso em oferecer cursos de alta qualidade e alinhados às necessidades do mercado só é possível graças ao esforço e à dedicação de todos vocês.</p>
			<p>A Universidade do SPRING MVC se orgulha de contar com uma equipe de colaboradores talentosos e comprometidos, que fazem a diferença na vida de nossos estudantes. Acreditamos que a educação é a chave para a inovação e o progresso, e juntos, estamos construindo um ambiente acadêmico estimulante e inclusivo.</p>
			<p>Desejamos a todos um semestre repleto de realizações e sucesso. Continuemos a trabalhar com paixão e determinação, contribuindo para um futuro promissor na área da tecnologia. Obrigado por fazerem parte da nossa história e por seu empenho contínuo.</p>
			<p>Para continuar melhorando nossos serviços e atendimento, pedimos que acessem o sistema de cadastro de estudantes clicando no botão abaixo. Sua colaboração é essencial para mantermos nossos registros atualizados e fornecermos um suporte ainda mais eficiente.</p>
				
		<p><a href="formulario" class="btn btn-success" role="button">CADASTRAR ESTUDANTES</a></p>
		</div>
	</div>
</body>
</html>