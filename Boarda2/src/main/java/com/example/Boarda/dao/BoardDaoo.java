package com.example.Boarda.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.Boarda.model.BoardVO;

@Mapper
public interface BoardDaoo {
	public List<BoardVO> list() throws Exception;
	public BoardVO view(int num) throws Exception;
	public void edit(BoardVO vo) throws Exception;
	public void add(BoardVO vo) throws Exception;
}
