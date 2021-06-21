package Secao10;

import java.util.Locale;
import java.util.Scanner;

import entities.Produto;

public class Vetor02 {

	public static void main(String[] args) {
		
		Locale.setDefault(Locale.US);
		Scanner sc = new Scanner(System.in);
		int n = sc.nextInt();
		
		Produto[] vect = new Produto[n];
		
		for(int i = 0; i < n; i++) {
			sc.nextLine();
			String name = sc.nextLine();
			double price = sc.nextDouble();
			vect[i] = new Produto(name, price);			
		}
		
		double soma = 0.0;
		
		for(int i = 0; i < n; i++) {
			soma += vect[i].getPrice();
		}
		
		double media = soma / n;
		System.out.printf("A media dos produtos é: %.2f%n", media);
		
		sc.close();

	}

}
