package service;

import java.util.ArrayList;
import java.util.List;

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
			
			//dao의 메소드를 호출해서 결과 리턴
			return nationdao.insert(nation);
			
		}catch(Exception e) {
			System.err.println(e.getMessage());
			return -1;
		}
	}

	@Override
	public List<infectednation> list(HttpServletRequest request) {
		List<infectednation> list = new ArrayList<infectednation>();
		

		infectednation nations = new infectednation();
		
		nations.setNum(1);
		nations.setNation("중국");
		nations.setInfnum(63755);
		nations.setDeathnum(1487);
		nations.setRecoverednum(6963);
		list.add(nations);
		
		nations = new infectednation();
		nations.setNum(2);
		nations.setNation("일본");
		nations.setInfnum(249);
		nations.setDeathnum(1);
		nations.setRecoverednum(10);
		list.add(nations);
		
		nations = new infectednation();
		nations.setNum(3);
		nations.setNation("싱가포르");
		nations.setInfnum(58);
		nations.setDeathnum(0);
		nations.setRecoverednum(15);
		list.add(nations);
		
		nations = new infectednation();
		nations.setNum(4);
		nations.setNation("홍콩");
		nations.setInfnum(53);
		nations.setDeathnum(1);
		nations.setRecoverednum(1);
		list.add(nations);
		
		nations = new infectednation();
		nations.setNum(5);
		nations.setNation("태국");
		nations.setInfnum(33);
		nations.setDeathnum(0);
		nations.setRecoverednum(10);
		list.add(nations);
		
		return list;
		// 아이템 목록을 리턴할 때, 데이터의 개수0이면 조회된 데이터가 없다는 뜻
		// 리스트는 null을 리턴하면 안된다!
		// -> 반복문에 사용하기 때문에 null을 리턴하면 예외가 발생해 버림
	}
}
