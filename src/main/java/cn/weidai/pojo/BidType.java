package cn.weidai.pojo;
/**
 * 标的类型
 * @author 6Q
 * 2018-8-8上午8:43:48
 */
public class BidType extends Base {
	private Integer  bTId;  //标类型id
	private String bTName;  //标的名称(散标、优选标、转让标)
	
	public BidType() {
	}

	public Integer getbTId() {
		return bTId;
	}

	public void setbTId(Integer bTId) {
		this.bTId = bTId;
	}

	public String getbTName() {
		return bTName;
	}

	public void setbTName(String bTName) {
		this.bTName = bTName;
	}

	@Override
	public String toString() {
		return "BidType [bTId=" + bTId + ", bTName=" + bTName + "]";
	}
	
	
	
	
}
