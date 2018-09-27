package cn.weidai.pojo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.alibaba.fastjson.annotation.JSONField;
/**
 * 标表
 * @author 6Q
 * 2018-8-8上午8:31:25
 */
public class Bid extends Base{
	private Integer bId; //标id
	private Integer  bTid;  //标的种类id  (散标、优选标)
	private String bTName;  //标的种类名
	private Integer uId; //创建用户id
	private String bProjectCode; //项目编号
	private Double  bRate;   //预期利率
	private String bItemType;  //项目类型
	private Integer bTimelimit;   //项目期限
	private Double bProjectTotolMoney;  //项目总金额
	private Double bCanBeCastMoney; //剩余可投金额
	private String bRepayment;   //还款方式 
	@JSONField(format="yyyy-MM-dd") 
	@DateTimeFormat(pattern="yyyy-MM-dd")  
	private Date bCreateDate;  //创建时间
	private String bFull;  //是否投满
	private Date  bBearingDate;  //计息时间
	private String bStore; //来源门店
	private User user;    //用户
	private Double assets;
	private Double prospective;//预期收益；
	public Double getProspective() {
		return prospective;
	}

	public void setProspective(Double prospective) {
		this.prospective = prospective;
	}

	public Double getAssets() {
		return assets;
	}

	public void setAssets(Double assets) {
		this.assets = assets;
	}

	public Bid() {
	}
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Integer getbId() {
		return bId;
	}
	public void setbId(Integer bId) {
		this.bId = bId;
	}
	public Integer getbTid() {
		return bTid;
	}
	public void setbTid(Integer bTid) {
		this.bTid = bTid;
	}
	public String getbTName() {
		return bTName;
	}
	public void setbTName(String bTName) {
		this.bTName = bTName;
	}
	public Integer getuId() {
		return uId;
	}
	public void setuId(Integer uId) {
		this.uId = uId;
	}
	public String getbProjectCode() {
		return bProjectCode;
	}
	public void setbProjectCode(String bProjectCode) {
		this.bProjectCode = bProjectCode;
	}
	public Double getbRate() {
		return bRate;
	}
	public void setbRate(Double bRate) {
		this.bRate = bRate;
	}
	public String getbItemType() {
		return bItemType;
	}
	public void setbItemType(String bItemType) {
		this.bItemType = bItemType;
	}
	public Integer getbTimelimit() {
		return bTimelimit;
	}
	public void setbTimelimit(Integer bTimelimit) {
		this.bTimelimit = bTimelimit;
	}
	public Double getbProjectTotolMoney() {
		return bProjectTotolMoney;
	}
	public void setbProjectTotolMoney(Double bProjectTotolMoney) {
		this.bProjectTotolMoney = bProjectTotolMoney;
	}
	public Double getbCanBeCastMoney() {
		return bCanBeCastMoney;
	}
	public void setbCanBeCastMoney(Double bCanBeCastMoney) {
		this.bCanBeCastMoney = bCanBeCastMoney;
	}
	public String getbRepayment() {
		return bRepayment;
	}
	public void setbRepayment(String bRepayment) {
		this.bRepayment = bRepayment;
	}
	public Date getbCreateDate() {
		return bCreateDate;
	}
	public void setbCreateDate(Date bCreateDate) {
		this.bCreateDate = bCreateDate;
	}
	public String getbFull() {
		return bFull;
	}
	public void setbFull(String bFull) {
		this.bFull = bFull;
	}
	public Date getbBearingDate() {
		return bBearingDate;
	}
	public void setbBearingDate(Date bBearingDate) {
		this.bBearingDate = bBearingDate;
	}
	public String getbStore() {
		return bStore;
	}
	public void setbStore(String bStore) {
		this.bStore = bStore;
	}
	@Override
	public String toString() {
		return "Bid [bId=" + bId + ", bTid=" + bTid + ", bTName=" + bTName
				+ ", uId=" + uId + ", bProjectCode=" + bProjectCode
				+ ", bRate=" + bRate + ", bItemType=" + bItemType
				+ ", bTimelimit=" + bTimelimit + ", bProjectTotolMoney="
				+ bProjectTotolMoney + ", bCanBeCastMoney=" + bCanBeCastMoney
				+ ", bRepayment=" + bRepayment + ", bCreateDate=" + bCreateDate
				+ ", bFull=" + bFull + ", bBearingDate=" + bBearingDate
				+ ", bStore=" + bStore + ", user=" + user + "]";
	}
	
	
	
}
