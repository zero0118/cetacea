package com.kitri.project.repository;

import vo.Repository;

public interface Mapper {
	
	Repository getRepositoryByUrl(String url);
	void insertRep(Repository r);
	Repository getRepositoryByName(Repository r);	
	
	void update(Repository r);
	void delete(int rep_id);


}
