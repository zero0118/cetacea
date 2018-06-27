package vo;

public class Channel {
	private int ch_id;
	private String ch_name;
	private int ch_type; //post타입 채널일 경우 1,2 (일반 채널은 1, 프라이버시 채널은 2) / message 채널일 경우 3
	private int ch_status; //채널 상태 default : 1 생성된 상태, 삭제이벤트 하면 0으로
	private Repository repository;
	
	public Channel() {}

	public Channel(int ch_id, String ch_name, int ch_type, int ch_status, Repository repository) {
		super();
		this.ch_id = ch_id;
		this.ch_name = ch_name;
		this.ch_type = ch_type;
		this.ch_status = ch_status;
		this.repository = repository;
	}

	public int getCh_id() {
		return ch_id;
	}

	public void setCh_id(int ch_id) {
		this.ch_id = ch_id;
	}

	public String getCh_name() {
		return ch_name;
	}

	public void setCh_name(String ch_name) {
		this.ch_name = ch_name;
	}

	public int getCh_type() {
		return ch_type;
	}

	public void setCh_type(int ch_type) {
		this.ch_type = ch_type;
	}

	public int getCh_status() {
		return ch_status;
	}

	public void setCh_status(int ch_status) {
		this.ch_status = ch_status;
	}

	public Repository getRepository() {
		return repository;
	}

	public void setRepository(Repository repository) {
		this.repository = repository;
	}

	@Override
	public String toString() {
		return "Channel [ch_id=" + ch_id + ", ch_name=" + ch_name + ", ch_type=" + ch_type + ", ch_status=" + ch_status
				+ ", rep_id=" + repository + "]";
	}
}
