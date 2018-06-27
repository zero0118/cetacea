package vo;

public class Member {
	private int id;
	private String email;
	private String pwd;
	private String name;
	private int auth;

	public Member() {
	}

	public Member(int id, String email, String pwd, String name, int auth) {
		super();
		this.id = id;
		this.email = email;
		this.pwd = pwd;
		this.name = name;
		this.auth = auth;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAuth() {
		return auth;
	}

	public void setAuth(int auth) {
		this.auth = auth;
	}

	@Override
	public String toString() {
		return "Member [id=" + id + ", email=" + email + ", pwd=" + pwd + ", name=" + name + ", auth=" + auth + "]";
	}

}
