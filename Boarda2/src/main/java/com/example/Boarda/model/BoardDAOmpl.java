package com.example.Boarda.model;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.Sqlssion;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAOmpl implements BoardDAO {
	@Inject
	SqlSession SqlSession;
	
	@Override
	public void add(BoardVO vo) throws Exception{
		sqlSession.add("board.add",vo);
	}
	@Override
	public void edit(BoardVO vo) throws Exception{
		sqlSession.edit("board.edit",vo);
	}
	@Override
	public BoardVO view(int num) throws Exception{
		return sqlSession.selectOne("board.view",num);
	}
	@Override
	public List<BoardVO> list() throws Exception{
		return sqlSession.selectList("board.list");
	}
}
