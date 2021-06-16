import java.util.Locale;
import java.util.Scanner;

public class URI1011 {

	public static void main(String[] args) {

		Locale.setDefault(Locale.US);

		Scanner sc = new Scanner(System.in);
		
		int raio = sc.nextInt();

		double volume = ((4/3.0) * 3.14159) * (Math.pow(raio, 3));	
		
		
		System.out.printf("VOLUME = %.3f%n", volume);


		sc.close();

	}

}
