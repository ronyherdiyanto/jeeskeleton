package jee.skeleton;

import javax.transaction.Transactional;

import jee.skeleton.service.EmployeeService;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.ContextHierarchy;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextHierarchy({
    @ContextConfiguration("classpath:databaseContext.xml"),
    @ContextConfiguration("classpath:serviceContext.xml")
})
public class EmployeeServiceTest {
	@Autowired
	private EmployeeService employeeService;
	
	@Test
	@Transactional
	public void getAllEmployeeList() {
		employeeService.findAllEmployee();
	}
}
