<%@ page import="java.sql.*"%>
<%
    String userName = request.getParameter("uname");   
    String password = request.getParameter("password");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sinarm",
            "root", "cs2016-1");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from user where userName='" + userName + "' and password='" +password + "'");
    if (rs.next()) {
        session.setAttribute("userid", userName);
        response.sendRedirect("index.jsp");
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
%>