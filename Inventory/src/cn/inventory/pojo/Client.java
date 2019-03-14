package cn.inventory.pojo;
/**
 * 客户信息表
 * @author LH
 *
 */
public class Client {
	private Integer id; // 客户id
	private String clientName; // 客户姓名
	private String clientPhone; // 客户电话
	private String clientAddress; // 客户地址
	private String clientEmail;// 客户邮箱

	public Client() {
		super();
	}

	public Client(Integer id, String clientName, String clientPhone,
			String clientAddress, String clientEmail) {
		super();
		this.id = id;
		this.clientName = clientName;
		this.clientPhone = clientPhone;
		this.clientAddress = clientAddress;
		this.clientEmail = clientEmail;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getClientName() {
		return clientName;
	}

	public void setClientName(String clientName) {
		this.clientName = clientName;
	}

	public String getClientPhone() {
		return clientPhone;
	}

	public void setClientPhone(String clientPhone) {
		this.clientPhone = clientPhone;
	}

	public String getClientAddress() {
		return clientAddress;
	}

	public void setClientAddress(String clientAddress) {
		this.clientAddress = clientAddress;
	}

	public String getClientEmail() {
		return clientEmail;
	}

	public void setClientEmail(String clientEmail) {
		this.clientEmail = clientEmail;
	}

	
}
