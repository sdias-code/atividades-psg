import java.util.Locale;
import java.util.Scanner;

public class EstruturaDoWhile {

	public static void main(String[] args) {
		
		Locale.setDefault(Locale.US);
		
		Scanner sc = new Scanner(System.in);		
		
		// char resp = sc.next().charAt(0);
		char resp = 's';
		
		while(resp != 'n') {
			System.out.print("Digite a temperatura em Celsus:");
			
			double temp = sc.nextDouble();
			double convTemp = (9.0 * temp / 5.0) + 32.0;
			
			System.out.printf("Equivalente em Fahrenheit %.1f%n",convTemp);
			
			System.out.println("Deseja repetir? s/n");
			resp = sc.next().charAt(0);
			
		}
		
		sc.close();

	}

}
