<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insertar Empleado</title>
</head>
<body>
    <form action="proceso.jsp">
    <table>
    <tr>
        <td>Código</td>
        <td><input type="number" name="codigo" value=""></td>
    </tr>
    <tr>
        <td>Apellidos</td>
        <td><input type="text" name="apellidos" value=""></td>
    </tr>
    <tr>
        <td>Nombres</td>
        <td><input type="text" name="nombres" value=""></td>
    </tr>
    <tr>
        <td>Sueldo</td>
        <td><input type="number" step="0.01" name="sueldo" value=""></td>
    </tr>
    <tr>
        <td>Cargo</td>
        <td><input type="text" name="cargo" value=""></td>
    </tr>
    <tr>
        <td><input type="submit" value="Insertar"></td>
        <td><input type="reset" value="Limpiar"></td>
    </tr>
    </table>
    <br>
    <a href="menu.jsp">Volver al menú</a>
    </form>
</body>
</html>
