package br.com.psg.main;

import java.util.Scanner;

import br.com.psg.media.Media;

public class Main {

	public static void main(String[] args) {		

		Scanner sc = new Scanner(System.in);

		System.out.println("Insira o valor de a:");
		double a = sc.nextDouble();
		
		System.out.println("Insira o valor de a:");
		double b = sc.nextDouble();
		
		System.out.println("Insira o valor de a:");
		double c = sc.nextDouble();			
		
		Media media = new Media();
		media.setA(a);
		media.setB(b);
		media.setC(c);
		
		double resultadoMedia = media.calcularMedia();
		
		System.out.printf("DIFERENCA = %.1f%n" , resultadoMedia);						

		sc.close();
	}

}
