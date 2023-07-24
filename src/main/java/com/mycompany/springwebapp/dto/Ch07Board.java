package com.mycompany.springwebapp.dto;

import java.util.Date;

import lombok.Data;

@Data
public class Ch07Board {
	private int bno;
	private String btitle;
	private String bcontent;
	private String bwriter;
	private Date bdate;
}
