package com.ms.cook.board.svc;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.ms.cook.board.dao.BoardDAO;
import com.ms.cook.board.vo.BoardVO;

@Service
public class BoardSVCImpl implements BoardSVC {
	@Inject
	@Qualifier("boardDAOImpl")
	BoardDAO boardDAO;
	
	@Override
	public int doAdd(BoardVO vo) {
		return boardDAO.doAdd(vo);
	}
	
	@Override
	public List<BoardVO> list() {
		// TODO Auto-generated method stub
		return boardDAO.list();
	}
	
	@Override
	public BoardVO view(int bno) {
		return boardDAO.view(bno);
	}
}
