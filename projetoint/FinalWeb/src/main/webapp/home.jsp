<!DOCTYPE html>
<%@page import="java.util.List" %>
<%@page import="modelo.Usuario" %>
<html lang="pt-br">
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<link rel="stylesheet"
	href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
<link rel="stylesheet" href="style.css">
</head>
<body>

	<nav>
		<div class="logo">@brayanmasc</div>
		<ul style="position: fixed; right: 100px; top: 30px;">
			<li><a class="active" href="home.jsp">Home</a></li>
			<li><a href="LogoutServlet">Logout</a></li>
		</ul>
	</nav>
	<div class="conteudo">
		<% 
			List<Usuario> lista = (List<Usuario>)session.getAttribute("lista");
		%>
		
		<table>
			<tr>
				<td>USUÁRIO</td>
				<td>NOME</td>
				<td>EMAIL</td>
				
		<%
		for(Usuario usuario: lista){
			out.write("<tr>");
			out.write("<td>" + usuario.getUsuario() + "</td>");
			out.write("<td>" + usuario.getNome() + "</td>");
			out.write("<td>" + usuario.getEmail() + "</td>");
			out.write("</tr>");
		}
		%>
		</table>
	</div>
	<footer> Copyright © 2023 </footer>
</body>
</html>