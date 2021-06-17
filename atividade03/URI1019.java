import java.util.Scanner;

public class URI1019 {

	public static void main(String[] args) {

		int horas, minutos, segundos, valor;

		Scanner sc = new Scanner(System.in);

		valor = sc.nextInt();

		horas = valor / 3600;		

		minutos = (valor % 3600) / 60;

		segundos = (valor % 3600) % 60;			

		System.out.println(horas+ ":" + minutos + ":" + segundos);		

		sc.close();

	}

}
