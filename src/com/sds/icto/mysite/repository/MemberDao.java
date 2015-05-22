package com.sds.icto.mysite.repository;


import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

import com.sds.icto.mysite.domain.MemberVo;


@Repository
public class MemberDao {
	
	@Autowired
	SqlMapClientTemplate sqlMapClientTemplate;

	public void insert(MemberVo vo) {
		sqlMapClientTemplate.insert("member.join", vo);
	}

	public MemberVo getMember(MemberVo vo) {
		MemberVo vo1 = (MemberVo)sqlMapClientTemplate.queryForObject("member.login",vo);
		return vo1;
	}
}
