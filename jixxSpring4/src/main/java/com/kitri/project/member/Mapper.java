package com.kitri.project.member;

import vo.Member;

public interface Mapper {
	void insert(Member m);

	Member select(int id);

	void update(Member m);

	void delete(int id);

	Member selectemail(String email);
	
	void verify(Member m);	


}
