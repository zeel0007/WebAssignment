package controller;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import model.Employee;
import model.EmployeeDAO;

@WebServlet("/EmployeeServlet")
public class EmployeeServlet extends HttpServlet {

    EmployeeDAO dao = new EmployeeDAO();

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");

        if (action == null) {

            List<Employee> list = dao.getAllEmployees();
            request.setAttribute("list", list);
            RequestDispatcher rd = request.getRequestDispatcher("employeeList.jsp");
            rd.forward(request, response);
        }

        else if (action.equals("delete")) {

            int id = Integer.parseInt(request.getParameter("id"));

            dao.deleteEmployee(id);

            response.sendRedirect("EmployeeServlet");
        }

        else if (action.equals("edit")) {

            int id = Integer.parseInt(request.getParameter("id"));

            Employee e = dao.getEmployeeById(id);

            request.setAttribute("emp", e);

            RequestDispatcher rd = request.getRequestDispatcher("editEmployee.jsp");

            rd.forward(request, response);

        }

        else if (action.equals("search")) {

            int id = Integer.parseInt(request.getParameter("id"));

            Employee e = dao.getEmployeeById(id);

            request.setAttribute("emp", e);

            RequestDispatcher rd = request.getRequestDispatcher("searchEmployee.jsp");

            rd.forward(request, response);

        }

    }

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");

        if (action.equals("insert")) {

            Employee e = new Employee();

            e.setName(request.getParameter("name"));
            e.setDepartment(request.getParameter("department"));
            e.setSalary(Double.parseDouble(request.getParameter("salary")));
            e.setEmail(request.getParameter("email"));

            dao.insertEmployee(e);

            response.sendRedirect("EmployeeServlet");

        }

        else if (action.equals("update")) {

            Employee e = new Employee();

            e.setId(Integer.parseInt(request.getParameter("id")));
            e.setName(request.getParameter("name"));
            e.setDepartment(request.getParameter("department"));
            e.setSalary(Double.parseDouble(request.getParameter("salary")));
            e.setEmail(request.getParameter("email"));

            dao.updateEmployee(e);

            response.sendRedirect("EmployeeServlet");

        }

    }

}