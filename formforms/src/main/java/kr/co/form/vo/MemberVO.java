package kr.co.form.vo;

public class MemberVO {
	
	private int memCode;
	private String memName;
	private String memId;
	private String memPassword;
	
	public MemberVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getMemCode() {
		return memCode;
	}

	public void setMemCode(int memCode) {
		this.memCode = memCode;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getMemPassword() {
		return memPassword;
	}

	public void setMemPassword(String memPassword) {
		this.memPassword = memPassword;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + memCode;
		result = prime * result + ((memId == null) ? 0 : memId.hashCode());
		result = prime * result + ((memPassword == null) ? 0 : memPassword.hashCode());
		result = prime * result + ((memName == null) ? 0 : memName.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		MemberVO other = (MemberVO) obj;
		if (memCode != other.memCode)
			return false;
		if (memId == null) {
			if (other.memId != null)
				return false;
		} else if (!memId.equals(other.memId))
			return false;
		if (memPassword == null) {
			if (other.memPassword != null)
				return false;
		} else if (!memPassword.equals(other.memPassword))
			return false;
		if (memName == null) {
			if (other.memName != null)
				return false;
		} else if (!memName.equals(other.memName))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "MemberVO [memCode=" + memCode + ", memName=" + memName + ", memId=" + memId + ", memPassword="
				+ memPassword + "]";
	}
	
	
}
