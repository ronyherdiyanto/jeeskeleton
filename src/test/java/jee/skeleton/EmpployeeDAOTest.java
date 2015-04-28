package jee.skeleton;

import java.math.BigDecimal;
import java.util.List;

import javax.transaction.Transactional;

import jee.skeleton.dao.Employee;
import jee.skeleton.dao.EmployeeDAO;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.ContextHierarchy;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextHierarchy({
    @ContextConfiguration("classpath:databaseContext.xml"),
    @ContextConfiguration("classpath:serviceContext.xml")
})
public class EmpployeeDAOTest {
	@Autowired
	@Qualifier("EmployeeDAOImpl")
	private EmployeeDAO employeeDAO;
	
	@Test
	@Transactional
	public void getEmployeeList() {
		List<Employee> employees = employeeDAO.findAllEmployees();
		for (Employee employee : employees) {
			System.out.println(employee.getId() + "|" + employee.getName());
		}
	}
	
	@Test
	@Transactional
	@Rollback(false)
	public void createNewEmployee() {
		Employee employee = new Employee();
		employee.setName("Rony Herdiyanto");
		employee.setSalary(new BigDecimal("2000000"));
		employee.setSsn("1234567");
		employeeDAO.saveEmployee(employee);
	}
}
