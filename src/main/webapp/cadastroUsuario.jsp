<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastrar Login</title>
</head>
<body>
    <h2>Cadastrar Login</h2>
    <table>
      <form name="frmCadastrarLogin" action="CadastroLogin" method="post">
     
      <tr> 
        <td>Nome.:</td><td><input type="text" name="txtUsuario"></td>
        <td>Senha.:</td><td><input type="password" name="txtSenha"></td>
     
          <td colspan="2"><input type="submit" value="cadastrar"/></td>      
     
      </form>
    
    </table>
    <BODY>
        <H1>Tipo de Usuário</H1>
        <FORM ACTION="formAction.jsp" METHOD="post">
             <INPUT TYPE="radio" NAME="radios" VALUE="radio1" CHECKED>
             Usuário Comum
            <BR>
            <INPUT TYPE="radio" NAME="radios" VALUE="radio2">
             Administrador
            <BR>
            <INPUT TYPE="submit" VALUE="Submit">
        </FORM>
    </BODY>
</HTML>

<HTML>
    <HEAD>
        <TITLE>Reading Radio Buttons</TITLE>
    </HEAD>

    <BODY>
        <%
            if(request.getParameter("radios") != null) {
                if(request.getParameter("radios").equals("radio1")) {
                    out.println("Radio button 1 was selected.<BR>");
                }
                else {
                    out.println("Radio button 1 was not selected.<BR>");
                }
                if(request.getParameter("radios").equals("radio2")) {
                    out.println("Radio button 2 was selected.<BR>");
                }
                else {
                    out.println("Radio button 2 was not selected.<BR>");
                }
              
            }
        %>
    </BODY>
  
</body>
</html>
