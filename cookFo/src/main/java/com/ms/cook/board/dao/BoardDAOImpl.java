package com.ms.cook.board.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.ms.cook.board.vo.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO {
	@Inject
	SqlSession sqlSession;
	
	public int doAdd(BoardVO vo) {
		return sqlSession.insert("mappers.boardDAO-mapper.doAdd",vo);
	}
}
