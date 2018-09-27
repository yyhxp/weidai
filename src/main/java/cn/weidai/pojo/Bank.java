package cn.weidai.pojo;
/**
 * 银行账户
 * @author 6Q
 * 2018-8-8上午9:27:16
 */
public class Bank extends Base {
	
	private Integer bkId; //银行用户id
	private Integer uId; //用户id
	private String bkCardnum;  //银行卡号
	private String bkPhone; //银行预留手机号
	private String bkPayPassword; //支付密码
	private Double bkBalance; //银行卡余额
	private String uIDCard;  //身份证号码
	private User user;		//注册用户
	
	public Bank() {
	}
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Integer getBkId() {
		return bkId;
	}
	public void setBkId(Integer bkId) {
		this.bkId = bkId;
	}
	public Integer getuId() {
		return uId;
	}
	public void setuId(Integer uId) {
		this.uId = uId;
	}
	public String getBkCardnum() {
		return bkCardnum;
	}
	public void setBkCardnum(String bkCardnum) {
		this.bkCardnum = bkCardnum;
	}
	public String getBkPhone() {
		return bkPhone;
	}
	public void setBkPhone(String bkPhone) {
		this.bkPhone = bkPhone;
	}
	public String getBkPayPassword() {
		return bkPayPassword;
	}
	public void setBkPayPassword(String bkPayPassword) {
		this.bkPayPassword = bkPayPassword;
	}
	public Double getBkBalance() {
		return bkBalance;
	}
	public void setBkBalance(Double bkBalance) {
		this.bkBalance = bkBalance;
	}
	public String getuIDCard() {
		return uIDCard;
	}
	public void setuIDCard(String uIDCard) {
		this.uIDCard = uIDCard;
	}
	@Override
	public String toString() {
		return "Bank [bkId=" + bkId + ", uId=" + uId + ", bkCardnum="
				+ bkCardnum + ", bkPhone=" + bkPhone + ", bkPayPassword="
				+ bkPayPassword + ", bkBalance=" + bkBalance + ", uIDCard="
				+ uIDCard + ", user=" + user + "]";
	}
	
	
}
