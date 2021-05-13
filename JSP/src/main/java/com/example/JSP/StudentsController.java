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
import java.util.List;

@WebServlet(name = "StudentsController", urlPatterns = "/students")
public class StudentsController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        StudentsService studentsService = new StudentManager(new StudentDaoManager(new MyConnectionServiceAdapter()));
        List<Students> students = studentsService.getAll();
        req.setAttribute("students", students);
        req.getRequestDispatcher("students.jsp").forward(req, resp);
    }
}
