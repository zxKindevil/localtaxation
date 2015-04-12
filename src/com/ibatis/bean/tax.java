package com.ibatis.bean;

public class tax {
	private int tax_id;
	private int property_id;
	private double business_tax;
	private double individual_income_tax;
	private double urban_construction_tax;
	private double education_surcharge;
	private double local_education_surcharge;
	private double stamp_tax;
	private double price_regulation_fund;
	private double building_tax;
	private double land_use_tax;
	private double fine_for_delaying_payment;
	private double fine;
	private double total_tax;
	private String first_half_year;
	private String second_half_year;
	private String tax_year;
	private String comment;
	private String record_time;
	private String record_person;
	private String record_person_belong;
	private String checked;
	private String checked_person;
	
	public double getBusiness_tax() {
		return business_tax;
	}
	public void setBusiness_tax(double business_tax) {
		this.business_tax = business_tax;
	}
	public double getIndividual_income_tax() {
		return individual_income_tax;
	}
	public void setIndividual_income_tax(double individual_income_tax) {
		this.individual_income_tax = individual_income_tax;
	}
	public double getUrban_construction_tax() {
		return urban_construction_tax;
	}
	public void setUrban_construction_tax(double urban_construction_tax) {
		this.urban_construction_tax = urban_construction_tax;
	}
	public double getEducation_surcharge() {
		return education_surcharge;
	}
	public void setEducation_surcharge(double education_surcharge) {
		this.education_surcharge = education_surcharge;
	}
	public double getLocal_education_surcharge() {
		return local_education_surcharge;
	}
	public void setLocal_education_surcharge(double local_education_surcharge) {
		this.local_education_surcharge = local_education_surcharge;
	}
	public double getStamp_tax() {
		return stamp_tax;
	}
	public void setStamp_tax(double stamp_tax) {
		this.stamp_tax = stamp_tax;
	}
	public double getPrice_regulation_fund() {
		return price_regulation_fund;
	}
	public void setPrice_regulation_fund(double price_regulation_fund) {
		this.price_regulation_fund = price_regulation_fund;
	}
	public double getBuilding_tax() {
		return building_tax;
	}
	public void setBuilding_tax(double building_tax) {
		this.building_tax = building_tax;
	}
	public double getLand_use_tax() {
		return land_use_tax;
	}
	public void setLand_use_tax(double land_use_tax) {
		this.land_use_tax = land_use_tax;
	}
	public double getFine_for_delaying_payment() {
		return fine_for_delaying_payment;
	}
	public void setFine_for_delaying_payment(double fine_for_delaying_payment) {
		this.fine_for_delaying_payment = fine_for_delaying_payment;
	}
	public double getFine() {
		return fine;
	}
	public void setFine(double fine) {
		this.fine = fine;
	}
	public double getTotal_tax() {
		return total_tax;
	}
	public void setTotal_tax(double total_tax) {
		this.total_tax = total_tax;
	}
	public String getRecord_person() {
		return record_person;
	}
	public void setRecord_person(String record_person) {
		this.record_person = record_person;
	}
	public String getRecord_time() {
		return record_time;
	}
	public void setRecord_time(String record_time) {
		if(record_time.length()==21)
			this.record_time=record_time.substring(0, record_time.length()-2);
		else this.record_time = record_time;
	}
	public int getTax_id() {
		return tax_id;
	}
	public void setTax_id(int tax_id) {
		this.tax_id = tax_id;
	}
	public int getProperty_id() {
		return property_id;
	}
	public void setProperty_id(int property_id) {
		this.property_id = property_id;
	}
	public String getTax_year() {
		return tax_year;
	}
	public void setTax_year(String tax_year) {
		this.tax_year = tax_year;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
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
	public String getFirst_half_year() {
		return first_half_year;
	}
	public void setFirst_half_year(String first_half_year) {
		this.first_half_year = first_half_year;
	}
	public String getSecond_half_year() {
		return second_half_year;
	}
	public void setSecond_half_year(String second_half_year) {
		this.second_half_year = second_half_year;
	}
	
}
