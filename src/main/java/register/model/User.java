package register.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
//import javax.persistence.Temporal;
//import javax.persistence.TemporalType;
//import javax.validation.constraints.NotEmpty;
//import javax.validation.constraints.NotNull;
//import javax.validation.constraints.Size;

@Entity
public class User {
	@Id
	
	private int userId;
	
	
	private String userEmail;
	 
	private String userPassword;
	private String userRole;
	@Column(length = 15)
	//@NotEmpty(message = "Please enter your first name.")
	private String firstName;
	@Column(length = 15)
	// @NotEmpty(message = "Please enter your last name.")
	private String lastName;
	// @NotEmpty(message = "Please enter date of birth.")
	private String userBirthday;
	@Column(length = 10)
	//  @NotNull
	private String gender;
	@Column(length = 12)
	//@NotEmpty(message = "Please enter phone number.")
	private String phoneNumber;
	@Column(length = 50)
	//@NotEmpty(message = "Please enter street Address1.")
	private String streetAddress;
	//@Column(length = 50)
	//@NotEmpty(message = "Please enter street Address2.")
	private String streetAddress2;
	//@Column(length = 20)
	//@NotEmpty(message = "Please enter userCity.")
	private String userCity;
	//@Column(length = 15)
	//@NotEmpty(message = "Please enter state.")
	private String state;
	//@Column(length = 10,name="userPostalPin")
	//@NotEmpty(message = "Please enter userPostal.")
	private int userPostal;
	//@Column(length = 18)
	//@NotEmpty(message = "Please enter Country.")
	private String userCountry;
	//@Column(length = 50)
	//@NotEmpty(message = "Please enter School Name.")
	private String userSchoolName;
	//@Column(length = 10)
	//@NotEmpty(message = "Please enter school passout field.")
	private int userSchoolPassout;
	//@Column(length = 30)
	//@NotEmpty(message = "Please enter college name field.")
	private String userCollegeName;
	//@Column(length = 10)
	//@NotEmpty(message = "Please enter college passou field")
	private int userCollegePassout;
//	@Column(length = 20)
	//@NotEmpty(message = "Please enter userQualification.")
	private String userQualification;
	//@Column(length = 20)
	//@NotEmpty(message = "Please enter userDegreee field.")
	private String userDegree;
	//@Column(length = 10)
	
	private int userDegreePassout;
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserRole() {
		return userRole;
	}
	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getUserBirthday() {
		return userBirthday;
	}
	public void setUserBirthday(String userBirthday) {
		this.userBirthday = userBirthday;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getStreetAddress() {
		return streetAddress;
	}
	public void setStreetAddress(String streetAddress) {
		this.streetAddress = streetAddress;
	}
	public String getStreetAddress2() {
		return streetAddress2;
	}
	public void setStreetAddress2(String streetAddress2) {
		this.streetAddress2 = streetAddress2;
	}
	public String getUserCity() {
		return userCity;
	}
	public void setUserCity(String userCity) {
		this.userCity = userCity;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getUserPostal() {
		return userPostal;
	}
	public void setUserPostal(int userPostal) {
		this.userPostal = userPostal;
	}
	public String getUserCountry() {
		return userCountry;
	}
	public void setUserCountry(String userCountry) {
		this.userCountry = userCountry;
	}
	public String getUserSchoolName() {
		return userSchoolName;
	}
	public void setUserSchoolName(String userSchoolName) {
		this.userSchoolName = userSchoolName;
	}
	public int getUserSchoolPassout() {
		return userSchoolPassout;
	}
	public void setUserSchoolPassout(int userSchoolPassout) {
		this.userSchoolPassout = userSchoolPassout;
	}
	public String getUserCollegeName() {
		return userCollegeName;
	}
	public void setUserCollegeName(String userCollegeName) {
		this.userCollegeName = userCollegeName;
	}
	public int getUserCollegePassout() {
		return userCollegePassout;
	}
	public void setUserCollegePassout(int userCollegePassout) {
		this.userCollegePassout = userCollegePassout;
	}
	public String getUserQualification() {
		return userQualification;
	}
	public void setUserQualification(String userQualification) {
		this.userQualification = userQualification;
	}
	public String getUserDegree() {
		return userDegree;
	}
	public void setUserDegree(String userDegree) {
		this.userDegree = userDegree;
	}
	public int getUserDegreePassout() {
		return userDegreePassout;
	}
	public void setUserDegreePassout(int userDegreePassout) {
		this.userDegreePassout = userDegreePassout;
	}
	public User(int userId, String userEmail, String userPassword, String userRole, String firstName, String lastName,
			String userBirthday, String gender, String phoneNumber, String streetAddress, String streetAddress2,
			String userCity, String state, int userPostal, String userCountry, String userSchoolName,
			int userSchoolPassout, String userCollegeName, int userCollegePassout, String userQualification,
			String userDegree, int userDegreePassout) {
		super();
		this.userId = userId;
		this.userEmail = userEmail;
		this.userPassword = userPassword;
		this.userRole = userRole;
		this.firstName = firstName;
		this.lastName = lastName;
		this.userBirthday = userBirthday;
		this.gender = gender;
		this.phoneNumber = phoneNumber;
		this.streetAddress = streetAddress;
		this.streetAddress2 = streetAddress2;
		this.userCity = userCity;
		this.state = state;
		this.userPostal = userPostal;
		this.userCountry = userCountry;
		this.userSchoolName = userSchoolName;
		this.userSchoolPassout = userSchoolPassout;
		this.userCollegeName = userCollegeName;
		this.userCollegePassout = userCollegePassout;
		this.userQualification = userQualification;
		this.userDegree = userDegree;
		this.userDegreePassout = userDegreePassout;
	}
	
	
	public User(String userEmail, String userPassword, String userRole, String firstName, String lastName,
			String userBirthday, String gender, String phoneNumber, String streetAddress, String streetAddress2,
			String userCity, String state, int userPostal, String userCountry, String userSchoolName,
			int userSchoolPassout, String userCollegeName, int userCollegePassout, String userQualification,
			String userDegree, int userDegreePassout) {
		super();
		this.userEmail = userEmail;
		this.userPassword = userPassword;
		this.userRole = userRole;
		this.firstName = firstName;
		this.lastName = lastName;
		this.userBirthday = userBirthday;
		this.gender = gender;
		this.phoneNumber = phoneNumber;
		this.streetAddress = streetAddress;
		this.streetAddress2 = streetAddress2;
		this.userCity = userCity;
		this.state = state;
		this.userPostal = userPostal;
		this.userCountry = userCountry;
		this.userSchoolName = userSchoolName;
		this.userSchoolPassout = userSchoolPassout;
		this.userCollegeName = userCollegeName;
		this.userCollegePassout = userCollegePassout;
		this.userQualification = userQualification;
		this.userDegree = userDegree;
		this.userDegreePassout = userDegreePassout;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "User [userId=" + userId + ", userEmail=" + userEmail + ", userPassword=" + userPassword + ", userRole="
				+ userRole + ", firstName=" + firstName + ", lastName=" + lastName + ", userBirthday=" + userBirthday
				+ ", gender=" + gender + ", phoneNumber=" + phoneNumber + ", streetAddress=" + streetAddress
				+ ", streetAddress2=" + streetAddress2 + ", userCity=" + userCity + ", state=" + state + ", userPostal="
				+ userPostal + ", userCountry=" + userCountry + ", userSchoolName=" + userSchoolName
				+ ", userSchoolPassout=" + userSchoolPassout + ", userCollegeName=" + userCollegeName
				+ ", userCollegePassout=" + userCollegePassout + ", userQualification=" + userQualification
				+ ", userDegree=" + userDegree + ", userDegreePassout=" + userDegreePassout + "]";
	}
	
	

}
