package com.ms.cook.member.dao;

import java.util.HashMap;
import java.util.Map;

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
	
	@Override
	public Map<String, String> chkID(String id) {
		int num = sqlSession.selectOne("mappers.memberDAO-mapper.chkID",id);
		Map<String, String> result = new HashMap<String, String>();
		if(num >= 1) {
			result.put("result", "false");
		}else {
			result.put("result", "true");
		}
		return result;
	}
	
	/**
	 * 이메일 체크
	 */
	@Override
	public Map<String, String> chkEMAIL(String email) {
		int num = sqlSession.selectOne("mappers.memberDAO-mapper.chkEMAIL", email);
		Map<String,String> result = new HashMap<String, String>();
		if(num >= 1) {
			result.put("result", "false");
		}else {
			result.put("result", "true");
		}
		return result;
	}
	
	@Override
	public MemberVO login(String id) {
		return sqlSession.selectOne("mappers.memberDAO-mapper.login", id);
	}
}
