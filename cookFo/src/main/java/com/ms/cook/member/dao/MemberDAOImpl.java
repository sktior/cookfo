package com.ms.cook.member.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.ms.cook.member.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	@Inject
	SqlSession sqlSession;
	
	@Override
	public int newMember(MemberVO vo) {
		return sqlSession.insert("mappers.memberDAO-mapper.newMember",vo);
	}
}
