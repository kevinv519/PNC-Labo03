<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Información del estudiante</title>
<style>
    body {
        font-family: 'Open Sans', 'sans-serif';
        margin: 1.5em;
    }
</style>
</head>
<body>
    <h1>Resumen de información</h1>
    <p><strong>Carnet: </strong>${student.carnet}</p>
    <p><strong>Nombre: </strong>${student.name}</p>
    <p><strong>Apellido: </strong>${student.lastName}</p>
    <p><strong>Fecha de nacimiento: </strong> ${student.birthDate} </p>
    <p><strong>Es mayor de edad:</strong>
    	<c:if test="${hasLegalAge}">Sí</c:if>
    	<c:if test="${!hasLegalAge}">No</c:if> 
    </p>
    <c:set var="phonesLength" value="${fn:length(student.phones)}" />
    <p><strong>Teléfonos: </strong>
        <c:if test="${phonesLength == 0}">No tiene teléfonos</c:if>
        <c:if test="${phonesLength > 0}">
            </p><p><ul>
            <c:forEach items="${student.phones}" var="item">
                <li>${item}</li>
            </c:forEach>
            </ul>
        </c:if>
    </p>
</body>
</html>