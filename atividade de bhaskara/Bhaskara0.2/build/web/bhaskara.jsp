<%@page import="br.bhaskara.bhaskaracal"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>bhaskara</title>
        <link rel="stylesheet" href="css/newcss.css">
    </head>
    <body>
        <div class="container">
            <div class="box2">
                <h1>Calculando</h1>
                <hr>
                <%
                    double a, b, c;
                    a = Double.parseDouble(request.getParameter("txtA"));
                    b = Double.parseDouble(request.getParameter("txtB"));
                    c = Double.parseDouble(request.getParameter("txtC"));

                    bhaskaracal bhaskara = new bhaskaracal();
                    bhaskara.setValorA(a);
                    bhaskara.setValorB(b);
                    bhaskara.setValorC(c);


                %>
                <strong>Dados Informados:</strong>
                <ul>
                    <li><strong>Valor A:    </strong><%= a%> </li> 
                    <li><strong>Valor B:    </strong><%= b%> </li>
                    <li><strong>Valor C:    </strong><%= c%> </li>


                </ul>
                <form action="index.html">
                    <strong>Calculo de Bhaskara:</strong>
                    <ul>

                        <li><strong>Delta:    </strong><%= bhaskara.calculaDelta()%> </li>

                        <li><strong>x1:      </strong><%= bhaskara.calculaX1()%> </li>

                        <li><strong>x2:       </strong><%= bhaskara.calculaX2()%> </li>

                    </ul>
                    <input type="submit" value="Volta">
                </form>
            </div>
        </div>
    </body>
</html>
