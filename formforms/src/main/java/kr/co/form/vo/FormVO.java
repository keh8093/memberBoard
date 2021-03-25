package kr.co.form.vo;

import java.util.Date;

public class FormVO {

	// form으로 시작되는 것들은 다 1개
	private int formCode;  //폼코드 고유번호 (폼에대한 고유번호) 프라이머리키 (중복X 검색하기에 좋은)
	private String formAddress; // 20자 글자가 있는데 , 특수한 기호랑 영어 대문자라던지 숫자 (여러개) 랜덤으로 섞어서 20자를 만듬, 암호화된 20자를 만들고 -> 설문조사의 주소 (url)
	private int memCode; // 멤버 고유 코드
	private String formSubject; // 설문조사 자체의 제목 (1개밖에 없음)
	private String formContent; // 설문조사 자체의 설명 
	private int formState; // 설문완료 눌렀을때 (어드레스도 같이 넣어 작업) 1번 설문지 완성 (설문이 시작될), 2번  설문지 임시저장(작성중에 게시글)
	private Date formDate;  //기간설정 (설정이 없으면 null , 자바는 널이 안뜸)
	// item 들어간 모든건 배열처리
	private String itemNeed; // 필수입력   0이면 필수가 아니고 1이면 필수
	private String itemSubject; // 설문 유형의 질문
	private String itemContent; // 설문 유형 질문의 대한 설명
	private String itemType; // 설문 유형 1번 단답  2번 서술형 3번 단일선택형 4번 복수선택형
	private String itemReply; // 설문 답변 (단일 선택형이 나오면 다 조회해야하니까  $숫자  표시로 구분해서 배열을 뽑아냄) $숫자는 -> 0이면 선택이 안된거고 1이면 된거 (그 질문에 대한 답변)
	private String itemMin; // 답변 최소 선택수 아이템타입이 4인 경우에만 해당   아이템 타입이 4번이 아닌경우는 null 값을 넣음 (널이라는 스트링값) 스플릿,,
	private String itemMax; // 답변 최대 선택수  위에 min이랑 같음
	
	
	public FormVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public int getFormCode() {
		return formCode;
	}
	public void setFormCode(int formCode) {
		this.formCode = formCode;
	}
	public String getFormAddress() {
		return formAddress;
	}
	public void setFormAddress(String formAddress) {
		this.formAddress = formAddress;
	}
	public int getMemCode() {
		return memCode;
	}
	public void setMemCode(int memCode) {
		this.memCode = memCode;
	}
	public String getFormSubject() {
		return formSubject;
	}
	public void setFormSubject(String formSubject) {
		this.formSubject = formSubject;
	}
	public String getFormContent() {
		return formContent;
	}
	public void setFormContent(String formContent) {
		this.formContent = formContent;
	}
	public int getFormState() {
		return formState;
	}
	public void setFormState(int formState) {
		this.formState = formState;
	}
	public Date getFormDate() {
		return formDate;
	}
	public void setFormDate(Date formDate) {
		this.formDate = formDate;
	}
	public String getItemNeed() {
		return itemNeed;
	}
	public void setItemNeed(String itemNeed) {
		this.itemNeed = itemNeed;
	}
	public String getItemSubject() {
		return itemSubject;
	}
	public void setItemSubject(String itemSubject) {
		this.itemSubject = itemSubject;
	}
	public String getItemContent() {
		return itemContent;
	}
	public void setItemContent(String itemContent) {
		this.itemContent = itemContent;
	}
	public String getItemType() {
		return itemType;
	}
	public void setItemType(String itemType) {
		this.itemType = itemType;
	}
	public String getItemReply() {
		return itemReply;
	}
	public void setItemReply(String itemReply) {
		this.itemReply = itemReply;
	}
	public String getItemMin() {
		return itemMin;
	}
	public void setItemMin(String itemMin) {
		this.itemMin = itemMin;
	}
	public String getItemMax() {
		return itemMax;
	}
	public void setItemMax(String itemMax) {
		this.itemMax = itemMax;
	}
	@Override
	public String toString() {
		return "formVO [formCode=" + formCode + ", formAddress=" + formAddress + ", memCode=" + memCode
				+ ", formSubject=" + formSubject + ", formContent=" + formContent + ", formState=" + formState
				+ ", formDate=" + formDate + ", itemNeed=" + itemNeed + ", itemSubject=" + itemSubject
				+ ", itemContent=" + itemContent + ", itemType=" + itemType + ", itemReply=" + itemReply + ", itemMin="
				+ itemMin + ", itemMax=" + itemMax + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((formAddress == null) ? 0 : formAddress.hashCode());
		result = prime * result + formCode;
		result = prime * result + ((formContent == null) ? 0 : formContent.hashCode());
		result = prime * result + ((formDate == null) ? 0 : formDate.hashCode());
		result = prime * result + formState;
		result = prime * result + ((formSubject == null) ? 0 : formSubject.hashCode());
		result = prime * result + ((itemContent == null) ? 0 : itemContent.hashCode());
		result = prime * result + ((itemMax == null) ? 0 : itemMax.hashCode());
		result = prime * result + ((itemMin == null) ? 0 : itemMin.hashCode());
		result = prime * result + ((itemNeed == null) ? 0 : itemNeed.hashCode());
		result = prime * result + ((itemReply == null) ? 0 : itemReply.hashCode());
		result = prime * result + ((itemSubject == null) ? 0 : itemSubject.hashCode());
		result = prime * result + ((itemType == null) ? 0 : itemType.hashCode());
		result = prime * result + memCode;
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
		FormVO other = (FormVO) obj;
		if (formAddress == null) {
			if (other.formAddress != null)
				return false;
		} else if (!formAddress.equals(other.formAddress))
			return false;
		if (formCode != other.formCode)
			return false;
		if (formContent == null) {
			if (other.formContent != null)
				return false;
		} else if (!formContent.equals(other.formContent))
			return false;
		if (formDate == null) {
			if (other.formDate != null)
				return false;
		} else if (!formDate.equals(other.formDate))
			return false;
		if (formState != other.formState)
			return false;
		if (formSubject == null) {
			if (other.formSubject != null)
				return false;
		} else if (!formSubject.equals(other.formSubject))
			return false;
		if (itemContent == null) {
			if (other.itemContent != null)
				return false;
		} else if (!itemContent.equals(other.itemContent))
			return false;
		if (itemMax == null) {
			if (other.itemMax != null)
				return false;
		} else if (!itemMax.equals(other.itemMax))
			return false;
		if (itemMin == null) {
			if (other.itemMin != null)
				return false;
		} else if (!itemMin.equals(other.itemMin))
			return false;
		if (itemNeed == null) {
			if (other.itemNeed != null)
				return false;
		} else if (!itemNeed.equals(other.itemNeed))
			return false;
		if (itemReply == null) {
			if (other.itemReply != null)
				return false;
		} else if (!itemReply.equals(other.itemReply))
			return false;
		if (itemSubject == null) {
			if (other.itemSubject != null)
				return false;
		} else if (!itemSubject.equals(other.itemSubject))
			return false;
		if (itemType == null) {
			if (other.itemType != null)
				return false;
		} else if (!itemType.equals(other.itemType))
			return false;
		if (memCode != other.memCode)
			return false;
		return true;
	}
	
	
}
