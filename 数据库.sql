/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.5.28 : Database - inventory
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`inventory` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `inventory`;

/*Table structure for table `allocating` */

DROP TABLE IF EXISTS `allocating`;

CREATE TABLE `allocating` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AllocatingName` varchar(20) NOT NULL,
  `AllocatingPhone` varchar(11) NOT NULL,
  `CalloutWarehouseName` varchar(20) NOT NULL,
  `FoldWarehouseName` varchar(20) NOT NULL,
  `CalloutWarehouse` varchar(20) NOT NULL,
  `FoldWarehouse` varchar(20) NOT NULL,
  `CalloutData` datetime NOT NULL,
  `FoldData` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `allocating` */

insert  into `allocating`(`ID`,`AllocatingName`,`AllocatingPhone`,`CalloutWarehouseName`,`FoldWarehouseName`,`CalloutWarehouse`,`FoldWarehouse`,`CalloutData`,`FoldData`) values (1,'朱立志','13658459555','王建国','李保国','总仓库','上海分仓库','2018-12-20 00:00:00','2018-12-27 11:35:27'),(3,'鼠莱菲','19865896354','李保国','王家卫','上海分仓库','郑州分仓库','2018-12-24 00:00:00','2018-12-30 00:00:00'),(4,'刘金栋','18965485230','王家卫','杨光辉','郑州分仓库','信阳分仓库','2019-01-15 00:00:00','2019-01-18 00:00:00'),(5,'马蒂斯','18965485426','杨光辉','龙沐湾','信阳分仓库','长沙分仓库','2018-11-11 00:00:00','2018-11-17 00:00:00'),(6,'王金明','19869548523','龙沐湾','王建国','长沙分仓库','总仓库','2019-01-21 08:42:25','2019-11-27 00:00:00');

/*Table structure for table `client` */

DROP TABLE IF EXISTS `client`;

CREATE TABLE `client` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ClientName` varchar(20) NOT NULL,
  `ClientPhone` varchar(11) NOT NULL,
  `ClientAddress` varchar(100) DEFAULT NULL,
  `ClientEmail` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `client` */

insert  into `client`(`id`,`ClientName`,`ClientPhone`,`ClientAddress`,`ClientEmail`) values (1,'普京','13612345678','北京中关村','598556@163.com'),(2,'马可波罗','19612345678','上海敏行去','123@163.com'),(3,'孙尚香','15412345678','广州','345@163.com'),(4,'大桥','34512345678','河南','678@163.com'),(5,'王健林','18712345678','云南','187@163,com'),(6,'马云','18712345678','哈尔滨','198@163.com');

/*Table structure for table `customerorder` */

DROP TABLE IF EXISTS `customerorder`;

CREATE TABLE `customerorder` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '客户订单ID',
  `CustomerOrderCode` varchar(20) NOT NULL COMMENT '客户订单编号',
  `GoodsID` int(11) NOT NULL COMMENT '商品ID',
  `CustomerOrderNumber` int(11) NOT NULL COMMENT '商品数量',
  `CustomerOrderUnitPrice` int(11) NOT NULL COMMENT '商品单价',
  `CustomerOrderTotalPrice` int(11) NOT NULL COMMENT '商品总价',
  `CustomerOrderPhone` varchar(11) NOT NULL COMMENT '客户联系电话',
  `ClientID` int(11) NOT NULL COMMENT '客户姓名',
  `UserID` int(11) NOT NULL COMMENT '员工ID',
  `CustomerOrderDate` date NOT NULL COMMENT '订单日期',
  `IsCustomerOrderPrice` int(11) NOT NULL COMMENT '是否为退货商品(1:是0:否)',
  `IsCustomerOrderRefund` int(11) NOT NULL COMMENT '是否为退货商品(1:是0:否)',
  `StockID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `customerorder` */

insert  into `customerorder`(`ID`,`CustomerOrderCode`,`GoodsID`,`CustomerOrderNumber`,`CustomerOrderUnitPrice`,`CustomerOrderTotalPrice`,`CustomerOrderPhone`,`ClientID`,`UserID`,`CustomerOrderDate`,`IsCustomerOrderPrice`,`IsCustomerOrderRefund`,`StockID`) values (1,'K_01',1,50,10,200,'13512345678',1,2,'2018-12-11',1,0,1),(2,'K_02',2,50,9999,499949,'19635425689',2,2,'2019-01-21',1,0,2),(3,'K_03',3,50,60,3000,'19632584569',3,2,'2019-01-21',1,0,2),(4,'K_04',4,5000,2,10000,'13654263524',4,3,'2019-01-22',1,0,4),(5,'K_05',5,500,5,2500,'15820364892',5,3,'2019-01-22',1,0,5);

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '商品信息ID',
  `GoodsName` varchar(20) NOT NULL COMMENT '商品名称',
  `GoodsPrice` int(11) NOT NULL COMMENT '商品单价',
  `GoodsUnit` varchar(20) NOT NULL COMMENT '商品单位',
  `SupplierID` int(11) NOT NULL COMMENT '供应商ID',
  `WarehouseID` int(11) NOT NULL COMMENT '仓库ID',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `goods` */

insert  into `goods`(`ID`,`GoodsName`,`GoodsPrice`,`GoodsUnit`,`SupplierID`,`WarehouseID`) values (1,'苹果',5000,'斤',2,1),(2,'iPhoneMax',130,'部',3,2),(3,'护手霜',600,'瓶',1,6),(4,'可口可乐',16320,'瓶',3,5),(5,'薯片',6000,'包',3,3);

/*Table structure for table `ordercargo` */

DROP TABLE IF EXISTS `ordercargo`;

CREATE TABLE `ordercargo` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '进货订单ID',
  `OrderCargoCode` varchar(20) NOT NULL COMMENT '进货订单编号',
  `SupplierID` int(11) NOT NULL COMMENT '供应商ID',
  `OrderCargoCategory` varchar(100) NOT NULL COMMENT '商品类别',
  `OrderCargoName` varchar(20) NOT NULL COMMENT '商品名称',
  `OrderCargoNumber` int(11) NOT NULL COMMENT '商品数量',
  `OrderCargoUnit` varchar(20) NOT NULL COMMENT '商品单位\r\n',
  `OrderCargoUnitPrice` int(11) NOT NULL COMMENT '商品单价',
  `OrderCargoTotalPrice` int(11) NOT NULL COMMENT '商品总价',
  `UserID` int(11) NOT NULL COMMENT '员工ID',
  `OrderCargoDate` datetime NOT NULL COMMENT '进货日期',
  `IsOrderRefundCargo` int(2) NOT NULL COMMENT '是否为退货订单(1:是 0:否)',
  `IsOrderCargoPayment` int(2) NOT NULL COMMENT '是否付款(1:是 0:否)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `ordercargo` */

insert  into `ordercargo`(`ID`,`OrderCargoCode`,`SupplierID`,`OrderCargoCategory`,`OrderCargoName`,`OrderCargoNumber`,`OrderCargoUnit`,`OrderCargoUnitPrice`,`OrderCargoTotalPrice`,`UserID`,`OrderCargoDate`,`IsOrderRefundCargo`,`IsOrderCargoPayment`) values (1,'J_01',1,'食品','苹果',4000,'斤',5,600,1,'2018-11-12 00:00:00',0,1),(2,'J_02',3,'日用品','iPhoneMax',200,'部',13000,780000,2,'2018-12-16 00:00:00',0,1),(3,'J_03',5,'奢饰品','护手霜',6000,'瓶',50,30000,5,'2019-01-21 09:02:10',0,1),(4,'J_04',4,'食品','可乐',16000,'瓶',2,24000,4,'2019-01-21 09:05:12',0,1),(5,'J_05',6,'食品','薯片',19000,'包',4,76000,6,'2019-01-21 09:06:24',0,1);

/*Table structure for table `orderplan` */

DROP TABLE IF EXISTS `orderplan`;

CREATE TABLE `orderplan` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '订单计划ID',
  `OrderPlanName` varchar(20) NOT NULL COMMENT '订单商品名称',
  `OrderPlanNumber` int(11) NOT NULL COMMENT '商品数量',
  `OrderPlanUnit` varchar(20) NOT NULL COMMENT '商品单位',
  `SupplierID` int(11) NOT NULL COMMENT '供应商ID',
  `OrderPlanDate` datetime NOT NULL COMMENT '计划日期',
  `IsOrderPlanApproval` int(2) NOT NULL COMMENT '是否批准（1：是，0：否）',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `orderplan` */

insert  into `orderplan`(`ID`,`OrderPlanName`,`OrderPlanNumber`,`OrderPlanUnit`,`SupplierID`,`OrderPlanDate`,`IsOrderPlanApproval`) values (1,'苹果',400,'斤',1,'2018-11-11 00:00:00',1),(2,'iphonexsMax',60,'部',3,'2018-12-15 00:00:00',1),(3,'ghasg',56,'个',1,'2019-01-17 10:58:08',1),(5,'橘子',600,'KG',4,'2019-01-18 14:48:10',0),(6,'衣服',100,'件',5,'2019-01-22 10:46:14',0),(7,'衣服',100,'件',5,'2019-01-22 11:01:41',0);

/*Table structure for table `stock` */

DROP TABLE IF EXISTS `stock`;

CREATE TABLE `stock` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '库存ID',
  `OrderCargoID` int(11) NOT NULL COMMENT '进货订单ID',
  `StockNumber` int(11) NOT NULL COMMENT '库存量',
  `WarehouseID` int(11) NOT NULL COMMENT '仓库ID',
  `StockDate` datetime NOT NULL COMMENT '入库日期',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `stock` */

insert  into `stock`(`ID`,`OrderCargoID`,`StockNumber`,`WarehouseID`,`StockDate`) values (1,1,6000,1,'2018-11-13 00:00:00'),(2,2,600,2,'2018-12-16 00:00:00'),(3,3,20000,3,'2019-01-21 09:07:35'),(4,4,20000,5,'2019-01-21 09:07:47'),(5,5,20000,6,'2019-01-21 09:07:57');

/*Table structure for table `supplier` */

DROP TABLE IF EXISTS `supplier`;

CREATE TABLE `supplier` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '供应商id',
  `SupplierCode` varchar(20) NOT NULL COMMENT '供应商编号',
  `SupplierGroup` varchar(100) NOT NULL COMMENT '供应商名称',
  `SupplierName` varchar(100) NOT NULL COMMENT '商人地址',
  `SupplierAddress` varchar(100) DEFAULT NULL COMMENT '供应商地址',
  `SupplierPhone` varchar(11) NOT NULL COMMENT '联系电话',
  `Email` varchar(20) DEFAULT NULL COMMENT 'Email',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `supplier` */

insert  into `supplier`(`ID`,`SupplierCode`,`SupplierGroup`,`SupplierName`,`SupplierAddress`,`SupplierPhone`,`Email`) values (1,'A_001','万邦','张三','河南省郑州市金水区','18594635284','123456@163.com'),(2,'B_002','阿里','马云','中国杭州','14006002688','	9510211@163.com'),(3,'C_003','苏宁易购','王五','中国北京','12345678910','456789@163.com'),(5,'D_004','郑州副食售卖有限公司','张家港','郑州','16352458963','565656@163.com'),(6,'F_006','长沙斯美特有限公司','龙昆南','长沙','18495846854','1561564@163.com');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `UserSerial` varchar(20) NOT NULL COMMENT '编号',
  `UserAccount` varchar(20) NOT NULL COMMENT '账号',
  `UserName` varchar(20) NOT NULL COMMENT '姓名',
  `UserPassword` varchar(20) NOT NULL COMMENT '密码',
  `UserFunction` varchar(20) NOT NULL COMMENT '用户职能',
  `UserPhone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`ID`,`UserSerial`,`UserAccount`,`UserName`,`UserPassword`,`UserFunction`,`UserPhone`) values (2,'002','aa','李四','123456','销售部','13532683261'),(3,'003','bb','王五','1234567','销售部','12363251235'),(4,'004','cc','赵四','123456','仓库管理部','13532265321'),(5,'005','dd','刘能','123456','仓库管理部','32215321321'),(6,'006','ee','赵本山','123456','采购部','12345678912'),(7,'007','ff','小沈阳','123456','采购部','12345678912'),(18,'001','admin','孙梦涵','123456','经理','18965845822'),(19,'008','rnm','宋小宝','123456','财务部','17060065209'),(24,'Q123','file','大白','123456','采购部','15896324785');

/*Table structure for table `warehouse` */

DROP TABLE IF EXISTS `warehouse`;

CREATE TABLE `warehouse` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '仓库ID',
  `WarehouseName` varchar(20) NOT NULL COMMENT '仓库负责人姓名',
  `WarehouseAddress` varchar(20) DEFAULT NULL COMMENT '仓库地址',
  `WarehousePhone` varchar(11) NOT NULL COMMENT '负责人电话',
  `WarehouseNote` varchar(100) DEFAULT NULL COMMENT '备注',
  `WarehouseAppellative` varchar(20) NOT NULL,
  `WarehousePrincipal` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `warehouse` */

insert  into `warehouse`(`ID`,`WarehouseName`,`WarehouseAddress`,`WarehousePhone`,`WarehouseNote`,`WarehouseAppellative`,`WarehousePrincipal`) values (1,'王建国','北京中关村','1859584752','调货','总仓库','朱立志'),(2,'李保国','上海市松江区','15698457852',NULL,'上海分仓库','鼠莱菲'),(3,'王家卫','郑州金水区','18965874589','调货','郑州分仓库','刘金栋'),(5,'杨光辉','信阳市浉河区','13562035021','调货','信阳分仓库','马蒂斯'),(6,'龙沐湾','长沙','19865236525','调货','长沙分仓库','王金明');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
