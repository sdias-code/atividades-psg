import java.util.Scanner;

public class DiaSemanaSwitch {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int dia;
		String resposta;

		Scanner sc = new Scanner(System.in);
		dia = sc.nextInt();

		System.out.println("Digite um numero de 1 a 7:");

		switch (dia) {
		case 1:
			resposta = "Domingo";
			break;

		case 2:
			resposta = "Segunda-Feira";
			break;

		case 3:
			resposta = "Terça-Feira";
			break;

		case 4:
			resposta = "Quarta-Feira";
			break;

		case 5:
			resposta = "Quinta-Feira";
			break;

		case 6:
			resposta = "Sexta-Feira";
			break;

		case 7:
			resposta = "Sábado";
			break;

		default:
			resposta = "Número inserido inválido!";
		}

		System.out.printf("Você digitou o Número %d = %s.", dia, resposta);

		sc.close();

	}

}
