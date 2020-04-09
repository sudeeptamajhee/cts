package com.example.cts.repositories.sps;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.example.cts.entities.Employee;

@Repository
public interface EmployeeRepositorySP extends CrudRepository<Employee, Long>, EmployeeRepositoryCustom {

	@Procedure(name = "getEmployeeDetail")
	@Transactional
	public List<Employee> findBySP(@Param("P_FIRST_NAME") String firstname, @Param("P_MIDDLE_NAME") String middlename,
			@Param("P_LAST_NAME") String lastname);

	@Query(value = "SELECT * FROM CTS_EMPLOYEES WHERE FIRSTNAME = ?1 AND MIDDLENAME = ?2 AND LASTNAME = ?3", nativeQuery = true)
	public List<Employee> findByName(String firstname, String middlename, String lastname);

	public List<Employee> findByFirstname(String firstname);

	public List<Employee> findByMiddlename(String middlename);

	public List<Employee> findByLastname(String lastname);

}
