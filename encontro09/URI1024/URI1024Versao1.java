
public class URI1024Versao1 {

	public static void main(String[] args) {

		String linha1 = "Texto #3";
		String linha2 = "abcABC1";
		String linha3 = "vxpdylY .ph";
		String linha4 = "vv.xwfxo.fd";		

		String novoTexto1 = trocarTExto(linha1);
		String novoTexto2 = trocarTExto(linha2);
		String novoTexto3 = trocarTExto(linha3);
		String novoTexto4 = trocarTExto(linha4);
		
		String invert1 = invertTexto(novoTexto1);
		String invert2 = invertTexto(novoTexto2);
		String invert3 = invertTexto(novoTexto3);
		String invert4 = invertTexto(novoTexto4);
		
		String deloca1 = deslocarTexto(invert1);
		String deloca2 = deslocarTexto(invert2);
		String deloca3 = deslocarTexto(invert3);
		String deloca4 = deslocarTexto(invert4);		
		
		System.out.println(deloca1);
		System.out.println(deloca2);
		System.out.println(deloca3);
		System.out.println(deloca4);

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