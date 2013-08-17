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
        <LINK rel="stylesheet" type="text/css" href="style/style.css">
    </head>
    <body>
        <img src = "images/resultado.jpg" /> 
        <jsp:useBean id="datosBean" scope="session" class="servlets.imc.datosImc" />
        <jsp:setProperty name="datosBean" property="nombre" />
        <jsp:setProperty name="datosBean" property="estatura" />
        <jsp:setProperty name="datosBean" property="peso" />
        <jsp:setProperty name="datosBean" property="imc" />
        <% CalculoImc calculo = new CalculoImc();
            double peso = datosBean.getPeso();
            double estatura = datosBean.getEstatura();
            
            double imc = calculo.CalcularImc(peso, estatura);
            String nivel = calculo.nivelImc(imc);
            
            datosBean.setImc(imc);
            datosBean.setNivel(nivel);
            
            %>
            <h1><jsp:getProperty name="datosBean" property="nombre" />, tu IMC es de: <jsp:getProperty name="datosBean" property="imc" /></h1>
            <h1>Tu nivel es: <jsp:getProperty name="datosBean" property="nivel" /></h1>
            <h2>Recuerda que una buena alimentación y una rutina de ejercicio son fundamentales para una buena salud. </h2>
    </body>
</html>
