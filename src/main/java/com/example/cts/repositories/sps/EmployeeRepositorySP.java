package com.example.cts.repositories.sps;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.example.cts.entities.Employee;

@Repository
public interface EmployeeRepositorySP extends CrudRepository<Employee, Long>, EmployeeRepositoryCustom {
	
	@Procedure(name = "getEmployeeDetail")
	@Transactional
	public List<Employee> getEmployeeDetail(@Param("P_FIRST_NAME") String firstname,
			@Param("P_MIDDLE_NAME") String middlename, @Param("P_LAST_NAME") String lastname);

}
