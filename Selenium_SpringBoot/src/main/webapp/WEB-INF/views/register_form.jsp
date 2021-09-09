<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Registration Form</title>
<style type="text/css">
	label {
		display: inline-block;
		width: 200px;
		margin: 5px;
		text-align: left;
	}
	input[type=text], input[type=password], select {
		width: 200px;	
	}
	input[type=radio] {
		display: inline-block;
		margin-left: 45px;
	}
	input[type=checkbox] {
		display: inline-block;
		margin-right: 190px;
	}	
	
	button {
		padding: 10px;
		margin: 10px;
	}
</style>
</head>
<body>
	<div align="center">
		<h2>Prueba Selenium</h2>
		<form:form action="register" method="post" modelAttribute="user">
			<form:label path="name">Nombre completo:</form:label>
			<form:input path="name"/><br/>
			
			<form:label path="email">E-mail:</form:label>
			<form:input path="email"/><br/>
			
			<form:label path="password">Password:</form:label>
			<form:password path="password"/><br/>		

			<form:label path="gender">Genero:</form:label>
			<form:radiobutton path="gender" value="Hombre"/>Hombre
			<form:radiobutton path="gender" value="Mujer"/>Mujer<br/>
			
			<form:label path="profession">Profesión:</form:label>
			<form:select path="profession" items="${professionList}" /><br/>

			<form:label path="married">¿Casado?</form:label>
			<form:checkbox path="married"/><br/>

			<form:label path="note">Observaciones</form:label>
			<form:textarea path="note" cols="25" rows="5"/><br/>

			<form:button>Guardar</form:button>
		</form:form>
	</div>
</body>
</html>