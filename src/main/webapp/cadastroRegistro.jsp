<!DOCTYPE html>
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
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg> UsuÃ¡rio <span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="perfil.html"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg> Perfil</a></li>
							<li><a href="config.html"><svg class="glyph stroked gear"><use xlink:href="#stroked-gear"></use></svg> Configurações</a></li>
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
				<h1 class="page-header">SINARM - Cadastro de Registro</h1>
			</div>
		</div><!--/.row-->
		
		<!--BOTÕES DO HOME DE ADM-->
		<div class="row">
			<div class="row">
			<div class="col-md-8">
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="col-md-6">
						<form role="form">
							<div class="form-group">
							<fieldset>				
								<!-- Fabricante da arma -->
								<div class="form-group">
									<label>Número:</label>
									<input class="form-control" placeholder="Número de registro">
								</div>
								
								<!-- Calendário -->
								<div class="panel panel-red">
									<div class="panel-heading dark-overlay"><svg class="glyph stroked calendar"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#stroked-calendar"></use></svg>Data de validade</div>
									<div class="panel-body">
									<div id="calendar"><div class="datepicker datepicker-inline"><div class="datepicker-days" style="display: block;"><table class=" table-condensed"><thead><tr><th class="prev" style="visibility: visible;">«</th><th colspan="5" class="datepicker-switch">Junho 2016</th><th class="next" style="visibility: visible;">»</th></tr><tr><th class="dow">Dom</th><th class="dow">Seg</th><th class="dow">Ter</th><th class="dow">Qua</th><th class="dow">Qui</th><th class="dow">Sex</th><th class="dow">Sab</th></tr></thead><tbody><tr><td class="old day">29</td><td class="old day">30</td><td class="old day">31</td><td class="day">1</td><td class="day">2</td><td class="day">3</td><td class="day">4</td></tr><tr><td class="day">5</td><td class="day">6</td><td class="day">7</td><td class="day">8</td><td class="day">9</td><td class="day">10</td><td class="day">11</td></tr><tr><td class="day">12</td><td class="day">13</td><td class="day">14</td><td class="day">15</td><td class="active day">16</td><td class="day">17</td><td class="day">18</td></tr><tr><td class="day">19</td><td class="day">20</td><td class="day">21</td><td class="day">22</td><td class="day">23</td><td class="day">24</td><td class="day">25</td></tr><tr><td class="day">26</td><td class="day">27</td><td class="day">28</td><td class="day">29</td><td class="day">30</td><td class="new day">1</td><td class="new day">2</td></tr><tr><td class="new day">3</td><td class="new day">4</td><td class="new day">5</td><td class="new day">6</td><td class="new day">7</td><td class="new day">8</td><td class="new day">9</td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">Today</th></tr><tr><th colspan="7" class="clear" style="display: none;">Clear</th></tr></tfoot></table></div><div class="datepicker-months" style="display: none;"><table class="table-condensed"><thead><tr><th class="prev" style="visibility: visible;">«</th><th colspan="5" class="datepicker-switch">2016</th><th class="next" style="visibility: visible;">»</th></tr></thead><tbody><tr><td colspan="7"><span class="month">Jan</span><span class="month">Fev</span><span class="month">Mar</span><span class="month">Abr</span><span class="month">Mai</span><span class="month active">Jun</span><span class="month">Jul</span><span class="month">Ago</span><span class="month">Set</span><span class="month">Out</span><span class="month">Nov</span><span class="month">Dez</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">Today</th></tr><tr><th colspan="7" class="clear" style="display: none;">Clear</th></tr></tfoot></table></div><div class="datepicker-years" style="display: none;"><table class="table-condensed"><thead><tr><th class="prev" style="visibility: visible;">«</th><th colspan="5" class="datepicker-switch">2010-2019</th><th class="next" style="visibility: visible;">»</th></tr></thead><tbody><tr><td colspan="7"><span class="year old">2009</span><span class="year">2010</span><span class="year">2011</span><span class="year">2012</span><span class="year">2013</span><span class="year">2014</span><span class="year">2015</span><span class="year active">2016</span><span class="year">2017</span><span class="year">2018</span><span class="year">2019</span><span class="year new">2020</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">Today</th></tr><tr><th colspan="7" class="clear" style="display: none;">Clear</th></tr></tfoot></table></div></div></div>
								</div>
								
								<div class="form-group">
									<label>Código da Arma:</label>
									<input class="form-control" placeholder="ID da arma vinculada a esse registro">
								</div>
								
								<!-- Form actions -->
								<div class="form-group">
									<div class="col-md-12 widget-right">
										<button type="submit" class="btn btn-default btn-md pull-right">Cadastrar</button>
									</div>
								</div>
							</fieldset>
						</form>
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
