import java.util.Scanner;

public class URI1017 {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int tempoGasto = sc.nextInt();

		int velocidadeMedia = sc.nextInt();

		double distanciaPercorrida = tempoGasto * velocidadeMedia;

		double qteLitros = distanciaPercorrida / 12;

		System.out.println(String.format("%.3f", qteLitros ));

		sc.close();


	}

}
