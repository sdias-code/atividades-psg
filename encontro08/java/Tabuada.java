import java.util.Scanner;

public class Tabuada {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		while(true) {			
			
			System.out.println("Qual tabuada: ");
			int numTabuada = sc.nextInt();
			
			System.out.println("Tabuada ....." + numTabuada);
			
			if(numTabuada == 0) {
				break;
			}
			
			int t = numTabuada;
			int x = 0;
			for(int i = 1; i < 11; i++) {
				x = t * i;
				System.out.println(t + " x " + i + " = "+ x);
			}			
			
		}
		sc.close();
		
	}

}
