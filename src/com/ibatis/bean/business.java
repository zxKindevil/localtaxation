package com.ibatis.bean;

public class business {
	private Integer business_id;
	private Integer property_id;
	private String business_owner;
	private String business_owner_idcard;
	private String business_name;
	private String business_scope;
	private Double rent;
	private Double transfer_fee;
	private String business_start;
	private String business_end;
	private String regist_corporation;
	private String phone1;
	private String phone2;
	private String comment;
	private String record_time;
	private String record_person;
	private String record_person_belong;
	private String checked;
	private String checked_person;
	
	public Integer getBusiness_id() {
		return business_id;
	}
	public void setBusiness_id(Integer business_id) {
		this.business_id = business_id;
	}
	public Integer getProperty_id() {
		return property_id;
	}
	public void setProperty_id(Integer property_id) {
		this.property_id = property_id;
	}
	public String getBusiness_owner() {
		return business_owner;
	}
	public void setBusiness_owner(String business_owner) {
		this.business_owner = business_owner;
	}
	public String getBusiness_owner_idcard() {
		return business_owner_idcard;
	}
	public void setBusiness_owner_idcard(String business_owner_idcard) {
		this.business_owner_idcard = business_owner_idcard;
	}
	public String getBusiness_name() {
		return business_name;
	}
	public void setBusiness_name(String business_name) {
		this.business_name = business_name;
	}
	public String getBusiness_scope() {
		return business_scope;
	}
	public void setBusiness_scope(String business_scope) {
		this.business_scope = business_scope;
	}
	public Double getRent() {
		return rent;
	}
	public void setRent(Double rent) {
		this.rent = rent;
	}
	public Double getTransfer_fee() {
		return transfer_fee;
	}
	public void setTransfer_fee(Double transfer_fee) {
		this.transfer_fee = transfer_fee;
	}
	public String getBusiness_start() {
		return business_start;
	}
	public void setBusiness_start(String business_start) {
		if(business_start.length()==21)
			this.business_start=business_start.substring(0, business_start.length()-2);
		else this.business_start = business_start;
	}
	public String getBusiness_end() {
		return business_end;
	}
	public void setBusiness_end(String business_end) {
		if(business_end.length()==21){
			this.business_end=business_end.substring(0, business_end.length()-2);
		}
		else {
			this.business_end = business_end;
		}
	}
	public String getRegist_corporation() {
		return regist_corporation;
	}
	public void setRegist_corporation(String regist_corporation) {
		this.regist_corporation = regist_corporation;
	}
	public String getPhone1() {
		return phone1;
	}
	public void setPhone1(String phone1) {
		this.phone1 = phone1;
	}
	public String getPhone2() {
		return phone2;
	}
	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getRecord_time() {
		return record_time;
	}
	public void setRecord_time(String record_time) {
		if(record_time.length()==21)
			this.record_time=record_time.substring(0, record_time.length()-2);
		else this.record_time = record_time;
	}
	public String getRecord_person() {
		return record_person;
	}
	public void setRecord_person(String record_person) {
		this.record_person = record_person;
	}
	public String getRecord_person_belong() {
		return record_person_belong;
	}
	public void setRecord_person_belong(String record_person_belong) {
		this.record_person_belong = record_person_belong;
	}
	public String getChecked() {
		return checked;
	}
	public void setChecked(String checked) {
		this.checked = checked;
	}
	public String getChecked_person() {
		return checked_person;
	}
	public void setChecked_person(String checked_person) {
		this.checked_person = checked_person;
	}
}
