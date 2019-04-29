package com.uca.capas.controller;

import java.time.LocalDate;
import java.time.Period;
import java.time.format.DateTimeFormatter;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.uca.capas.domain.Student;

@Controller
public class MainController {
	
	@RequestMapping("/")
	public ModelAndView initMain() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main");
		return mav;
	}
	
	@RequestMapping(path = "/formInfo", method = RequestMethod.POST)
	public ModelAndView submitInfo(@RequestParam(name = "name") String name, @RequestParam(name = "lastName") String lastName,
			@RequestParam(name = "birthDate") String bdate, @RequestParam(name = "carnet") String carnet,
			@RequestParam(name = "phones") String phones) {
		ModelAndView mav = new ModelAndView();
		//Getting age
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
		LocalDate today = LocalDate.now();
		LocalDate bday = LocalDate.parse(bdate, formatter);
		int age = Period.between(bday, today).getYears();
		
		//Filling model info
		Student student = new Student();
		student.setName(name);
		student.setLastName(lastName);
		student.setBirthDate(bdate);
		student.setCarnet(carnet);
		if (phones.trim().isEmpty()) {
			student.setPhones(Arrays.asList());
		} else {
			student.setPhones(Arrays.asList(phones.trim().split(";")));
		}
		
		mav.setViewName("info");
		//Adding objects
		mav.addObject("hasLegalAge", age >= 18);
		mav.addObject("student", student);
		return mav;
	}
}
