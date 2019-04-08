package bean;


public class User {

	private String username;
	private String password;

	public User() {
		System.out.println("Default Constructor");
	}

	public User(int id, String username, String password) {
		this.username = username;
		this.password = password;
	}

	public String getUsername() {
		System.out.println("Get User");
		return username;
	}

	public void setUsername(String username) {
		System.out.println("Set User");
		this.username = username;
	}

	public String getPassword() {
		System.out.println("Get Password");
		return password;
	}

	public void setPassword(String password) {
		System.out.println("Set Password");
		this.password = password;
	}

	@Override
	public String toString() {
		return "User [username=" + username + ", password=" + password + "]";
	}

}