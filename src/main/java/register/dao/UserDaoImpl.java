package register.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.data.jpa.repository.Modifying;

import register.model.User;

@Repository("UserDao")
public class UserDaoImpl implements UserDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	@Autowired
	private SessionFactory factory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.hibernateTemplate = new HibernateTemplate(sessionFactory);
	}

	// create
	@Transactional
	public void createUser(User user) {

		this.hibernateTemplate.save(user);
	}

	// create
		@Transactional
		public void updateUser(User user) {

			this.hibernateTemplate.update(user);
		}
//get single data
	public User getUser(int userId) {
		return this.hibernateTemplate.get(User.class, userId);
	}

	// get all users

	public List<User> getAllUsers() {
		List<User> users = this.hibernateTemplate.loadAll(User.class);
		return users;
	}

	// delete single user
	@Transactional
	public void deleteUser(int userId) {
		User user = this.hibernateTemplate.load(User.class, userId);
		this.hibernateTemplate.delete(user);
	}

	// user verified from database
	@Transactional
	public boolean checkUserAvailability(String email, String password) {
		boolean isValidUser = false;

		Session currentSession = factory.getCurrentSession();
		String query = "FROM User u WHERE u.userEmail=:email";
		User user = (User) currentSession.createQuery(query).setParameter("email", email).uniqueResult();
		if (user != null && user.getUserPassword().equals(password)) {
			isValidUser = true;
		}

		else {
			isValidUser = false;
		}
		return isValidUser;
	}

	// getting user role from db
	@Transactional
	public String getUserRole(String email) {
		String userRole;
		Session currentSession = factory.getCurrentSession();
		String query = "FROM User u WHERE u.userEmail=:email";
		User user = (User) currentSession.createQuery(query).setParameter("email", email).uniqueResult();
		userRole = user.getUserRole();
		return userRole;

	}
	
	//searching user
	@Transactional
	public User getUserByEmail(String email) {
		Session currentSession = factory.getCurrentSession();
		String query = "FROM User U WHERE U.userEmail = :email";

		User user = (User) currentSession.createQuery(query).setParameter("email", email).uniqueResult();
		return user;
	}
	
	
	//searching user
	@Transactional
	public User searchUser(String firstName)
	{
		// get the current hibernate session

		Session currentSession = factory.getCurrentSession();
		String query = "FROM User U WHERE U.firstName = :firstName";

		User user = (User) currentSession.createQuery(query).setParameter("firstName", firstName).uniqueResult();
		return user;
		
		
		
		
	}

	@Transactional
	public String getForgotPassword(int value) {
		String password;
		Session currentSession = factory.getCurrentSession();

		String query = "from User where userId=:value";

		Query theQuery = currentSession.createQuery(query);

		theQuery.setParameter("value", value);

		User user = (User) theQuery.uniqueResult();
		password = user.getUserPassword();
		return password;
	}

	@Transactional
	 @Modifying
	 public String getForgotPassword(String field, String value) {
		Session session = factory.getCurrentSession();
		String password;
		Query q2 =session.createQuery("update User set userPassword=:p where userEmail=:e");
				 q2.setParameter("p",field );
				 q2.setParameter("e", value);
				 User user = (User) q2.uniqueResult();
				 password = user.getUserPassword();
				return password;
	}

	

}
