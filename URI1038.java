import java.util.Scanner;

public class URI1038 {

	public static void main(String[] args) {
		
		double cachorroQuente = 4.00, 
				xSalada = 4.50, 
				xBacon = 5.00, 
				torradaSimples = 2.00, 
				refri = 1.50;

		int codigoProduto, quantidade;
		double produto = 0;
		double total = 0;

		Scanner sc = new Scanner(System.in);
		codigoProduto = sc.nextInt();
		
		quantidade = sc.nextInt();
		
		switch(codigoProduto) {
		case 1:
			produto = cachorroQuente;
			break;
		case 2:
			produto = xSalada;
			break;
		case 3:
			produto = xBacon;
			break;
		case 4:
			produto = torradaSimples;
			break;
		case 5:
			produto = refri;
			default:
				produto = 0;
		
		}

		total = produto * quantidade;

		System.out.println(String.format("Total: R$ %.2f", total));

		sc.close();

	}

}
