/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - php6uo0a
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`php6uo0a` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `php6uo0a`;

/*Table structure for table `bumenxinxi` */

DROP TABLE IF EXISTS `bumenxinxi`;

CREATE TABLE `bumenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='部门信息';

/*Data for the table `bumenxinxi` */

insert  into `bumenxinxi`(`id`,`addtime`,`bumen`) values (41,'2021-03-15 20:42:12','部门1');
insert  into `bumenxinxi`(`id`,`addtime`,`bumen`) values (42,'2021-03-15 20:42:12','部门2');
insert  into `bumenxinxi`(`id`,`addtime`,`bumen`) values (43,'2021-03-15 20:42:12','部门3');
insert  into `bumenxinxi`(`id`,`addtime`,`bumen`) values (44,'2021-03-15 20:42:12','部门4');
insert  into `bumenxinxi`(`id`,`addtime`,`bumen`) values (45,'2021-03-15 20:42:12','部门5');
insert  into `bumenxinxi`(`id`,`addtime`,`bumen`) values (46,'2021-03-15 20:42:12','部门6');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/php6uo0a/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/php6uo0a/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/php6uo0a/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8 COMMENT='教师交流';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (111,'2021-03-15 20:42:12','帖子标题1','帖子内容1',1,1,'用户名1','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (112,'2021-03-15 20:42:12','帖子标题2','帖子内容2',2,2,'用户名2','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (113,'2021-03-15 20:42:12','帖子标题3','帖子内容3',3,3,'用户名3','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (114,'2021-03-15 20:42:12','帖子标题4','帖子内容4',4,4,'用户名4','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (115,'2021-03-15 20:42:12','帖子标题5','帖子内容5',5,5,'用户名5','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (116,'2021-03-15 20:42:12','帖子标题6','帖子内容6',6,6,'用户名6','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (117,'2021-03-15 20:51:38','22','22',0,1615812684,'2','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (118,'2021-03-15 20:54:46','神鼎飞丹砂','水电费水电费',0,1615812801,'22','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (119,'2021-03-15 20:55:42',NULL,'是否水电费',118,1615812769,'11',NULL);
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (120,'2021-03-15 20:57:09','第三方','水电费ds',0,1615812769,'11','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (121,'2021-03-15 20:58:00',NULL,'防守打法',120,1615812801,'22',NULL);
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (122,'2021-03-15 20:58:24',NULL,'萨达',121,1615812769,'11',NULL);

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615812802 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`jiaoshigonghao`,`mima`,`jiaoshixingming`,`bumen`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (21,'2021-03-15 20:42:12','教师1','123456','教师姓名1','部门1','男','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/php6uo0a/upload/jiaoshi_zhaopian1.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshigonghao`,`mima`,`jiaoshixingming`,`bumen`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (22,'2021-03-15 20:42:12','教师2','123456','教师姓名2','部门2','男','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/php6uo0a/upload/jiaoshi_zhaopian2.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshigonghao`,`mima`,`jiaoshixingming`,`bumen`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (23,'2021-03-15 20:42:12','教师3','123456','教师姓名3','部门3','男','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/php6uo0a/upload/jiaoshi_zhaopian3.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshigonghao`,`mima`,`jiaoshixingming`,`bumen`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (24,'2021-03-15 20:42:12','教师4','123456','教师姓名4','部门4','男','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/php6uo0a/upload/jiaoshi_zhaopian4.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshigonghao`,`mima`,`jiaoshixingming`,`bumen`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (25,'2021-03-15 20:42:12','教师5','123456','教师姓名5','部门5','男','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/php6uo0a/upload/jiaoshi_zhaopian5.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshigonghao`,`mima`,`jiaoshixingming`,`bumen`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (26,'2021-03-15 20:42:12','教师6','123456','教师姓名6','部门6','男','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/php6uo0a/upload/jiaoshi_zhaopian6.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshigonghao`,`mima`,`jiaoshixingming`,`bumen`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (1615812684,'2021-03-15 20:51:24','2','2','2','部门1','男',NULL,NULL,NULL,NULL);
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshigonghao`,`mima`,`jiaoshixingming`,`bumen`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (1615812801,'2021-03-15 20:53:21','22','22','是啊','部门6','女','11122222222','22@qq.com','441421199001120654','http://localhost:8080/php6uo0a/upload/1615812858.jpg');

/*Table structure for table `jiaoxueneirong` */

DROP TABLE IF EXISTS `jiaoxueneirong`;

CREATE TABLE `jiaoxueneirong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `neirong` longtext COMMENT '内容',
  `wenjian` varchar(200) DEFAULT NULL COMMENT '文件',
  `shangchuanshijian` date DEFAULT NULL COMMENT '上传时间',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COMMENT='教学内容';

/*Data for the table `jiaoxueneirong` */

insert  into `jiaoxueneirong`(`id`,`addtime`,`mingcheng`,`neirong`,`wenjian`,`shangchuanshijian`,`fengmian`,`jiaoshigonghao`,`jiaoshixingming`,`clicktime`,`clicknum`,`userid`) values (61,'2021-03-15 20:42:12','名称1','内容1','','2021-03-15','http://localhost:8080/php6uo0a/upload/jiaoxueneirong_fengmian1.jpg','教师工号1','教师姓名1','2021-03-15 20:42:12',1,1);
insert  into `jiaoxueneirong`(`id`,`addtime`,`mingcheng`,`neirong`,`wenjian`,`shangchuanshijian`,`fengmian`,`jiaoshigonghao`,`jiaoshixingming`,`clicktime`,`clicknum`,`userid`) values (62,'2021-03-15 20:42:12','名称2','内容2','','2021-03-15','http://localhost:8080/php6uo0a/upload/jiaoxueneirong_fengmian2.jpg','教师工号2','教师姓名2','2021-03-15 20:42:12',3,2);
insert  into `jiaoxueneirong`(`id`,`addtime`,`mingcheng`,`neirong`,`wenjian`,`shangchuanshijian`,`fengmian`,`jiaoshigonghao`,`jiaoshixingming`,`clicktime`,`clicknum`,`userid`) values (63,'2021-03-15 20:42:12','名称3','内容3','','2021-03-15','http://localhost:8080/php6uo0a/upload/jiaoxueneirong_fengmian3.jpg','教师工号3','教师姓名3','2021-03-15 20:42:12',4,3);
insert  into `jiaoxueneirong`(`id`,`addtime`,`mingcheng`,`neirong`,`wenjian`,`shangchuanshijian`,`fengmian`,`jiaoshigonghao`,`jiaoshixingming`,`clicktime`,`clicknum`,`userid`) values (64,'2021-03-15 20:42:12','名称4','内容4','','2021-03-15','http://localhost:8080/php6uo0a/upload/jiaoxueneirong_fengmian4.jpg','教师工号4','教师姓名4','2021-03-15 20:42:12',4,4);
insert  into `jiaoxueneirong`(`id`,`addtime`,`mingcheng`,`neirong`,`wenjian`,`shangchuanshijian`,`fengmian`,`jiaoshigonghao`,`jiaoshixingming`,`clicktime`,`clicknum`,`userid`) values (65,'2021-03-15 20:42:12','名称5','内容5','','2021-03-15','http://localhost:8080/php6uo0a/upload/jiaoxueneirong_fengmian5.jpg','教师工号5','教师姓名5','2021-03-15 20:42:12',5,5);
insert  into `jiaoxueneirong`(`id`,`addtime`,`mingcheng`,`neirong`,`wenjian`,`shangchuanshijian`,`fengmian`,`jiaoshigonghao`,`jiaoshixingming`,`clicktime`,`clicknum`,`userid`) values (66,'2021-03-15 20:42:12','名称6','内容6','','2021-03-15','http://localhost:8080/php6uo0a/upload/jiaoxueneirong_fengmian6.jpg','教师工号6','教师姓名6','2021-03-15 20:42:12',7,6);
insert  into `jiaoxueneirong`(`id`,`addtime`,`mingcheng`,`neirong`,`wenjian`,`shangchuanshijian`,`fengmian`,`jiaoshigonghao`,`jiaoshixingming`,`clicktime`,`clicknum`,`userid`) values (67,'2021-03-15 20:54:03','阿达的','发都市东方闪电都是都是f','http://localhost:8080/php6uo0a/upload/1615812838.txt',NULL,'http://localhost:8080/php6uo0a/upload/1615812841.jpg','22','是啊',NULL,2,1615812801);

/*Table structure for table `kechengxinxi` */

DROP TABLE IF EXISTS `kechengxinxi`;

CREATE TABLE `kechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengbianhao` varchar(200) DEFAULT NULL COMMENT '课程编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `keshi` varchar(200) DEFAULT NULL COMMENT '课时',
  `kaishishijian` date DEFAULT NULL COMMENT '开始时间',
  `kechengneirong` longtext COMMENT '课程内容',
  `kechengrenwu` longtext COMMENT '课程任务',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kechengbianhao` (`kechengbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COMMENT='课程信息';

/*Data for the table `kechengxinxi` */

insert  into `kechengxinxi`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`keshi`,`kaishishijian`,`kechengneirong`,`kechengrenwu`,`fengmian`,`jiaoshigonghao`,`jiaoshixingming`,`clicktime`,`clicknum`,`userid`) values (51,'2021-03-15 20:42:12','课程编号1','课程名称1','课时1','2021-03-15','课程内容1','课程任务1','http://localhost:8080/php6uo0a/upload/kechengxinxi_fengmian1.jpg','教师工号1','教师姓名1','2021-03-15 20:42:12',1,1);
insert  into `kechengxinxi`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`keshi`,`kaishishijian`,`kechengneirong`,`kechengrenwu`,`fengmian`,`jiaoshigonghao`,`jiaoshixingming`,`clicktime`,`clicknum`,`userid`) values (52,'2021-03-15 20:42:12','课程编号2','课程名称2','课时2','2021-03-15','课程内容2','课程任务2','http://localhost:8080/php6uo0a/upload/kechengxinxi_fengmian2.jpg','教师工号2','教师姓名2','2021-03-15 20:42:12',2,2);
insert  into `kechengxinxi`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`keshi`,`kaishishijian`,`kechengneirong`,`kechengrenwu`,`fengmian`,`jiaoshigonghao`,`jiaoshixingming`,`clicktime`,`clicknum`,`userid`) values (53,'2021-03-15 20:42:12','课程编号3','课程名称3','课时3','2021-03-15','课程内容3','课程任务3','http://localhost:8080/php6uo0a/upload/kechengxinxi_fengmian3.jpg','教师工号3','教师姓名3','2021-03-15 20:42:12',4,3);
insert  into `kechengxinxi`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`keshi`,`kaishishijian`,`kechengneirong`,`kechengrenwu`,`fengmian`,`jiaoshigonghao`,`jiaoshixingming`,`clicktime`,`clicknum`,`userid`) values (54,'2021-03-15 20:42:12','课程编号4','课程名称4','课时4','2021-03-15','课程内容4','课程任务4','http://localhost:8080/php6uo0a/upload/kechengxinxi_fengmian4.jpg','教师工号4','教师姓名4','2021-03-15 20:42:12',4,4);
insert  into `kechengxinxi`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`keshi`,`kaishishijian`,`kechengneirong`,`kechengrenwu`,`fengmian`,`jiaoshigonghao`,`jiaoshixingming`,`clicktime`,`clicknum`,`userid`) values (55,'2021-03-15 20:42:12','课程编号5','课程名称5','课时5','2021-03-15','课程内容5','课程任务5','http://localhost:8080/php6uo0a/upload/kechengxinxi_fengmian5.jpg','教师工号5','教师姓名5','2021-03-15 20:42:12',5,5);
insert  into `kechengxinxi`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`keshi`,`kaishishijian`,`kechengneirong`,`kechengrenwu`,`fengmian`,`jiaoshigonghao`,`jiaoshixingming`,`clicktime`,`clicknum`,`userid`) values (56,'2021-03-15 20:42:12','课程编号6','课程名称6','课时6','2021-03-15','课程内容6','课程任务6','http://localhost:8080/php6uo0a/upload/kechengxinxi_fengmian6.jpg','教师工号6','教师姓名6','2021-03-15 20:42:12',8,6);
insert  into `kechengxinxi`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`keshi`,`kaishishijian`,`kechengneirong`,`kechengrenwu`,`fengmian`,`jiaoshigonghao`,`jiaoshixingming`,`clicktime`,`clicknum`,`userid`) values (57,'2021-03-15 20:53:47','1615812796896','萨达萨达','70','2021-03-15','对方是否sd','发送到f','http://localhost:8080/php6uo0a/upload/1615812822.jpg','22','是啊',NULL,1,1615812801);

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-15 20:42:12');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615812770 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`zhuanye`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (11,'2021-03-15 20:42:12','学生1','123456','姓名1','专业1','男','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/php6uo0a/upload/xuesheng_zhaopian1.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`zhuanye`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (12,'2021-03-15 20:42:12','学生2','123456','姓名2','专业2','男','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/php6uo0a/upload/xuesheng_zhaopian2.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`zhuanye`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (13,'2021-03-15 20:42:12','学生3','123456','姓名3','专业3','男','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/php6uo0a/upload/xuesheng_zhaopian3.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`zhuanye`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (14,'2021-03-15 20:42:12','学生4','123456','姓名4','专业4','男','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/php6uo0a/upload/xuesheng_zhaopian4.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`zhuanye`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (15,'2021-03-15 20:42:12','学生5','123456','姓名5','专业5','男','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/php6uo0a/upload/xuesheng_zhaopian5.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`zhuanye`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (16,'2021-03-15 20:42:12','学生6','123456','姓名6','专业6','男','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/php6uo0a/upload/xuesheng_zhaopian6.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`zhuanye`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (1615812769,'2021-03-15 20:52:49','11','11','2多福多寿','专业6','女','11111111111','11@qq.com','441421199001120411','http://localhost:8080/php6uo0a/upload/1615812957.jpg');

/*Table structure for table `xueshengqiandao` */

DROP TABLE IF EXISTS `xueshengqiandao`;

CREATE TABLE `xueshengqiandao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `qiandaoshijian` datetime DEFAULT NULL COMMENT '签到时间',
  `qiandaodidian` varchar(200) DEFAULT NULL COMMENT '签到地点',
  `beizhu` longtext COMMENT '备注',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8 COMMENT='学生签到';

/*Data for the table `xueshengqiandao` */

insert  into `xueshengqiandao`(`id`,`addtime`,`xuehao`,`xingming`,`touxiang`,`qiandaoshijian`,`qiandaodidian`,`beizhu`,`jiaoshigonghao`,`jiaoshixingming`,`userid`) values (101,'2021-03-15 20:42:12','学号1','姓名1','http://localhost:8080/php6uo0a/upload/xueshengqiandao_touxiang1.jpg','2021-03-15 20:42:12','签到地点1','备注1','教师工号1','教师姓名1',1);
insert  into `xueshengqiandao`(`id`,`addtime`,`xuehao`,`xingming`,`touxiang`,`qiandaoshijian`,`qiandaodidian`,`beizhu`,`jiaoshigonghao`,`jiaoshixingming`,`userid`) values (102,'2021-03-15 20:42:12','学号2','姓名2','http://localhost:8080/php6uo0a/upload/xueshengqiandao_touxiang2.jpg','2021-03-15 20:42:12','签到地点2','备注2','教师工号2','教师姓名2',2);
insert  into `xueshengqiandao`(`id`,`addtime`,`xuehao`,`xingming`,`touxiang`,`qiandaoshijian`,`qiandaodidian`,`beizhu`,`jiaoshigonghao`,`jiaoshixingming`,`userid`) values (103,'2021-03-15 20:42:12','学号3','姓名3','http://localhost:8080/php6uo0a/upload/xueshengqiandao_touxiang3.jpg','2021-03-15 20:42:12','签到地点3','备注3','教师工号3','教师姓名3',3);
insert  into `xueshengqiandao`(`id`,`addtime`,`xuehao`,`xingming`,`touxiang`,`qiandaoshijian`,`qiandaodidian`,`beizhu`,`jiaoshigonghao`,`jiaoshixingming`,`userid`) values (104,'2021-03-15 20:42:12','学号4','姓名4','http://localhost:8080/php6uo0a/upload/xueshengqiandao_touxiang4.jpg','2021-03-15 20:42:12','签到地点4','备注4','教师工号4','教师姓名4',4);
insert  into `xueshengqiandao`(`id`,`addtime`,`xuehao`,`xingming`,`touxiang`,`qiandaoshijian`,`qiandaodidian`,`beizhu`,`jiaoshigonghao`,`jiaoshixingming`,`userid`) values (105,'2021-03-15 20:42:12','学号5','姓名5','http://localhost:8080/php6uo0a/upload/xueshengqiandao_touxiang5.jpg','2021-03-15 20:42:12','签到地点5','备注5','教师工号5','教师姓名5',5);
insert  into `xueshengqiandao`(`id`,`addtime`,`xuehao`,`xingming`,`touxiang`,`qiandaoshijian`,`qiandaodidian`,`beizhu`,`jiaoshigonghao`,`jiaoshixingming`,`userid`) values (106,'2021-03-15 20:42:12','学号6','姓名6','http://localhost:8080/php6uo0a/upload/xueshengqiandao_touxiang6.jpg','2021-03-15 20:42:12','签到地点6','备注6','教师工号6','教师姓名6',6);
insert  into `xueshengqiandao`(`id`,`addtime`,`xuehao`,`xingming`,`touxiang`,`qiandaoshijian`,`qiandaodidian`,`beizhu`,`jiaoshigonghao`,`jiaoshixingming`,`userid`) values (107,'2021-03-15 20:57:02','11','2多福多寿','http://localhost:8080/php6uo0a/upload/1615813014.jpg','2021-03-15 20:56:33','第三方水电费','是的发生的','22','是啊',1615812769);

/*Table structure for table `xueshengqingjia` */

DROP TABLE IF EXISTS `xueshengqingjia`;

CREATE TABLE `xueshengqingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `qingjiashijian` datetime DEFAULT NULL COMMENT '请假时间',
  `qingjiatianshu` int(11) DEFAULT NULL COMMENT '请假天数',
  `qingjialiyou` longtext COMMENT '请假理由',
  `beizhu` longtext COMMENT '备注',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8 COMMENT='学生请假';

/*Data for the table `xueshengqingjia` */

insert  into `xueshengqingjia`(`id`,`addtime`,`xuehao`,`xingming`,`touxiang`,`biaoti`,`qingjiashijian`,`qingjiatianshu`,`qingjialiyou`,`beizhu`,`jiaoshigonghao`,`jiaoshixingming`,`sfsh`,`shhf`,`userid`) values (91,'2021-03-15 20:42:12','学号1','姓名1','http://localhost:8080/php6uo0a/upload/xueshengqingjia_touxiang1.jpg','标题1','2021-03-15 20:42:12',1,'请假理由1','备注1','教师工号1','教师姓名1','是','',1);
insert  into `xueshengqingjia`(`id`,`addtime`,`xuehao`,`xingming`,`touxiang`,`biaoti`,`qingjiashijian`,`qingjiatianshu`,`qingjialiyou`,`beizhu`,`jiaoshigonghao`,`jiaoshixingming`,`sfsh`,`shhf`,`userid`) values (92,'2021-03-15 20:42:12','学号2','姓名2','http://localhost:8080/php6uo0a/upload/xueshengqingjia_touxiang2.jpg','标题2','2021-03-15 20:42:12',2,'请假理由2','备注2','教师工号2','教师姓名2','是','',2);
insert  into `xueshengqingjia`(`id`,`addtime`,`xuehao`,`xingming`,`touxiang`,`biaoti`,`qingjiashijian`,`qingjiatianshu`,`qingjialiyou`,`beizhu`,`jiaoshigonghao`,`jiaoshixingming`,`sfsh`,`shhf`,`userid`) values (93,'2021-03-15 20:42:12','学号3','姓名3','http://localhost:8080/php6uo0a/upload/xueshengqingjia_touxiang3.jpg','标题3','2021-03-15 20:42:12',3,'请假理由3','备注3','教师工号3','教师姓名3','是','',3);
insert  into `xueshengqingjia`(`id`,`addtime`,`xuehao`,`xingming`,`touxiang`,`biaoti`,`qingjiashijian`,`qingjiatianshu`,`qingjialiyou`,`beizhu`,`jiaoshigonghao`,`jiaoshixingming`,`sfsh`,`shhf`,`userid`) values (94,'2021-03-15 20:42:12','学号4','姓名4','http://localhost:8080/php6uo0a/upload/xueshengqingjia_touxiang4.jpg','标题4','2021-03-15 20:42:12',4,'请假理由4','备注4','教师工号4','教师姓名4','是','',4);
insert  into `xueshengqingjia`(`id`,`addtime`,`xuehao`,`xingming`,`touxiang`,`biaoti`,`qingjiashijian`,`qingjiatianshu`,`qingjialiyou`,`beizhu`,`jiaoshigonghao`,`jiaoshixingming`,`sfsh`,`shhf`,`userid`) values (95,'2021-03-15 20:42:12','学号5','姓名5','http://localhost:8080/php6uo0a/upload/xueshengqingjia_touxiang5.jpg','标题5','2021-03-15 20:42:12',5,'请假理由5','备注5','教师工号5','教师姓名5','是','',5);
insert  into `xueshengqingjia`(`id`,`addtime`,`xuehao`,`xingming`,`touxiang`,`biaoti`,`qingjiashijian`,`qingjiatianshu`,`qingjialiyou`,`beizhu`,`jiaoshigonghao`,`jiaoshixingming`,`sfsh`,`shhf`,`userid`) values (96,'2021-03-15 20:42:12','学号6','姓名6','http://localhost:8080/php6uo0a/upload/xueshengqingjia_touxiang6.jpg','标题6','2021-03-15 20:42:12',6,'请假理由6','备注6','教师工号6','教师姓名6','是','',6);
insert  into `xueshengqingjia`(`id`,`addtime`,`xuehao`,`xingming`,`touxiang`,`biaoti`,`qingjiashijian`,`qingjiatianshu`,`qingjialiyou`,`beizhu`,`jiaoshigonghao`,`jiaoshixingming`,`sfsh`,`shhf`,`userid`) values (97,'2021-03-15 20:56:46','11','2多福多寿','http://localhost:8080/php6uo0a/upload/1615812994.jpg','水电费','2021-03-15 20:56:13',88,'第三方身份','是的发生的f','22','是啊','是','n同意',1615812769);

/*Table structure for table `xueshengzuoye` */

DROP TABLE IF EXISTS `xueshengzuoye`;

CREATE TABLE `xueshengzuoye` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `zuoyemingcheng` varchar(200) DEFAULT NULL COMMENT '作业名称',
  `zuoyeneirong` longtext COMMENT '作业内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `jiezhiriqi` date DEFAULT NULL COMMENT '截止日期',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COMMENT='学生作业';

/*Data for the table `xueshengzuoye` */

insert  into `xueshengzuoye`(`id`,`addtime`,`jiaoshigonghao`,`jiaoshixingming`,`zuoyemingcheng`,`zuoyeneirong`,`faburiqi`,`jiezhiriqi`,`fengmian`,`userid`) values (71,'2021-03-15 20:42:12','教师工号1','教师姓名1','作业名称1','作业内容1','2021-03-15','2021-03-15','http://localhost:8080/php6uo0a/upload/xueshengzuoye_fengmian1.jpg',1);
insert  into `xueshengzuoye`(`id`,`addtime`,`jiaoshigonghao`,`jiaoshixingming`,`zuoyemingcheng`,`zuoyeneirong`,`faburiqi`,`jiezhiriqi`,`fengmian`,`userid`) values (72,'2021-03-15 20:42:12','教师工号2','教师姓名2','作业名称2','作业内容2','2021-03-15','2021-03-15','http://localhost:8080/php6uo0a/upload/xueshengzuoye_fengmian2.jpg',2);
insert  into `xueshengzuoye`(`id`,`addtime`,`jiaoshigonghao`,`jiaoshixingming`,`zuoyemingcheng`,`zuoyeneirong`,`faburiqi`,`jiezhiriqi`,`fengmian`,`userid`) values (73,'2021-03-15 20:42:12','教师工号3','教师姓名3','作业名称3','作业内容3','2021-03-15','2021-03-15','http://localhost:8080/php6uo0a/upload/xueshengzuoye_fengmian3.jpg',3);
insert  into `xueshengzuoye`(`id`,`addtime`,`jiaoshigonghao`,`jiaoshixingming`,`zuoyemingcheng`,`zuoyeneirong`,`faburiqi`,`jiezhiriqi`,`fengmian`,`userid`) values (74,'2021-03-15 20:42:12','教师工号4','教师姓名4','作业名称4','作业内容4','2021-03-15','2021-03-15','http://localhost:8080/php6uo0a/upload/xueshengzuoye_fengmian4.jpg',4);
insert  into `xueshengzuoye`(`id`,`addtime`,`jiaoshigonghao`,`jiaoshixingming`,`zuoyemingcheng`,`zuoyeneirong`,`faburiqi`,`jiezhiriqi`,`fengmian`,`userid`) values (75,'2021-03-15 20:42:12','教师工号5','教师姓名5','作业名称5','作业内容5','2021-03-15','2021-03-15','http://localhost:8080/php6uo0a/upload/xueshengzuoye_fengmian5.jpg',5);
insert  into `xueshengzuoye`(`id`,`addtime`,`jiaoshigonghao`,`jiaoshixingming`,`zuoyemingcheng`,`zuoyeneirong`,`faburiqi`,`jiezhiriqi`,`fengmian`,`userid`) values (76,'2021-03-15 20:42:12','教师工号6','教师姓名6','作业名称6','作业内容6','2021-03-15','2021-03-15','http://localhost:8080/php6uo0a/upload/xueshengzuoye_fengmian6.jpg',6);
insert  into `xueshengzuoye`(`id`,`addtime`,`jiaoshigonghao`,`jiaoshixingming`,`zuoyemingcheng`,`zuoyeneirong`,`faburiqi`,`jiezhiriqi`,`fengmian`,`userid`) values (77,'2021-03-15 20:54:35','22','是啊','的方式发生','是的发生的','2021-03-15','2021-03-18','http://localhost:8080/php6uo0a/upload/1615812870.jpg',1615812801);

/*Table structure for table `zhuanyexinxi` */

DROP TABLE IF EXISTS `zhuanyexinxi`;

CREATE TABLE `zhuanyexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='专业信息';

/*Data for the table `zhuanyexinxi` */

insert  into `zhuanyexinxi`(`id`,`addtime`,`zhuanye`) values (31,'2021-03-15 20:42:12','专业1');
insert  into `zhuanyexinxi`(`id`,`addtime`,`zhuanye`) values (32,'2021-03-15 20:42:12','专业2');
insert  into `zhuanyexinxi`(`id`,`addtime`,`zhuanye`) values (33,'2021-03-15 20:42:12','专业3');
insert  into `zhuanyexinxi`(`id`,`addtime`,`zhuanye`) values (34,'2021-03-15 20:42:12','专业4');
insert  into `zhuanyexinxi`(`id`,`addtime`,`zhuanye`) values (35,'2021-03-15 20:42:12','专业5');
insert  into `zhuanyexinxi`(`id`,`addtime`,`zhuanye`) values (36,'2021-03-15 20:42:12','专业6');

/*Table structure for table `zuoyetijiao` */

DROP TABLE IF EXISTS `zuoyetijiao`;

CREATE TABLE `zuoyetijiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuoyemingcheng` varchar(200) DEFAULT NULL COMMENT '作业名称',
  `wenjian` varchar(200) DEFAULT NULL COMMENT '文件',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `shangchuanshijian` date DEFAULT NULL COMMENT '上传时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 COMMENT='作业提交';

/*Data for the table `zuoyetijiao` */

insert  into `zuoyetijiao`(`id`,`addtime`,`zuoyemingcheng`,`wenjian`,`jiaoshigonghao`,`jiaoshixingming`,`shangchuanshijian`,`xuehao`,`xingming`,`fengmian`,`userid`) values (81,'2021-03-15 20:42:12','作业名称1','','教师工号1','教师姓名1','2021-03-15','学号1','姓名1','http://localhost:8080/php6uo0a/upload/zuoyetijiao_fengmian1.jpg',1);
insert  into `zuoyetijiao`(`id`,`addtime`,`zuoyemingcheng`,`wenjian`,`jiaoshigonghao`,`jiaoshixingming`,`shangchuanshijian`,`xuehao`,`xingming`,`fengmian`,`userid`) values (82,'2021-03-15 20:42:12','作业名称2','','教师工号2','教师姓名2','2021-03-15','学号2','姓名2','http://localhost:8080/php6uo0a/upload/zuoyetijiao_fengmian2.jpg',2);
insert  into `zuoyetijiao`(`id`,`addtime`,`zuoyemingcheng`,`wenjian`,`jiaoshigonghao`,`jiaoshixingming`,`shangchuanshijian`,`xuehao`,`xingming`,`fengmian`,`userid`) values (83,'2021-03-15 20:42:12','作业名称3','','教师工号3','教师姓名3','2021-03-15','学号3','姓名3','http://localhost:8080/php6uo0a/upload/zuoyetijiao_fengmian3.jpg',3);
insert  into `zuoyetijiao`(`id`,`addtime`,`zuoyemingcheng`,`wenjian`,`jiaoshigonghao`,`jiaoshixingming`,`shangchuanshijian`,`xuehao`,`xingming`,`fengmian`,`userid`) values (84,'2021-03-15 20:42:12','作业名称4','','教师工号4','教师姓名4','2021-03-15','学号4','姓名4','http://localhost:8080/php6uo0a/upload/zuoyetijiao_fengmian4.jpg',4);
insert  into `zuoyetijiao`(`id`,`addtime`,`zuoyemingcheng`,`wenjian`,`jiaoshigonghao`,`jiaoshixingming`,`shangchuanshijian`,`xuehao`,`xingming`,`fengmian`,`userid`) values (85,'2021-03-15 20:42:12','作业名称5','','教师工号5','教师姓名5','2021-03-15','学号5','姓名5','http://localhost:8080/php6uo0a/upload/zuoyetijiao_fengmian5.jpg',5);
insert  into `zuoyetijiao`(`id`,`addtime`,`zuoyemingcheng`,`wenjian`,`jiaoshigonghao`,`jiaoshixingming`,`shangchuanshijian`,`xuehao`,`xingming`,`fengmian`,`userid`) values (86,'2021-03-15 20:42:12','作业名称6','','教师工号6','教师姓名6','2021-03-15','学号6','姓名6','http://localhost:8080/php6uo0a/upload/zuoyetijiao_fengmian6.jpg',6);
insert  into `zuoyetijiao`(`id`,`addtime`,`zuoyemingcheng`,`wenjian`,`jiaoshigonghao`,`jiaoshixingming`,`shangchuanshijian`,`xuehao`,`xingming`,`fengmian`,`userid`) values (87,'2021-03-15 20:56:13','的方式发生','http://localhost:8080/php6uo0a/upload/1615812969.txt','22','是啊','2021-04-16','11','2多福多寿','http://localhost:8080/php6uo0a/upload/1615812870.jpg',1615812769);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
