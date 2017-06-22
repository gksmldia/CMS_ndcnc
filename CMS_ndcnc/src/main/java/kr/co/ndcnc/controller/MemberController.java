package kr.co.ndcnc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.ndcnc.bean.DepartmentVO;
import kr.co.ndcnc.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	private MemberService service;
	
	@RequestMapping(value="/member/enrollForm.do")
	public String agreement(Model model) {
		
		List<DepartmentVO> departmentList = service.selectDepartment();
		model.addAttribute("departmentList", departmentList);

		return "member/enrollForm";
	}
	
	@ResponseBody
	@RequestMapping(value="/member/idCheck.do")
	public int idCheck(@RequestParam String id,HttpServletRequest request) {
		
		int use = service.checkId(id);
		
		return use;

	}

}
