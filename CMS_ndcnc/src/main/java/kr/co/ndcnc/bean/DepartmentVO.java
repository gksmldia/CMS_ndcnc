package kr.co.ndcnc.bean;

public class DepartmentVO {

	private int no;
	private String name;
	
	public DepartmentVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public DepartmentVO(int no, String name) {
		super();
		this.no = no;
		this.name = name;
	}
	
	public int getNo() {
		return no;
	}
	
	public void setNo(int no) {
		this.no = no;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	@Override
	public String toString() {
		return "DepartmentVO [no=" + no + ", name=" + name + "]";
	}
	
}
