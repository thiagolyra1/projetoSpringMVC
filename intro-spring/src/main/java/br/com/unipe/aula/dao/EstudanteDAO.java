package br.com.unipe.aula.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.unipe.aula.model.Estudante;

@Repository
public class EstudanteDAO {
	
	@PersistenceContext
	private EntityManager entityManager;
	
	public EstudanteDAO() {
		
	}
	
	@Transactional(readOnly=false)
	public void salvar(Estudante estudante) {
		entityManager.persist(estudante);
	}
	
	@Transactional(readOnly=true)
	public List<Estudante> getAll() { 
		return entityManager.createQuery("from Estudante",Estudante.class).getResultList();
	}
	
	@Transactional(readOnly=true)
	public Estudante getId(Long id) {
		return entityManager.find(Estudante.class, id);
	}
	
	@Transactional(readOnly=false)
	public void excluir(Long id) {
		entityManager.remove(getId(id));
	}
	
	@Transactional(readOnly=false)
	public void editar(Estudante estudante) {
		entityManager.merge(estudante);
	}
}