<%@ page import="java.sql.*"%>
<%
     
    String nome = request.getParameter("nome");
	String cpf = request.getParameter("cpf");
    String clube = request.getParameter("clube");
    String registro = request.getParameter("registro");
    String rua = request.getParameter("rua");
    String complemento = request.getParameter("complemento");
    String setor = request.getParameter("setor");
    String cidade = request.getParameter("cidade");
    String estado = request.getParameter("estado");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sinarm","root", "cs2016-1");
    Statement st = con.createStatement();
    int i = st.executeUpdate("insert into PESSOA(nome, clube, cpf, registro_licensa, rua, complemento, setor, cidade, estado) values ('" + nome + "','"
    + clube + "','" + cpf + "','" + registro +"','"+rua+"','"+complemento+"','"+setor+"','"+cidade+"','"+estado+ "')");
   
   if (i > 0) {
	   response.sendRedirect("cadastroPessoaPOPUP.jsp");
  }
    
    else {
        response.sendRedirect("index.jsp");
    }

   
%>