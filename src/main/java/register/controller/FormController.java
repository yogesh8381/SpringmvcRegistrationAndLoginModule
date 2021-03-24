package register.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.taglibs.standard.lang.jstl.test.beans.PublicBean1;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import register.dao.UserDao;
import register.model.User;

@Controller
public class FormController {
	
	@Autowired
	private UserDao userDao;

	@RequestMapping("/")
	public String home() {
		return "index";

	}

	@RequestMapping("/admin")
	public String home1(Model m) {
		List<User> users = userDao.getAllUsers();

		for (User user : users) {
			System.out.println(user);
		}
		m.addAttribute("user", users);
		return "admin";

	}

	// for searchin user
	@RequestMapping("/searchUser")
	public String searchUser() {

		return "searchUser";
	}

	// searching process
	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public String searchUser(@RequestParam("firstName") String firstName, Model model) {
		User user = userDao.searchUser(firstName);
		model.addAttribute("user",user);
		return "searchViewjsp";

	}

	@RequestMapping("/register")
	public String register() {

		return "registration_page";
	}

	@RequestMapping(value = "/register_process", method = RequestMethod.POST)
	public String handleRegisterterForm(@ModelAttribute User user, HttpServletRequest request, Model model) {

		// if (br.hasErrors())
		// return "registration_page"; //it returns the error messages to the same page

		System.out.println(user);
		userDao.createUser(user);
		model.addAttribute("Message", user.getFirstName() + " Succefully Registered");
		
		return "redirect:/";

		
		

		

	}

	// for the login handle

	@RequestMapping(value = "/validate", method = RequestMethod.POST)
	public String validateUsr(@RequestParam("userEmail") String userEmail,
			@RequestParam("userPassword") String userPassword, HttpServletRequest request,Model model) {

		boolean isValid = userDao.checkUserAvailability(userEmail, userPassword);
		if (isValid) {

			String checkRole = userDao.getUserRole(userEmail);

			if (checkRole.equalsIgnoreCase("Admin")) {
				System.out.println("Admin user");
				
				return "redirect:/admin";

			} else if (checkRole.equalsIgnoreCase("User")) {
				System.out.println("normal user");
				
				User user = userDao.getUserByEmail(userEmail);
				
				
				model.addAttribute("user", user);


				return "user";

			}
			

		} else {
			
			model.addAttribute("Message", "   Username or Password is Invalid");
			
		}
		System.out.println(userEmail);
		System.out.println(userPassword);
		return "redirect:/";
		

	}

	// delete handler
	@RequestMapping("/delete/{userId}")
	public RedirectView deleteProduct(@PathVariable("userId") int userId, HttpServletRequest request) {
		this.userDao.deleteUser(userId);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/admin");
		return redirectView;
	}

	//// update
	@RequestMapping("/update/{userId}")
	public String updateForm(@PathVariable("userId") int userId, Model model) {
		User user = this.userDao.getUser(userId);
		model.addAttribute("user", user);
		return "update";
	}

	//// update process
	@RequestMapping(value = "/updateprocess", method = RequestMethod.POST)
	public RedirectView updateUsers(@ModelAttribute User user, HttpServletRequest request, Model model) {
		userDao.updateUser(user);

		RedirectView redirectView = new RedirectView();

		redirectView.setUrl(request.getContextPath() + "/admin");
		model.addAttribute("Message", user.getFirstName());

		return redirectView;
	}

	
	
////normal user process
	@RequestMapping(value = "/normalUser", method = RequestMethod.POST)
	public RedirectView User(@ModelAttribute User user, HttpServletRequest request, Model model) {
		userDao.updateUser(user);

		RedirectView redirectView = new RedirectView();

		redirectView.setUrl(request.getContextPath() + "/");
		model.addAttribute("Message", user.getFirstName());

		return redirectView;
	}
	
	
	
	//// forgot password
	@RequestMapping("/passwordchange")
	public String updatePassword(Model model) {

		return "password_change";
	}

	// request hadle for change password
	@RequestMapping(path = "/forgotPassword", method = RequestMethod.POST)
	public String forgotPassword(@RequestParam("userEmail") String field, @RequestParam("newPassword") String value,
			Model m) {

		
			
		String password;
		password = userDao.getForgotPassword(field, value);
			
		

		return "index";
	}

}
