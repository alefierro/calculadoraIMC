<%-- 
    Document   : index
    Created on : 15/08/2013, 07:08:30 PM
    Author     : alejandra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cálculo del Indice de Masa Corporal</title>
    </head>
    <body>
        <h1>Introduce los datos a continuación para calcular tu IMC</h1>
        <form name="Calculo IMC" action="response.jsp">
            <P>Nombre: <input type="text" name="nombre" size="80" /></p>
            <p>Estatura (cm): <input type="text" name="estatura" size="20" /></p>
            <P>Peso (kg): <input type="text" name="peso" size="20" /></p>
            <input type="submit" value="Calcular" name="btnCalcular" />
        </form>
        
        
    </body>
</html>
