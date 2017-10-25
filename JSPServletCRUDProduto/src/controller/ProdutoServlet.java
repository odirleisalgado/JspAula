package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dal.ProdutoDAO;
import model.Produto;

/**
 * Servlet implementation class ProdutoServlet
 */
@WebServlet("/ProdutoServlet")
public class ProdutoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try{

			Produto produto=new Produto();
			
			produto.setNome(request.getParameter("txtNome"));
			produto.setCategoria(request.getParameter("txtCategoria"));
			produto.setPreco(Double.parseDouble(request.getParameter("txtPreco")));
			produto.setQuantidade(Integer.parseInt(request.getParameter("txtQtd")));
			
			if(produto.getNome().equals("oi")|| produto.getCategoria()=="oi"){
				response.sendRedirect("CadastrarProduto.jsp?mensagem=4");
			}
				
			
			if(ProdutoDAO.cadastrarProduto(produto)){
				response.sendRedirect("CadastrarProduto.jsp?mensagem=1");
			}else{
				response.sendRedirect("CadastrarProduto.jsp?mensagem=2");
			}
			
		
		}catch (NumberFormatException e){
			response.sendRedirect("CadastrarProduto.jsp?mensagem=3");
		}
	
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
