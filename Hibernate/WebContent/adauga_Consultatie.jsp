<%@page import="DAOImpl.MediciDaoImpl"%>
<%@page import="DAOImpl.PacientiDaoImpl"%>
<%@page import="pojo.Medici"%>
<%@page import="java.util.ArrayList"%>
<%@page import="pojo.Pacienti"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultatie</title>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <link rel="stylesheet" href="style1.css">
        
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
<%
        PacientiDaoImpl pacientDaoImpl = new PacientiDaoImpl();
        MediciDaoImpl medicDaoImpl = new MediciDaoImpl();
        List<Pacienti> listaPacienti = new ArrayList();
        listaPacienti = pacientDaoImpl.afiseazaPacienti();
        List<Medici> listaMedici = new ArrayList();
        listaMedici = medicDaoImpl.afiseazaMedici();
        request.setAttribute("listaPacienti", listaPacienti);
        request.setAttribute("listaMedici", listaMedici);
%>
        <div align="center" id="add">
            <h1> Adauga o noua consultatie </h1><br>
            <form action="ConsultatieController" method="GET">
                <table>
                    <tr>
                        <td> Pacient: </td>
                        <td>
                            <select name="idpacient">
                                <c:forEach items="${listaPacienti}" var="pacienti">
                                    <option value="${pacienti.idpacient}">${pacienti.idpacient}, ${pacienti.nume}, ${pacienti.prenume}, ${pacienti.adresa}</option>
                                </c:forEach>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td> Medic: </td>
                        <td>
                            <select name="idmedic">
                                <c:forEach items="${listaMedici}" var="medici">
                                    <option value="${medici.idmedic}">${medici.idmedic}, ${medici.nume}, ${medici.prenume}, ${medici.sectie}</option>
                                </c:forEach>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td> Data Consultatie: </td>
                        <td><input type="text" name="dataConsultatie"></td>
                    </tr>
                    <tr>
                        <td> Diagnostic: </td>
                        <td><input type="text" name="diagnostic"></td>
                    </tr>
                    <tr>
                        <td> Medicament: </td>
                        <td><input type="text" name="medicament"></td>
                    </tr>
                </table>
                <input  id='sub1' type="submit" name="adaugaConsultatie" value="Adauga">
            </form>
        </div>
  	
        <form  action="ConsultatieController" method="POST">
            <input id='sub' type="submit" name="afiseazaConsultatie" value="Afiseaza"> 
        </form>   
        <br>

    </body>
</html>
