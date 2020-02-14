package dao;

import wuhanvirus.infectednation;

public class NationDao {
	// 3가지 패턴을 기억하자 
	// 1. 데이터 삽입, 삭제, 갱신은 리턴 타입이 int(영향 받은 행의 수)
	// 2. 삽입과 갱신은 매개변수가 Domain 클래스 1개
	// 3. 삭제는 상황에 따라 다르지만 대부분 기본키
	
	public int insert(infectednation nation) { //변수를 가지고 있는 클래스를 매개변수에 넣어주기
			return 1; 
	}
}
