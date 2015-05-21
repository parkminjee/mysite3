package com.sds.icto.mysite.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sds.icto.mysite.domain.GuestbookVo;
import com.sds.icto.mysite.service.GuestbookService;




@Controller
@RequestMapping("/guestbook")
public class GuestbookController {
	
	@Autowired
	GuestbookService guestbookService;
	
	@RequestMapping("/list")
	public String index(@ModelAttribute GuestbookVo vo) {
		guestbookService.listGuestbook(vo);
		return "guestbook/list";
	}
	
	@RequestMapping(value="/delete",method=RequestMethod.GET)
	public String deleteform(@RequestParam int no){
		return "guestbook/deleteform";
	}
	
	@RequestMapping(value="/delete",method=RequestMethod.POST)
	public String delete(@RequestParam int no,
			@RequestParam String pwd){
		guestbookService.deleteGuestbook(no, pwd);
		return "redirect:/index";
	}
	
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String insert(@ModelAttribute GuestbookVo vo){
		guestbookService.writeGuestbook(vo);
		return "redirect:/index";
	}
}
