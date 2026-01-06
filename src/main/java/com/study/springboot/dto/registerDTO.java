package com.study.springboot.dto;

import java.util.Date;

import lombok.Data;

@Data

public class registerDTO {
	private int rno;
	private String rid;
	private String rpasswd;
	private String rname;
	private String rtel;
	private String rgender;
	private String rhobby;
	private String rprofile;
	private Date rdate;
}
