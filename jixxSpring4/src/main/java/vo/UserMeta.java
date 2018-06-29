package vo;

public class UserMeta {
	private int user_id;
	private int rep_id;
	private int rep_level; //저장소를 생성한 사람은 super admin : 3, admin : 2, 일반사용자 : 1
	private int channel_id;
	private int alram_type; //기본적으로 알람 default값은 1, 알람설정을 껐을 시 0
	public UserMeta() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserMeta(int user_id, int rep_id, int rep_level, int channel_id, int alram_type) {
		super();
		this.user_id = user_id;
		this.rep_id = rep_id;
		this.rep_level = rep_level;
		this.channel_id = channel_id;
		this.alram_type = alram_type;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getRep_id() {
		return rep_id;
	}
	public void setRep_id(int rep_id) {
		this.rep_id = rep_id;
	}
	public int getRep_level() {
		return rep_level;
	}
	public void setRep_level(int rep_level) {
		this.rep_level = rep_level;
	}
	public int getChannel_id() {
		return channel_id;
	}
	public void setChannel_id(int channel_id) {
		this.channel_id = channel_id;
	}
	public int getAlram_type() {
		return alram_type;
	}
	public void setAlram_type(int alram_type) {
		this.alram_type = alram_type;
	}
	@Override
	public String toString() {
		return "UserMeta [user_id=" + user_id + ", rep_id=" + rep_id + ", rep_level=" + rep_level + ", channel_id="
				+ channel_id + ", alram_type=" + alram_type + "]";
	}
	

}
