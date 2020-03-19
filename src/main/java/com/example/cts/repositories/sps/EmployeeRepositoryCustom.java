package com.example.cts.repositories.sps;

import java.util.List;

import com.example.cts.entities.Employee;

public interface EmployeeRepositoryCustom {
	
	public List<Employee> getEmployeeDetail(String firstname, String middlename, String lastname);

}
