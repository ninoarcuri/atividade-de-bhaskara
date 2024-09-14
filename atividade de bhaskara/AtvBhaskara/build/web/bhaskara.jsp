<%@page import="br.bhaskara.Bhaskara"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculo de bhaskara</title>
        <link rel="stylesheet" href="css/newcss.css">
    </head>
    <body>
        <div class="container">
            <div class="box2">
                <h1>Resultado</h1>
                <hr>
                <%
                    double vA, vB, vC;
                    vA = Double.parseDouble(request.getParameter("txtA"));
                    vB = Double.parseDouble(request.getParameter("txtB"));
                    vC = Double.parseDouble(request.getParameter("txtC"));

                    Bhaskara bhaskara = new Bhaskara();
                    bhaskara.setValorA(vA);
                    bhaskara.setValorB(vB);
                    bhaskara.setValorC(vC);


                %>
                <strong>Dados Informados:</strong>
                <ul>
                    <li><strong>Valor A:    </strong><%= vA%> </li> 
                    <li><strong>Valor B:    </strong><%= vB%> </li>
                    <li><strong>Valor C:    </strong><%= vC%> </li>
                    <br>

                </ul>
                <form action="index.html">
                    <strong>Resultado do Delta:</strong>
                    <ul>
                        <li><strong>Delta:  </strong><%= bhaskara.calculaDelta()%> </li>
                        <br>
                        <strong>Resultado das Rais:</strong>
                        <li><strong>x1: </strong><%= bhaskara.calculaX1()%> </li>
                        <br>
                        <li><strong>x2: </strong><%= bhaskara.calculaX2()%> </li>

                    </ul>
                    <input type="submit" value="Volta">
                </form>
            </div>
        </div>
    </body>
</html>
