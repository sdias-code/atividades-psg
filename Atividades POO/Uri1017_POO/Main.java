package br.com.psg.main;

import java.util.Scanner;

import br.com.psg.calcularcombustivel.CalcularGastoDeCombustivel;

public class Main {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Digite o tempo gasto da viajem em horas:");
		int tempoGasto = sc.nextInt();
		
		System.out.println("Digite a velocidade média da viajem em km/h:");
		int velocidadeMedia = sc.nextInt();
		
		CalcularGastoDeCombustivel calc = new CalcularGastoDeCombustivel();
		calc.setTempoGasto(tempoGasto);
		calc.setVelocidadeMedia(velocidadeMedia);
		double qteLitros = calc.calcularCombustivel();
		
		System.out.println(String.format("%.3f", qteLitros ));
		
		sc.close();

	}

}
