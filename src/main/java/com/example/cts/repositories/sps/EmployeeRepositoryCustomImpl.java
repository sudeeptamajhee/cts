package com.example.cts.repositories.sps;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.StoredProcedureQuery;

import com.example.cts.entities.Employee;

public class EmployeeRepositoryCustomImpl implements EmployeeRepositoryCustom {

	@PersistenceContext
	private EntityManager em;

	@Override
	public List<Employee> getEmployeeDetail(String firstname, String middlename, String lastname) {
		List<Employee> emps = new ArrayList<Employee>();
		try {
			StoredProcedureQuery query = this.em.createNamedStoredProcedureQuery("getEmployeeDetail");
			query.setParameter("P_FIRST_NAME", firstname);
			query.setParameter("P_MIDDLE_NAME", middlename);
			query.setParameter("P_LAST_NAME", lastname);
			query.execute();

			ResultSet rs = (ResultSet) query.getOutputParameterValue("P_EMP_CUR");
			while (rs.next()) {
				emps.add(new Employee(rs.getLong(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDate(5)));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return emps;
	}

}
