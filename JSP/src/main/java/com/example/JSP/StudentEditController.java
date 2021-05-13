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

@WebServlet(name = "StudentEditController", urlPatterns = "/student-edit")
public class StudentEditController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        StudentsService studentsService = new StudentManager(new StudentDaoManager(new MyConnectionServiceAdapter()));
        Integer id = Integer.valueOf(req.getParameter("id"));
        Students student = studentsService.getById(id);
        if(student == null) resp.sendRedirect("students");
        req.setAttribute("student", student);
        req.getRequestDispatcher("student-edit.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer id = Integer.valueOf(req.getParameter("id"));
        String name = req.getParameter("name");
        String surname = req.getParameter("surname");
        Integer age = Integer.valueOf(req.getParameter("age"));
        StudentsService studentsService = new StudentManager(new StudentDaoManager(new MyConnectionServiceAdapter()));
        Students students = new Students(id, name, surname, age);
        studentsService.update(students);
        resp.sendRedirect("students");
    }
}
