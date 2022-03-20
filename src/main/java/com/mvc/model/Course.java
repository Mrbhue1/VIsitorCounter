package com.mvc.model;

public class Course {
	
	private String courseid;
	private String coursename;
	
	
	public String getCourseid() {
		return courseid;
	}


	public void setCourseid(String courseid) {
		this.courseid = courseid;
	}


	public String getCoursename() {
		return coursename;
	}


	public void setCoursename(String coursename) {
		this.coursename = coursename;
	}


	public Course(String courseid, String coursename) {
		super();
		this.courseid = courseid;
		this.coursename = coursename;
	}


	public Course() {
		
	}
	
	

}
