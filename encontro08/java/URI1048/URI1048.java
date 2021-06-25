package econtro08;

import java.util.Locale;
import java.util.Scanner;

public class URI1048 {

	public static void main(String[] args) {
		
		Locale.setDefault(Locale.US);
		
		Scanner sc = new Scanner(System.in);
		
		float salario = sc.nextFloat();
		
		float novoSalario = 0;
		float reajuste = 0;
		int percentual = 0;
		float p15 = 0;
		float p12 = 0;
		float p10 = 0;
		float p7 = 0;
		float p4 = 0;
		
		if(salario >= 0 && salario <= 400) {
			p15 = (salario * 15) / 100;
			novoSalario = salario + p15;
			reajuste = p15;
			percentual = 15;
		}
		
		if(salario > 400 && salario <= 800) {
			p12 = (salario * 12) / 100;
			novoSalario = salario + p12;
			reajuste = p12;
			percentual = 12;
		}
		
		if(salario > 800 && salario <= 1200) {
			p10 = (salario * 10) / 100;
			novoSalario = salario + p10;
			reajuste = p10;
			percentual = 10;
		}
		
		if(salario > 1200 && salario <= 2000) {
			p7 = (salario * 7) / 100;
			novoSalario = salario + p7;
			reajuste = p7;
			percentual = 7;
		}
		
		if(salario > 2000) {
			p4 = (salario * 4) / 100;
			novoSalario = salario + p4;
			reajuste = p4;
			percentual = 4;
		}
				
		
		System.out.println("Novo salario: " + String.format("%.2f", novoSalario));
		System.out.println("Reajuste ganho: " + String.format("%.2f", reajuste));
		System.out.println("Em percentual: " +  percentual + " %");
		
		sc.close();

	}

}
