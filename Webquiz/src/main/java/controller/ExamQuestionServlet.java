package controller;

import model.Question;
import service.ExamQuestionsService;
import service.impl.ExamQuestionsServiceImpl;
import util.HandleString;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ExamQuestionServlet", urlPatterns = "/admin/examQuestion")
public class ExamQuestionServlet extends HttpServlet {

    private ExamQuestionsService examQuestionsService = new ExamQuestionsServiceImpl();
    private HandleString handleString = new HandleString();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "addQuestion":
                AddQuestionExam(request,response);
                break;
            case "deleteQuestion":
                DeleteQuestionExam(request,response);
                break;
            default:
                ExamQuestionList(request, response);
                break;
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "addQuestion":
                AddQuestionExam(request,response);
                break;
            default:
                ExamQuestionList(request, response);
                break;
        }
    }

    private void AddQuestionExam(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int examId = Integer.parseInt(request.getParameter("examId"));
        String[] Id_list = request.getParameterValues("question");
        for (String s : Id_list) {
            examQuestionsService.addQuestionExam(examId, Integer.parseInt(s));
        }
        ExamQuestionList(request,response);
    }

    private void DeleteQuestionExam(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int examId = Integer.parseInt(request.getParameter("examId"));
        String[] Id_list = request.getParameterValues("questionDel");
        for (String s : Id_list) {
            examQuestionsService.DeleteQuestionExam(examId, Integer.parseInt(s));
        }
        ExamQuestionList(request,response);
    }

    private void ExamQuestionList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        int examId = Integer.parseInt(request.getParameter("examId"));
        String examName = handleString.handleFont(request.getParameter("examName"));
        String subjectName = handleString.handleFont( request.getParameter("subjectName"));
        int subjectId = Integer.parseInt(request.getParameter("subjectId"));


        List<Question> questionList = examQuestionsService.selectAllExamQuestion(examId);
        request.setAttribute("listQuestion",examQuestionsService.selectAllQuestionSj(subjectId,examId) );
        request.setAttribute("listExamQuestion",questionList );
        request.setAttribute("examName",examName );
        request.setAttribute("examId",examId );
        request.setAttribute("subjectId",subjectId);
        request.setAttribute("subjectName",subjectName);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/exam-view.jsp");
        dispatcher.forward(request, response);

    }
}
