package com.study.springboot.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.registerDTO;

@Mapper
public interface IregisterDAO {
	public List<registerDTO> listDao(); //회원목록
	public registerDTO viewDao(int rno); // 회원정보 상세보기
	public int writeDao(registerDTO dto); // 회원가입
	public int deleteDao(int rno); // 회원탈퇴
	public int updateDao(registerDTO dto); // 회원정보 수정
	public boolean checkPasswordDao(int rno, String passwd); //비밀번호 체크 (수정/삭제 공통)
}
