<%@ page import="java.sql.*"%>
<%
	String registro = request.getParameter("registro");
	String code = request.getParameter("code"); 
	String data = request.getParameter("data");  
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sinarm",
            "root", "cs2016-1");
    Statement st = con.createStatement();
    int i = st.executeUpdate("insert into REGISTER (code, registro, data) values ('" + code + "','"
    + registro + "','"+ data + "')");
   
    if (i > 0) {
        response.sendRedirect("cadastroRegistroPOPUP.jsp");
  }
    
    else {
        response.sendRedirect("index.jsp");
    }
 
%>
