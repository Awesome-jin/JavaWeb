package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.NationList;
import service.NationListImpl;
import wuhanvirus.infectednation;

/**
 * Servlet implementation class InfectednationController
 */
@WebServlet({"/nation/*", "/el/*"})
public class InfectednationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private NationList nationlist;
	
    public InfectednationController() {
        super();
        nationlist = new NationListImpl();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 분기를 위해 필요한 데이터 가져오기
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length());
		String method = request.getMethod();
		
		// 포워딩에 사용하기 위한 변수
		RequestDispatcher dispatcher = null;
		if(command.contentEquals("/nation/insert") && method.equals("GET")){
			//현재 URL이 /nation/insert라서 WebContent로 이동시키려면 nation제거 필요.
			// ../로 엄마 디렉토리로 이동해서 views/insert로 이동
			dispatcher = request.getRequestDispatcher("../views/insert.jsp");
			dispatcher.forward(request, response);
		}else if(command.contentEquals("/nation/insert") && method.equals("POST")) {
			// 어떤 작업을 수행해야 하는 경우는 Service의 메소드를 호출하는 것
			nationlist.insert(request);		
			// 결과 페이지로 이동- 삽입,삭제, 갱신은 리다이렉트로 이동
			response.sendRedirect("./list"); //자신의 요청이 /nation /insert이므로 공통된 부분은 제외하고 설정
		}else if (command.equals("/el/disp")) {
			// 데이터를 저장하기
			request.setAttribute("msg", "Hello el?");
			
			// list, map item 클래스의 객체 저장
			List <String> list = new ArrayList<String>();
			list.add("List");
			list.add("Set");
			list.add("Map");
			
			//Map 객체를 생성
			Map<String, Object>map = new HashMap<String, Object>();
			map.put("Encapsulation", "클래스와 인스턴스 만들기");
			map.put("Inheritance", "상위 클래스의 모든 것을 하위 클래스가 물려받는 것");
			map.put("Polymorphism", "동일한 코드가 대입되는 인스턴스에 따라 다른 메소드를 호출하는 것");
			
			//DTO 객체를 생성
			infectednation nation = new infectednation();
			
			nation.setNum(1);
			nation.setNation("중국");
			nation.setInfnum(63755);
			nation.setDeathnum(1487);
			nation.setRecoverednum(6934);
			
			//데이터 저장
			request.setAttribute("list", list);
			request.setAttribute("map", map);
			request.setAttribute("nation", nation);
			
			dispatcher = request.getRequestDispatcher("../views/disp.jsp");
			dispatcher.forward(request, response);
			
			//jstl 페이지 기능 추가
		}else if(command.equals("/el/jstl") && method.equals("GET")) {
			//어느 페이지로 이동시킬 건지 추가해주기
			dispatcher = request.getRequestDispatcher("../views/jstl.jsp");
			dispatcher.forward(request, response);
		}else if(command.equals("/nation/list")&&method.equals("GET")) {
			// 데이터를 검색해서 조회해야 하는 경우는 데이터를 검색하고 그 결과를 request에 저장
			// 결과를 포워딩 해주면 된다.
			List <infectednation> list = nationlist.list(request); //nationlist는 위에서만든 private 변수
			request.setAttribute("list", list);
			dispatcher = request.getRequestDispatcher("../views/list.jsp");
			dispatcher.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
