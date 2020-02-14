package service;

import javax.servlet.http.HttpServletRequest;

import dao.NationDao;
import wuhanvirus.infectednation;

public class NationListImpl implements NationList {
	private NationDao nationdao;
	{
		nationdao = new NationDao();
	}
	
	@Override
	public int insert(HttpServletRequest request) {
		// 파라미터를 읽는 부분은 try catch로 만들어 줘야 한다.
		try {
			infectednation nation = new infectednation();
			
			// 파라미터 인코딩
			request.setCharacterEncoding("utf-8");
			// 파라미터 인코딩
			String num = request.getParameter("num");
			String nation1 = request.getParameter("nation");
			String infnum = request.getParameter("infnum");
			String deathnum = request.getParameter("deathnum");
			String recoverednum = request.getParameter("recoverednum");
			
			//Dao의 매개변수 만들기
			nation.setNum(Integer.parseInt(num));
			nation.setNation(nation1);
			nation.setInfnum(Integer.parseInt(infnum));
			nation.setDeathnum(Integer.parseInt(deathnum));
			nation.setRecoverednum(Integer.parseInt(recoverednum));
			
			//dao의 메소두를 호출해서 결과 리턴
			return nationdao.insert(nation);
			
		}catch(Exception e) {
			System.err.println(e.getMessage());
			return -1;
		}
	}
}
