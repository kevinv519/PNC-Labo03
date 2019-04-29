package com.uca.capas.domain;

import java.util.List;
import java.util.ArrayList;

public class Student {
	private String name;
	private String lastName;
	private String birthDate;
	private String carnet;
	private List<String> phones;
	
	
	
	public Student() {
		name = "";
		lastName = "";
		birthDate = "";
		carnet = "";
		phones = new ArrayList<>(); 
	}

	public Student(String name, String lastName, String birthDate, String carnet, List<String> phones) {
		super();
		this.name = name;
		this.lastName = lastName;
		this.birthDate = birthDate;
		this.carnet = carnet;
		this.phones = phones;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}
	public String getCarnet() {
		return carnet;
	}
	public void setCarnet(String carnet) {
		this.carnet = carnet;
	}
	public List<String> getPhones() {
		return phones;
	}
	public void setPhones(List<String> phones) {
		if (phones.size() <= 3) {
			this.phones = phones;
		} else {
			this.phones = phones.subList(0, 3);
		}
	}
	
	
}
