<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Buscar Empleado</title>
</head>
<body>
    <form action="resultado.jsp">
    <table>
    <tr>
        <td>Apellido del Empleado</td>
        <td><input type="text" name="apellido" value=""></td>
    </tr>
    <tr>
        <td><input type="submit" value="Buscar"></td>
        <td><input type="reset" value="Limpiar"></td>
    </tr>
    </table>
    <br>
    <a href="menu.jsp">Volver al menú</a>
    </form>
</body>
</html>
