import java.util.Scanner;

public class diaDaSemana {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		String resposta;
		int dia;
		
		Scanner sc = new Scanner(System.in);
		System.out.println("Digite um numero de 1 a 7:");
		
		dia = sc.nextInt();
		
		if(dia == 1) {
			resposta = "Domingo";
		} else if (dia == 2) {
			resposta = "Segunda-Feira";
		} else if (dia == 3) {
			resposta = "Ter�a-Feira";
		} else if (dia == 4) {
			resposta = "Quarta-Feira";
		} else if (dia == 5) {
			resposta = "Quinta-Feira";
		} else if (dia == 6) {
			resposta = "Sexta-Feira";
		} else if (dia == 7) {
			resposta = "S�bado";
		} else {
			resposta = "Voc� n�o inseriu um n�mero v�lido!";
		}
		
		System.out.printf("Voc� digitou o N�mero %d = %s.", dia, resposta);
		
		sc.close();

	}

}
