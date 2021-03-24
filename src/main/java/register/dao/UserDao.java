package register.dao;

import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import register.model.User;

@Component
public interface UserDao {
	@Transactional
	public void createUser(User user);

	public void deleteUser(int userId);

	public User getUser(int userId);

	public List<User> getAllUsers();

	

	public boolean checkUserAvailability(String userEmail, String userPassword);
	
	
	public String getUserRole(String email);
	

	public User searchUser(String firstName);

	public void updateUser(User user);
	public User getUserByEmail(String email);
	public String getForgotPassword(int value);

	public String getForgotPassword(String field, String value);



}
