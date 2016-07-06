<%--<!DOCTYPE html>
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
        <H1>Tipo de Usuario</H1>
        <FORM ACTION="formAction.jsp" METHOD="post">
             <INPUT TYPE="radio" NAME="radios" VALUE="radio1" CHECKED>
             UsuÃ¡rio Comum
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
</html> --%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Login</title>
    </head>
    <body bgcolor="silver">
        <form method="post" action="cadastrandoUsuario.jsp">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Entre com suas Informações</th>
                    </tr>
                </thead>
                <tbody>
                <td>Campos Obrigatórios (*)</td>
                    <tr>
                        <td>*Nome</td>
                        <td><input type="text" name="firstName" value="" required="required"/><span class="required"></span></td>
                       
                    </tr>
                    <tr>
                        <td>*Sobrenome</td>
                        <td><input type="text" name="lastName" value="" required="required"/><span class="required"></span></td>
                    </tr>
                    <tr>
                        <td>*Email</td>
                        <td><input type="text" name="email" value="" required="required"/><span class="required"></span></td>
                    </tr>
                    <tr>
                        <td>*Usuário</td>
                        <td><input type="text" name="userName" value="" required="required"/><span class="required"></span></td>
                    </tr>
                    <tr>
                        <td>*Senha</td>
                        <td><input type="password" name="password" value="" required="required"/><span class="required"></span></td>
                    </tr>
                    <tr>                  

                        <td><input type="submit" value="Criar" /></td>
                        <td><input type="reset" value="Limpar" /></td>
                        
                    </tr>
                    
                    <tr>
                        <td colspan="2">Se possui conta <a href="login.jsp">CLIQUE AQUI</a></td>
                    </tr>
                    
                </tbody>
                
            </table>
            
            </center>
       </form>
       
    </body>
</html>
