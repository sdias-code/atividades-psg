package econtro08;

import java.util.Locale;
import java.util.Scanner;

public class URI1040_media3 {

	public static void main(String[] args) {

		Locale.setDefault(Locale.US);

		Scanner sc = new Scanner(System.in);		

		float n1 = sc.nextFloat();
		float n2 = sc.nextFloat();
		float n3 = sc.nextFloat();
		float n4 = sc.nextFloat();

		float media = (n1 * 2 + n2 * 3 + n3 * 4 + n4 * 1) / (2 + 3 + 4 + 1);

		if(media >= 7) {
			System.out.printf("Media: %.1f%n" , media);
			System.out.println("Aluno aprovado.");

		} 

		if(media < 5) {
			System.out.printf("Media: %.1f%n" , media);
			System.out.println("Aluno reprovado.");
		}
		
		float recalcMedia = 0;
		float notaExame = 0;

		if(media >= 5 && media <= 6.9) {
			System.out.printf("Media: %.1f%n" , media);
			System.out.println("Aluno em exame.");

			notaExame = sc.nextFloat();

			System.out.println("Nota do exame: " + notaExame);

			recalcMedia = (media + notaExame) / 2;

			if(recalcMedia >= 5) {
				System.out.println("Aluno aprovado.");
			}
			if(recalcMedia <= 4.9){
				System.out.println("Aluno reprovado.");
			}

			System.out.printf("Media final: %.1f%n" , recalcMedia);

		}
		sc.close();
	}

}
