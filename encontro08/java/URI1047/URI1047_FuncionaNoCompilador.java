package econtro08;

import java.util.Scanner;

public class URI1047_FuncionaNoCompilador {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int h1 = sc.nextInt();
		int m1 = sc.nextInt();
		int h2 = sc.nextInt();	
		int m2 = sc.nextInt();

		int calcularHora = h2 - h1;	
		
		if (calcularHora < 0) {
			calcularHora = 24 + (h2 - h1);
		}
		
		int calcularMinuto = m2 - m1;
		
		if (calcularMinuto < 0) {
			calcularMinuto = 60 + (m2 - m1);
			calcularHora --;
		}		
		
		
		if(h1 == h2 && m1 == m2) {
			System.out.println("O JOGO DUROU 24 HORA(S) E 0 MINUTO(S)");
		} else {
			System.out.println("O JOGO DUROU " + calcularHora + " HORA(S) E " + calcularMinuto + " MINUTO(S)" );			
			
		}	

		sc.close();

	}

}
