import java.util.Locale;
import java.util.Scanner;

public class URI1009 {

	public static void main(String[] args) {

		Locale.setDefault(Locale.US);

		Scanner sc = new Scanner(System.in);

		String nome = sc.nextLine();

		double salarioFixo = sc.nextDouble();

		double totalVendas = sc.nextDouble();

		double salarioReceber = salarioFixo + (0.15 * totalVendas);

		System.out.printf("TOTAL = R$ %.2f%n", salarioReceber);

		sc.close();

	}

}
