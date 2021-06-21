import java.util.Scanner;

public class Scanner_exercicio2 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		int idade;
		double salario;
		String nome;
		
		System.out.println("Digite seu nome:");
		nome = sc.nextLine();
		System.out.println("Digite sua idade:");
		idade = sc.nextInt();
		System.out.println("Digite seu salário:");
		salario = sc.nextDouble();
		
		sc.close();
		
		System.out.printf("Seu nome é %s você tem %d anos de idade e recebe R$ %.2f.",nome, idade, salario);

	}

}
