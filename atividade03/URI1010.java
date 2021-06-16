import java.util.Locale;
import java.util.Scanner;

public class URI1010 {

	public static void main(String[] args) {
		
		Locale.setDefault(Locale.US);

		Scanner sc = new Scanner(System.in);
		
		int codPeca1 = sc.nextInt();
		int qtePeca1 = sc.nextInt();
		double valorPeca1 = sc.nextDouble();
		
		int codPeca2 = sc.nextInt();
		int qtePeca2 = sc.nextInt();
		double valorPeca2 = sc.nextDouble();
		
		double valorPagar = (qtePeca1 * valorPeca1) + (qtePeca2 * valorPeca2);
		
		System.out.printf("VALOR A PAGAR: R$ %.2f%n", valorPagar);
		
		
		sc.close();

	}

}
