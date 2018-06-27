package com.kitri.project.member;

import java.util.Map;

import vo.Member;

public interface Mapper {
	void insert(Member m);

	Member select(int id);

	void update(Member m);

	void delete(int id);

	Member selecteMail(String email);
	
	void verify(Member m);

	void setTempkey(Map map);	


}
