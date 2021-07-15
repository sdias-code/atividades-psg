package br.com.psg.main;

import java.util.Locale;
import java.util.Scanner;

import br.com.psg.folhadepagamento.CalcularSalario;

public class Main {

	public static void main(String[] args) {		

		Locale.setDefault(Locale.US);

		Scanner sc = new Scanner(System.in);

		System.out.println("Insira o código do funcionario:");
		int codFuncionario = sc.nextInt();

		System.out.println("Insira as horas trabalhadas:");
		int horas = sc.nextInt();

		System.out.println("Insira o Valor por horas:");
		double valorPorHora = sc.nextFloat();		
		
		CalcularSalario calc = new CalcularSalario();
		calc.setQuantidadedehoras(horas);		
		calc.setValorPorHora(valorPorHora);
		double salario = calc.calcularSalario();	
		
		System.out.println("NUMBER = " + codFuncionario);

		System.out.printf("SALARY = U$ %.2f%n", salario);

		sc.close();
	}

}
