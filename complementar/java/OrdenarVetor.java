import java.util.Random;

public class OrdenarVetor {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Random r = new Random();
		int array[] = new int[10];
		
		for(int i =0; i < 10; i++) {
			array[i] = r.nextInt(10);
		}
		
		System.out.println("Numeros não ordenados: ");
		for (int n : array ) {
			System.out.println(n);
		}
		
		int auxiliar = 0;
		
		for (int i = 0; i < 10; i++) {
			for (int j = i+1; j < 10; j++) {
				if(array[i] > array[j]) {				
					auxiliar = array[i];
					array[i] = array[j];
					array[j] = auxiliar;
				}
			}
			
		}
		System.out.println("Numeros ordenados: ");
		for (int n : array ) {
			System.out.println(n);
		}

	}

}
