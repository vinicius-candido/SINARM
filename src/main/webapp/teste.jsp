<!DOCTYPE html>
<html>
<head>
	<!--<%@page contentType="text/html" pageEncoding="UTF-8"%>-->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>SINARM - Bem vindo(a)</title>

	<link href="resources/css/bootstrap.min.css" rel="stylesheet">
	<link href="resources/css/datepicker3.css" rel="stylesheet">
	<link href="resources/css/styles.css" rel="stylesheet">

	 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<script src="js/html5shiv.js"></script>
	<script src="js/respond.min.js"></script>

</head>

<body>
	<div class="row">
		<div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
			<div class="login-panel panel panel-default">

		        <form method="post" action="cadastrandoUsuario.jsp">
		            
		            
		                
		                    <h3>
		                       Entre com suas Informações
		                    </h3>
		                
		                
		            
		                    <div class="form-group">
		                        
		                        Nome
		                        <input class="form-control" type="text" name="firstName" value="" required="required" placeholder="Digite seu nome">
		                       
		                    </div>
		                    <div class="form-group">
		                        Sobrenome
		                        <input class="form-control" type="text" name="lastName" value="" required="required" placeholder="Digite seu sobrenome">
		                    <div class="form-group">
		                        Email
		                        <input class="form-control" type="text" name="email" value="" required="required" placeholder="email@exemplo.com.br">
		                    </div>
		                    <div class="form-group">
		                        Usuário
		                        <input class="form-control" type="text" name="userName" value="" required="required" placeholder="Digite seu usuario">
		                    </div>
		                    <div class="form-group">
		                        Senha
		                        <input class="form-control" type="password" name="password" value="" required="required" placeholder="Digite sua senha">
		                    </div>
		                               

		                        <input type="submit" value="Criar" class="btn btn-primary">
								<input type="reset"  value="Limpar" class = "btn btn-default">
		                        
		                    
		                    
		                    <tr>
		                        <td colspan="2">Se possui conta <a href="login.jsp">CLIQUE AQUI</a></td>
		                    </tr>
		                    
		                
		            
		            
		       </form>
       		</div>
       	</div>
    </div>
</body>

</html>
