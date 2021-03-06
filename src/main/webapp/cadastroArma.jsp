<!DOCTYPE html>
<%@page import="bo.Arma"%>
<%@page import="java.util.List"%>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>SINARM Digital - Sistema Nacional de Armas</title>

<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/datepicker3.css" rel="stylesheet">
<link href="resources/css/styles.css" rel="stylesheet">

<!--Icons-->
<script src="resources/js/lumino.glyphs.js"></script>

<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->

</head>

<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.jsp"><span>SINARM Digital -</span> Sistema Nacional de Armas</a>
				<!-- <ul class="user-menu">
					<li class="dropdown pull-right">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg> Usuário <span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="perfil.html"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg> Perfil</a></li>
							<li><a href="config.html"><svg class="glyph stroked gear"><use xlink:href="#stroked-gear"></use></svg> Configura��es</a></li>
							<li><a href="login.html"><svg class="glyph stroked cancel"><use xlink:href="#stroked-cancel"></use></svg> Logout</a></li>
						</ul>
					</li>
				</ul> -->
			</div>
							
		</div><!-- /.container-fluid -->
	</nav>
		
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<ul class="nav menu">
			<li class="active"><a href="index.jsp"><svg class="glyph stroked home"><use xlink:href="#stroked-home"/></svg> Home</a></li>
			<li><a href="pessoaDash.jsp"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg> Pessoa</a></li>
			<li><a href="armaDash.jsp"><svg class="glyph stroked key "><use xlink:href="#stroked-key"/></svg> Arma</a></li>
			<li><a href="registroDash.jsp"><svg class="glyph stroked table"><use xlink:href="#stroked-table"/></svg> Registro de armas</a></li>
			<li role="presentation" class="divider"></li>
			<li><a href="login.jsp"><svg class="glyph stroked lock"><use xlink:href="#stroked-lock"/></svg> Sair</a></li>
		</ul>
	</div><!--/.sidebar-->
		
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="index.jsp"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
				<li class="active"></li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">SINARM - Cadastro de Arma de Fogo</h1>
			</div>
		</div><!--/.row-->
		
		<!--BOT�ES DO HOME DE ADM-->
		
			<div class="row">
			<div class="col-md-8">
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="col-md-6">
						<form method="post" action="cadastrandoArma.jsp">
							<fieldset>
							<div class="form-group">					
								</div>
								<!-- ArmaID -->
								<div class="form-group">
									<label>C�digo da arma:</label>
									<input type="text" name="codigo" value="" class="form-control" placeholder="C�digo da arma" param="${param.ID}" required="required"/><span class="required"></span>
								</div>
								<!-- Tipo - combo-box -->
								<div class="form-group">
									<label>Tipo do armamento</label>
									<select type="text" name="tipo" value="" class="form-control" param="${param.tipo}">
										<option>Pistola</option>
										<option>Rev�lver</option>
										<option>Espingarda</option>
										<option>Carabina</option>
										<option>Fuzil</option>
										<option>Metralhadora</option>
									</select>
								</div>
							
								<!-- Fabricante da arma -->
								<div class="form-group">
									<label>Fabricante:</label>
									<input type="text" name="fabricante" value="" class="form-control" placeholder="Nome do fabricante"  param="${param.fabricante}" required="required"/><span class="required"></span>
								</div>
								
								<div class="form-group">
									<label>Modelo:</label>
									<input type="text" name="modelo" value="" class="form-control" placeholder="Descri��o do modelo" param="${param.modelo}" required="required"/><span class="required"></span>
								</div>
								
								<div class="form-group">
									<label>Calibre:</label>
									<input type="text" name="calibre" value="" class="form-control" placeholder="Calibre da arma" param="${param.calibre}" required="required"/><span class="required"></span>
								</div>
								
								<!-- Form actions -->
								<div class="form-group">
									<div class="col-md-12 widget-right">
										<button type="submit" class="btn btn-default btn-md pull-right">Cadastrar</button>
									</div>
								</div>
							</fieldset>
						</form>
						<br>
						<%-- <%
							Arma arma = (Arma) request.getAttribute("arma");
						%>
						<div class="alert alert\-danger" role="alert">Informe o c�digo da arma.</div>
						<div class="alert alert-success" role="alert">C�digo da arma: <%=arma.getArmaID() %></div> --%>
					</div>
				</div>
		</div><!--/.row-->
	
		
	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script>
		$('#calendar').datepicker({
		});

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
