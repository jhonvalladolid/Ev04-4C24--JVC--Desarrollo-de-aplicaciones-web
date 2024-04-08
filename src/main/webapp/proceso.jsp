<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="datos.Libreria" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Proceso de Inserción</title>
</head>
<body>
<%
    int codigo = Integer.parseInt(request.getParameter("codigo"));
    String apellidos = request.getParameter("apellidos");
    String nombres = request.getParameter("nombres");
    double sueldo = Double.parseDouble(request.getParameter("sueldo"));
    String cargo = request.getParameter("cargo");
    
    Libreria lib = new Libreria();
    boolean resultado = lib.insertarEmpleado(codigo, apellidos, nombres, sueldo, cargo);
    
    if(resultado) {
        out.println("<p>Empleado insertado con éxito.</p>");
    } else {
        out.println("<p>Error al insertar el empleado.</p>");
    }
%>
    <a href="menu.jsp">Volver al menú</a>
</body>
</html>
