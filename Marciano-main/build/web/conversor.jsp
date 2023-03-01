<%@page import="java.lang.Math"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Resultado de la conversión</title>
	<style>
		h2 {
			margin-top: 50px;
		}
	</style>
</head>
<body>
	<h1>Resultado de la conversión</h1>
	<%
		double valor = Double.parseDouble(request.getParameter("valor"));
		String unidad = request.getParameter("unidad");
		double resultado;
		String unidad_resultado;
		if (unidad.equals("grados")) {
			resultado = Math.toRadians(valor);
			unidad_resultado = "radianes";
		} else {
			resultado = Math.toDegrees(valor);
			unidad_resultado = "grados";
		}
	%>
	<h2><%= valor %> <%= unidad %> es equivalente a <%= resultado %> <%= unidad_resultado %>.</h2>
</body>
</html>
