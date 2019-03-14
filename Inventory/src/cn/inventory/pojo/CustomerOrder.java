package cn.inventory.pojo;

import java.util.Date;

import org.apache.log4j.lf5.util.DateFormatManager;

public class CustomerOrder {
	private Integer id; // 客户订单id
	private String customerOrderCode;// 客户订单编号
	private Integer goodsId; // 商品id
	private Integer customerOrderNumber;// 商品数量
	private Integer customerOrderUnitPrice; // 商品单价
	private Integer customerOrderTotalPrice; // 商品总价
	private String customerOrderPhone; // 客户联系电话
	private String customerOrderDateString;
	private Integer clientId; // 客户id
	private Integer userId; // 员工id
	private Date customerOrderDate; // 订单日期
	private Integer isCustomerOrderPrice; // 是否付款（1.是0.不是）
	private Integer isCustomerOrderRefund;// 是否退货（1.是0.不是）

	private String clientName;//客户姓名
	private Client client;// 客户信息表
	private String goodsName;//商品名称(新添加的)
	private String clientAddress; // 客户地址

	private Date start;//开始时间
	private Date end;//截止时间

	private int count;//总记录数

	private Integer goodsSaleNum;//商品销售量

	private Goods goods;//商品销售统计映射表


	public String getCustomerOrderDateString() {
		String msg = null;
		if(customerOrderDate != null){
			DateFormatManager formatManager = new DateFormatManager("yyyy-MM-dd");
			msg = formatManager.format(customerOrderDate);
		}
		return msg;
	}

	public void setCustomerOrderDateString(String customerOrderDateString) {
		this.customerOrderDateString = customerOrderDateString;
	}

	public CustomerOrder() {
		super();
	}

	

	public CustomerOrder(Integer id, String customerOrderCode, Integer goodsId,
			Integer customerOrderNumber, Integer customerOrderUnitPrice,
			Integer customerOrderTotalPrice, String customerOrderPhone,
			String customerOrderDateString, Integer clientId, Integer userId,
			Date customerOrderDate, Integer isCustomerOrderPrice,
			Integer isCustomerOrderRefund, String clientName, Client client,
			String goodsName, String clientAddress, Date start, Date end,
			int count, Integer goodsSaleNum, Goods goods) {
		super();
		this.id = id;
		this.customerOrderCode = customerOrderCode;
		this.goodsId = goodsId;
		this.customerOrderNumber = customerOrderNumber;
		this.customerOrderUnitPrice = customerOrderUnitPrice;
		this.customerOrderTotalPrice = customerOrderTotalPrice;
		this.customerOrderPhone = customerOrderPhone;
		this.customerOrderDateString = customerOrderDateString;
		this.clientId = clientId;
		this.userId = userId;
		this.customerOrderDate = customerOrderDate;
		this.isCustomerOrderPrice = isCustomerOrderPrice;
		this.isCustomerOrderRefund = isCustomerOrderRefund;
		this.clientName = clientName;
		this.client = client;
		this.goodsName = goodsName;
		this.clientAddress = clientAddress;
		this.start = start;
		this.end = end;
		this.count = count;
		this.goodsSaleNum = goodsSaleNum;
		this.goods = goods;
	}

	public Client getClient() {
		return client;
	}
	public void setClient(Client client) {
		this.client = client;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getCustomerOrderCode() {
		return customerOrderCode;
	}
	public void setCustomerOrderCode(String customerOrderCode) {
		this.customerOrderCode = customerOrderCode;
	}
	public Integer getGoodsId() {
		return goodsId;
	}
	public void setGoodsId(Integer goodsId) {
		this.goodsId = goodsId;
	}
	public Integer getCustomerOrderNumber() {
		return customerOrderNumber;
	}
	public void setCustomerOrderNumber(Integer customerOrderNumber) {
		this.customerOrderNumber = customerOrderNumber;
	}
	public Integer getCustomerOrderUnitPrice() {
		return customerOrderUnitPrice;
	}
	public void setCustomerOrderUnitPrice(Integer customerOrderUnitPrice) {
		this.customerOrderUnitPrice = customerOrderUnitPrice;
	}
	public Integer getCustomerOrderTotalPrice() {
		return customerOrderTotalPrice;
	}
	public void setCustomerOrderTotalPrice(Integer customerOrderTotalPrice) {
		this.customerOrderTotalPrice = customerOrderTotalPrice;
	}
	public String getCustomerOrderPhone() {
		return customerOrderPhone;
	}
	public void setCustomerOrderPhone(String customerOrderPhone) {
		this.customerOrderPhone = customerOrderPhone;
	}
	public Integer getClientId() {
		return clientId;
	}
	public void setClientId(Integer clientId) {
		this.clientId = clientId;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public Date getCustomerOrderDate() {
		return customerOrderDate;
	}
	public void setCustomerOrderDate(Date customerOrderDate) {
		this.customerOrderDate = customerOrderDate;
	}
	public Integer getIsCustomerOrderPrice() {
		return isCustomerOrderPrice;
	}
	public void setIsCustomerOrderPrice(Integer isCustomerOrderPrice) {
		this.isCustomerOrderPrice = isCustomerOrderPrice;
	}
	public Integer getIsCustomerOrderRefund() {
		return isCustomerOrderRefund;
	}
	public void setIsCustomerOrderRefund(Integer isCustomerOrderRefund) {
		this.isCustomerOrderRefund = isCustomerOrderRefund;
	}


	public String getClientName() {
		return clientName;
	}

	public void setClientName(String clientName) {
		this.clientName = clientName;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}


	public String getClientAddress() {
		return clientAddress;
	}


	public void setClientAddress(String clientAddress) {
		this.clientAddress = clientAddress;
	}

	public Date getStart() {
		return start;
	}

	public void setStart(Date start) {
		this.start = start;
	}

	public Date getEnd() {
		return end;
	}

	public void setEnd(Date end) {
		this.end = end;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public Integer getGoodsSaleNum() {
		return goodsSaleNum;
	}

	public void setGoodsSaleNum(Integer goodsSaleNum) {
		this.goodsSaleNum = goodsSaleNum;
	}

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}
}
