package com.ibatis.bean;

public class property {
	private int property_id;
	private String system_code;
	private String street;
	private String property_code;
	private String property_owner;
	private String property_owner_idcard;
	private String property_idcard;
	private double property_value;
	private double property_area;
	private String property_category;
	private String property_use;
	private String property_adress;
	private String phone1;
	private String phone2;
	private String comment;
	private String record_time;
	private String record_person;
	private String record_person_belong;
	private String checked;
	private String checked_person;
	
	public int getProperty_id() {
		return property_id;
	}
	public void setProperty_id(int property_id) {
		this.property_id = property_id;
	}
	public String getSystem_code() {
		return system_code;
	}
	public void setSystem_code(String system_code) {
		this.system_code = system_code;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getProperty_code() {
		return property_code;
	}
	public void setProperty_code(String property_code) {
		this.property_code = property_code;
	}
	public String getProperty_owner() {
		return property_owner;
	}
	public void setProperty_owner(String property_owner) {
		this.property_owner = property_owner;
	}
	public String getProperty_owner_idcard() {
		return property_owner_idcard;
	}
	public void setProperty_owner_idcard(String property_owner_idcard) {
		this.property_owner_idcard = property_owner_idcard;
	}
	public String getProperty_idcard() {
		return property_idcard;
	}
	public void setProperty_idcard(String property_idcard) {
		this.property_idcard = property_idcard;
	}
	public double getProperty_value() {
		return property_value;
	}
	public void setProperty_value(double property_value) {
		this.property_value = property_value;
	}
	public double getProperty_area() {
		return property_area;
	}
	public void setProperty_area(double property_area) {
		this.property_area = property_area;
	}
	public String getProperty_category() {
		return property_category;
	}
	public void setProperty_category(String property_category) {
		this.property_category = property_category;
	}
	public String getProperty_use() {
		return property_use;
	}
	public void setProperty_use(String property_use) {
		this.property_use = property_use;
	}
	public String getProperty_adress() {
		return property_adress;
	}
	public void setProperty_adress(String property_adress) {
		this.property_adress = property_adress;
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
