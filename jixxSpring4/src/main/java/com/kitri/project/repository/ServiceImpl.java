package com.kitri.project.repository;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

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
	public Repository selectRepByUrl(String url) {
		repMapper = sqlSession.getMapper(Mapper.class);
		Repository r = repMapper.getRepositoryByUrl(url);
		return r;
	}

	@Override
	public void addRep(Repository r) {
		repMapper = sqlSession.getMapper(Mapper.class);
		repMapper.insertRep(r);
	}
	@Override
	public Repository selectRepByName(Repository r) {
		repMapper = sqlSession.getMapper(Mapper.class);
		Repository r2 = repMapper.getRepositoryByName(r);
		return r2;
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
