package com.ms.cook.board.svc;

import java.util.List;

import com.ms.cook.board.vo.BoardVO;

public interface BoardSVC {
	public int doAdd(BoardVO vo);
	public List<BoardVO> list();
	public BoardVO view(int bno);
}
