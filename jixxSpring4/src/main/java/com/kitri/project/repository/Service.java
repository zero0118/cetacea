package com.kitri.project.repository;

import vo.Channel;
import vo.Member;
import vo.Repository;

public interface Service {
	Repository selectRepByUrl(String url);

	void addRep(Repository r);

	Repository getRepId(Repository r);

	void createCh(Repository r);

	Repository selectRepByName(Repository r);	

	Channel getChId(Repository rep_id);
	
	void createUserMeta(int id, int rep_id1, int chid1);
	
	void addBoard(String nickname, int id, int chid1);
	
	Member getMember(int id);
		
	void editRep(Repository r);

	void delRep(int rep_id);

	

	

	

	

}
