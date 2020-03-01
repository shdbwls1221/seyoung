package com.example.Boarda.dao;

import java.util.List;

import javax.inject.inject;
import org.springframework.stereotype.Service;

import com.example.Boarda.model.BoardVO;

@Service
public class BoardDaoompl  implements BoardDaoo{
	@Inject
	BoardDaoo boardDaoo;
	
	@Override
	public void add(BoardVO vo) throws Exception{
		boardDaoo.add(vo);
	}
	@Override
	public  List<BoardVO> list() throws Exception{
		return boardDaoo.list();
	}
	@Override
	public BoardVO view(int num) throws Exception{
		return boardDaoo.view(num);
	}
	@Override
	public void edit(BoardVO vo) throws Exception{
		boardDaoo.edit(vo);
	}
}
