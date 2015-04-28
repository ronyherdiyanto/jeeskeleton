package jee.skeleton.web;

import java.util.List;

import javax.xml.ws.ResponseWrapper;

import jee.skeleton.dao.Employee;
import jee.skeleton.service.EmployeeService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class EmployeeController {
	@Autowired
	private EmployeeService employeeService;
	
	@RequestMapping(value="/employee", method = RequestMethod.GET)
	public @ResponseBody EmployeeForm getEmployee(ModelMap map) {
		EmployeeForm form = new EmployeeForm();
		List<Employee> employees = employeeService.findAllEmployee();
		form.setEmployees(employees);
		return form;
	}
}
