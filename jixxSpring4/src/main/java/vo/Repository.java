package vo;

public class Repository {
	private int rep_id;
	private String rep_name;
	private String rep_url;
	
	public Repository () {}

	public Repository(int rep_id, String rep_name, String rep_url) {
		super();
		this.rep_id = rep_id;
		this.rep_name = rep_name;
		this.rep_url = rep_url;
	}

	public int getRep_id() {
		return rep_id;
	}

	public void setRep_id(int rep_id) {
		this.rep_id = rep_id;
	}

	public String getRep_name() {
		return rep_name;
	}

	public void setRep_name(String rep_name) {
		this.rep_name = rep_name;
	}

	public String getRep_uri() {
		return rep_url;
	}

	public void setRep_uri(String rep_uri) {
		this.rep_url = rep_uri;
	}

	@Override
	public String toString() {
		return "Repository [rep_id=" + rep_id + ", rep_name=" + rep_name + ", rep_url=" + rep_url + "]";
	}
	
	
	

}
