package jee.skeleton.web;

import java.util.List;

import jee.skeleton.dao.Employee;

public class EmployeeForm {
	private List<Employee> employees;

	public List<Employee> getEmployees() {
		return employees;
	}

	public void setEmployees(List<Employee> employees) {
		this.employees = employees;
	}
}
