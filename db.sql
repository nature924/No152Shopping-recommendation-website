/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springboot707pd
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springboot707pd` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springboot707pd`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618672170321 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-04-17 23:01:50',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-04-17 23:01:50',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-04-17 23:01:50',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-04-17 23:01:50',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-04-17 23:01:50',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-04-17 23:01:50',6,'宇宙银河系月球1号','月某','13823888886','是'),(1618672170320,'2021-04-17 23:09:29',1618671869267,'广东省梅州市梅江区江南街道白马四巷作新小学','1','17817562024','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618672117215 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springboot707pd/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springboot707pd/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springboot707pd/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussshangpinxinxi` */

DROP TABLE IF EXISTS `discussshangpinxinxi`;

CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618672130463 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';

/*Data for the table `discussshangpinxinxi` */

insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (101,'2021-04-17 23:01:50',1,1,'用户名1','评论内容1','回复内容1'),(102,'2021-04-17 23:01:50',2,2,'用户名2','评论内容2','回复内容2'),(103,'2021-04-17 23:01:50',3,3,'用户名3','评论内容3','回复内容3'),(104,'2021-04-17 23:01:50',4,4,'用户名4','评论内容4','回复内容4'),(105,'2021-04-17 23:01:50',5,5,'用户名5','评论内容5','回复内容5'),(106,'2021-04-17 23:01:50',6,6,'用户名6','评论内容6','回复内容6'),(1618672130462,'2021-04-17 23:08:49',31,1618671869267,'1','写评论',NULL);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='购物资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (91,'2021-04-17 23:01:50','这里写购物资讯','这里写购物资讯','http://localhost:8080/springboot707pd/upload/news_picture1.jpg','<p>这里写购物资讯</p>'),(92,'2021-04-17 23:01:50','标题2','简介2','http://localhost:8080/springboot707pd/upload/news_picture2.jpg','内容2'),(93,'2021-04-17 23:01:50','标题3','简介3','http://localhost:8080/springboot707pd/upload/news_picture3.jpg','内容3'),(94,'2021-04-17 23:01:50','标题4','简介4','http://localhost:8080/springboot707pd/upload/news_picture4.jpg','内容4'),(95,'2021-04-17 23:01:50','标题5','简介5','http://localhost:8080/springboot707pd/upload/news_picture5.jpg','内容5'),(96,'2021-04-17 23:01:50','标题6','简介6','http://localhost:8080/springboot707pd/upload/news_picture6.jpg','内容6');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1618672212289 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1618672186242,'2021-04-17 23:09:45','2021417239472148281','shangpinxinxi',1618671869267,31,'商品名称1','http://localhost:8080/springboot707pd/upload/shangpinxinxi_tupian1.jpg',1,49.9,49.9,49.9,49.9,1,'已完成','广东省梅州市梅江区江南街道白马四巷作新小学','17817562024','1'),(1618672212288,'2021-04-17 23:10:12','202141723101362323886','shangpinxinxi',1618671869267,31,'商品名称1','http://localhost:8080/springboot707pd/upload/shangpinxinxi_tupian1.jpg',1,49.9,49.9,49.9,49.9,1,'已完成','广东省梅州市梅江区江南街道白马四巷作新小学','17817562024','1');

/*Table structure for table `shangpinleixing` */

DROP TABLE IF EXISTS `shangpinleixing`;

CREATE TABLE `shangpinleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='商品类型';

/*Data for the table `shangpinleixing` */

insert  into `shangpinleixing`(`id`,`addtime`,`shangpinleixing`) values (21,'2021-04-17 23:01:50','服饰'),(22,'2021-04-17 23:01:50','家电'),(23,'2021-04-17 23:01:50','商品类型3'),(24,'2021-04-17 23:01:50','商品类型4'),(25,'2021-04-17 23:01:50','商品类型5'),(26,'2021-04-17 23:01:50','商品类型6');

/*Table structure for table `shangpinxiaoshoupaixingbang` */

DROP TABLE IF EXISTS `shangpinxiaoshoupaixingbang`;

CREATE TABLE `shangpinxiaoshoupaixingbang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `shangpintupian` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `yuexiaoshouliang` int(11) DEFAULT NULL COMMENT '月销售量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='商品销售排行榜';

/*Data for the table `shangpinxiaoshoupaixingbang` */

insert  into `shangpinxiaoshoupaixingbang`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleixing`,`shangpintupian`,`yuexiaoshouliang`) values (41,'2021-04-17 23:01:50','商品编号1','商品名称1','服饰','http://localhost:8080/springboot707pd/upload/shangpinxiaoshoupaixingbang_shangpintupian1.jpg',100),(42,'2021-04-17 23:01:50','商品编号2','商品名称2','商品类型2','http://localhost:8080/springboot707pd/upload/shangpinxiaoshoupaixingbang_shangpintupian2.jpg',2),(43,'2021-04-17 23:01:50','商品编号3','商品名称3','商品类型3','http://localhost:8080/springboot707pd/upload/shangpinxiaoshoupaixingbang_shangpintupian3.jpg',3),(44,'2021-04-17 23:01:50','商品编号4','商品名称4','商品类型4','http://localhost:8080/springboot707pd/upload/shangpinxiaoshoupaixingbang_shangpintupian4.jpg',4),(45,'2021-04-17 23:01:50','商品编号5','商品名称5','商品类型5','http://localhost:8080/springboot707pd/upload/shangpinxiaoshoupaixingbang_shangpintupian5.jpg',5),(46,'2021-04-17 23:01:50','商品编号6','商品名称6','商品类型6','http://localhost:8080/springboot707pd/upload/shangpinxiaoshoupaixingbang_shangpintupian6.jpg',6);

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleixing`,`tupian`,`shangpinxiangqing`,`clicktime`,`price`) values (31,'2021-04-17 23:01:50','商品编号1','商品名称1','商品类型3','http://localhost:8080/springboot707pd/upload/shangpinxinxi_tupian1.jpg','商品详情1','2021-04-17 23:10:35',49.9),(32,'2021-04-17 23:01:50','商品编号2','商品名称2','商品类型2','http://localhost:8080/springboot707pd/upload/shangpinxinxi_tupian2.jpg','商品详情2','2021-04-17 23:01:50',99.9),(33,'2021-04-17 23:01:50','商品编号3','商品名称3','商品类型3','http://localhost:8080/springboot707pd/upload/shangpinxinxi_tupian3.jpg','商品详情3','2021-04-17 23:01:50',99.9),(34,'2021-04-17 23:01:50','商品编号4','商品名称4','商品类型4','http://localhost:8080/springboot707pd/upload/shangpinxinxi_tupian4.jpg','商品详情4','2021-04-17 23:01:50',99.9),(35,'2021-04-17 23:01:50','商品编号5','商品名称5','商品类型5','http://localhost:8080/springboot707pd/upload/shangpinxinxi_tupian5.jpg','商品详情5','2021-04-17 23:01:50',99.9),(36,'2021-04-17 23:01:50','商品编号6','商品名称6','商品类型6','http://localhost:8080/springboot707pd/upload/shangpinxinxi_tupian6.jpg','商品详情6','2021-04-17 23:01:50',99.9);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618672094258 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1618672094257,'2021-04-17 23:08:13',1618671869267,31,'shangpinxinxi','商品名称1','http://localhost:8080/springboot707pd/upload/shangpinxinxi_tupian1.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1618671869267,'1','yonghu','用户','ipvbdk53447acvrnjpgfr7qefhhzc0vd','2021-04-17 23:04:34','2021-04-18 00:11:41'),(2,1,'abo','users','管理员','k81sx8y37i513dcynf9l1pdmus1w49hm','2021-04-17 23:05:16','2021-04-18 00:11:11');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-17 23:01:50');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618671869268 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`shenfenzheng`,`zhaopian`,`money`) values (11,'2021-04-17 23:01:50','用户1','123456','姓名1','男','13823888881','440300199101010001','http://localhost:8080/springboot707pd/upload/yonghu_zhaopian1.jpg',100),(12,'2021-04-17 23:01:50','用户2','123456','姓名2','男','13823888882','440300199202020002','http://localhost:8080/springboot707pd/upload/yonghu_zhaopian2.jpg',100),(13,'2021-04-17 23:01:50','用户3','123456','姓名3','男','13823888883','440300199303030003','http://localhost:8080/springboot707pd/upload/yonghu_zhaopian3.jpg',100),(14,'2021-04-17 23:01:50','用户4','123456','姓名4','男','13823888884','440300199404040004','http://localhost:8080/springboot707pd/upload/yonghu_zhaopian4.jpg',100),(15,'2021-04-17 23:01:50','用户5','123456','姓名5','女','13823888885','440300199505050005','http://localhost:8080/springboot707pd/upload/yonghu_zhaopian5.jpg',100),(16,'2021-04-17 23:01:50','用户6','123456','姓名6','男','13823888886','440300199606060006','http://localhost:8080/springboot707pd/upload/yonghu_zhaopian6.jpg',100),(1618671869267,'2021-04-17 23:04:29','1','1','1','男','17814512035','445121155952654512','http://localhost:8080/springboot707pd/upload/1618671896288.jpg',100.2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
