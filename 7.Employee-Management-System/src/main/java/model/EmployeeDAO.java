package model;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EmployeeDAO {

    Connection con;

    // Insert Employee
    public void insertEmployee(Employee e) {

        try {

            con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(
                    "INSERT INTO employee1(name, department, salary, email) VALUES(?,?,?,?)");

            ps.setString(1, e.getName());
            ps.setString(2, e.getDepartment());
            ps.setDouble(3, e.getSalary());
            ps.setString(4, e.getEmail());

            ps.executeUpdate();

        } catch (Exception ex) {
            ex.printStackTrace();
        }

    }

    // Display All Employees
    public List<Employee> getAllEmployees() {

        List<Employee> list = new ArrayList<Employee>();

        try {

            con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement("SELECT * FROM employee1");

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Employee e = new Employee();

                e.setId(rs.getInt("id"));
                e.setName(rs.getString("name"));
                e.setDepartment(rs.getString("department"));
                e.setSalary(rs.getDouble("salary"));
                e.setEmail(rs.getString("email"));

                list.add(e);

            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return list;
    }

    // Search Employee
    public Employee getEmployeeById(int id) {

        Employee e = new Employee();

        try {

            con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM employee1 WHERE id=?");

            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                e.setId(rs.getInt("id"));
                e.setName(rs.getString("name"));
                e.setDepartment(rs.getString("department"));
                e.setSalary(rs.getDouble("salary"));
                e.setEmail(rs.getString("email"));

            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return e;

    }

    // Update Employee
    public void updateEmployee(Employee e) {

        try {

            con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(
                    "UPDATE employee1 SET name=?, department=?, salary=?, email=? WHERE id=?");

            ps.setString(1, e.getName());
            ps.setString(2, e.getDepartment());
            ps.setDouble(3, e.getSalary());
            ps.setString(4, e.getEmail());
            ps.setInt(5, e.getId());

            ps.executeUpdate();

        } catch (Exception ex) {
            ex.printStackTrace();
        }

    }

    // Delete Employee
    public void deleteEmployee(int id) {

        try {

            con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(
                    "DELETE FROM employee1 WHERE id=?");

            ps.setInt(1, id);

            ps.executeUpdate();

        } catch (Exception ex) {
            ex.printStackTrace();
        }

    }

}