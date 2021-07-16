package br.com.psg.convertertempo;

public class ConversaoDeTempo {
	
	private int valor;

	public void setValor(int valor) {
		this.valor = valor;
	}
	
	public void exibirTempoConvertido() {
		
		int horas = valor / 3600;		
		
		int minutos = (valor % 3600) / 60;
		
		int segundos = (valor % 3600) % 60;	
		
		System.out.println(horas + ":" + minutos + ":" + segundos); 
	}

}
