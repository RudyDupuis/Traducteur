<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Traducteur</title>
</head>
<body>
	<fmt:setBundle basename="fr.eni.traducteur.language.lang" var="r"/>

	<h1><fmt:message key="title" bundle="${r}"/></h1>
	
	<form method="POST" action="home" >
		<label for="name"><fmt:message key="input_name" bundle="${r}"/></label>
		<input type="text" id="name" name="name"/>
		<input type="submit"/>
	</form>

</body>
</html>