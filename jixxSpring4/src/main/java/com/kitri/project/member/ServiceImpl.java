package com.kitri.project.member;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import com.kitri.project.repository.MailHandler;
import com.kitri.project.repository.TempKey;

import vo.Member;

@Component("memService")
public class ServiceImpl implements Service{
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	private Mapper memberMapper;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	@Override
	public void addMember(Member m) {
		memberMapper = sqlSession.getMapper(Mapper.class);
		memberMapper.insert(m);		
	}
	@Override
	public Member getMemberId(int id) {
		memberMapper = sqlSession.getMapper(Mapper.class);
		Member m = memberMapper.select(id);
		return m;
	}
	@Override
	public Member getMemberEmail(String email) {
		memberMapper = sqlSession.getMapper(Mapper.class);
		Member m = memberMapper.selectemail(email);
		return m;
	}
	@Override
	public void editMember(Member m) {
		memberMapper = sqlSession.getMapper(Mapper.class);
		memberMapper.update(m);		
	}

	@Override
	public void delMember(int id) {
		memberMapper = sqlSession.getMapper(Mapper.class);
		memberMapper.delete(id);		
	}
	@Override
	public void authMember(String email) {
		memberMapper = sqlSession.getMapper(Mapper.class);
		memberMapper.userAuth(email);		
		
	}
	public void create(Member m) throws Exception {
		memberMapper = sqlSession.getMapper(Mapper.class);
		String key = new TempKey().getKey(50, false); // 인증키 생성
		memberMapper.createAuthKey(m.getEmail(), key); // 인증키 DB저장
		MailHandler sendMail = new MailHandler(mailSender);
		sendMail.setSubject("[jixx 이메일 인증]");
		sendMail.setText(
				new StringBuffer().append("<h1>메일인증</h1>").append("<a href='http://localhost/user/emailConfirm?userEmail=").append(vo.getUserEmail()).append("&key=").append(key).append("' target='_blenk'>이메일 인증 확인</a>").toString());
		sendMail.setFrom("아이디@gmail.com", "보낼사람 이름");
		sendMail.setTo(m.getEmail());
		sendMail.send();
	}


}

