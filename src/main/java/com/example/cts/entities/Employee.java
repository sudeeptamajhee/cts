package com.example.cts.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedStoredProcedureQueries;
import javax.persistence.NamedStoredProcedureQuery;
import javax.persistence.ParameterMode;
import javax.persistence.StoredProcedureParameter;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "CTS_EMPLOYEES")
@NamedStoredProcedureQueries({
	@NamedStoredProcedureQuery(
		name = "getEmployeeDetail", 
		procedureName = "CTS_EMPLOYEE_PROC", 
		resultClasses = Employee.class,
		parameters={
			@StoredProcedureParameter(mode=ParameterMode.IN, name="P_FIRST_NAME", type=String.class),
			@StoredProcedureParameter(mode=ParameterMode.IN, name="P_MIDDLE_NAME", type=String.class),
			@StoredProcedureParameter(mode=ParameterMode.IN, name="P_LAST_NAME", type=String.class),
			@StoredProcedureParameter(mode=ParameterMode.REF_CURSOR, name="P_EMP_CUR", type=void.class)
		})
})
public class Employee implements Serializable {
	private static final long serialVersionUID = 2677337852556048670L;
	
	@Id
	@GeneratedValue
	@Column(nullable=false, length=30)
	private Long id;
	@Column(nullable=false, length=250)
	private String firstname;
	@Column(nullable=true, length=250)
	private String middlename;
	@Column(nullable=false, length=250)
	private String lastname;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(nullable=false, length=250)
	private Date doj;

	public Employee() {
	}

	public Employee(String firstname, String middlename, String lastname, Date doj) {
		super();
		this.firstname = firstname;
		this.middlename = middlename;
		this.lastname = lastname;
		this.doj = doj;
	}

	public Employee(Long id, String firstname, String middlename, String lastname, Date doj) {
		super();
		this.id = id;
		this.firstname = firstname;
		this.middlename = middlename;
		this.lastname = lastname;
		this.doj = doj;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getMiddlename() {
		return middlename;
	}

	public void setMiddlename(String middlename) {
		this.middlename = middlename;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public Date getDoj() {
		return doj;
	}

	public void setDoj(Date doj) {
		this.doj = doj;
	}

	@Override
	public String toString() {
		return "Employee [id=" + id + ", firstname=" + firstname + ", middlename=" + middlename + ", lastname="
				+ lastname + ", doj=" + doj + "]";
	}

}
