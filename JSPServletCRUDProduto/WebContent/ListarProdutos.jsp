<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="dal.ProdutoDAO"%>
<%@ page import="model.Produto"%>
<%@ page import="java.util.ArrayList"%>

<%--Buscar a lista de Produtos --%>

<%
	ArrayList<Produto> produtos = ProdutoDAO.retornaProduto();
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="bootstrap.min.css" rel="stylesheet"/>
</head>
<body>
<div class="container">
	<table class=""table table-hover table-striped">
	<tr>
		<th>Nome</th>
		<th>Preço</th>
		<th>Quantidade</th>
		<th>Categoria</th>
	</tr>
	<%
		for (Produto produtoCadastrado : produtos) {
	%>
	<tr>
		<td><%=produtoCadastrado.getNome() %></td>
		<td><%=produtoCadastrado.getPreco() %></td>
		<td><%=produtoCadastrado.getQuantidade()%></td>
		<td><%=produtoCadastrado.getCategoria() %></td>
	
	</tr>
	<%=produtoCadastrado.getNome()%>
	<%
		}
	%>
	</table>
</div>
</body>
</html>