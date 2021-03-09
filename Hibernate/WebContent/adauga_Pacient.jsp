<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pacienti</title>
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
        <div align="center" id="add">
            <h1> Adauga pacient </h1> <br>
            <form action="PacientiController" method="GET">
                <table>
                    <tr>
                        <td> Nume Pacient: </td>
                        <td><input type="text" name="nume"></td>
                    </tr>
                    <tr>
                        <td> Prenume Pacient: </td>
                        <td><input type="text" name="prenume"></td>
                    </tr>
                    <tr>
                        <td> Adresa Pacient: </td>
                        <td><input type="text" name="adresa"></td>
                    </tr>
                </table>
            <input id='sub1' type="submit" name="adaugaPacient" value="Adauga">
            </form>
        </div>
		
        <form action="PacientiController" method="POST">
            <input id='sub' type="submit" name="afiseazaPacienti" value="Afiseaza"> 
        </form>
        <br>

       
    </body>
</html>
