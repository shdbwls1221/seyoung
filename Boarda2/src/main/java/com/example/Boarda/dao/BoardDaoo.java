package com.example.Boarda.dao;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BoardDaoo {
	public Map<String, Object> list();
	public Map<String, Object> search();
	public Map<String, Object> add();
}
