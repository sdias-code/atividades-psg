package br.com.psg.diferencavalores;

public class DiferencaValores {
	
	private int a = 0;
	private int b = 0;
	private int c = 0;
	private int d = 0;
	
	public int getA() {
		return a;
	}
	public void setA(int a) {
		this.a = a;
	}
	public int getB() {
		return b;
	}
	public void setB(int b) {
		this.b = b;
	}
	public int getC() {
		return c;
	}
	public void setC(int c) {
		this.c = c;
	}
	public int getD() {
		return d;
	}
	public void setD(int d) {
		this.d = d;
	}
	
	public int calcularDiferenca() {
		return (this.a * this.b - this.c * this.d);
	}
		
	

}
