import java.util.Scanner;

public class Scanner_exercicio {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Digite uma palavra:");
		String palavra = sc.next();
		sc.nextLine();
		
		System.out.println("Digite uma frase:");
		String frase = sc.nextLine();
		
		sc.close();
		
		System.out.println("A palavra digitada foi: "+ palavra);
		
		System.out.println("A frase digitada foi: "+ frase);
		

	}

}
