import java.util.Locale;
import java.util.Scanner;

public class URI1014 {

	public static void main(String[] args) {
		
		Locale.setDefault(Locale.US);
		
		Scanner sc = new Scanner(System.in);
		
		int distancia = sc.nextInt();
		double combustivelGasto = sc.nextDouble();
		
		double consumoMedio = distancia / combustivelGasto;
		
		System.out.println(String.format("%.3f km/l", consumoMedio));
		
		sc.close();

	}

}
