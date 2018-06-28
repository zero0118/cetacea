package com.kitri.project.repository;

import vo.Repository;

public interface Service {
	Repository selectRepByUrl(String url);
	
	void addRep(Repository r);
	
	Repository selectRepByName(Repository r);
	
	void editRep(Repository r);
	
	void delRep(int rep_id);

	

	

	



}
