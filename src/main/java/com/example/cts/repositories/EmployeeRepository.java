package com.example.cts.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.cts.entities.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, Long> {


}
