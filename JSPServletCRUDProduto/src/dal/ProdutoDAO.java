package dal;

import java.util.ArrayList;

import model.Produto;

public class ProdutoDAO {
	static ArrayList<Produto> produtos = new ArrayList<Produto>();

	public static boolean cadastrarProduto(Produto produto){
		if(buscarProdutoPorNome(produto) == null){
			produtos.add(produto);
			return false;
		}
		return true;	
		
	}

	public static ArrayList<Produto> retornaProduto() {

		return produtos;

	}

	public static Produto buscarProdutoPorNome(Produto produto) {
		for (int x = 0; x < produtos.size(); x++) {
			if (produtos.get(x).getNome().equals(produto.getNome())) {
				return produtos.get(x);
			}
		}
		return null;
	}
}
