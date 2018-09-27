package cn.weidai.pojo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

/**利息、还款结算表
 * @author 6Q
 * 2018-8-28上午11:06:32
 */
public class Settlement {
	private Integer sId;//利息、还款结算id
	private Integer uid;//出借用户id
	private Integer boId;//借款用户id
	private Integer bid;//标的id
	private Integer lid;//出借记录id
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date sRemittance;//下个回款日
	private Double sCapital;//债权本金
	private Double sCapOfMon;//回款日应还(得)本金
	private Double sIntOfMon;//回款日应还(得)利息
	
	
	
	
	public Settlement() {
		
	}


	public Settlement(Integer uid, Integer boId, Integer bid, Integer lid,
			Date sRemittance, Double sCapital, Double sCapOfMon,
			Double sIntOfMon) {
		
		this.uid = uid;
		this.boId = boId;
		this.bid = bid;
		this.lid = lid;
		this.sRemittance = sRemittance;
		this.sCapital = sCapital;
		this.sCapOfMon = sCapOfMon;
		this.sIntOfMon = sIntOfMon;
	}
	
	

	



	public Integer getLid() {
		return lid;
	}
	public void setLid(Integer lid) {
		this.lid = lid;
	}
	public Integer getBoId() {
		return boId;
	}
	public void setBoId(Integer boId) {
		this.boId = boId;
	}
	public Double getsCapital() {
		return sCapital;
	}
	public void setsCapital(Double sCapital) {
		this.sCapital = sCapital;
	}
	public Integer getsId() {
		return sId;
	}
	public void setsId(Integer sId) {
		this.sId = sId;
	}
	
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public Integer getBid() {
		return bid;
	}
	public void setBid(Integer bid) {
		this.bid = bid;
	}
	public Date getsRemittance() {
		return sRemittance;
	}
	public void setsRemittance(Date sRemittance) {
		this.sRemittance = sRemittance;
	}
	public Double getsCapOfMon() {
		return sCapOfMon;
	}
	public void setsCapOfMon(Double sCapOfMon) {
		this.sCapOfMon = sCapOfMon;
	}
	public Double getsIntOfMon() {
		return sIntOfMon;
	}
	public void setsIntOfMon(Double sIntOfMon) {
		this.sIntOfMon = sIntOfMon;
	}
	@Override
	public String toString() {
		return "Settlement [sId=" + sId + ", uid=" + uid + ", boId=" + boId
				+ ", bid=" + bid + ", lid=" + lid + ", sRemittance="
				+ sRemittance + ", sCapital=" + sCapital + ", sCapOfMon="
				+ sCapOfMon + ", sIntOfMon=" + sIntOfMon + "]";
	}
	
	
};
