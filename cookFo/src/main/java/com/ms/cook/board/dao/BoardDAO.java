package com.ms.cook.board.dao;

import java.util.List;

import com.ms.cook.board.vo.BoardVO;

public interface BoardDAO {
	public int doAdd(BoardVO vo);
	public List<BoardVO> list();
	public BoardVO view(int bno);
	public int cntplus(int bno);
	public int domod(BoardVO vo);
	public int dodel(int bno);
}
