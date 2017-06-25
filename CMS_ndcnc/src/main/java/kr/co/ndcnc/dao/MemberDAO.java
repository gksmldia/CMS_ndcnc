package kr.co.ndcnc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.ndcnc.bean.DepartmentVO;
import kr.co.ndcnc.bean.MemberVO;

@Repository
public class MemberDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<DepartmentVO> selectDepartment() {
		List<DepartmentVO> departmentList = sqlSessionTemplate.selectList("kr.co.ndcnc.dao.MemberDAO.selectDepartment");

		return departmentList;
	}
	
	public int checkId(String id) {
		int use = sqlSessionTemplate.selectOne("kr.co.ndcnc.dao.MemberDAO.checkId", id);

		return use;
	}
	
	public void enrollMember(MemberVO member) {
		sqlSessionTemplate.insert("kr.co.ndcnc.dao.MemberDAO.enrollMember", member);
	}


}
