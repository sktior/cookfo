package com.ms.cook.member.svc;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.ms.cook.member.vo.MemberVO;

import com.ms.cook.member.dao.MemberDAO;

@Service
public class MemberSVCImpl implements MemberSVC {
	@Inject
	@Qualifier("memberDAOImpl")
	MemberDAO memberDAO;
	
	@Override
	public int newMember(MemberVO vo) {
		return memberDAO.newMember(vo);
	}
	
	@Override
	public Map<String, String> chkID(String id) {
		return memberDAO.chkID(id);
	}
	
	@Override
	public Map<String, String> chkEMAIL(String email) {
		return memberDAO.chkEMAIL(email);
	}
	
	@Override
	public MemberVO login(String id) {
		return memberDAO.login(id);
	}
	
	@Override
	public int doMod(MemberVO vo) {
		return memberDAO.doMod(vo);
	}
	@Override
	public String getPw(String id) {
		return memberDAO.getPw(id);
	}
	
	@Override
	public int doDel(HashMap<String, Object> param) {
		return memberDAO.doDel(param);
	}
}
