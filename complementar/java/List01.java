package Secao10;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class List01 {

	public static void main(String[] args) {

		// Trabalhando com listas
		List<String> nomes = new ArrayList<>();
		nomes.add("Silvio Dias");
		nomes.add("Antonio Bandeiras");
		nomes.add("Jociane Amorim");
		nomes.add("Marcelo Bretas");
		nomes.add(0, "Maria Andrade");
		nomes.add("Maria Aparecida");

		for (String nome : nomes) {
			System.out.println(nome);
		}

		System.out.println("Tamanho da lista: " + nomes.size());

		System.out.println("----------------------");

		/*
		 * nomes.remove(1);
		 * 
		 * for(String nome: nomes) { System.out.println(nome); }
		 * System.out.println("Tamanho da lista: " + nomes.size());
		 * 
		 * System.out.println("----------------------");
		 * 
		 * nomes.removeIf(x -> x.charAt(0) == 'M');
		 * 
		 * for(String nome: nomes) { System.out.println(nome); }
		 * System.out.println("Tamanho da lista: " + nomes.size());
		 */

//		System.out.println("----------------------");
//		System.out.println(nomes.indexOf("Silvio Dias"));

		List<String> result = nomes.stream().filter(x -> x.charAt(0) == 'M').collect(Collectors.toList());

		System.out.println("----------------------");
		for (String x : result) {
			System.out.println(x);
		}		
		System.out.println();
		System.out.println("Buscando primeiro elemento numa lista:");
		System.out.println("----------------------");
		String busca = nomes
				.stream()
				.filter(x -> x.charAt(0) == 'J')
				.findFirst()
				.orElse(null);
		
		System.out.println(busca);
		System.out.println("----------------------");

	}

}
