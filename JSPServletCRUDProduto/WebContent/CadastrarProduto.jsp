<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<%-- Sintaxe de um scriplet java --%>



<%String parametro = request.getParameter("mensagem"); 
	String mensagem="";
	
	if(parametro != null){
		if(parametro.equals("1")){
			mensagem="Produto Já cadastrado";
		}else{
			if(parametro.equals("2")){
				mensagem="Produto Cadastrado com Sucesso";
			}
			else{
				mensagem = "Preço ou Quantidade em formato incorreto";
			}
			
		}
		
	}
	
%>




<title>Cadastrar Produto</title>
</head>

<link href="bootstrap.min.css" rel="stylesheet"/>

<body>



<div class="container">
<form class="form-horizontal" action="ProdutoServlet" method="get">
  <fieldset>
    <div class="container-fluid">
    	<legend>Legend</legend>
    </div>
    <div class="form-group">
      <label for="inputEmail" class="col-lg-2 control-label">Nome</label>
      <div class="col-lg-4">
        <input type="text" class="form-control" name="txtNome" placeholder="Nome do Produto">
      </div>
    </div>
    
     <div class="form-group">
      <label for="inputEmail" class="col-lg-2 control-label">Preço</label>
      <div class="col-lg-4">
        <input type="text" class="form-control" name="txtPreco" placeholder="Preço">
      </div>
    </div>
    
    
    <div class="form-group">
      <label for="inputEmail" class="col-lg-2 control-label">Categoria</label>
      <div class="col-lg-4">
        <input type="text" class="form-control" name="txtCategoria" placeholder="Categoria">
      </div>
    </div>
    
    <div class="form-group">
      <label for="inputEmail" class="col-lg-2 control-label">Estoque/Qtd</label>
      <div class="col-lg-4">
        <input type="text" class="form-control" name="txtQtd" placeholder="Estoque">
      </div>
    </div>
   	
    <div class="form-group">
    	<div class="col-lg-4 col-lg-offset-2">
    		<input type="submit" value="Cadastrar" class="btn btn-default"  name="btnCadastrar"/>
    	</div>
    </div>
	   
	 <div class="formgroup">
	 	<label class="text-danger"> <%=mensagem%> </label>
	 </div> 
	  
	 
  </fieldset>
</form>

</div>







</body>
</html>