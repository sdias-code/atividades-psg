package br.com.psg.folhadepagamento;

public class CalcularSalario {
	
	private int quantidadedehoras;
	private double valorPorHora;
	private double salario = 0;
		

	public int getQuantidadedehoras() {
		return quantidadedehoras;
	}

	public void setQuantidadedehoras(int quantidadedehoras) {
		this.quantidadedehoras = quantidadedehoras;
	}

	public double getValorPorHora() {
		return valorPorHora;
	}

	public void setValorPorHora(double valorPorHora) {
		this.valorPorHora = valorPorHora;
	}

	public double getSalario() {
		return salario;
	}

	public void setSalario(double salario) {
		this.salario = salario;
	}

	public double calcularSalario() {
		return this.salario = this.valorPorHora * this.quantidadedehoras;		 
	}

}
