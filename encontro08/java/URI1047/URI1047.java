package econtro08;

import java.util.Scanner;

public class URI1047 {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int h1 = sc.nextInt();
		int m1 = sc.nextInt();
		int h2 = sc.nextInt();	
		int m2 = sc.nextInt();

		int calcularHora = 0;
		int calcularMinutos = 0;
		int minutoAtual = 0;
		int horaAdicional = 0;
		int removeHora = 0;
		int horas = 0;
		int minutos = 0;

		if(h1 == h2 && m1 == m2) {
			System.out.println("O JOGO DUROU 24 HORA(S) E 0 MINUTO(S)");
		} else {
			
			if(h1 < h2 ) {			
				calcularMinutos = m2 - m1;
				if(calcularMinutos < 0) {
					minutoAtual =  60 + (m2 - m1);
					removeHora = 1;
				} else {
					minutoAtual = calcularMinutos;
					removeHora = 0;
				}
				calcularHora = h2 - h1;
				horas = calcularHora - removeHora;
				minutos = minutoAtual;

				System.out.printf("O JOGO DUROU %d HORA(S) E %d MINUTO(S)%n", horas, minutos);			
			} 
			
			if (h1 > h2)  {
				calcularMinutos = (60 - m1) + m2;			

				if(calcularMinutos >= 60) {
					minutoAtual = calcularMinutos - 60;
					horaAdicional = 1;
				} else {
					horaAdicional = 0;
					minutoAtual = calcularMinutos;
				}
				calcularHora = ((24 - h1) + h2);
				horas = calcularHora + horaAdicional;
				minutos = minutoAtual;			

				System.out.printf("O JOGO DUROU %d HORA(S) E %d MINUTO(S)%n", horas, minutos);			
			} 
			
		}		

		sc.close();

	}

}
