package com.kitri.project.repository;

import vo.Repository;

public interface Service {
	void addRep(Repository r);
	
	void editRep(Repository r);
	
	void delRep(int rep_id);

}
