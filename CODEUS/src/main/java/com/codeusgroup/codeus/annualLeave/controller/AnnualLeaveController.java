package com.codeusgroup.codeus.annualLeave.controller;

import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.codeusgroup.codeus.annualLeave.model.service.AnnualLeaveService;
import com.codeusgroup.codeus.annualLeave.model.vo.AnnualLeave;
import com.codeusgroup.codeus.empStatus.model.service.EmpStatusService;
import com.codeusgroup.codeus.empStatus.model.vo.EmpStatus;
import com.codeusgroup.codeus.leaveRecode.model.service.LeaveRecodeService;
import com.codeusgroup.codeus.member.model.vo.Member;

@Controller
public class AnnualLeaveController {
	
	@Autowired
	private AnnualLeaveService alService;
	@Autowired
	private EmpStatusService esService;
	@Autowired
	private LeaveRecodeService lrService;
	
	@RequestMapping("annualLeaveMain.al")
	public String annualLeaveMain(Model model, HttpServletRequest request) {
		//연차현황페이지 이동 시 근속연수 구하여 연차갯수 증가(만약 연차등록일이 null' '일 때는 증가x)
		
		HttpSession session = request.getSession();
		session = request.getSession();
		Member member = (Member)session.getAttribute("loginUser");
		String id = member.getmId();

		//EmpStatus empStatus = new EmpStatus(0, null, null, null, null, null, id);

		EmpStatus empStatus = new EmpStatus(0, null, null, null, null, null, id, null, null);

		EmpStatus empStatus1 = esService.selectComTime(id);
		EmpStatus empOffTime = esService.selectOffTime(id);

		model.addAttribute("empStatus1", empStatus1);
		model.addAttribute("empOffTime", empOffTime);	
		
		
		//현재날짜가 입사일과 같다면 insert
		//1. 오늘날짜
		System.out.println("입사일자:"+member.getHireDate());
		LocalDate now = LocalDate.now();
		// 포맷 정의
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("MM/dd");
		// 포맷 적용
		String formatedNow = now.format(formatter);
		// 결과 출력
		System.out.println(formatedNow);
		//오늘날짜와 입사날짜 비교하여 같으면 연차생성
		//2.입사일
		DateFormat sdFormat = new SimpleDateFormat("MM/dd");

		String tempDate = sdFormat.format(member.getHireDate());

		int alCount = alService.selectAnnualStatus(id);
		System.out.println("연차갯수:" + alCount);
		model.addAttribute("alCount", alCount);

		//연차사용갯수 가져오기
		int lr = lrService.selectLrCount(id);
		System.out.println("lr:"+lr);
		model.addAttribute("lr:"+lr);
		
		return "annualLeaveMain";
	}
	
	@RequestMapping("annualLeaveTotal.al")
	public String annualLeaveTotal(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		Member member = (Member)session.getAttribute("loginUser");
		String id = member.getmId();
		EmpStatus empStatus1 = esService.selectComTime(id);
		 
		 model.addAttribute("empStatus1", empStatus1);
		 
		return "annualLeaveTotal";
	}
	
	@RequestMapping("annualStatus.al")
	public void selectAnnualStatus(HttpServletResponse response, HttpSession session) {
		response.setContentType("application/json; charset=UTF-8");
	}
	
	@RequestMapping("addAnnualLeave.al")
	public void addAnnualLeave(HttpServletResponse response) {
		int annual = 0;
		String strResult = null;
		//근속연수구함
		ArrayList<Member> list = alService.selectAnnualCount();
		System.out.println("리스트:"+list);
		//만약 현재년도의 데이터가 없으면 연차 추가하기--> 아니면 알림창뜨기	
		int checkCount = 0;
		int checkAl = alService.selectAddAnnual();
		System.out.println("연차리스트:"+checkAl);

	}

	

	

}
