import java.util.Locale;
import java.util.Scanner;

public class URI1002 {

	public static void main(String[] args) {
		
		Locale.setDefault(Locale.US);
		
		Scanner sc = new Scanner(System.in);
		
		double raio;
		double A;
		double n = 3.14159;
		
		raio = (double) sc.nextDouble();
		
		A = n * (raio * raio);
		
		System.out.printf("A=%.4f", A);
		System.out.println();
		
		sc.close();

	}

}
