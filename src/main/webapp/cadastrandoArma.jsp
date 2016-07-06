<%@ page import="java.sql.*"%>
<%
     
    String tipo = request.getParameter("tipo");
	String modelo = request.getParameter("modelo");
    String fabricante = request.getParameter("fabricante");
    String calibre = request.getParameter("calibre");
    String codigo = request.getParameter("codigo"); 
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sinarm",
            "root", "cs2016-1");
    Statement st = con.createStatement();
    int i = st.executeUpdate("insert into ARMA(codigo, tipo, fabricante, modelo, calibre, regdate) values ('" + codigo + "','"
    + tipo + "','" + fabricante + "','" + modelo + "','" + calibre + "', CURDATE())");
   
   if (i > 0) {
        response.sendRedirect("cadastroArmaPOPUP.jsp");
  }
    
    else {
        response.sendRedirect("index.jsp");
    }

   
%>