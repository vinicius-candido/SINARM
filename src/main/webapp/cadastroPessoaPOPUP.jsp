<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="resources/css/popup.css" rel="stylesheet">

<script language="javascript">
function abrir()
{
	window.open("#openModal", "status=1");
}
</script>


</head>


<body onload="abrir();">

 <a href="#openModal"></a> 

<div  id="openModal" class="modalDialog">
	<div>
		<a href="cadastroPessoa.jsp" title="Close" class="close">X</a>
		<h2>Sucesso</h2>
		<p>Esta pessoa foi cadastrada com sucesso!</p>
		<p>Feche ou <a href="cadastroPessoa.jsp">CLIQUE AQUI</a> para voltar.</p>
	</div>
</div>
</body>
</html>