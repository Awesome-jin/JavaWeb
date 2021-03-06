package service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import wuhanvirus.infectednation;

public interface NationList {
	//데이터 삽입을 위한 메소드 
	// Service는 Controller로부터 request를 넘겨 받아서 클라이언트의 데이터를 읽고 
	// 작업을 수행한 후 리턴
	public int insert(HttpServletRequest request);
	
	// 국가 목록을 가져오는 메소드
	public List<infectednation> list(HttpServletRequest request);
}
