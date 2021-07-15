package br.com.psg.calcularcombustivel;

public class CalcularGastoDeCombustivel {
	
	private int tempoGasto;
	private int velocidadeMedia;
	private double distanciaPercorrida;
	private double qteLitros;
	
	public int getTempoGasto() {
		return tempoGasto;
	}
	public void setTempoGasto(int tempoGasto) {
		this.tempoGasto = tempoGasto;
	}
	public int getVelocidadeMedia() {
		return velocidadeMedia;
	}
	public void setVelocidadeMedia(int velocidadeMedia) {
		this.velocidadeMedia = velocidadeMedia;
	}
	public double getDistanciaPercorrida() {
		return distanciaPercorrida;
	}
	public void setDistanciaPercorrida(double distanciaPercorrida) {
		this.distanciaPercorrida = distanciaPercorrida;
	}
	public double getQteLitros() {
		return qteLitros;
	}
	public void setQteLitros(double qteLitros) {
		this.qteLitros = qteLitros;
	}
	
	public double calcularCombustivel() {
		
		distanciaPercorrida = tempoGasto * velocidadeMedia;		
		
		return qteLitros = distanciaPercorrida / 12;		
		
	}

}
