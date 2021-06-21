package Secao10;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Scanner;

import entities.Funcionario;

public class Exercicio01 {

	public static void main(String[] args) {

		Locale.setDefault(Locale.US);

		Scanner sc = new Scanner(System.in);	

		List<Funcionario> list = new ArrayList<>();

		System.out.println("Quantos funcionarios serão registrados?");
		int n = sc.nextInt();

		for(int i = 0; i < n; i++) {
			System.out.println();
			System.out.println("Funcionario #"+(i+1) + ":");
			System.out.println("Digite o id:");
			Integer id = sc.nextInt();
			System.out.println("Digite o nome:");
			sc.nextLine();
			String nome = sc.nextLine();
			System.out.println("Digite o salario:");
			Double salario = sc.nextDouble();
			Funcionario emp = new Funcionario(id, nome, salario);
			list.add(emp);
		}

		System.out.println("Digite o id do funcionario:");
		int idFuncionario = sc.nextInt();
		Integer pos = positionId(list, idFuncionario);
		if(pos == -1) {
			System.out.println("Este id não existe!");
		} else {
			System.out.println("Digite o valor da porcentagem:");
			Double percent = sc.nextDouble();
			list.get(pos).aumentarSalario(percent);
		}

		System.out.println();
		System.out.println("Lista de funcionarios:");

		for(Funcionario emp : list) {
			System.out.println(emp);
		}


		sc.close();
	}

	public static int positionId(List<Funcionario> list, int id) {
		for(int i =0; i < list.size(); i++) {
			if(list.get(i).getId() == id) {
				return i;
			}
		}
		return -1;
	}

}
