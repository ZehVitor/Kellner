package bean.persistence.dao;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import bean.persistence.Usuario;

public class UsuarioDAO extends GenericDAO {

	public static Usuario findByLogin(String login){
		EntityManager em = getEntityManager();
		Usuario obj = null;
		try {
			if (!em.getTransaction().isActive()) {
				em.getTransaction().begin();	
			}
			Query q = em.createQuery("Select o from Usuario as o where o.login = :param");
			q.setParameter("param", login);
			obj = (Usuario) q.getSingleResult();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
		finally {
		}
		
		return obj;
	}
}
