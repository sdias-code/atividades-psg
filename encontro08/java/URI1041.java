import java.util.Locale;
import java.util.Scanner;

public class URI1041 {

	public static void main(String[] args) {
		
		Locale.setDefault(Locale.US);
		
		Scanner sc = new Scanner(System.in);
		
		float x = sc.nextFloat();
		float y = sc.nextFloat();
		
		if(x == 0 && y == 0) {
			System.out.println("Origem");
		}
		
		if(x != 0 && y != 0) {
			
			// Q1
			if(x > 0 && y > 0) {
				System.out.println("Q1");			
			}
			//Q2
			if(x < 0 && y > 0) {
				System.out.println("Q2");			
			}
			//Q3
			if(x < 0 && y < 0) {
				System.out.println("Q3");			
			}
			//Q4
			if(x > 0 && y < 0) {
				System.out.println("Q4");
			}
			
		}
		
		if((x > 0 && y == 0) || (x < 0 && y == 0 )) {
			System.out.println("Eixo X");
		}
		
		if((x == 0 && y > 0) || (x == 0 && y < 0)) {
			System.out.println("Eixo Y");
		}
		
		
		
		sc.close();

	}

}
