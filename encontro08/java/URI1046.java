package econtro08;

import java.util.Scanner;

public class URI1046 {

	public static void main(String[] args) {
				
		Scanner sc = new Scanner(System.in);
		
		int h1 = sc.nextInt();
		int h2 = sc.nextInt();		
		
		int tempoDeJogo = 0;		 
		
		if((h1 > h2) && (((24 - h1) + h2) >= 1) && (((24 - h1) + h2) <= 24)) {
			tempoDeJogo = (24 - h1) + h2;
			System.out.printf("O JOGO DUROU %d HORA(S)%n", tempoDeJogo);			
		} else if(h1 < h2 && (h2 - h1 >= 1) && (h2 - h1 <= 24) ) {
			tempoDeJogo = h2 - h1;
			System.out.printf("O JOGO DUROU %d HORA(S)%n", tempoDeJogo);
		} else {
			tempoDeJogo = 24;
			System.out.printf("O JOGO DUROU %d HORA(S)%n", tempoDeJogo);
		}
		
		sc.close();

	}

}
