package com.example.cts.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.cts.entities.Employee;
import com.example.cts.repositories.EmployeeRepository;
import com.example.cts.repositories.sps.EmployeeRepositorySP;

@Service
public class EmployeeService {

	@Autowired
	EmployeeRepository repo;
	
	@Autowired
	EmployeeRepositorySP sprepo;
		
	public Employee save(Employee emp){
		return repo.save(emp);
	}
	
	public Employee findOne(long id){
		return repo.findById(id).get();
	}
	
	public List<Employee> findAll(){
		return repo.findAll();
	}
	
	public Employee deleteOne(long id){
		Employee emp = null;
		emp = repo.findById(id).get();
		repo.deleteById(id);
		return emp;
	}
	
	public void deleteAll(){
		repo.deleteAll();
	}
	
	public Employee updateOne(Employee emp){
		return repo.saveAndFlush(emp);
	}
	
	public List<Employee> getEmployeeDetail(Employee emp){
		return sprepo.getEmployeeDetail(emp.getFirstname(), emp.getMiddlename(), emp.getLastname());
	}
	
}
