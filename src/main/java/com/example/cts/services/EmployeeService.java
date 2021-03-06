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

	public Employee save(Employee emp) {
		return repo.save(emp);
	}

	public Employee findOne(long id) {
		return repo.findById(id).get();
	}

	public List<Employee> findAll() {
		return repo.findAll();
	}

	public Employee deleteOne(long id) {
		Employee emp = null;
		emp = repo.findById(id).get();
		repo.deleteById(id);
		return emp;
	}

	public void deleteAll() {
		repo.deleteAll();
	}

	public Employee updateOne(Employee emp) {
		return repo.saveAndFlush(emp);
	}

	public List<Employee> findBySP(Employee emp) {
		return sprepo.findBySP(emp.getFirstname(), emp.getMiddlename(), emp.getLastname());
	}

	public List<Employee> findByFirstname(Employee emp) {
		return sprepo.findByFirstname(emp.getFirstname());
	}
	
	public List<Employee> findByMiddlename(Employee emp) {
		return sprepo.findByMiddlename(emp.getMiddlename());
	}
	
	public List<Employee> findByLastname(Employee emp) {
		return sprepo.findByLastname(emp.getLastname());
	}

	public List<Employee> findByName(Employee emp) {
		return sprepo.findByName(emp.getFirstname(), emp.getMiddlename(), emp.getLastname());
	}

}
