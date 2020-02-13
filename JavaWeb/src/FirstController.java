

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FirstController
 */

// 서블릿을 호출 할 수 있는 URL 매핑을 어노테이션으로 설정
// 자바에서는 @로 시작하는 명령을 Annotation이라 하고 파이썬은 Decorator라고 함
// 자주 사용되거나 복잡한 코드를 직접 작성하지 않고 명령어만 입력하면 실행할 때 필요한 코드를 찾아와서 추가해주는 기능
// 자바에서는 annotation도 하나의 클래스로 간주한다. 즉 WebServlet이라는 클래스 만들면 안된다.
@WebServlet({"/hiservlet" })
public class FirstController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FirstController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("FirstServlet");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response); 	//doPost는 항상 doGet으로 오게 되어있다
	}

}
