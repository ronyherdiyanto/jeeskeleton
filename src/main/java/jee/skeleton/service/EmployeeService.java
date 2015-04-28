package jee.skeleton.service;

import java.util.List;

import jee.skeleton.dao.Employee;
import jee.skeleton.dao.EmployeeDAO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class EmployeeService {
	@Autowired
	@Qualifier("EmployeeDAOImpl")
	private EmployeeDAO employeeDAO;
	
	public List<Employee> findAllEmployee() {
		return employeeDAO.findAllEmployees();
	}
	
}
