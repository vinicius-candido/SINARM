<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>SINARM - Bem vindo(a)</title>

<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/datepicker3.css" rel="stylesheet">
<link href="resources/css/styles.css" rel="stylesheet">

[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<script src="js/respond.min.js"></script>
<![endif]

</head>

<body>
	
	<div class="row">
		<div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
			<div class="login-panel panel panel-default">
				<div class="panel-heading">Login</div>
				<div class="panel-body">
					<form role="form">
						<form method="post" action="logando.jsp">
						<fieldset>
							<div class="form-group">
								<input class="form-control"input type="text" name="userName" value="" placeholder="Usuário"  autofocus="">
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="Password" input type="password" name="password" value="">
							</div>
							<div class="checkbox">
								<label>
									<input name="remember" type="checkbox" value="Remember Me">Lembrar
								</label>
							</div>
							<input type="submit" value="Login" class="btn btn-primary">Login
						</fieldset>
					</form>
					<tr>
                        <td colspan="2">New User <a href="cadastroUsuario.jsp">Register Here</a></td>
                    </tr>
                    </form>
				</div>
			</div>
		</div>/.col
	</div>/.row	
	
		

	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script>
		!function ($) {
			$(document).on("click","ul.nav li.parent > a > span.icon", function(){		  
				$(this).find('em:first').toggleClass("glyphicon-minus");	  
			}); 
			$(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
		}(window.jQuery);

		$(window).on('resize', function () {
		  if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
		})
		$(window).on('resize', function () {
		  if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
		})
	</script>	
</body>

</html>
 -->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    
    	<link href="resources/css/bootstrap.min.css" rel="stylesheet">
		<link href="resources/css/datepicker3.css" rel="stylesheet">
		<link href="resources/css/styles.css" rel="stylesheet">
    	
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Example</title>
    </head>
    <body bgcolor="silver">
    
    <div class="row">
		<div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
		<div class="panel-heading">Login</div>
				<div class="panel-body">
        <form method="post" action="logando.jsp">
            <center>
            <table border="0" width="30%" cellpadding="3">
                
                <tbody>
                    <tr>
                    <div class="form-group">
                        <td>Usuário</td>
                        <td><input type="text" name="userName" value="" /></td>
                    </div>
                    </tr>
                    <tr>
                    <div class="form-group">
                        <td>Senha</td>
                        <td><input type="password" name="password" value="" /></td>
                    </div>
                    </tr>
                    
                    <tr>
                        <td><input class="btn btn-primary" type="submit" value="Login" /></td>
                        <td><input class = "btn btn-default" type="reset" value="Limpar" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Para registrar <a href="cadastroUsuario.jsp">CLIQUE AQUI</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
    </div></div></div>
        
    <script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
    </body>
</html>