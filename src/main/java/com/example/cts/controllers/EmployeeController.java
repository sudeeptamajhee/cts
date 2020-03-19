package com.example.cts.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.cts.entities.Employee;
import com.example.cts.services.EmployeeService;

@Controller
@RequestMapping("/employee")
public class EmployeeController {
	
	@Autowired
	EmployeeService srv;
	
	private List<Employee> emps = null;
	
	@RequestMapping("/home")
	@GetMapping
	public String home(ModelMap model){
		return "employee/home";
	}
	
	@RequestMapping("/all")
	@PostMapping
	public String findAll(ModelMap model){
		try {
			createModelMap(model, "find", srv.findAll());
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
		}
		return "employee/all";
	}
		
	@RequestMapping("/findbysp")
	@GetMapping
	public String getEmployeeDetail(ModelMap model, Employee emp){
		try {
			createModelMap(model, "findbysp", srv.getEmployeeDetail(emp));
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
		}
		return "employee/find";
	}
	
	@RequestMapping("/find")
	@PostMapping
	public String findOne(ModelMap model, @RequestParam(value="id", required=false) Long id){
		try {
			if(id != null)
				createModelMap(model, "find", srv.findOne(id));
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
		}
		return "employee/find";
	}
	
	@RequestMapping("/delete")
	@DeleteMapping
	public String deleteOne(ModelMap model, @RequestParam(value="id", required=false) Long id){
		try {
			if(id != null)
				createModelMap(model, "delete", srv.deleteOne(id));
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
		}
		return "employee/delete";
	}
		
	@RequestMapping("/update")
	@PostMapping
	public String update(ModelMap model, Employee emp){
		try {
			if(emp != null && emp.getId() != 0)
				createModelMap(model, "update", srv.updateOne(emp));
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
		}
		return "employee/update";
	}
			
	@RequestMapping("/findtoupdate")
	@PostMapping
	public String findToUpdate(ModelMap model, @RequestParam(value="id", required=false) Long id){
		try {
			if(id != null)
				createModelMap(model, "findtoupdate", srv.findOne(id));
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
		}
		return "employee/update";
	}
	
	@RequestMapping("/add")
	@PutMapping(consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
	public String add(ModelMap model, Employee emp){
		try {
			if(emp != null && emp.getFirstname() != null)
				createModelMap(model, "add", srv.save(emp));
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
		}
		return "employee/add";
	}
	
	private void createModelMap(ModelMap model, String action, Employee emp){
		emps = new ArrayList<>();
		emps.add(emp);
		model.addAttribute("action", action);
		model.addAttribute("detail", emps);
	}
	
	private void createModelMap(ModelMap model, String action, List<Employee> empList){
		emps = new ArrayList<>();
		emps.addAll(empList);
		model.addAttribute("action", action);
		model.addAttribute("detail", emps);
	}
}
