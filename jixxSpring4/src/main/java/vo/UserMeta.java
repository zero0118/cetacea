package vo;

public class UserMeta {
	private Member member;
	private Repository repository;
	private int rep_level; //저장소를 생성한 사람은 super admin : 3, admin : 2, 일반사용자 : 1
	private Channel channel;
	private int alram_type; //기본적으로 알람 default값은 1, 알람설정을 껐을 시 0

	public UserMeta() {
		super();
	}

	public UserMeta(Member member, Repository repository, int rep_level, Channel channel, int alram_type) {
		super();
		this.member = member;
		this.repository = repository;
		this.rep_level = rep_level;
		this.channel = channel;
		this.alram_type = alram_type;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	public Repository getRepository() {
		return repository;
	}

	public void setRepository(Repository repository) {
		this.repository = repository;
	}

	public int getRep_level() {
		return rep_level;
	}

	public void setRep_level(int rep_level) {
		this.rep_level = rep_level;
	}

	public Channel getChannel() {
		return channel;
	}

	public void setChannel(Channel channel) {
		this.channel = channel;
	}

	public int getAlram_type() {
		return alram_type;
	}

	public void setAlram_type(int alram_type) {
		this.alram_type = alram_type;
	}

	@Override
	public String toString() {
		return "UserMeta [member=" + member + ", repository=" + repository + ", rep_level=" + rep_level + ", channel="
				+ channel + ", alram_type=" + alram_type + "]";
	}

}
