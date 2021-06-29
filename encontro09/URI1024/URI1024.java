import java.util.Scanner;

public class URI1024 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);

		int entrada = sc.nextInt();
		sc.nextLine();
		String saida = "";
		for (int i = 0; i < entrada; i++) {
			
			String linha = sc.nextLine();
			String novoTexto = trocarTExto(linha);
			String invert = invertTexto(novoTexto);
			String desloca = deslocarTexto(invert);
			if(i < entrada -1) {
				saida += desloca + "\n";
			} else {
				saida += desloca;
			}
			
		}
		
		System.out.println(saida);
		sc.close();

	}

	public static String trocarTExto(String texto) {
		String novoTexto = "";
		for( int i = 0; i < texto.length(); i++) {

			if((texto.charAt(i) >= (char) 65 && texto.charAt(i) <= (char) 90) || (texto.charAt(i) >= (char) 97 && texto.charAt(i) <= (char) 122)) {
				novoTexto += (char) (texto.charAt(i) + 3);

			} else {
				novoTexto += texto.charAt(i);

			}
		}
		return novoTexto;

	}
	
	public static String invertTexto(String texto) {
		String textoInvertido = "";
		for(int i = texto.length() -1; i >= 0 ; i--) {
			textoInvertido += texto.charAt(i);
		}
		return textoInvertido;
	}
	
	public static String deslocarTexto(String texto) {
		String deslocTexto = "";
		int posicao = texto.length() / 2;
		for(int i = 0; i < texto.length(); i++) {
			if(i >= posicao) {
				deslocTexto += (char) (texto.charAt(i) - 1);
			} else {
				deslocTexto += texto.charAt(i);
			}
			
		}
		return deslocTexto;
	}
}