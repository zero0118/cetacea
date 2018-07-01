package com.kitri.project.member;

import java.util.List;
import java.util.Map;

import vo.Member;
import vo.Repository;

public interface Mapper {
	void insert(Member m);

	Member select(int id);

	void update(Member m);

	void delete(int id);

	Member selecteMail(String email);
	
	void verify(Member m);
	
	void verifyByEmail(String email);

	void setTempkey(Map<String, Object> map);
	
	void setTempkeyByEmail(Map<String, Object> map);

	int selectTempKey(String email);

	void setNewPass(Member m);

	List<Repository> selectRepList(int id);

	

		


}
