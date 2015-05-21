package com.sds.icto.mysite.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sds.icto.mysite.domain.BoardVo;
import com.sds.icto.mysite.service.BoardService;




@Controller
@RequestMapping("/board")
public class BoardController {
	
	@Autowired
	BoardService boardService;
	
	@RequestMapping("/board")
	public String index(@ModelAttribute BoardVo vo) {
		boardService.listBoard();
		return "board/board";
	}
	
	@RequestMapping(value="/delete",method=RequestMethod.GET)
	public String deleteform(@RequestParam int no){
		return "board/deleteform";
	}
	
	@RequestMapping(value="/delete",method=RequestMethod.POST)
	public String delete(@RequestParam int no){
		boardService.deleteBoard(no);
		return "redirect:/board";
	}
	
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String insert(@ModelAttribute BoardVo vo){
		boardService.writeBoard(vo);
		return "redirect:/board";
	}
	
	@RequestMapping(value="/update",method=RequestMethod.POST)
	public String update(@ModelAttribute BoardVo vo){
		boardService.updateBoard(vo);
		return "redirec:/board";
	}
}
