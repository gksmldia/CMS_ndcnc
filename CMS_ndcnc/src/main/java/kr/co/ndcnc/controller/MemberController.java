package kr.co.ndcnc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.ndcnc.bean.DepartmentVO;
import kr.co.ndcnc.bean.MemberVO;
import kr.co.ndcnc.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	private MemberService service;
	
	// 회원가입 페이지
	@RequestMapping(value="/member/enrollForm.do")
	public String agreement(Model model) {
		
		List<DepartmentVO> departmentList = service.selectDepartment();
		model.addAttribute("departmentList", departmentList);

		return "member/enrollForm";
	}
	
	// id 중복 체크
	@ResponseBody
	@RequestMapping(value="/member/idCheck.do")
	public int idCheck(@RequestParam String id,HttpServletRequest request) {
		
		int use = service.checkId(id);
		
		return use;

	}
	
	// 회원 가입
	@RequestMapping(value="/member/enroll.do", method=RequestMethod.POST)
	public String membership(@ModelAttribute("member") MemberVO member, Model model) {
		
		member.setPhone(member.getPhone1() + "-" + member.getPhone2() + "-" + member.getPhone3());
		
		System.out.println("컨트롤러");
		System.out.println("member : " + member);
		
		service.enrollMember(member);
		model.addAttribute("memberVO", member);
		
		return "redirect:/";
	}
	
//	@RequestMapping(value="/login/login.do", method=RequestMethod.POST)
//	public String login(@ModelAttribute("member") MemberVO member, Model model) {
//		MemberVO userVO = service.login(member);
//		
//		service.updateDate(member);
//		// member.getEmail()이랑 email 일치하는 userVO 가 있다면
//		if(userVO != null) {
//			
//			// member.getPassword()랑 userVO.getPassword가 일치한다면
//			if(userVO.getPassword().equals(member.getPassword())) { 
//				model.addAttribute("userVO", userVO);
//
//			}
//			else model.addAttribute("msg", "잘못된 비밀번호입니다. 다시 시도하세요.");
//		} else model.addAttribute("msg", "이메일을 인식할 수 없습니다. 다시 시도하세요.");
//		
//		return "redirect:/";
//	}

}
