package com.sds.icto.mysite.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public String index(Model model) {
		List<BoardVo> list = boardService.listBoard();
		model.addAttribute("list", list);
		return "board/board";
	}

	@RequestMapping(value = "/boarddelete", method = RequestMethod.GET)
	public String deleteform(@RequestParam int no) {
		return "board/boarddelete";
	}

	@RequestMapping(value = "/boarddelete", method = RequestMethod.POST)
	public String delete(@RequestParam int no) {
		boardService.deleteBoard(no);
		return "redirect:/board/board";
	}

	@RequestMapping(value = "/boardwrite", method = RequestMethod.GET)
	public String insertform(@ModelAttribute BoardVo vo) {
		return "board/boardwrite";
	}

	@RequestMapping(value = "/boardwrite", method = RequestMethod.POST)
	public String insert(@ModelAttribute BoardVo vo) {
		boardService.writeBoard(vo);

		return "redirect:/board/board";
	}


	 @RequestMapping(value="/boardupdate",method=RequestMethod.GET)
	 public String updateform(@RequestParam int no, Model model){
		 BoardVo boardVo = boardService.readBoard(no);
		 model.addAttribute( "update", boardVo);
	 return"board/boardupdate";
	 }
	
	 @RequestMapping(value="/boardupdate",method=RequestMethod.POST)
	 public String update(@ModelAttribute BoardVo vo){
	
	 boardService.updateBoard(vo);
	 return "redirect:/board/board";
	 }

	@RequestMapping(value = "/boardread", method = RequestMethod.GET)
	public String read(@RequestParam int no, Model model) {

		BoardVo boardVo = boardService.readBoard(no);

		model.addAttribute("read", boardVo);
		return "board/boardread";
	}
}
