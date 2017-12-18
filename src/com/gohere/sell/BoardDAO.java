package com.gohere.sell;

import java.util.List;

import com.gohere.util.MakeRow;

public interface BoardDAO {
	//공통적인 메서드를 상속해주기 위해 생성
	
	//Insert
	public int insert(BoardDTO boardDTO) throws Exception;
	
	//Update
	public int update(BoardDTO boardDTO) throws Exception;
	
	//Delete
	public int delete(int num) throws Exception;
	
	//SelectOne
	public BoardDTO selectOne(int num) throws Exception;
	
	//SelectList
	public List<BoardDTO> selectList(MakeRow makeRow) throws Exception;
	
	//GetCount
	public int getTotCount(MakeRow makeRow) throws Exception;
	
	//Hit
	public int hit(int num) throws Exception;
}
