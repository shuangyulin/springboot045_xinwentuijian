/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springboot49j18
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springboot49j18` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springboot49j18`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springboot49j18/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springboot49j18/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springboot49j18/upload/picture3.jpg'),(6,'homepage','http://localhost:8080/springboot49j18/upload/1618035673618.jpg');

/*Table structure for table `discusspaixingbang` */

DROP TABLE IF EXISTS `discusspaixingbang`;

CREATE TABLE `discusspaixingbang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='排行榜评论表';

/*Data for the table `discusspaixingbang` */

insert  into `discusspaixingbang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (51,'2021-04-10 13:56:53',1,1,'用户名1','评论内容1','回复内容1'),(52,'2021-04-10 13:56:53',2,2,'用户名2','评论内容2','回复内容2'),(53,'2021-04-10 13:56:53',3,3,'用户名3','评论内容3','回复内容3'),(54,'2021-04-10 13:56:53',4,4,'用户名4','评论内容4','回复内容4'),(55,'2021-04-10 13:56:53',5,5,'用户名5','评论内容5','回复内容5'),(56,'2021-04-10 13:56:53',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discussxinwen` */

DROP TABLE IF EXISTS `discussxinwen`;

CREATE TABLE `discussxinwen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='新闻评论表';

/*Data for the table `discussxinwen` */

insert  into `discussxinwen`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (61,'2021-04-10 13:56:53',1,1,'用户名1','评论内容1','回复内容1'),(62,'2021-04-10 13:56:53',2,2,'用户名2','评论内容2','回复内容2'),(63,'2021-04-10 13:56:53',3,3,'用户名3','评论内容3','回复内容3'),(64,'2021-04-10 13:56:53',4,4,'用户名4','评论内容4','回复内容4'),(65,'2021-04-10 13:56:53',5,5,'用户名5','评论内容5','回复内容5'),(66,'2021-04-10 13:56:53',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `paixingbang` */

DROP TABLE IF EXISTS `paixingbang`;

CREATE TABLE `paixingbang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `neirong` longtext COMMENT '内容',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `faburen` varchar(200) DEFAULT NULL COMMENT '发布人',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='排行榜';

/*Data for the table `paixingbang` */

insert  into `paixingbang`(`id`,`addtime`,`biaoti`,`fabushijian`,`neirong`,`shipin`,`faburen`,`tupian`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (21,'2021-04-10 13:56:53','标题1','2021-04-10 13:56:53','<p>不能辜负老师的幸苦栽培</p>','http://localhost:8080/springboot49j18/upload/1618035536786.jpg','发布人1','http://localhost:8080/springboot49j18/upload/paixingbang_tupian1.jpg',1,1,'2021-04-10 14:21:40',5),(22,'2021-04-10 13:56:53','标题2','2021-04-10 13:56:53','内容2','','发布人2','http://localhost:8080/springboot49j18/upload/paixingbang_tupian2.jpg',2,2,'2021-04-10 14:16:09',5),(23,'2021-04-10 13:56:53','标题3','2021-04-10 13:56:53','内容3','','发布人3','http://localhost:8080/springboot49j18/upload/paixingbang_tupian3.jpg',3,3,'2021-04-10 13:56:53',3),(24,'2021-04-10 13:56:53','标题4','2021-04-10 13:56:53','内容4','','发布人4','http://localhost:8080/springboot49j18/upload/paixingbang_tupian4.jpg',4,4,'2021-04-10 14:12:24',5),(25,'2021-04-10 13:56:53','标题5','2021-04-10 13:56:53','内容5','','发布人5','http://localhost:8080/springboot49j18/upload/paixingbang_tupian5.jpg',5,5,'2021-04-10 13:56:53',5),(26,'2021-04-10 13:56:53','标题6','2021-04-10 13:56:53','内容6','','发布人6','http://localhost:8080/springboot49j18/upload/paixingbang_tupian6.jpg',6,6,'2021-04-10 14:00:39',7);

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
) ENGINE=InnoDB AUTO_INCREMENT=1618035195459 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1618035182014,'2021-04-10 14:13:01',1618034346588,22,'paixingbang','标题2','http://localhost:8080/springboot49j18/upload/paixingbang_tupian2.jpg'),(1618035195458,'2021-04-10 14:13:14',1618034346588,32,'xinwen','标题2','http://localhost:8080/springboot49j18/upload/xinwen_fengmian2.jpg');

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1618034346588,'1','yonghu','用户','5zy792ks50prypzsedy57dr6t2fp9pa5','2021-04-10 13:59:13','2021-04-10 15:22:25'),(2,1,'abo','users','管理员','t9j2isuo9uql6856686dmtumq189uscf','2021-04-10 14:16:41','2021-04-10 15:16:42');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-10 13:56:53');

/*Table structure for table `xinwen` */

DROP TABLE IF EXISTS `xinwen`;

CREATE TABLE `xinwen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `neirong` longtext COMMENT '内容',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `faburen` varchar(200) DEFAULT NULL COMMENT '发布人',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='新闻';

/*Data for the table `xinwen` */

insert  into `xinwen`(`id`,`addtime`,`biaoti`,`neirong`,`shipin`,`fabushijian`,`faburen`,`fengmian`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (31,'2021-04-10 13:56:53','标题1','内容1','','2021-04-10 13:56:53','发布人1','http://localhost:8080/springboot49j18/upload/xinwen_fengmian1.jpg',1,1,'2021-04-10 13:56:53',1),(32,'2021-04-10 13:56:53','标题2','内容2','','2021-04-10 13:56:53','发布人2','http://localhost:8080/springboot49j18/upload/xinwen_fengmian2.jpg',2,2,'2021-04-10 14:13:14',3),(33,'2021-04-10 13:56:53','标题3','内容3','','2021-04-10 13:56:53','发布人3','http://localhost:8080/springboot49j18/upload/xinwen_fengmian3.jpg',3,3,'2021-04-10 13:56:53',3),(34,'2021-04-10 13:56:53','标题4','内容4','','2021-04-10 13:56:53','发布人4','http://localhost:8080/springboot49j18/upload/xinwen_fengmian4.jpg',4,4,'2021-04-10 13:56:53',4),(35,'2021-04-10 13:56:53','标题5','内容5','','2021-04-10 13:56:53','发布人5','http://localhost:8080/springboot49j18/upload/xinwen_fengmian5.jpg',5,5,'2021-04-10 13:56:53',5),(36,'2021-04-10 13:56:53','标题6','<p>66232</p>','','2021-04-10 13:56:53','发布人6','http://localhost:8080/springboot49j18/upload/xinwen_fengmian6.jpg',6,6,'2021-04-10 14:22:04',9);

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618035072889 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`touxiang`) values (11,'2021-04-10 13:56:53','用户1','123456','姓名1','男','13823888881','http://localhost:8080/springboot49j18/upload/yonghu_touxiang1.jpg'),(12,'2021-04-10 13:56:53','用户2','123456','姓名2','男','13823888882','http://localhost:8080/springboot49j18/upload/yonghu_touxiang2.jpg'),(13,'2021-04-10 13:56:53','用户3','123456','姓名3','男','13823888883','http://localhost:8080/springboot49j18/upload/yonghu_touxiang3.jpg'),(14,'2021-04-10 13:56:53','用户4','123456','姓名4','男','13823888884','http://localhost:8080/springboot49j18/upload/yonghu_touxiang4.jpg'),(15,'2021-04-10 13:56:53','用户5','123456','姓名5','男','13823888885','http://localhost:8080/springboot49j18/upload/yonghu_touxiang5.jpg'),(16,'2021-04-10 13:56:53','用户6','123456','姓名6','男','13823888886','http://localhost:8080/springboot49j18/upload/yonghu_touxiang6.jpg'),(1618034346588,'2021-04-10 13:59:06','1','1','1 1','女','12312312312','http://localhost:8080/springboot49j18/upload/1618035344754.jpg'),(1618035072888,'2021-04-10 14:11:12','3','1','11',NULL,'12300000000',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
