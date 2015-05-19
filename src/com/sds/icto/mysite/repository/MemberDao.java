package com.sds.icto.mysite.repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Repository;

import com.sds.icto.mysite.domain.MemberVo;
import com.sds.icto.mysite.exception.MemberDaoException;


@Repository
public class MemberDao {

	private Connection getConnection() throws ClassNotFoundException,
			SQLException {
		Connection conn = null;
		// 1. ?쒕씪?대쾭 濡쒕뵫
		Class.forName("oracle.jdbc.driver.OracleDriver");
		// 2. connection ?앹꽦
		String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
		conn = DriverManager.getConnection(dbURL, "webdb", "webdb");
		return conn;
	}

	public void insert(MemberVo vo) {
		try{
		// 1. Connection ?앹꽦
		Connection conn = getConnection();
		// 2. Statement(SQL) 以?퉬
		String sql = "insert into member values(member_no_seq.nextval,?,?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		// 3.binding
		pstmt.setString(1, vo.getName());
		pstmt.setString(2, vo.getEmail());
		pstmt.setString(3, vo.getPassword());
		pstmt.setString(4, vo.getGender());

		// 4. query ?ㅽ뻾
		pstmt.executeUpdate();
		// 5. ?먯썝?뺣━
			pstmt.close();
			conn.close();
		}catch(ClassNotFoundException | SQLException ex){
			throw new MemberDaoException(ex.getMessage());
		}
	}

	public MemberVo getMember(MemberVo vo) {
		MemberVo memberVo = null;
		
		try{
		// 1. Connection ?앹꽦
		Connection conn = getConnection();

		// 2. Statement(SQL) 以?퉬
		String sql = "SELECT * FROM MEMBER where email=? and password =?";
		PreparedStatement pstmt = conn.prepareStatement(sql);

		// 3.binding
		pstmt.setString(1, vo.getEmail());
		pstmt.setString(2, vo.getPassword());

		// 4. query ?ㅽ뻾
		ResultSet rs = pstmt.executeQuery();
		
		
		if(rs.next()){
			int no = rs.getInt(1);
			String name = rs.getString(2);
			String email = rs.getString(3);
			//String password = rs.getString(4);
			String gender = rs.getString(5);
			
			memberVo = new MemberVo();
			memberVo.setNo(no);
			memberVo.setName(name);
			memberVo.setEmail(email);
			//memberVo.setPassword(password);
			memberVo.setGender(gender);
		}

		// 5. ?먯썝?뺣━
		rs.close();
		pstmt.close();
		conn.close();
		}catch(ClassNotFoundException | SQLException ex){
			throw new MemberDaoException(ex.getMessage());
		}
		return memberVo;
	}
}
