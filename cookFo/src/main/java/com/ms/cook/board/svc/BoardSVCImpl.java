package com.ms.cook.board.svc;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.ms.cook.board.dao.BoardDAO;
import com.ms.cook.board.dao.ReplyDAO;
import com.ms.cook.board.vo.BoardVO;
import com.ms.cook.utils.paging.PagingCriteria;

@Service
public class BoardSVCImpl implements BoardSVC {
	@Inject
	@Qualifier("boardDAOImpl")
	BoardDAO boardDAO;
	@Qualifier("replyDAOImpl")
	ReplyDAO replyDAO;
	
	@Override
	public int doAdd(BoardVO vo) {
		return boardDAO.doAdd(vo);
	}
	
	@Override
	public List<BoardVO> list(PagingCriteria paging) {
		// TODO Auto-generated method stub
		return boardDAO.list(paging);
	}
	
	@Override
	public BoardVO view(int bno) {
		return boardDAO.view(bno);
	}
	
	@Override
	public int cntplus(int bno) {
		return boardDAO.cntplus(bno);
	}
	
	@Override
	public int domod(BoardVO vo) {
		return boardDAO.domod(vo);
	}
	
	@Override
	public int dodel(int bno) {
		return boardDAO.dodel(bno);
	}
	
	
	
	@Override
	public int boardcnt() {
		return boardDAO.boardcnt();
	}
}
