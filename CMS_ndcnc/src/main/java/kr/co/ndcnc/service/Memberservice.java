package kr.co.ndcnc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.ndcnc.bean.DepartmentVO;
import kr.co.ndcnc.dao.MemberDAO;

@Service
public class MemberService {

	@Autowired
	private MemberDAO dao;
	
	public List<DepartmentVO> selectDepartment() {
		List<DepartmentVO> departmentList = dao.selectDepartment();

		return departmentList;
	}
	
	public int checkId(String id) {
		int use = dao.checkId(id);
		
		return use;
	}

}
