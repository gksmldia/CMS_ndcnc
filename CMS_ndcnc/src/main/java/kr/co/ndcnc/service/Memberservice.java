package kr.co.ndcnc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.ndcnc.dao.MemberDAO;

@Service
public class MemberService {

	@Autowired
	private MemberDAO dao;
}
