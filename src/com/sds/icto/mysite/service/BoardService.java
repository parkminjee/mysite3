package com.sds.icto.mysite.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sds.icto.mysite.domain.BoardVo;
import com.sds.icto.mysite.repository.BoardDao;



@Service
public class BoardService {

	@Autowired
	BoardDao boardDao;
	
	public void writeBoard(BoardVo vo){
		boardDao.insert(vo);
	}
	
	public void deleteBoard(int no){
		boardDao.delete(no);
	}
	
	public List<BoardVo> listBoard(){
		List<BoardVo> list = boardDao.fetchList();
		return list;
	}

	
	public void updateBoard(BoardVo vo){
		boardDao.update(vo);
	}
	
	public BoardVo readBoard(int no){
		BoardVo boardVo = boardDao.read(no);
		return boardVo;
	}

}
