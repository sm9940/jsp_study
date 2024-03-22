package ch04.studentInfo;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.Date;
import java.text.SimpleDateFormat;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

/**
 * Servlet implementation class StudentControl
 */
@WebServlet("/studentControl")
public class StudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	StudentDAO dao;
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		
		String action = req.getParameter("action");
		String view = "";
		
		if(action == null){
			getServletContext()
			.getRequestDispatcher("/studentControl?action=list")
			.forward(req, resp);
		} else {
			switch(action) {
			case "list" : view = list(req,resp);break;
			case "insert" : view = insert(req,resp) ;break;
			}
			getServletContext()
			.getRequestDispatcher("/ch04/studentInfo/"+view)
			.forward(req, resp);
		}
	}
	@Override
	public void init(ServletConfig config) throws ServletException {
		
		super.init(config);
		dao = new StudentDAO();
	}
	//StudentDAO객체(model)에서 학생리스트 불러와 request 객체에 저장한다.
	public String list(HttpServletRequest req, HttpServletResponse resp) {
		req.setAttribute("students", dao.getAll());
		return "studentInfo.jsp";
	};
	//입력받은 학생 데이터를 StudentDAO 객체(model)를 통해 insert 해준다.
	public String insert(HttpServletRequest req, HttpServletResponse resp) {
	Student s= new Student();
	
	try {
		BeanUtils.populate(s, req.getParameterMap());
	} catch (Exception e) {
		
		e.printStackTrace();
	} 
	 dao.insert(s);
	/*
	 * BeanUtils 라이브러리가 아래 코드를 대신 처리해준다.-> request 객체를 Student 객체로 변경해줌
	s.setUsername(req.getParameter("username"));
	s.setEmail(req.getParameter("email"));
	s.setUniv(req.getParameter("univ"));
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 MM월 dd");
    Date date = (Date)formatter.parse(request.getParameter("birth"));
	*/
	return "studentInfo.jsp";
	}
}
