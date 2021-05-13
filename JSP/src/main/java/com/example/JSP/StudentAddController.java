package com.example.JSP;

import business.abstracts.StudentsService;
import business.concretes.StudentManager;
import core.concretes.MyConnectionServiceAdapter;
import dataAccess.concretes.StudentDaoManager;
import entity.concretes.Students;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "StudentAddController", urlPatterns = "/student-add")
public class StudentAddController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("student-add.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String surname = req.getParameter("surname");
        Integer age = Integer.parseInt(req.getParameter("age"));
        StudentsService studentsService = new StudentManager(new StudentDaoManager(new MyConnectionServiceAdapter()));
        Students students = new Students(null, name, surname, age);
        studentsService.add(students);
        resp.sendRedirect("students");
    }
}
