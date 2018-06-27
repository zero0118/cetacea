package com.kitri.project.repository;

import vo.Repository;

public interface Mapper {
	
	void insert(Repository r);
	
	void update(Repository r);
	void delete(int rep_id);

}
