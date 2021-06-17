import java.util.Scanner;

public class URI1013 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		int num1 = sc.nextInt();
		int num2 = sc.nextInt();
		int num3 = sc.nextInt();
		int maior = 0;
		
		int maiorAB = (num1 + num2 + Math.abs(num1 - num2)) / 2;				
		
		if(maiorAB > num3) {
			maior = maiorAB;
		} else {
			maior = num3;
		}
		
		System.out.println(maior + " eh o maior");
		
		sc.close();

	}

}
