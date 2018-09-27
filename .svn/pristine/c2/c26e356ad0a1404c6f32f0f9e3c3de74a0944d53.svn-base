package cn.weidai.pojo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 转让标
 * @author 6Q
 * 2018-8-8上午9:08:09
 */
public class TransferBid extends Base{

	private Integer tId; //转让标Id
	private Integer  bTid;  //标的种类  (转让标)
	private Integer uId; //持有转让标用户id
	private String bTName;  //标的种类名(散标、优选标、转让标)
	private Integer bId; //原标Id
	private Integer lid;//出借记录id
	private Double  bRate;  //年预期利率
	private String bRemainTimelimit;   //剩余期限
	private Integer bRemainMonth; //剩余期限（月）
	private Integer bRemainDay; //剩余期限（天）
	private Double  tCapital;   //债券本金
	private Double  tTransferPrice;  //转让价格
	private  Double  tReTraPrice; //剩余可转金额

	@JSONField(format="yyyy-MM-dd") 

	private Date tDate;//转让标的创建时间
	@JSONField(format="yyyy.MM.dd") 

	@DateTimeFormat(pattern="yyyy-MM-dd")  
	private Date tRemittance;    //下一个回款日
	private String tFull; //是否完全转让
	private Bid bid;   //原标信息

	
	public TransferBid() {
	}
	
	
	public Date gettDate() {
		return tDate;
	}


	public void settDate(Date tDate) {
		this.tDate = tDate;
	}


	public Integer getLid() {
		return lid;
	}


	public void setLid(Integer lid) {
		this.lid = lid;
	}


	public Integer getuId() {
		return uId;
	}


	public void setuId(Integer uId) {
		this.uId = uId;
	}


	public Integer getbRemainMonth() {
		return bRemainMonth;
	}


	public void setbRemainMonth(Integer bRemainMonth) {
		this.bRemainMonth = bRemainMonth;
	}


	public Integer getbRemainDay() {
		return bRemainDay;
	}


	public void setbRemainDay(Integer bRemainDay) {
		this.bRemainDay = bRemainDay;
	}


	public String getbRemainTimelimit() {
		return bRemainTimelimit;
	}

	public void setbRemainTimelimit(String bRemainTimelimit) {
		this.bRemainTimelimit = bRemainTimelimit;
	}

	public Double gettCapital() {
		return tCapital;
	}

	public void settCapital(Double tCapital) {
		this.tCapital = tCapital;
	}

	

	public Bid getBid() {
		return bid;
	}
	public void setBid(Bid bid) {
		this.bid = bid;
	}
	public String getbTName() {
		return bTName;
	}
	public void setbTName(String bTName) {
		this.bTName = bTName;
	}
	public Integer gettId() {
		return tId;
	}
	public void settId(Integer tId) {
		this.tId = tId;
	}
	public Integer getbTid() {
		return bTid;
	}
	public void setbTid(Integer bTid) {
		this.bTid = bTid;
	}
	public Integer getbId() {
		return bId;
	}
	public void setbId(Integer bId) {
		this.bId = bId;
	}
	public Double getbRate() {
		return bRate;
	}
	public void setbRate(Double bRate) {
		this.bRate = bRate;
	}
	public Double gettTransferPrice() {
		return tTransferPrice;
	}
	public void settTransferPrice(Double tTransferPrice) {
		this.tTransferPrice = tTransferPrice;
	}
	public Double gettReTraPrice() {
		return tReTraPrice;
	}
	public void settReTraPrice(Double tReTraPrice) {
		this.tReTraPrice = tReTraPrice;
	}
	public Date gettRemittance() {
		return tRemittance;
	}
	public void settRemittance(Date tRemittance) {
		this.tRemittance = tRemittance;
	}
	public String gettFull() {
		return tFull;
	}
	public void settFull(String tFull) {
		this.tFull = tFull;
	}
	
	@Override
	public String toString() {
		return "TransferBid [tId=" + tId + ", bTid=" + bTid + ", uId=" + uId
				+ ", bTName=" + bTName + ", bId=" + bId + ", lid=" + lid
				+ ", bRate=" + bRate + ", bRemainTimelimit=" + bRemainTimelimit
				+ ", bRemainMonth=" + bRemainMonth + ", bRemainDay="
				+ bRemainDay + ", tCapital=" + tCapital + ", tTransferPrice="
				+ tTransferPrice + ", tReTraPrice=" + tReTraPrice
				+ ", tRemittance=" + tRemittance + ", tFull=" + tFull
				+ ", bid=" + bid + ", id=" + id + ", starNum=" + starNum
				+ ", pageSize=" + pageSize + ", sortName=" + sortName
				+ ", sortType=" + sortType + "]";
	}


}
