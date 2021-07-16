package br.com.psg.totaldacompra;

import br.com.psg.itens.Itens;

public class CalcularValorTotal {

	private int codigoDoProduto;
	private int quantidade;
	
	public void setCodigoDoProduto(int codigoDoProduto) {
		this.codigoDoProduto = codigoDoProduto;
	}
	public void setQuantidade(int quantidade) {
		this.quantidade = quantidade;
	}
	
	public double calcularValorTotal() {
		double produto = 0;		
		Itens item = new Itens();
		
		switch(codigoDoProduto) {
		case 1:
			produto = item.getCachorroQuente();
			break;
		case 2:
			produto = item.getxSalada();
			break;
		case 3:
			produto = item.getxBacon();
			break;
		case 4:
			produto = item.getTorradaSimples();
			break;
		case 5:
			produto = item.getRefri();
			default:
				produto = 0;
		
		}

		return produto * quantidade;
	}
	
}
