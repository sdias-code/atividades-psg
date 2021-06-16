import java.util.Locale;
import java.util.Scanner;

public class URI1006 {

	public static void main(String[] args) {

		Locale.setDefault(Locale.US);

		Scanner sc = new Scanner(System.in);

		double nota1 = sc.nextDouble();		

		double nota2 = sc.nextDouble();

		double nota3 = sc.nextDouble();

		double media = ((nota1 * 2) + (nota2 * 3) + (nota3 * 5)) / (10.0);

		System.out.printf("MEDIA = %.1f%n" , media);

		sc.close();

	}

}
