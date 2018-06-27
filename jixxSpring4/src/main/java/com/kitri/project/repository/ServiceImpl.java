package com.kitri.project.repository;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import com.kitri.project.repository.Mapper;

import vo.Repository;

@Component("repService")
public class ServiceImpl implements Service{
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	private Mapper repMapper;
	
	public void setSqlSession(SqlSession sqlSession){
		this.sqlSession=sqlSession;
	}

	@Override
	public void addRep(Repository r) {
		repMapper = sqlSession.getMapper(Mapper.class);
		repMapper.insert(r);
	}

	@Override
	public void editRep(Repository r) {
		repMapper = sqlSession.getMapper(Mapper.class);
		repMapper.update(r);
	}

	@Override
	public void delRep(int rep_id) {
		repMapper = sqlSession.getMapper(Mapper.class);
		repMapper.delete(rep_id);
	}

}
