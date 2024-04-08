<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="datos.Libreria" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listado de Empleados</title>
</head>
<body>
<%
	Libreria lib=new Libreria();
	ResultSet datos=lib.consulta("select * from Empleado");
%>
<h3>Listado de Empleados</h3>
	<table>
    	<tr>
            <td>CÓDIGO</td>
            <td>APELLIDOS</td>
            <td>NOMBRES</td>
            <td>SUELDO</td>
            <td>CARGO</td>
        </tr>
		<% while(datos.next()) {%>
			<tr>
				<td><%=datos.getInt(1) %></td>
				<td><%=datos.getString(2) %></td>
				<td><%=datos.getString(3) %></td>
				<td><%=datos.getDouble(4) %></td>
				<td><%=datos.getString(5) %></td>
			</tr>
		<%} %>
	</table>
	<br>
    <a href="menu.jsp">Volver al menú</a>
</body>
</html>
