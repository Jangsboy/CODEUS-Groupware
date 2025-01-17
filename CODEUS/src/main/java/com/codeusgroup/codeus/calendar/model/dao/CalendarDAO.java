package com.codeusgroup.codeus.calendar.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.codeusgroup.codeus.calendar.model.vo.CalArrTemp;
import com.codeusgroup.codeus.calendar.model.vo.Calendar;
import com.codeusgroup.codeus.member.model.vo.Member;

@Repository("cDAO")
public class CalendarDAO {

	public ArrayList<Calendar> selectCalList(SqlSessionTemplate sqlSession, String mId) {
		return (ArrayList)sqlSession.selectList("calendarMapper.selectCalList", mId);
	}

	public ArrayList<Calendar> readAdminCalList(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("calendarMapper.readAdminCalList");
	}

	public int addCal(SqlSessionTemplate sqlSession, Calendar cal) {
		return sqlSession.insert("calendarMapper.insertCal", cal);
	}

	public int addModalSch(SqlSessionTemplate sqlSession, Calendar cal) {
		return sqlSession.insert("calendarMapper.addModalSch", cal);
	}

	public String scheNo(SqlSessionTemplate sqlSession) {
		String seq = sqlSession.selectOne("calendarMapper.scheNo");
		
		return seq;
	}

	public ArrayList<Calendar> selectSchList(SqlSessionTemplate sqlSession, CalArrTemp cat) {
	//	System.out.println("DAOCat1: " + cat);
		return (ArrayList)sqlSession.selectList("calendarMapper.selectSchList", cat);
	}
	public ArrayList<Calendar> selectadminSchList(SqlSessionTemplate sqlSession, CalArrTemp cat) {
		return (ArrayList)sqlSession.selectList("calendarMapper.selectadminSchList", cat);
	}

	public ArrayList<Calendar> selectNoCalSchList(SqlSessionTemplate sqlSession, CalArrTemp cat) {
//		System.out.println("DAOCat2: " + cat);
		return (ArrayList)sqlSession.selectList("calendarMapper.selectNoCalSchList", cat);
	}

	public Calendar selectOneSch(SqlSessionTemplate sqlSession, int scheNo) {
		return sqlSession.selectOne("calendarMapper.selectOneSch", scheNo);
	}

	public ArrayList<Member> selectAtd(SqlSessionTemplate sqlSession, HashMap<String, String> map) {
		System.out.println("참가자 이름  DAOscheNo: " + map);
		return (ArrayList)sqlSession.selectList("calendarMapper.selectAtd", map);
	}

	public ArrayList<Member> mSearchList(SqlSessionTemplate sqlSession, HashMap<String, String> map) {
		return (ArrayList)sqlSession.selectList("calendarMapper.mSearchList", map);
	}

	public ArrayList<String> findDelSchNo(SqlSessionTemplate sqlSession, HashMap<String, Object> map) {
		return (ArrayList)sqlSession.selectList("calendarMapper.findDelSchNo", map);
	}

	public ArrayList<String> selectGroupId(SqlSessionTemplate sqlSession, HashMap<String, Object> map) {
		System.out.println("DAO groupId map" + map);
		return (ArrayList)sqlSession.selectList("calendarMapper.selectGroupId", map);
	}

	public int delSch(SqlSessionTemplate sqlSession, HashMap<String, Object> map) {
		return sqlSession.delete("calendarMapper.delSch", map);
	}

	public int addDetailSch(SqlSessionTemplate sqlSession, HashMap<String, Object> map) {
		System.out.println("addDetailSch DAO: " + map);
		return sqlSession.insert("calendarMapper.addDetailSch", map);
	}

	public int insertMultiAtt(SqlSessionTemplate sqlSession, HashMap<String, Object> map) {
		System.out.println("insertMultiAtt DAO: " + map);
		return sqlSession.insert("calendarMapper.insertMultiAtt", map);
	}

	public int doEditSch(SqlSessionTemplate sqlSession, HashMap<String, Object> map) {
		return sqlSession.update("calendarMapper.doEditSch", map);
	}

}
