package cn.weidai.pojo;

import java.util.Date;


import org.springframework.format.annotation.DateTimeFormat;

import com.alibaba.fastjson.annotation.JSONField;






/**
 * 出借记录
 * @author 6Q
 * 2018-8-19下午9:55:37
 */
public class LendRecord extends Base{
	
	
	private Integer lid;  	//出借记录id
	private Integer  bTid;  //标的种类  (散标、优选标、转让标)
	private String bTName;  //标种类名称
	private Integer uId;  	//用户id
	private Integer bId;  //标id
	@JSONField(format="yyyy.MM.dd") 
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date lDate;   // lDate交易时间
	private Double lAmount; //已购买债权数额
	private Double lendMoney;  //出借本金
	private Double  lExTotInterest; //预期总利息
	private String lStatus;    //债券状态
	private Borrower borrower; 
	
	private String bProjectCode;	//项目编号
	private String bRepayment; //还款方式
	private	Integer bTimelimit ;  //项目期限
	@JSONField(format="yyyy.MM.dd") 
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date  bBearingDate ; //计息时间
	private Double  bRate;  //预期年利率
	private Double expected;//预期收益

	
	private Integer bRemainTimelimit;//剩余期数
	private Double  lDuePriAndInt;//待收本息(元)
	private Double lRecProAndInt;//已收汇款(元)
	private Double lDueCapital;//剩余本金(元)
	@JSONField(format="yyyy.MM.dd") 
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date tRemittance;//下个回款日
	
	
	
	public Double getExpected() {
		return expected;
	}
	public void setExpected(Double expected) {
	}
	
	public LendRecord() {
	}
	public void setExpected(double expected) {
		this.expected = expected;
	}

	public String getbRepayment() {
		return bRepayment;
	}

	public void setbRepayment(String bRepayment) {
		this.bRepayment = bRepayment;
	}

	public Integer getbRemainTimelimit() {
		return bRemainTimelimit;
	}

	public void setbRemainTimelimit(Integer bRemainTimelimit) {
		this.bRemainTimelimit = bRemainTimelimit;
	}

	public Double getlDuePriAndInt() {
		return lDuePriAndInt;
	}

	public void setlDuePriAndInt(Double lDuePriAndInt) {
		this.lDuePriAndInt = lDuePriAndInt;
	}

	public Double getlRecProAndInt() {
		return lRecProAndInt;
	}

	public void setlRecProAndInt(Double lRecProAndInt) {
		this.lRecProAndInt = lRecProAndInt;
	}

	public Double getlDueCapital() {
		return lDueCapital;
	}

	public void setlDueCapital(Double lDueCapital) {
		this.lDueCapital = lDueCapital;
	}

	public Date gettRemittance() {
		return tRemittance;
	}

	public void settRemittance(Date tRemittance) {
		this.tRemittance = tRemittance;
	}

	public Double getlAmount() {
		return lAmount;
	}

	public void setlAmount(Double lAmount) {
		this.lAmount = lAmount;
	}

	public Double getbRate() {
		return bRate;
	}

	public void setbRate(Double bRate) {
		this.bRate = bRate;
	}

	public String getbProjectCode() {
		return bProjectCode;
	}

	public void setbProjectCode(String bProjectCode) {
		this.bProjectCode = bProjectCode;
	}

	public Integer getbTimelimit() {
		return bTimelimit;
	}

	public void setbTimelimit(Integer bTimelimit) {
		this.bTimelimit = bTimelimit;
	}

	public Date getbBearingDate() {
		return bBearingDate;
	}

	public void setbBearingDate(Date bBearingDate) {
		this.bBearingDate = bBearingDate;
	}

	public String getbTName() {
		return bTName;
	}
	public void setbTName(String bTName) {
		this.bTName = bTName;
	}
	public Borrower getBorrower() {
		return borrower;
	}
	public void setBorrower(Borrower borrower) {
		this.borrower = borrower;
	}
	
	public Integer getLid() {
		return lid;
	}
	public void setLid(Integer lid) {
		this.lid = lid;
	}
	public Integer getbTid() {
		return bTid;
	}
	public void setbTid(Integer bTid) {
		this.bTid = bTid;
	}
	public Integer getuId() {
		return uId;
	}
	public void setuId(Integer uId) {
		this.uId = uId;
	}
	public Integer getbId() {
		return bId;
	}
	public void setbId(Integer bId) {
		this.bId = bId;
	}
	public Date getlDate() {
		return lDate;
	}
	public void setlDate(Date lDate) {
		this.lDate = lDate;
	}
	public Double getLendMoney() {
		return lendMoney;
	}
	public void setLendMoney(Double lendMoney) {
		this.lendMoney = lendMoney;
	}
	public Double getlExTotInterest() {
		return lExTotInterest;
	}
	public void setlExTotInterest(Double lExTotInterest) {
		this.lExTotInterest = lExTotInterest;
	}
	public String getlStatus() {
		return lStatus;
	}
	public void setlStatus(String lStatus) {
		this.lStatus = lStatus;
	}
	@Override
	public String toString() {

		return "LendRecord [lid=" + lid + ", bTid=" + bTid + ", bTName="
				+ bTName + ", uId=" + uId + ", bId=" + bId + ", lDate=" + lDate
				+ ", lAmount=" + lAmount + ", lendMoney=" + lendMoney
				+ ", lExTotInterest=" + lExTotInterest + ", lStatus=" + lStatus
				+ ", borrower=" + borrower + ", bProjectCode=" + bProjectCode
				+ ", bRepayment=" + bRepayment + ", bTimelimit=" + bTimelimit
				+ ", bBearingDate=" + bBearingDate + ", bRate=" + bRate
				+ ", bRemainTimelimit=" + bRemainTimelimit + ", lDuePriAndInt="
				+ lDuePriAndInt + ", lRecProAndInt=" + lRecProAndInt
				+ ", lDueCapital=" + lDueCapital + ", tRemittance="
				+ tRemittance + ", id=" + id + ", starNum=" + starNum
				+ ", pageSize=" + pageSize + ", sortName=" + sortName
				+ ", sortType=" + sortType + "]";

	}
	
	
	
	
}
