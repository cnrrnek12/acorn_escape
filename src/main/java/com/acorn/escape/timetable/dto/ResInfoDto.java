package com.acorn.escape.timetable.dto;

public class ResInfoDto {
	private int res_no;
	private String res_name;
	private String resdate;
	private String time;
	private String bname;
	private String thema;
	private String phone;
	private String cost;
	private String personal;
	public ResInfoDto() {}
	public ResInfoDto(int res_no, String res_name, String resdate, String time, String bname, String thema, String phone,
			String cost, String personal) {
		super();
		this.res_no = res_no;
		this.res_name = res_name;
		this.resdate = resdate;
		this.time = time;
		this.bname = bname;
		this.thema = thema;
		this.phone = phone;
		this.cost = cost;
		this.personal = personal;
	}
	public int getres_no() {
		return res_no;
	}
	public void setres_no(int res_no) {
		this.res_no = res_no;
	}
	public String getRes_name() {
		return res_name;
	}
	public void setRes_name(String res_name) {
		this.res_name = res_name;
	}
	public String getResdate() {
		return resdate;
	}
	public void setResdate(String resdate) {
		this.resdate = resdate;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getThema() {
		return thema;
	}
	public void setThema(String thema) {
		this.thema = thema;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getCost() {
		return cost;
	}
	public void setCost(String cost) {
		this.cost = cost;
	}
	public String getPersonal() {
		return personal;
	}
	public void setPersonal(String personal) {
		this.personal = personal;
	}
	
	
	
}
