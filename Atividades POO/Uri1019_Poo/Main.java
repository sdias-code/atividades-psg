package br.com.psg.main;

import java.util.Scanner;

import br.com.psg.convertertempo.ConversaoDeTempo;

public class Main {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Informe um valor a ser convertido: ");
		int valor = sc.nextInt();
		
		ConversaoDeTempo tempo = new ConversaoDeTempo();
		tempo.setValor(valor);
		tempo.exibirTempoConvertido();
		
		sc.close();
		

	}

}
