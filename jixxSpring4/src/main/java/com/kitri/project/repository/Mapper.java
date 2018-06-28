package com.kitri.project.repository;

import vo.Repository;

public interface Mapper {
	
	Repository getRepository(String url);
	void insertRep(Repository r);
	
	void update(Repository r);
	void delete(int rep_id);	

}
