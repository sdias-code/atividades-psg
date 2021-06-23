package Encontro04;

import java.util.ArrayList;
import java.util.Scanner;

public class URI1031 {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		int N = sc.nextInt();
		int m = sc.nextInt();

		// iniciliazando setores
		System.out.println("setores");

		// iniciliazando setores
		System.out.println("setores");

		ArrayList<Boolean> setores = new ArrayList<Boolean>();

		for (int i = 0; i < N; i++) { // i =0 N <= 18
			System.out.println("Setor: " + i);	
			setores.add(false);
		}

		System.out.println("tamanho do array: " + setores.size());
		System.out.println(setores);		

		// default: setor 1 deve ser desligado primeiro
		setores.set(0,  true); // valor 1
		System.out.println(setores);		

		// controle do setor corrente
		int setoratual = 1; 

		//variável para controle dos passos
		int passo = 0;

		int xsetores = 0; //String xsetores= "";
		Boolean finaldesetor = false;

		// item 3.0
		while (!todosdesligado(setores)) {

			passo = 0;
			// item 3.1
			while (passo < m) {
				passo ++; // controle de salto
				setoratual++; // controle de salto de setor
				System.out.println("Passo: " + passo);
				System.out.println("Setor atual:" + setoratual);				


				// verificar se o setor já está desligado
				if (setores.get(setoratual)) {
					passo--;
				}

				// controle de final de setor
				if (setoratual == setores.size() - 1) {
					finaldesetor = true;
				}

				if (passo == m) {
					// desilgando o setor					
					setores.set(setoratual, true);
					System.out.println("Setor desligado: " + setoratual);
					xsetores = xsetores + setoratual;
					System.out.println(xsetores);
					System.out.println("setores desligados: " + setores);
					
				}

				if (finaldesetor) {
					setoratual = 0; // reinicia setor;
					finaldesetor = false;
				}
			}
		}
		sc.close();

	}

	public static boolean todosdesligado(ArrayList<Boolean> setores) {

		boolean tdesligado = true;

		for (int i = 1; i < setores.size(); i++) { //for (int i = 1; i < (setores.size() - 1); i++) 			

			if (setores.get(i) == false ) {
				tdesligado = false;
				break;
			}
		}

		return tdesligado;

	}



}
