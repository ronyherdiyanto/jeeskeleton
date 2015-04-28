package jee.skeleton.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository
@Qualifier(value = "EmployeeDAOImpl")
public class EmployeeDAOImpl extends AbstractDAO implements EmployeeDAO{

	@Override
	public void saveEmployee(Employee employee) {
		// TODO Auto-generated method stub
		persist(employee);
	}

	@Override
	public List<Employee> findAllEmployees() {
		// TODO Auto-generated method stub
		Criteria criteria = getSession().createCriteria(Employee.class);
        return (List<Employee>) criteria.list();

	}

	@Override
	public void deleteEmployeeBySsn(String ssn) {
		// TODO Auto-generated method stub
		Query query = getSession().createSQLQuery("delete from Employee where ssn = :ssn");
        query.setString("ssn", ssn);
        query.executeUpdate();

	}

	@Override
	public Employee findBySsn(String ssn) {
		// TODO Auto-generated method stub
		Criteria criteria = getSession().createCriteria(Employee.class);
        criteria.add(Restrictions.eq("ssn",ssn));
        return (Employee) criteria.uniqueResult();
	}

	@Override
	public void updateEmployee(Employee employee) {
		// TODO Auto-generated method stub
		getSession().update(employee);
	}

}
