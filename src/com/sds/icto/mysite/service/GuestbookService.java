package com.sds.icto.mysite.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sds.icto.mysite.domain.GuestbookVo;
import com.sds.icto.mysite.repository.GuestbookDao;


@Service
public class GuestbookService {

	@Autowired
	GuestbookDao guestbookDao;
	
	public void writeGuestbook(GuestbookVo vo){
		guestbookDao.insert(vo);
	}
	
	public void deleteGuestbook(int no, String pwd){
		guestbookDao.delete(no, pwd);
	}
	
	public List<GuestbookVo> listGuestbook(){
		List<GuestbookVo> list = guestbookDao.fetchList();
		return list;
	}
}
