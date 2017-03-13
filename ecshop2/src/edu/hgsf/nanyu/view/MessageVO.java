package edu.hgsf.nanyu.view;

public class MessageVO {
	
	String MESSAGER_ID  ;            
	String CUSTOMER_ID  ;           
	String TYPE ;            
	String CONTENT ;             
	String FILEPATH ;             
	
	public String getMESSAGER_ID() {
		return MESSAGER_ID;
	}
	public void setMESSAGER_ID(String mESSAGER_ID) {
		MESSAGER_ID = mESSAGER_ID;
	}
	public String getCUSTOMER_ID() {
		return CUSTOMER_ID;
	}
	public void setCUSTOMER_ID(String cUSTOMER_ID) {
		CUSTOMER_ID = cUSTOMER_ID;
	}
	public String getTYPE() {
		return TYPE;
	}
	public void setTYPE(String tYPE) {
		TYPE = tYPE;
	}
	public String getCONTENT() {
		return CONTENT;
	}
	public void setCONTENT(String cONTENT) {
		CONTENT = cONTENT;
	}
	public String getFILEPATH() {
		return FILEPATH;
	}
	public void setFILEPATH(String fILEPATH) {
		FILEPATH = fILEPATH;
	}
	public MessageVO(String mESSAGER_ID, String cUSTOMER_ID, String tYPE,
			String cONTENT, String fILEPATH) {
		super();
		MESSAGER_ID = mESSAGER_ID;
		CUSTOMER_ID = cUSTOMER_ID;
		TYPE = tYPE;
		CONTENT = cONTENT;
		FILEPATH = fILEPATH;
	}
	public MessageVO() {
		super();
	}
	                                   

}
