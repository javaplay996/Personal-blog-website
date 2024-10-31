/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmckr8l
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmckr8l` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmckr8l`;

/*Table structure for table `bokewenzhang` */

DROP TABLE IF EXISTS `bokewenzhang`;

CREATE TABLE `bokewenzhang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenzhangbiaoti` varchar(200) NOT NULL COMMENT '文章标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `wenzhangfenlei` varchar(200) DEFAULT NULL COMMENT '文章分类',
  `jianjie` longtext COMMENT '简介',
  `wenzhangneirong` longtext COMMENT '文章内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='博客文章';

/*Data for the table `bokewenzhang` */

insert  into `bokewenzhang`(`id`,`addtime`,`wenzhangbiaoti`,`tupian`,`wenzhangfenlei`,`jianjie`,`wenzhangneirong`,`faburiqi`,`yonghuming`,`yonghuxingming`,`sfsh`,`shhf`) values (31,'2021-05-28 23:54:05','文章标题1','http://localhost:8080/ssmckr8l/upload/bokewenzhang_tupian1.jpg','文章分类1','简介1','文章内容1','2021-05-28','用户名1','用户姓名1','是','');
insert  into `bokewenzhang`(`id`,`addtime`,`wenzhangbiaoti`,`tupian`,`wenzhangfenlei`,`jianjie`,`wenzhangneirong`,`faburiqi`,`yonghuming`,`yonghuxingming`,`sfsh`,`shhf`) values (32,'2021-05-28 23:54:05','文章标题2','http://localhost:8080/ssmckr8l/upload/bokewenzhang_tupian2.jpg','文章分类2','简介2','文章内容2','2021-05-28','用户名2','用户姓名2','是','');
insert  into `bokewenzhang`(`id`,`addtime`,`wenzhangbiaoti`,`tupian`,`wenzhangfenlei`,`jianjie`,`wenzhangneirong`,`faburiqi`,`yonghuming`,`yonghuxingming`,`sfsh`,`shhf`) values (33,'2021-05-28 23:54:05','文章标题3','http://localhost:8080/ssmckr8l/upload/bokewenzhang_tupian3.jpg','文章分类3','简介3','文章内容3','2021-05-28','用户名3','用户姓名3','是','');
insert  into `bokewenzhang`(`id`,`addtime`,`wenzhangbiaoti`,`tupian`,`wenzhangfenlei`,`jianjie`,`wenzhangneirong`,`faburiqi`,`yonghuming`,`yonghuxingming`,`sfsh`,`shhf`) values (34,'2021-05-28 23:54:05','文章标题4','http://localhost:8080/ssmckr8l/upload/bokewenzhang_tupian4.jpg','文章分类4','简介4','文章内容4','2021-05-28','用户名4','用户姓名4','是','');
insert  into `bokewenzhang`(`id`,`addtime`,`wenzhangbiaoti`,`tupian`,`wenzhangfenlei`,`jianjie`,`wenzhangneirong`,`faburiqi`,`yonghuming`,`yonghuxingming`,`sfsh`,`shhf`) values (35,'2021-05-28 23:54:05','文章标题5','http://localhost:8080/ssmckr8l/upload/bokewenzhang_tupian5.jpg','文章分类5','简介5','文章内容5','2021-05-28','用户名5','用户姓名5','是','');
insert  into `bokewenzhang`(`id`,`addtime`,`wenzhangbiaoti`,`tupian`,`wenzhangfenlei`,`jianjie`,`wenzhangneirong`,`faburiqi`,`yonghuming`,`yonghuxingming`,`sfsh`,`shhf`) values (36,'2021-05-28 23:54:05','文章标题6','http://localhost:8080/ssmckr8l/upload/bokewenzhang_tupian6.jpg','文章分类6','简介6','文章内容6','2021-05-28','用户名6','用户姓名6','是','');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmckr8l/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssmckr8l/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssmckr8l/upload/picture3.jpg');

/*Table structure for table `discussbokewenzhang` */

DROP TABLE IF EXISTS `discussbokewenzhang`;

CREATE TABLE `discussbokewenzhang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='博客文章评论表';

/*Data for the table `discussbokewenzhang` */

insert  into `discussbokewenzhang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (71,'2021-05-28 23:54:05',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussbokewenzhang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (72,'2021-05-28 23:54:05',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussbokewenzhang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (73,'2021-05-28 23:54:05',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussbokewenzhang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (74,'2021-05-28 23:54:05',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussbokewenzhang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (75,'2021-05-28 23:54:05',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussbokewenzhang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (76,'2021-05-28 23:54:05',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discussxiangcefenxiang` */

DROP TABLE IF EXISTS `discussxiangcefenxiang`;

CREATE TABLE `discussxiangcefenxiang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='相册分享评论表';

/*Data for the table `discussxiangcefenxiang` */

insert  into `discussxiangcefenxiang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (81,'2021-05-28 23:54:05',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussxiangcefenxiang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (82,'2021-05-28 23:54:05',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussxiangcefenxiang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (83,'2021-05-28 23:54:05',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussxiangcefenxiang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (84,'2021-05-28 23:54:05',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussxiangcefenxiang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (85,'2021-05-28 23:54:05',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussxiangcefenxiang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (86,'2021-05-28 23:54:05',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (61,'2021-05-28 23:54:05',1,'用户名1','留言内容1','回复内容1');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (62,'2021-05-28 23:54:05',2,'用户名2','留言内容2','回复内容2');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (63,'2021-05-28 23:54:05',3,'用户名3','留言内容3','回复内容3');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (64,'2021-05-28 23:54:05',4,'用户名4','留言内容4','回复内容4');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (65,'2021-05-28 23:54:05',5,'用户名5','留言内容5','回复内容5');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (66,'2021-05-28 23:54:05',6,'用户名6','留言内容6','回复内容6');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','egvxwyq6a8msi993jlaiefx7awy3em1h','2021-05-28 23:55:15','2021-05-29 00:55:15');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-28 23:54:05');

/*Table structure for table `wenzhangfenlei` */

DROP TABLE IF EXISTS `wenzhangfenlei`;

CREATE TABLE `wenzhangfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenzhangfenlei` varchar(200) DEFAULT NULL COMMENT '文章分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='文章分类';

/*Data for the table `wenzhangfenlei` */

insert  into `wenzhangfenlei`(`id`,`addtime`,`wenzhangfenlei`) values (21,'2021-05-28 23:54:05','文章分类1');
insert  into `wenzhangfenlei`(`id`,`addtime`,`wenzhangfenlei`) values (22,'2021-05-28 23:54:05','文章分类2');
insert  into `wenzhangfenlei`(`id`,`addtime`,`wenzhangfenlei`) values (23,'2021-05-28 23:54:05','文章分类3');
insert  into `wenzhangfenlei`(`id`,`addtime`,`wenzhangfenlei`) values (24,'2021-05-28 23:54:05','文章分类4');
insert  into `wenzhangfenlei`(`id`,`addtime`,`wenzhangfenlei`) values (25,'2021-05-28 23:54:05','文章分类5');
insert  into `wenzhangfenlei`(`id`,`addtime`,`wenzhangfenlei`) values (26,'2021-05-28 23:54:05','文章分类6');

/*Table structure for table `xiangcefenlei` */

DROP TABLE IF EXISTS `xiangcefenlei`;

CREATE TABLE `xiangcefenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangcefenlei` varchar(200) DEFAULT NULL COMMENT '相册分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='相册分类';

/*Data for the table `xiangcefenlei` */

insert  into `xiangcefenlei`(`id`,`addtime`,`xiangcefenlei`) values (41,'2021-05-28 23:54:05','相册分类1');
insert  into `xiangcefenlei`(`id`,`addtime`,`xiangcefenlei`) values (42,'2021-05-28 23:54:05','相册分类2');
insert  into `xiangcefenlei`(`id`,`addtime`,`xiangcefenlei`) values (43,'2021-05-28 23:54:05','相册分类3');
insert  into `xiangcefenlei`(`id`,`addtime`,`xiangcefenlei`) values (44,'2021-05-28 23:54:05','相册分类4');
insert  into `xiangcefenlei`(`id`,`addtime`,`xiangcefenlei`) values (45,'2021-05-28 23:54:05','相册分类5');
insert  into `xiangcefenlei`(`id`,`addtime`,`xiangcefenlei`) values (46,'2021-05-28 23:54:05','相册分类6');

/*Table structure for table `xiangcefenxiang` */

DROP TABLE IF EXISTS `xiangcefenxiang`;

CREATE TABLE `xiangcefenxiang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangcemingcheng` varchar(200) DEFAULT NULL COMMENT '相册名称',
  `xiangcefenlei` varchar(200) DEFAULT NULL COMMENT '相册分类',
  `fengmiantu` varchar(200) DEFAULT NULL COMMENT '封面图',
  `jianjie` longtext COMMENT '简介',
  `xiangceneirong` longtext COMMENT '相册内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='相册分享';

/*Data for the table `xiangcefenxiang` */

insert  into `xiangcefenxiang`(`id`,`addtime`,`xiangcemingcheng`,`xiangcefenlei`,`fengmiantu`,`jianjie`,`xiangceneirong`,`faburiqi`,`yonghuming`,`yonghuxingming`,`sfsh`,`shhf`) values (51,'2021-05-28 23:54:05','相册名称1','相册分类1','http://localhost:8080/ssmckr8l/upload/xiangcefenxiang_fengmiantu1.jpg','简介1','相册内容1','2021-05-28','用户名1','用户姓名1','是','');
insert  into `xiangcefenxiang`(`id`,`addtime`,`xiangcemingcheng`,`xiangcefenlei`,`fengmiantu`,`jianjie`,`xiangceneirong`,`faburiqi`,`yonghuming`,`yonghuxingming`,`sfsh`,`shhf`) values (52,'2021-05-28 23:54:05','相册名称2','相册分类2','http://localhost:8080/ssmckr8l/upload/xiangcefenxiang_fengmiantu2.jpg','简介2','相册内容2','2021-05-28','用户名2','用户姓名2','是','');
insert  into `xiangcefenxiang`(`id`,`addtime`,`xiangcemingcheng`,`xiangcefenlei`,`fengmiantu`,`jianjie`,`xiangceneirong`,`faburiqi`,`yonghuming`,`yonghuxingming`,`sfsh`,`shhf`) values (53,'2021-05-28 23:54:05','相册名称3','相册分类3','http://localhost:8080/ssmckr8l/upload/xiangcefenxiang_fengmiantu3.jpg','简介3','相册内容3','2021-05-28','用户名3','用户姓名3','是','');
insert  into `xiangcefenxiang`(`id`,`addtime`,`xiangcemingcheng`,`xiangcefenlei`,`fengmiantu`,`jianjie`,`xiangceneirong`,`faburiqi`,`yonghuming`,`yonghuxingming`,`sfsh`,`shhf`) values (54,'2021-05-28 23:54:05','相册名称4','相册分类4','http://localhost:8080/ssmckr8l/upload/xiangcefenxiang_fengmiantu4.jpg','简介4','相册内容4','2021-05-28','用户名4','用户姓名4','是','');
insert  into `xiangcefenxiang`(`id`,`addtime`,`xiangcemingcheng`,`xiangcefenlei`,`fengmiantu`,`jianjie`,`xiangceneirong`,`faburiqi`,`yonghuming`,`yonghuxingming`,`sfsh`,`shhf`) values (55,'2021-05-28 23:54:05','相册名称5','相册分类5','http://localhost:8080/ssmckr8l/upload/xiangcefenxiang_fengmiantu5.jpg','简介5','相册内容5','2021-05-28','用户名5','用户姓名5','是','');
insert  into `xiangcefenxiang`(`id`,`addtime`,`xiangcemingcheng`,`xiangcefenlei`,`fengmiantu`,`jianjie`,`xiangceneirong`,`faburiqi`,`yonghuming`,`yonghuxingming`,`sfsh`,`shhf`) values (56,'2021-05-28 23:54:05','相册名称6','相册分类6','http://localhost:8080/ssmckr8l/upload/xiangcefenxiang_fengmiantu6.jpg','简介6','相册内容6','2021-05-28','用户名6','用户姓名6','是','');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`yonghuxingming`,`touxiang`,`xingbie`,`shoujihaoma`,`youxiang`) values (11,'2021-05-28 23:54:05','用户1','123456','用户姓名1','http://localhost:8080/ssmckr8l/upload/yonghu_touxiang1.jpg','男','13823888881','773890001@qq.com');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`yonghuxingming`,`touxiang`,`xingbie`,`shoujihaoma`,`youxiang`) values (12,'2021-05-28 23:54:05','用户2','123456','用户姓名2','http://localhost:8080/ssmckr8l/upload/yonghu_touxiang2.jpg','男','13823888882','773890002@qq.com');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`yonghuxingming`,`touxiang`,`xingbie`,`shoujihaoma`,`youxiang`) values (13,'2021-05-28 23:54:05','用户3','123456','用户姓名3','http://localhost:8080/ssmckr8l/upload/yonghu_touxiang3.jpg','男','13823888883','773890003@qq.com');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`yonghuxingming`,`touxiang`,`xingbie`,`shoujihaoma`,`youxiang`) values (14,'2021-05-28 23:54:05','用户4','123456','用户姓名4','http://localhost:8080/ssmckr8l/upload/yonghu_touxiang4.jpg','男','13823888884','773890004@qq.com');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`yonghuxingming`,`touxiang`,`xingbie`,`shoujihaoma`,`youxiang`) values (15,'2021-05-28 23:54:05','用户5','123456','用户姓名5','http://localhost:8080/ssmckr8l/upload/yonghu_touxiang5.jpg','男','13823888885','773890005@qq.com');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`yonghuxingming`,`touxiang`,`xingbie`,`shoujihaoma`,`youxiang`) values (16,'2021-05-28 23:54:05','用户6','123456','用户姓名6','http://localhost:8080/ssmckr8l/upload/yonghu_touxiang6.jpg','男','13823888886','773890006@qq.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
