package vo;

import java.sql.Date;

public class Message {
	private int message_id;
	private String nickname;
	private String content;
	private int user_id;
	private Date logdate; //메세지 작성시간
	private String file_thumbnail;
	private String file_original;
	private int message_status; //메세지 상태 Default = 1 : 1값인 데이터만 조회 , 삭제하기능할 경우 : 0으로 업데이트
	private int channel_id;

	public Message() {}

	public Message(int message_id, String nickname, String content, int user_id, Date logdate, String file_thumbnail,
			String file_original, int message_status, int channel_id) {
		super();
		this.message_id = message_id;
		this.nickname = nickname;
		this.content = content;
		this.user_id = user_id;
		this.logdate = logdate;
		this.file_thumbnail = file_thumbnail;
		this.file_original = file_original;
		this.message_status = message_status;
		this.channel_id = channel_id;
	}

	public int getMessage_id() {
		return message_id;
	}

	public void setMessage_id(int message_id) {
		this.message_id = message_id;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public Date getLogdate() {
		return logdate;
	}

	public void setLogdate(Date logdate) {
		this.logdate = logdate;
	}

	public String getFile_thumbnail() {
		return file_thumbnail;
	}

	public void setFile_thumbnail(String file_thumbnail) {
		this.file_thumbnail = file_thumbnail;
	}

	public String getFile_original() {
		return file_original;
	}

	public void setFile_original(String file_original) {
		this.file_original = file_original;
	}

	public int getMessage_status() {
		return message_status;
	}

	public void setMessage_status(int message_status) {
		this.message_status = message_status;
	}

	public int getChannel() {
		return channel_id;
	}

	public void setChannel(int channel_id) {
		this.channel_id = channel_id;
	}

	@Override
	public String toString() {
		return "Message [message_id=" + message_id + ", nickname=" + nickname + ", content=" + content + ", user_id="
				+ user_id + ", logdate=" + logdate + ", file_thumbnail=" + file_thumbnail + ", file_original="
				+ file_original + ", message_status=" + message_status + ", channel_id=" + channel_id + "]";
	}
}
