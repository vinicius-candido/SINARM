package dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import dao.JpaUtil;
import bo.Arma;

public class ArmaDAO {
	public void gravar(Arma arma) {
		EntityManager em = null;
		EntityManagerFactory emf = null;
		try {
			// Obter uma fábrica de conexões com o banco de dados.
			emf = Persistence
					.createEntityManagerFactory("arma-persistence-unit");

			// Obter conexão com o banco de dados.
			em = emf.createEntityManager();

			em.getTransaction().begin();

			em.merge(arma);

			em.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			if (em != null) {
				em.getTransaction().rollback();
			}
		} finally {
			if (em != null) {
				em.close();
			}
			if (emf != null) {
				emf.close();
			}
		}
	}

	public List<Arma> listar() {
		List<Arma> result = new ArrayList<Arma>();
		try {
			String jpql = "from Arma where id = '2'";
			result = JpaUtil.getEntityManager().createQuery(jpql, Arma.class)
					.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JpaUtil.closeEntityManager();
		}
		return result;
	}

}
