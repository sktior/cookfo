package com.ms.cook.board.dao;

import java.util.List;

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
	
	@Override
	public List<BoardVO> list() {
		return sqlSession.selectList("mappers.boardDAO-mapper.list");
	}
	
	@Override
	public BoardVO view(int bno) {
		return sqlSession.selectOne("mappers.boardDAO-mapper.view",bno);
	}
	
	@Override
	public int cntplus(int bno) {
		return sqlSession.update("mappers.boardDAO-mapper.cntplus",bno);
	}
	
	@Override
	public int domod(BoardVO vo) {
		return sqlSession.update("mappers.boardDAO-mapper.domod",vo);
	}
	
	@Override
	public int dodel(int bno) {
		return sqlSession.delete("mappers.boardDAO-mapper.dodel",bno);
	}
}
