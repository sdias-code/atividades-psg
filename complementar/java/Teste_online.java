import java.util.Arrays;
import java.util.Random;

public class Teste_online {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int array[] = new int[10]; 
		Random r = new Random(); 
		
		for (int i = 0; i < 10; i++) {
			array[i] = r.nextInt(10); }
		
		Arrays.sort(array);
		System.out.println(array[0]);
		System.out.println(array[1]);
		System.out.println(array[2]);
		
				
	}

}
