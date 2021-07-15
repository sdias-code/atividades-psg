package br.com.psg.media;

public class Media {
	
	private double a = 0;
	private double b = 0;
	private double c = 0;
	
	public double getA() {
		return a;
	}
	public void setA(double a) {
		this.a = a;
	}
	public double getB() {
		return b;
	}
	public void setB(double b) {
		this.b = b;
	}
	public double getC() {
		return c;
	}
	public void setC(double c) {
		this.c = c;
	}	
	
	public double calcularMedia() {
		return ((this.a * 2) + (this.b * 3) + (this.c * 5)) / (10.0);
	}
		
	

}
