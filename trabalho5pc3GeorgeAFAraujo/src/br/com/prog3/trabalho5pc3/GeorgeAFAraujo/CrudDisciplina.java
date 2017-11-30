package br.com.prog3.trabalho5pc3.GeorgeAFAraujo;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.BiConsumer;

public class CrudDisciplina {

	private static Map<Integer, Disciplina> mapaDisciplina  = new HashMap<>();
	
	public CrudDisciplina() {
		
		Disciplina d1 = new Disciplina();
		d1.setCodigo(1);
		d1.setDescricao("Programação 3");
		d1.setCargaHoraria(72);
		
		Disciplina d2 = new Disciplina();
		d2.setCodigo(2);
		d2.setDescricao("Programação 2");
		d2.setCargaHoraria(72);
		
		
		mapaDisciplina.put(d1.getCodigo(), d1);
		mapaDisciplina.put(d2.getCodigo(), d2);
		
	}
	
	public List<Disciplina> listarTodos(){
		
		List<Disciplina> ld = new ArrayList<>();
		
		for (Integer chave : mapaDisciplina.keySet()) {
			
			ld.add(mapaDisciplina.get(chave));
		}
		
		return ld;
		
	}

	public Disciplina buscarPeloCodigo(Integer codigo) {
		
		return mapaDisciplina.get(codigo);
		
	}
	
	public void inserir(Disciplina dn) {
		
		mapaDisciplina.put(dn.getCodigo(), dn);
	}
	
	public void excluir(Integer codigo) {
		
		if(mapaDisciplina.containsKey(codigo)) {
			mapaDisciplina.remove(codigo);
		}
		
	}
	
	public void alterar(Disciplina d) {
		
		if(mapaDisciplina.containsKey(d.getCodigo())) {
			mapaDisciplina.replace(d.getCodigo(), d);
		}else {
			mapaDisciplina.put(d.getCodigo(), d);
		}
		
		
	}
}

