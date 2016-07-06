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
				<div class="panel-heading">Login</div>
				<div class="panel-body">
					
						<form method="post" action="logando.jsp">
						
							<div class="form-group">
								<input class="form-control" input type="text" name="userName" value="" placeholder="Usuário"  autofocus="">
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="Password" input type="password" name="password" value="">
							</div>
							<div class="checkbox">
								<label>
									<input name="remember" type="checkbox" value="Remember Me">Lembrar
								</label>
							</div>
						
							<input type="submit" value="Login" class="btn btn-primary">
							<input class = "btn btn-default" type="reset" value="Limpar">
					
							</form>
					<tr>
                        <td colspan="2">Novo usuario <a href="cadastroUsuario.jsp">Registre aqui</a></td>
                    </tr>
                    </form>
				</div>
			</div>
		</div>
	</div>
	
		

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

