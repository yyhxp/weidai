package cn.weidai.pojo;

import java.util.Date;
import java.util.List;

/**
 * 借款用户 
 * @author 6Q
 * 2018-8-8上午8:22:28
 */
public class Borrower extends Base{
	private Integer boId; //借款用户id
	private String boName; // 客户姓名
	private String boGender;//性别
	private Integer boAge;   //年龄
	private String  boPhone; //手机号码
	private String  boPassword; //登录密码
	private String  boDCard;  //身份证号码
	private Integer  boCredit; //信誉度、征信
	private String  boMarriage;   //婚姻状况
	private Date  boRegdate;  //注册时间
	private String  boNativePlace; //籍贯
	private String  boMainProperty;  //主体性质
	private String  boProfession; //行业
	private String  boJobNature;  //工作性质
	private String   boIncome;   //收入状况
	private String   boDebt;  //负债情况
	private String  boBorrowPurpose; //借款用途
	private String  boPayment;  //还款来源
	private Double boBalance;//账户余额
	private List<Car> cars;  //抵押车辆信息
	
	public Borrower() {
	}
	
	public String getBoGender() {
		return boGender;
	}

	public void setBoGender(String boGender) {
		this.boGender = boGender;
	}

	public Double getBoBalance() {
		return boBalance;
	}

	public void setBoBalance(Double boBalance) {
		this.boBalance = boBalance;
	}

	public List<Car> getCars() {
		return cars;
	}

	public void setCars(List<Car> cars) {
		this.cars = cars;
	}

	public Integer getBoId() {
		return boId;
	}
	public void setBoId(Integer boId) {
		this.boId = boId;
	}
	public String getBoName() {
		return boName;
	}
	public void setBoName(String boName) {
		this.boName = boName;
	}
	public Integer getBoAge() {
		return boAge;
	}
	public void setBoAge(Integer boAge) {
		this.boAge = boAge;
	}
	public String getBoPhone() {
		return boPhone;
	}
	public void setBoPhone(String boPhone) {
		this.boPhone = boPhone;
	}
	public String getBoPassword() {
		return boPassword;
	}
	public void setBoPassword(String boPassword) {
		this.boPassword = boPassword;
	}
	public String getBoDCard() {
		return boDCard;
	}
	public void setBoDCard(String boDCard) {
		this.boDCard = boDCard;
	}
	public Integer getBoCredit() {
		return boCredit;
	}
	public void setBoCredit(Integer boCredit) {
		this.boCredit = boCredit;
	}
	public String getBoMarriage() {
		return boMarriage;
	}
	public void setBoMarriage(String boMarriage) {
		this.boMarriage = boMarriage;
	}
	public Date getBoRegdate() {
		return boRegdate;
	}
	public void setBoRegdate(Date boRegdate) {
		this.boRegdate = boRegdate;
	}
	public String getBoNativePlace() {
		return boNativePlace;
	}
	public void setBoNativePlace(String boNativePlace) {
		this.boNativePlace = boNativePlace;
	}
	public String getBoMainProperty() {
		return boMainProperty;
	}
	public void setBoMainProperty(String boMainProperty) {
		this.boMainProperty = boMainProperty;
	}
	public String getBoProfession() {
		return boProfession;
	}
	public void setBoProfession(String boProfession) {
		this.boProfession = boProfession;
	}
	public String getBoJobNature() {
		return boJobNature;
	}
	public void setBoJobNature(String boJobNature) {
		this.boJobNature = boJobNature;
	}
	public String getBoIncome() {
		return boIncome;
	}
	public void setBoIncome(String boIncome) {
		this.boIncome = boIncome;
	}
	public String getBoDebt() {
		return boDebt;
	}
	public void setBoDebt(String boDebt) {
		this.boDebt = boDebt;
	}
	public String getBoBorrowPurpose() {
		return boBorrowPurpose;
	}
	public void setBoBorrowPurpose(String boBorrowPurpose) {
		this.boBorrowPurpose = boBorrowPurpose;
	}
	public String getBoPayment() {
		return boPayment;
	}
	public void setBoPayment(String boPayment) {
		this.boPayment = boPayment;
	}
	@Override
	public String toString() {
		return "Borrower [boId=" + boId + ", boName=" + boName + ", boGender="
				+ boGender + ", boAge=" + boAge + ", boPhone=" + boPhone
				+ ", boPassword=" + boPassword + ", boDCard=" + boDCard
				+ ", boCredit=" + boCredit + ", boMarriage=" + boMarriage
				+ ", boRegdate=" + boRegdate + ", boNativePlace="
				+ boNativePlace + ", boMainProperty=" + boMainProperty
				+ ", boProfession=" + boProfession + ", boJobNature="
				+ boJobNature + ", boIncome=" + boIncome + ", boDebt=" + boDebt
				+ ", boBorrowPurpose=" + boBorrowPurpose + ", boPayment="
				+ boPayment + ", boBalance=" + boBalance + ", cars=" + cars
				+ ", id=" + id + ", starNum=" + starNum + ", pageSize="
				+ pageSize + ", sortName=" + sortName + ", sortType="
				+ sortType + ", pageIndex=" + pageIndex + "]";
	}
	
	
}
