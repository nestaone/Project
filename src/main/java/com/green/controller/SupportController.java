package com.green.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.green.domain.support.NoticeVO;
import com.green.service.support.NoticeService;

import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@AllArgsConstructor
public class SupportController {
	
	private NoticeService service;
	
	//Q & A
	@GetMapping("/qna")
	public String getQna() {
		return "support/qna";
	}
	
	//공지사항
	@GetMapping("/notice")
	public String getNotice(Model model) {
		model.addAttribute("notice",service.list());
		return "support/notice";
	}
	
	//자주묻는질문
	@GetMapping("/faq")
	public String getFAQ() {
		return "support/faq";
	}
	@GetMapping("/faq2")
	public String getFAQ2() {
		return "support/faq2";
	}
	@GetMapping("/faq3")
	public String getFAQ3() {
		return "support/faq3";
	}
	@GetMapping("/write")
	public String getWrite() {
		return "support/write";
	}
	
	@PostMapping("/write")
	public String postWrite(NoticeVO notice, RedirectAttributes rttr) {
		service.create(notice);
		return "redirect:/notice";
	}
	
	@GetMapping("/read")
	public String getRead(Model model, long bno) {
		model.addAttribute("content",service.get(bno));
		return "support/read";
	}
	
	@GetMapping("/delete")
	public String getDelete(long bno, RedirectAttributes rttr) {
		service.delete(bno);
		return "redirect:/notice";
	}
	
	@GetMapping("/modifyno")
	public String getModify(Model model, long bno) {
		model.addAttribute("content",service.get(bno));
		return "support/modify";
	}
	
	@PostMapping("/modifyno")
	public String getModify(NoticeVO notice, RedirectAttributes rttr) {
		service.modify(notice);
		return "redirect:/read?bno="+notice.getBno();
	}
}
