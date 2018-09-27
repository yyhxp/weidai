package cn.weidai.pojo;
/**
 * ��ɫ
 * @author 6Q
 * 2018-8-7����10:57:09
 */
public class Role extends Base{
	
	private Integer rId;  
	private String rName; 
	
	
	
	public Role() {
	}
	public Integer getrId() {
		return rId;
	}
	public void setrId(Integer rId) {
		this.rId = rId;
	}
	public String getrName() {
		return rName;
	}
	public void setrName(String rName) {
		this.rName = rName;
	}
	@Override
	public String toString() {
		return "Role [rId=" + rId + ", rName=" + rName + "]";
	}
	
}
