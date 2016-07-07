<!DOCTYPE html>
<%@page import="bo.Arma"%>
<%@page import="java.util.List"%>
<%@ page import="java.sql.*"%>
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
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg> Usu√É¬°rio <span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="perfil.html"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg> Perfil</a></li>
							<li><a href="config.html"><svg class="glyph stroked gear"><use xlink:href="#stroked-gear"></use></svg> Configura√ß√µes</a></li>
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
				<li class="active">Consulta de Armas de Fogo</li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">SINARM - Consulta de Armas de Fogo</h1>
			</div>
		</div><!--/.row-->

			
	<!-- TABELA -->
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">Consulta de armas</div>
					<div class="panel-body">
						<table data-toggle="table" data-url="resources/tables/data1.json"  data-show-refresh="true" data-show-toggle="true" data-show-columns="true" data-search="true" data-select-item-name="toolbar1" data-pagination="true" data-sort-name="name" data-sort-order="desc">
						    
						</table>
						<table class="table">
  <thead>
    <tr>
      <th>CÛdigo</th>
      <th>Tipo</th>
      <th>Fabricante</th>
      <th>Modelo</th>
      <th>Calibre</th>
      <th></th>
      <th></th>
    </tr>
  </thead>
  <%
  try
  {
  	Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sinarm",
            "root", "cs2016-1");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from arma");
    while (rs.next()) 
    {
 
    	
%>
    	
    	

  <tbody>


    <tr>
      <th><%=rs.getString("codigo")%></th>
      <th><%=rs.getString("tipo")%></th>
      <th><%=rs.getString("fabricante")%></th>
      <th><%=rs.getString("modelo")%></th>
      <th><%=rs.getString("calibre")%></th>
      <td><a href="#">Alterar</a></td>
      <td><a href="#">Excluir</a></td>
  </tr>
<%        }   
    }
    
    catch(ClassNotFoundException erroClass)
    {
    	out.println("Classe Driver JDBC n„o foi localizado, erro = "+erroClass);
    }
    catch(SQLException erroSQL)
    {
    	out.println("Erro de conex„o com o Banco de dados, erro = "+erroSQL);
    }
%>
  </tbody>

</table>
					</div>
				</div>
			</div>
		</div><!--/.row-->	
		
	</div><!--/.main-->

	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/bootstrap-table.js"></script>
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
