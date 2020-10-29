package com.ms.cook.member.svc;

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
}
