<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="datos.Libreria" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Resultado de la B�squeda</title>
</head>
<body>
<%
    String apellido = request.getParameter("apellido");
    Libreria lib = new Libreria();
    ResultSet datos = lib.buscarPorApellidos(apellido);
%>
<h3>Resultado de b�squeda</h3>
    <table>
    	<tr>
            <td>C�DIGO</td>
            <td>APELLIDOS</td>
            <td>NOMBRES</td>
            <td>SUELDO</td>
            <td>CARGO</td>
        </tr>
    <% while(datos.next()){ %>
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
    <a href="menu.jsp">Volver al men�</a>
</body>
</html>
