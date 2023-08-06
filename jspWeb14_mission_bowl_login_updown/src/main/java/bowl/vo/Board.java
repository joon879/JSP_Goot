package bowl.vo;

import java.util.Date;

public class Board {

	private String bno;
	private String btitle;
	private String bcontent;
	private String bwriter;
	private Date bdate;
	private int bcnt;
	private String filesrc;
	
	
		
	
	public String getFilesrc() {
		return filesrc;
	}
	public void setFilesrc(String filesrc) {
		this.filesrc = filesrc;
	}
	public String getBno() {
		return bno;
	}
	public void setBno(String bno) {
		this.bno = bno;
	}
	public String getBtitle() {
		return btitle;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public String getBcontent() {
		return bcontent;
	}
	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}
	public String getBwriter() {
		return bwriter;
	}
	public void setBwriter(String bwriter) {
		this.bwriter = bwriter;
	}
	public Date getBdate() {
		return bdate;
	}
	public void setBdate(Date bdate) {
		this.bdate = bdate;
	}
	public int getBcnt() {
		return bcnt;
	}
	public void setBcnt(int bcnt) {
		this.bcnt = bcnt;
	}
	
	
}
