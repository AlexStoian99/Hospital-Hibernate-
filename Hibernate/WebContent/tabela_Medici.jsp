<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Medici</title>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <link rel="stylesheet" href="style1.css">
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script>
            $(document).ready(function () {
                $("#stergeMedic").hide();
                $("#modificaMedic").hide();

                $("#update").click(function () {
                    $("#modificaMedic").show();
                    $("#stergeMedic").hide();
                });
                $("#delete").click(function () {
                    $("#stergeMedic").show();
                    $("#modificaMedic").hide();
                });
            });
        </script>

    </head>
    <body>
     <nav class="navbar navbar-inverse">
	<ul class="nav navbar-nav">
	 <li><a href="index.html">Home</a></li>
	</ul>
	<ul class="nav navbar-nav navbar-right">
	 <li><a style="padding-right:3rem" href="adauga_Pacient.jsp">Pacienti</a></li>
	</ul>
	<ul class="nav navbar-nav navbar-right">
	 <li><a href="adauga_Medic.jsp">Medici</a></li>
	</ul>
	<ul class="nav navbar-nav navbar-right">
	 <li><a href="adauga_Consultatie.jsp">Consultatie</a></li>
	</ul>
	</nav>
        <h1 align="center"> Tabela Medici:</h1> 
        <table border="1" align="center">
            <tr>
                <td><b>IdMedic:</b></td>
                <td><b>Nume:</b></td>
                <td><b>Prenume:</b></td>
                <td><b>Sectie:</b></td>
            </tr>
            <c:forEach var="medici" items="${listaMedici}">
                <tr>
                    <td>${medici.idmedic}</td>
                    <td>${medici.nume}</td>
                    <td>${medici.prenume}</td>
                    <td>${medici.sectie}</td>

                </tr>
            </c:forEach>
        </table>
        <form action="MediciController" method="POST">
            <p align="center">
                Modifica: <input type="checkbox" id="update"> Sterge: <input type="checkbox" id="delete" onclick="document.getElementById('nume').disabled = this.checked;
                        document.getElementById('prenume').disabled = this.checked;
                        document.getElementById('adreasa').disabled = this.checked;"><br><br>
                <select name="idmedic">
                    <c:forEach items="${listaMedici}" var="medici">
                        <option value="${medici.idmedic}">${medici.idmedic}</option>
                    </c:forEach>
                </select>
                <br><br>
                Modifica Nume: <input id="nume" type="text" name="nume"><br><br>
                Modifica Prenume: <input id="prenume" type="text" name="prenume"> <br><br>
                Modifica Sectie: <input id="sectie" type="text" name="sectie"> <br><br>
                <button id='sub' type="submit" id="modificaMedic" name="modificaMedic"> Modifica</button> <br> <br>
                <button id='sub2' type="submit" id="stergeMedic" name="stergeMedic"> Sterge </button>
            </p>
        </form>

    </body>
</html>
