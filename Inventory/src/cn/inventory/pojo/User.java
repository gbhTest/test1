package cn.inventory.pojo;

/**
 * 用户管理信息表
 * 
 * @author LH
 * 
 */
public class User {
	private Integer id; // 用户id
	private String userSerial;//编号
	private String userAccount;	//账号
	private String userName; // 用户姓名
	private String userPassword; // 用户密码
	private String userFunction; // 用户职能
	private String userPhone;// 用户电话
	public User(Integer id, String userSerial, String userAccount,
			String userName, String userPassword, String userFunction,
			String userPhone) {
		super();
		this.id = id;
		this.userSerial = userSerial;
		this.userAccount = userAccount;
		this.userName = userName;
		this.userPassword = userPassword;
		this.userFunction = userFunction;
		this.userPhone = userPhone;
	}
	public User() {
		super();
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUserSerial() {
		return userSerial;
	}
	public void setUserSerial(String userSerial) {
		this.userSerial = userSerial;
	}
	public String getUserAccount() {
		return userAccount;
	}
	public void setUserAccount(String userAccount) {
		this.userAccount = userAccount;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserFunction() {
		return userFunction;
	}
	public void setUserFunction(String userFunction) {
		this.userFunction = userFunction;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

}
