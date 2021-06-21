import java.util.Locale;

public class Main {

	public static void main(String[] args) {
		
		System.out.println("Olá Mundo!");
		
		double x = 10.35784;
		String nome = "Maria";
		int idade = 45;
		double renda = 4000.0;
		
		System.out.println(x);
		System.out.printf("%.2f\n", x);
		System.out.printf("%.4f\n", x);
		
		Locale.setDefault(Locale.US);
		System.out.printf("%.4f\n", x);
		
		System.out.printf("Resultado = %.2f metros.\n", x);
		
		System.out.printf("%s tem %d anos e recebe %.2f\n", nome, idade, renda);

	}

}
