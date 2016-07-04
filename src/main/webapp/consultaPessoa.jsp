<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.*"%>
<%@ page import java.util.ArrayList;%>

<!DOCTYPE html>
<html>
<title> Consultar Pessoas</title>

<body>


<form id="form1" name="formulario" method="get" action="jdbc:mysql://localhost:3306/sinarm">

<input name="pesquisa" type="text" id="q"/>

<input type="submit" value="Consultar">


</form>
</body>

</html>