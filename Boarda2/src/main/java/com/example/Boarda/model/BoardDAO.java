package com.example.Boarda.model;

import java.util.List;

public interface BoardDAO {
		public void add(BoardVO vo) throws Exception;
		public List<BoardVO> list() throws Exception;
		public BoardVO view(int num) throws Exception;
		public void edit(BoardVO vo)  throws Exception;
}
