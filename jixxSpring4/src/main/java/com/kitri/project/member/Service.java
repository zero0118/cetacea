package com.kitri.project.member;

import vo.Member;

public interface Service {
	void addMember(Member m);

	Member getMemberId(int id);
	
	Member getMemberEmail(String email);

	void editMember(Member m);

	void delMember(int id);	
	
	void authMember(String email);

}
