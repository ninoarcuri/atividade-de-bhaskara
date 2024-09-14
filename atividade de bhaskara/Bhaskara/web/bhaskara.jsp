<%@page import="Bhaskaraform.Bhaskara"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>bhaskara</title>
        <link rel="stylesheet" href="css/estilo.css">
    </head>
    <body>
        <main>
            <h1>Calculando</h1>
            <hr>
            <%
                double A, B, C;
                A = Double.parseDouble(request.getParameter("txtA"));
                B = Double.parseDouble(request.getParameter("txtB"));
                C = Double.parseDouble(request.getParameter("txtC"));

                Bhaskara bhaskara = new Bhaskara();
                bhaskara.setValorA(A);
                bhaskara.setValorB(B);
                bhaskara.setValorC(C);


            %>
            <strong>Dados Informados:</strong>
            <ul>
                <li><strong>Valor A:    </strong><%= A%> </li> 
                <li><strong>Valor B:    </strong><%= B%> </li>
                <li><strong>Valor C:    </strong><%= C%> </li>
                

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
        </main>
    </body>
</html>
