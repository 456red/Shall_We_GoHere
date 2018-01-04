package com.gohere.schedule;

public class PlanDTO {
	private String Email;
	private String city;
	private int stay_date;
	private String title;
	private String depart_date;
	private int ref;
	private int step;
	
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public int getStay_date() {
		return stay_date;
	}
	public void setStay_date(int stay_date) {
		this.stay_date = stay_date;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDepart_date() {
		return depart_date;
	}
	public void setDepart_date(String depart_date) {
		this.depart_date = depart_date;
	}
	public int getRef() {
		return ref;
	}
	public void setRef(int ref) {
		this.ref = ref;
	}
	public int getStep() {
		return step;
	}
	public void setStep(int step) {
		this.step = step;
	}
}
