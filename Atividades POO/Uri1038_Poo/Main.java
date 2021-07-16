package br.com.psg.main;

import java.util.Scanner;

import br.com.psg.totaldacompra.CalcularValorTotal;

public class Main {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		System.out.println("Digite o código do produto:");
		int codigoProduto = sc.nextInt();
		
		System.out.println("Digite a quantidade:");
		int quantidade = sc.nextInt();
		
		CalcularValorTotal calc = new CalcularValorTotal();
		calc.setCodigoDoProduto(codigoProduto);
		calc.setQuantidade(quantidade);
		double valorTotal = calc.calcularValorTotal();
		
		System.out.println(String.format("Total: R$ %.2f", valorTotal));
		
		sc.close();

	}

}
