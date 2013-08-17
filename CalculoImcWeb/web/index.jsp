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
        <LINK rel="stylesheet" type="text/css" href="style/style.css">
        <SCRIPT language=Javascript>
            function soloNumeros(e) {
                key = e.keyCode || e.which;
                tecla = String.fromCharCode(key).toLowerCase();
                numeros = "0123456789";
                especiales = [8, 37, 39, 46];

                tecla_especial = false;
                for (var i in especiales) {
                    if (key === especiales[i]) {
                        tecla_especial = true;
                        break;
                    }
                }

                if (numeros.indexOf(tecla) === -1 && !tecla_especial) {
                    return false;
                }
            }

        </script>
    </SCRIPT>
</head>
<body>
    <img src="images/Obesidad.jpg" style="width: 300px;">
    <h1>Introduce los datos a continuación para calcular tu IMC</h1>
    <form name="Calculo IMC" action="response.jsp">
        <P>Nombre: <input type="text" name="nombre" size="80" /></p>
        <p>Estatura (cm): <input type="text" id="txtEstatura" name="estatura" size="20" onkeypress="return soloNumeros(event)" /></p>
        <P>Peso (kg): <input type="text" id="txtPeso" name="peso" size="20" onkeypress="return soloNumeros(event)" /></p>
        <input type="submit" value="Calcular" name="btnCalcular" size="40"/>
        <h2>El cálculo está basado según las tablas de la Organización Mundial de la Salud</h2>
    </form>


</body>
</html>
