package com.kitri.project.repository;

import java.util.ArrayList;
import java.util.Map;

import vo.Channel;
import vo.Member;
import vo.Repository;

public interface Mapper {
	
	Repository getRepositoryByUrl(String url);
	void insertRep(Repository r);
	Repository getRepIdByRepName(Repository r);	
	void insertCh(Repository r);	
	Repository getRepositoryByName(Repository r);	
	Channel getChByRepId(Repository rep_id);
	void insertUserMeta(Map<String, Object> map);
	void insertBoard(Map<String, Object> map);
	Member getNameById(int id);
	void insertMember(Map<String, Object> map);
	int selectRepIdByRepNameUserMeta(String rep_name);
	ArrayList<Integer> selectChList(int rep_id);
	Member selectUserIdByEmail(String email);
	
	void update(Repository r);
	void delete(int rep_id);
	
		
	
}
