package br.com.psg.main;

import java.util.Scanner;

import br.com.psg.diferencavalores.DiferencaValores;

public class Main {

	public static void main(String[] args) {		

		Scanner sc = new Scanner(System.in);

		System.out.println("Insira o valor de a:");
		int a = sc.nextInt();
		
		System.out.println("Insira o valor de b:");
		int b = sc.nextInt();
		
		System.out.println("Insira o valor de c:");
		int c = sc.nextInt();
		
		System.out.println("Insira o valor de d:");
		int d = sc.nextInt();		
		
		DiferencaValores df = new DiferencaValores();
		df.setA(a);
		df.setB(b);
		df.setC(c);
		df.setD(d);
		
		int diferenca = df.calcularDiferenca();
		
		System.out.println("DIFERENCA = " + diferenca);				

		sc.close();
	}

}
