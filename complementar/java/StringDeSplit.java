
public class StringDeSplit {

	public static void main(String[] args) {
		
		String minhasFrutas = "Mam�o Banana Laranja Morango";
		String[] frutas = minhasFrutas.split(" ");
		
		for(String n: frutas) {
			System.out.println(n);
		}
			

	}

}
