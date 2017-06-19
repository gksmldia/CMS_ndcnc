package kr.co.ndcnc.bean;

public class MemberVO {

	private int no;
	private String id;
	private String password;
	private String name;
	private int department;
	private String birth;
	private String gender;
	private String email_id;
	private String email_addr;
	private String addr;
	private String type;
	private String reg_date;
	private String last_date;
	private String last_ip;
	private String profile_img;
	
	public MemberVO() {
		super();
	}

	public MemberVO(int no, String id, String password, String name, int department, String birth, String gender,
			String email_id, String email_addr, String addr, String type, String reg_date, String last_date,
			String last_ip, String profile_img) {
		super();
		this.no = no;
		this.id = id;
		this.password = password;
		this.name = name;
		this.department = department;
		this.birth = birth;
		this.gender = gender;
		this.email_id = email_id;
		this.email_addr = email_addr;
		this.addr = addr;
		this.type = type;
		this.reg_date = reg_date;
		this.last_date = last_date;
		this.last_ip = last_ip;
		this.profile_img = profile_img;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getDepartment() {
		return department;
	}

	public void setDepartment(int department) {
		this.department = department;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmail_id() {
		return email_id;
	}

	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}

	public String getEmail_addr() {
		return email_addr;
	}

	public void setEmail_addr(String email_addr) {
		this.email_addr = email_addr;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getReg_date() {
		return reg_date;
	}

	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}

	public String getLast_date() {
		return last_date;
	}

	public void setLast_date(String last_date) {
		this.last_date = last_date;
	}

	public String getLast_ip() {
		return last_ip;
	}

	public void setLast_ip(String last_ip) {
		this.last_ip = last_ip;
	}

	public String getProfile_img() {
		return profile_img;
	}

	public void setProfile_img(String profile_img) {
		this.profile_img = profile_img;
	}

	@Override
	public String toString() {
		return "MemberVO [no=" + no + ", id=" + id + ", password=" + password + ", name=" + name + ", department="
				+ department + ", birth=" + birth + ", gender=" + gender + ", email_id=" + email_id + ", email_addr="
				+ email_addr + ", addr=" + addr + ", type=" + type + ", reg_date=" + reg_date + ", last_date="
				+ last_date + ", last_ip=" + last_ip + ", profile_img=" + profile_img + "]";
	}
	
}
