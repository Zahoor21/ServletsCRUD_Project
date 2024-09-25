package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import dto.User;

public class userDao {

	EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("Mohammed");
	EntityManager entityManager = entityManagerFactory.createEntityManager();
	EntityTransaction entityTransaction = entityManager.getTransaction();

	public void saveUser(User user) {

		entityTransaction.begin();
		entityManager.persist(user);
		entityTransaction.commit();

	}

	public User fetchByUserName(String userName) {
		Query query = entityManager.createQuery("select d from User d where userName = '" + userName + "' ");
		try {
			User data = (User) query.getSingleResult();
			System.out.println(data);
			return data;

		} catch (Exception e) {
			User data = new User();
			return data;
		}
	}

	public List<User> fetchAll() {
		Query query = entityManager.createQuery("select d from User d");
		List<User> Udata = query.getResultList();
		return Udata;

	}
	
	
	public User deleteUserById(int id) {
		User user = entityManager.find(User.class, id);
		entityTransaction.begin();
		entityManager.remove(user);
		entityTransaction.commit();
		return user;
	}
	
	public void updateUser(User newUser) {
//		User oldUser = entityManager.find(User.class, id);
		entityTransaction.begin();
		entityManager.merge(newUser);
		entityTransaction.commit();
	}

}
