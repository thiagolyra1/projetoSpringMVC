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
			
			<p>� com grande entusiasmo que saudamos cada um de voc�s, que contribuem diariamente para o sucesso e crescimento desta institui��o dedicada � forma��o de profissionais na �rea de tecnologia e programa��o. Nosso compromisso em oferecer cursos de alta qualidade e alinhados �s necessidades do mercado s� � poss�vel gra�as ao esfor�o e � dedica��o de todos voc�s.</p>
			<p>A Universidade do SPRING MVC se orgulha de contar com uma equipe de colaboradores talentosos e comprometidos, que fazem a diferen�a na vida de nossos estudantes. Acreditamos que a educa��o � a chave para a inova��o e o progresso, e juntos, estamos construindo um ambiente acad�mico estimulante e inclusivo.</p>
			<p>Desejamos a todos um semestre repleto de realiza��es e sucesso. Continuemos a trabalhar com paix�o e determina��o, contribuindo para um futuro promissor na �rea da tecnologia. Obrigado por fazerem parte da nossa hist�ria e por seu empenho cont�nuo.</p>
			<p>Para continuar melhorando nossos servi�os e atendimento, pedimos que acessem o sistema de cadastro de estudantes clicando no bot�o abaixo. Sua colabora��o � essencial para mantermos nossos registros atualizados e fornecermos um suporte ainda mais eficiente.</p>
				
		<p><a href="formulario" class="btn btn-success" role="button">CADASTRAR ESTUDANTES</a></p>
		</div>
	</div>
</body>
</html>