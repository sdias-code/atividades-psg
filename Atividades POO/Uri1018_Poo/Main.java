package br.com.psg.main;

import java.util.Scanner;

import br.com.psg.calcularnotas.CalcularNotas;

public class Main {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Informe um valor:");
		int valor = sc.nextInt();
		
		CalcularNotas calc = new CalcularNotas();
		calc.setValor(valor);
		
		calc.exibirNotas();
		
		sc.close();

	}

}
