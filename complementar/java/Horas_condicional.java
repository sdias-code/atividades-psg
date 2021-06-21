import java.util.Scanner;

public class Horas_condicional {

	public static void main(String[] args) {
		
		int horas;
		
		System.out.println("Que horas são? Digite de 0 a 24.");
		
		Scanner sc = new Scanner(System.in);
		horas = sc.nextInt();
		
		if(horas < 12) {
			System.out.println("Bom dia!");
		} else {
			if(horas >= 12 && horas < 18) {
				System.out.println("Boa Tarde!");
			} else {
				System.out.println("Boa Noite!");
			}
		}
		
		
		sc.close();

	}

}
