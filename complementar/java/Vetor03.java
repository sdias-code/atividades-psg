package Secao10;

import java.util.Scanner;

import entities.Aluguel;

public class Vetor03 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		int n = sc.nextInt();
		
		Aluguel[] vect = new Aluguel[9];
		
		for(int i = 0; i < n; i++) {
			sc.nextLine();
			String nome = sc.nextLine();
			String email = sc.nextLine();			
			int quarto = sc.nextInt();
			vect[quarto] = new Aluguel(nome, email, quarto);
		}
		
		for(int i = 0; i < vect.length; i++) {
			if(vect[i] != null) {
				System.out.println("Nome: " + vect[i].getNome());
				System.out.println("Email: " + vect[i].getEmail());
				System.out.println("Quarto: " + vect[i].getQuarto());
			}
			
		}
		
		sc.close();

	}

}
