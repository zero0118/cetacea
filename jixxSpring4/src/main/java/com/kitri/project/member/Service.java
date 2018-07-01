package com.kitri.project.member;

import java.util.List;

import vo.Member;
import vo.Repository;

public interface Service {
	void addMember(Member m);

	Member getMemberId(int id);
	
	Member getMemberEmail(String email);

	void editMember(Member m);

	void delMember(int id);	
	
	void verifyMember(Member m);

	void setTempkey(int ran2, int id);
	
	void setTempkey(int ran2, String email);	

	int selectTempKey(String email);

	void verifyMemberByEmail(String email);

	void setNewPass(Member m);

	List<Repository> getRepNameListById(int id);

	

	
	

}
