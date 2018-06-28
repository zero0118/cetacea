package com.kitri.project.member;

import vo.Member;

public interface Service {
	void addMember(Member m);

	Member getMemberId(int id);
	
	Member getMemberEmail(String email);

	void editMember(Member m);

	void delMember(int id);	
	
	void verifyMember(Member m);

	void setTempkey(int ran2, int id);

	int selectTempKey(String email);	
	

}
