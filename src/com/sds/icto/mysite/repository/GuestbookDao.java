package com.sds.icto.mysite.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

import com.sds.icto.mysite.domain.GuestbookVo;


@Repository
public class GuestbookDao {

	@Autowired
	SqlMapClientTemplate sqlMapClientTemplate;


	public void insert(GuestbookVo vo) {
		
			sqlMapClientTemplate.insert("guestbook.insert", vo);

	}
	
	@SuppressWarnings("unchecked")
	public void delete(int no, String pwd) {
		@SuppressWarnings("rawtypes")
		Map map = new HashMap();
		map.put("n", no);
		map.put("p", pwd);
		
		sqlMapClientTemplate.delete("guestbook.delete", map);
	}
	

	@SuppressWarnings("unchecked")
	public List<GuestbookVo> fetchList() {
		List<GuestbookVo> list = sqlMapClientTemplate.queryForList("guestbook.list");
		return list;
	}


}
