package kr.co.ndcnc.bean;

import org.springframework.util.ObjectUtils;

public class MemberVO {

	private int no;
	private String id;
	private String password;
	private String name;
	private int department;
	private String birth;
	private String gender;
	private String phone;
	private String emailId;
	private String emailAddr;
	private String addr;
	private String type;
	private String regDate;
	private String lastDate;
	private String lastIp;
	private String profileImg;
	private String phone1;
	private String phone2;
	private String phone3;
	
	public MemberVO() {
		super();
	}

	public MemberVO(int no, String id, String password, String name, int department, String birth, String gender,
			String phone, String emailId, String emailAddr, String addr, String type, String regDate, String lastDate,
			String lastIp, String profileImg, String phone1, String phone2, String phone3) {
		super();
		this.no = no;
		this.id = id;
		this.password = password;
		this.name = name;
		this.department = department;
		this.birth = birth;
		this.gender = gender;
		this.phone = phone;
		this.emailId = emailId;
		this.emailAddr = emailAddr;
		this.addr = addr;
		this.type = type;
		this.regDate = regDate;
		this.lastDate = lastDate;
		this.lastIp = lastIp;
		this.profileImg = profileImg;
		this.phone1 = phone1;
		this.phone2 = phone2;
		this.phone3 = phone3;
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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getEmailAddr() {
		return emailAddr;
	}

	public void setEmailAddr(String emailAddr) {
		this.emailAddr = emailAddr;
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

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public String getLastDate() {
		return lastDate;
	}

	public void setLastDate(String lastDate) {
		this.lastDate = lastDate;
	}

	public String getLastIp() {
		return lastIp;
	}

	public void setLastIp(String lastIp) {
		this.lastIp = lastIp;
	}

	public String getProfileImg() {
		return profileImg;
	}

	public void setProfileImg(String profileImg) {
		this.profileImg = profileImg;
	}

	public String getPhone1() {
		return phone1;
	}

	public void setPhone1(String phone1) {
		this.phone1 = phone1;
	}

	public String getPhone2() {
		return phone2;
	}

	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}

	public String getPhone3() {
		return phone3;
	}

	public void setPhone3(String phone3) {
		this.phone3 = phone3;
	}

	@Override
	public String toString() {
		return "MemberVO [no=" + no + ", id=" + id + ", password=" + password + ", name=" + name + ", department="
				+ department + ", birth=" + birth + ", gender=" + gender + ", phone=" + phone + ", emailId=" + emailId
				+ ", emailAddr=" + emailAddr + ", addr=" + addr + ", type=" + type + ", regDate=" + regDate
				+ ", lastDate=" + lastDate + ", lastIp=" + lastIp + ", profileImg=" + profileImg + ", phone1=" + phone1
				+ ", phone2=" + phone2 + ", phone3=" + phone3 + "]";
	}

}
