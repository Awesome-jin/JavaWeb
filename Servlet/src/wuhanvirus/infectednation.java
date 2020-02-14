package wuhanvirus;

//1. 속성들을 private 변수로 선언하기
public class infectednation {
	private int num; //번호 - 기본키로 사용할 것
	private String nation; //  국가명
	private int infnum; //감염 환자 수
	private int deathnum; //사망자 수
	private int recoverednum; //회복한 환자 수
	
	//2. 매개변수가 없는 생성자와 매개변수가 있는 생성자를 만들기 
	public infectednation() {
		super();
		this.num = num;
		this.nation = nation;
		this.infnum = infnum;
		this.deathnum = deathnum;
		this.recoverednum = recoverednum;
	}

	//3. 접근자 메소드 만들어주기 getters and setters
	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public int getInfnum() {
		return infnum;
	}

	public void setInfnum(int infnum) {
		this.infnum = infnum;
	}

	public int getDeathnum() {
		return deathnum;
	}

	public void setDeathnum(int deathnum) {
		this.deathnum = deathnum;
	}

	public int getRecoverednum() {
		return recoverednum;
	}

	public void setRecoverednum(int recoverednum) {
		this.recoverednum = recoverednum;
	}

	// 4. toString 메소드를 재정의해주기
	@Override
	public String toString() {
		return "infectednation [num=" + num + ", nation=" + nation + ", infnum=" + infnum + ", deathnum=" + deathnum
				+ ", recoverednum=" + recoverednum + "]";
	}
	
	
	
}
