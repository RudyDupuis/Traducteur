<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Traducteur</title>
</head>
<body>
	<fmt:setBundle basename="fr.eni.traducteur.language.lang" var="r" />

	<h1>
		<fmt:message key="title" bundle="${r}" />
	</h1>

	<p>
		<fmt:message key="hello_msg" bundle="${r}">
			<fmt:param value="${cookie.name.value}" />
		</fmt:message>
	</p>

	<form method="post" action="translate">
		<select name="first_language">
			<option value="fr">fr</option>
			<option value="en">en</option>
			<option value="es">es</option>
			<option value="de">de</option>
		</select> <select name="second_language">
			<option value="en">en</option>
			<option value="fr">fr</option>
			<option value="es">es</option>
			<option value="de">de</option>
		</select> <input type="submit">
	</form>

	<c:set var="first_locale" value="fr" />
	<c:set var="second_locale" value="en" />
	
	<c:if test="${first_language != null}">
		<c:set var="first_locale" value="${first_language}" />
	</c:if>
	<c:if test="${second_language != null}">
		<c:set var="second_locale" value="${second_language}" />
	</c:if>


	<table>
		<tr>
			<th><fmt:message key="initial_lang" bundle="${r}" /></th>
			<th><fmt:message key="target_lang" bundle="${r}" /></th>
		</tr>

		<tr>
			<td><fmt:setLocale value="${first_locale}" /> <fmt:setBundle
					basename="fr.eni.traducteur.language.translator" var="trans" /> <fmt:message
					key="hello" bundle="${trans}" /></td>
			<td><fmt:setLocale value="${second_locale}" /> <fmt:setBundle
					basename="fr.eni.traducteur.language.translator" var="trans" /> <fmt:message
					key="hello" bundle="${trans}" /></td>
		</tr>
		<tr>
			<td><fmt:setLocale value="${first_locale}" /> <fmt:setBundle
					basename="fr.eni.traducteur.language.translator" var="trans" /> <fmt:message
					key="goodbye" bundle="${trans}" /></td>
			<td><fmt:setLocale value="${second_locale}" /> <fmt:setBundle
					basename="fr.eni.traducteur.language.translator" var="trans" /> <fmt:message
					key="goodbye" bundle="${trans}" /></td>
		</tr>
		<tr>
			<td><fmt:setLocale value="${first_locale}" /> <fmt:setBundle
					basename="fr.eni.traducteur.language.translator" var="trans" /> <fmt:message
					key="what_is_your_name" bundle="${trans}" /></td>
			<td><fmt:setLocale value="${second_locale}" /> <fmt:setBundle
					basename="fr.eni.traducteur.language.translator" var="trans" /> <fmt:message
					key="what_is_your_name" bundle="${trans}" /></td>
		</tr>
	</table>
</body>
</html>
