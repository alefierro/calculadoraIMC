<%-- 
    Document   : response
    Created on : 15/08/2013, 07:22:36 PM
    Author     : alejandra
--%>

<%@page import="servlets.imc.CalculoImc"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cálculo del Indice de Masa Corporal</title>
    </head>
    <body>
        <jsp:useBean id="datosBean" scope="session" class="servlets.imc.datosImc" />
        <jsp:setProperty name="datosBean" property="nombre" />
        <jsp:setProperty name="datosBean" property="estatura" />
        <jsp:setProperty name="datosBean" property="peso" />
        <jsp:setProperty name="datosBean" property="imc" />
        <%-- CalculoImc calculo = new CalculoImc();
            Long peso = Long.parseLong(request.getParameter("peso"));
            Long estatura = Long.parseLong(request.getParameter("estatura"));
            
            calculo.CalcularImc(peso, estatura);
            
            --%>
            <h1><jsp:getProperty name="datosBean" property="nombre" />, su IMC es de: <jsp:getProperty name="datosBean" property="imc" /></h1>
    </body>
</html>
