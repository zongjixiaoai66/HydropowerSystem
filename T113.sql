/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t113`;
CREATE DATABASE IF NOT EXISTS `t113` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t113`;

DROP TABLE IF EXISTS `banzubaobiao`;
CREATE TABLE IF NOT EXISTS `banzubaobiao` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `yuefen` varchar(200) DEFAULT NULL COMMENT '月份',
  `lingyongshebei` int DEFAULT NULL COMMENT '领用设备',
  `xiaohaoshebei` int DEFAULT NULL COMMENT '消耗设备',
  `zongshuliang` int DEFAULT NULL COMMENT '总数量',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb3 COMMENT='班组报表';

DELETE FROM `banzubaobiao`;
INSERT INTO `banzubaobiao` (`id`, `addtime`, `bianhao`, `yuefen`, `lingyongshebei`, `xiaohaoshebei`, `zongshuliang`, `dengjiriqi`) VALUES
	(91, '2021-05-09 06:14:56', '编号1', '月份1', 1, 1, 1, '2021-05-09'),
	(92, '2021-05-09 06:14:56', '编号2', '月份2', 2, 2, 2, '2021-05-09'),
	(93, '2021-05-09 06:14:56', '编号3', '月份3', 3, 3, 3, '2021-05-09'),
	(94, '2021-05-09 06:14:56', '编号4', '月份4', 4, 4, 4, '2021-05-09'),
	(95, '2021-05-09 06:14:56', '编号5', '月份5', 5, 5, 5, '2021-05-09'),
	(96, '2021-05-09 06:14:56', '编号6', '月份6', 6, 6, 6, '2021-05-09');

DROP TABLE IF EXISTS `baoxiuxinxi`;
CREATE TABLE IF NOT EXISTS `baoxiuxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeimingcheng` varchar(200) NOT NULL COMMENT '设备名称',
  `baoxiuneirong` longtext COMMENT '报修内容',
  `baoxiuriqi` date DEFAULT NULL COMMENT '报修日期',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb3 COMMENT='报修信息';

DELETE FROM `baoxiuxinxi`;
INSERT INTO `baoxiuxinxi` (`id`, `addtime`, `shebeimingcheng`, `baoxiuneirong`, `baoxiuriqi`, `zhanghao`, `xingming`, `sfsh`, `shhf`) VALUES
	(151, '2021-05-09 06:14:56', '设备名称1', '报修内容1', '2021-05-09', '账号1', '姓名1', '是', ''),
	(152, '2021-05-09 06:14:56', '设备名称2', '报修内容2', '2021-05-09', '账号2', '姓名2', '是', ''),
	(153, '2021-05-09 06:14:56', '设备名称3', '报修内容3', '2021-05-09', '账号3', '姓名3', '是', ''),
	(154, '2021-05-09 06:14:56', '设备名称4', '报修内容4', '2021-05-09', '账号4', '姓名4', '是', ''),
	(155, '2021-05-09 06:14:56', '设备名称5', '报修内容5', '2021-05-09', '账号5', '姓名5', '是', ''),
	(156, '2021-05-09 06:14:56', '设备名称6', '报修内容6', '2021-05-09', '账号6', '姓名6', '是', '');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springbootrze22/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springbootrze22/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springbootrze22/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `dingqixiufu`;
CREATE TABLE IF NOT EXISTS `dingqixiufu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `xiufurenyuan` varchar(200) DEFAULT NULL COMMENT '修复人员',
  `xiufuneirong` longtext COMMENT '修复内容',
  `dingqiriqi` varchar(200) DEFAULT NULL COMMENT '定期日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8mb3 COMMENT='定期修复';

DELETE FROM `dingqixiufu`;
INSERT INTO `dingqixiufu` (`id`, `addtime`, `bianhao`, `shebeimingcheng`, `xiufurenyuan`, `xiufuneirong`, `dingqiriqi`, `beizhu`) VALUES
	(161, '2021-05-09 06:14:56', '编号1', '设备名称1', '修复人员1', '修复内容1', '定期日期1', '备注1'),
	(162, '2021-05-09 06:14:56', '编号2', '设备名称2', '修复人员2', '修复内容2', '定期日期2', '备注2'),
	(163, '2021-05-09 06:14:56', '编号3', '设备名称3', '修复人员3', '修复内容3', '定期日期3', '备注3'),
	(164, '2021-05-09 06:14:56', '编号4', '设备名称4', '修复人员4', '修复内容4', '定期日期4', '备注4'),
	(165, '2021-05-09 06:14:56', '编号5', '设备名称5', '修复人员5', '修复内容5', '定期日期5', '备注5'),
	(166, '2021-05-09 06:14:56', '编号6', '设备名称6', '修复人员6', '修复内容6', '定期日期6', '备注6');

DROP TABLE IF EXISTS `gerenbaobiao`;
CREATE TABLE IF NOT EXISTS `gerenbaobiao` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `yuefen` varchar(200) DEFAULT NULL COMMENT '月份',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `lingyongshuliang` int DEFAULT NULL COMMENT '领用数量',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb3 COMMENT='个人报表';

DELETE FROM `gerenbaobiao`;
INSERT INTO `gerenbaobiao` (`id`, `addtime`, `bianhao`, `yuefen`, `zhanghao`, `xingming`, `shebeimingcheng`, `lingyongshuliang`, `dengjiriqi`) VALUES
	(101, '2021-05-09 06:14:56', '编号1', '月份1', '账号1', '姓名1', '设备名称1', 1, '2021-05-09'),
	(102, '2021-05-09 06:14:56', '编号2', '月份2', '账号2', '姓名2', '设备名称2', 2, '2021-05-09'),
	(103, '2021-05-09 06:14:56', '编号3', '月份3', '账号3', '姓名3', '设备名称3', 3, '2021-05-09'),
	(104, '2021-05-09 06:14:56', '编号4', '月份4', '账号4', '姓名4', '设备名称4', 4, '2021-05-09'),
	(105, '2021-05-09 06:14:56', '编号5', '月份5', '账号5', '姓名5', '设备名称5', 5, '2021-05-09'),
	(106, '2021-05-09 06:14:56', '编号6', '月份6', '账号6', '姓名6', '设备名称6', 6, '2021-05-09');

DROP TABLE IF EXISTS `lingyongbaobiao`;
CREATE TABLE IF NOT EXISTS `lingyongbaobiao` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `yuefen` varchar(200) DEFAULT NULL COMMENT '月份',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `lingyongshuliang` int DEFAULT NULL COMMENT '领用数量',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1620541005224 DEFAULT CHARSET=utf8mb3 COMMENT='领用报表';

DELETE FROM `lingyongbaobiao`;
INSERT INTO `lingyongbaobiao` (`id`, `addtime`, `bianhao`, `yuefen`, `shebeimingcheng`, `lingyongshuliang`, `dengjiriqi`) VALUES
	(71, '2021-05-09 06:14:56', '编号1', '月份1', '设备名称1', 1, '2021-05-09'),
	(72, '2021-05-09 06:14:56', '编号2', '月份2', '设备名称2', 2, '2021-05-09'),
	(73, '2021-05-09 06:14:56', '编号3', '月份3', '设备名称3', 3, '2021-05-09'),
	(74, '2021-05-09 06:14:56', '编号4', '月份4', '设备名称4', 4, '2021-05-09'),
	(75, '2021-05-09 06:14:56', '编号5', '月份5', '设备名称5', 5, '2021-05-09'),
	(76, '2021-05-09 06:14:56', '编号6', '月份6', '设备名称6', 6, '2021-05-09'),
	(1620541005223, '2021-05-09 06:16:45', '1620540912911', '8月份', '设备名称3', 444, '2021-05-09');

DROP TABLE IF EXISTS `lingyongshebei`;
CREATE TABLE IF NOT EXISTS `lingyongshebei` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeibianhao` varchar(200) DEFAULT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  `yongtu` longtext COMMENT '用途',
  `shebeixiangqing` longtext COMMENT '设备详情',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shebeibianhao` (`shebeibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COMMENT='领用设备';

DELETE FROM `lingyongshebei`;
INSERT INTO `lingyongshebei` (`id`, `addtime`, `shebeibianhao`, `shebeimingcheng`, `tupian`, `shuliang`, `zhuangtai`, `yongtu`, `shebeixiangqing`, `dengjiriqi`) VALUES
	(21, '2021-05-09 06:14:56', '设备编号1', '设备名称1', 'http://localhost:8080/springbootrze22/upload/lingyongshebei_tupian1.jpg', '数量1', '正常', '用途1', '设备详情1', '2021-05-09'),
	(22, '2021-05-09 06:14:56', '设备编号2', '设备名称2', 'http://localhost:8080/springbootrze22/upload/lingyongshebei_tupian2.jpg', '数量2', '正常', '用途2', '设备详情2', '2021-05-09'),
	(23, '2021-05-09 06:14:56', '设备编号3', '设备名称3', 'http://localhost:8080/springbootrze22/upload/lingyongshebei_tupian3.jpg', '数量3', '正常', '用途3', '设备详情3', '2021-05-09'),
	(24, '2021-05-09 06:14:56', '设备编号4', '设备名称4', 'http://localhost:8080/springbootrze22/upload/lingyongshebei_tupian4.jpg', '数量4', '正常', '用途4', '设备详情4', '2021-05-09'),
	(25, '2021-05-09 06:14:56', '设备编号5', '设备名称5', 'http://localhost:8080/springbootrze22/upload/lingyongshebei_tupian5.jpg', '数量5', '正常', '用途5', '设备详情5', '2021-05-09'),
	(26, '2021-05-09 06:14:56', '设备编号6', '设备名称6', 'http://localhost:8080/springbootrze22/upload/lingyongshebei_tupian6.jpg', '数量6', '正常', '用途6', '设备详情6', '2021-05-09');

DROP TABLE IF EXISTS `shebeijiance`;
CREATE TABLE IF NOT EXISTS `shebeijiance` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiancedanhao` varchar(200) DEFAULT NULL COMMENT '检测单号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `jiancerenyuan` varchar(200) DEFAULT NULL COMMENT '检测人员',
  `jianceneirong` longtext COMMENT '检测内容',
  `jianceriqi` date DEFAULT NULL COMMENT '检测日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiancedanhao` (`jiancedanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb3 COMMENT='设备检测';

DELETE FROM `shebeijiance`;
INSERT INTO `shebeijiance` (`id`, `addtime`, `jiancedanhao`, `shebeimingcheng`, `jiancerenyuan`, `jianceneirong`, `jianceriqi`, `beizhu`) VALUES
	(131, '2021-05-09 06:14:56', '检测单号1', '设备名称1', '检测人员1', '检测内容1', '2021-05-09', '备注1'),
	(132, '2021-05-09 06:14:56', '检测单号2', '设备名称2', '检测人员2', '检测内容2', '2021-05-09', '备注2'),
	(133, '2021-05-09 06:14:56', '检测单号3', '设备名称3', '检测人员3', '检测内容3', '2021-05-09', '备注3'),
	(134, '2021-05-09 06:14:56', '检测单号4', '设备名称4', '检测人员4', '检测内容4', '2021-05-09', '备注4'),
	(135, '2021-05-09 06:14:56', '检测单号5', '设备名称5', '检测人员5', '检测内容5', '2021-05-09', '备注5'),
	(136, '2021-05-09 06:14:56', '检测单号6', '设备名称6', '检测人员6', '检测内容6', '2021-05-09', '备注6');

DROP TABLE IF EXISTS `shebeipaifa`;
CREATE TABLE IF NOT EXISTS `shebeipaifa` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shifoupaifa` varchar(200) DEFAULT NULL COMMENT '是否派发',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `shuliang` int DEFAULT NULL COMMENT '数量',
  `paifashijian` date DEFAULT NULL COMMENT '派发时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3 COMMENT='设备派发';

DELETE FROM `shebeipaifa`;
INSERT INTO `shebeipaifa` (`id`, `addtime`, `zhanghao`, `xingming`, `shifoupaifa`, `shebeimingcheng`, `shuliang`, `paifashijian`) VALUES
	(51, '2021-05-09 06:14:56', '账号1', '姓名1', '是', '设备名称1', 1, '2021-05-09'),
	(52, '2021-05-09 06:14:56', '账号2', '姓名2', '是', '设备名称2', 2, '2021-05-09'),
	(53, '2021-05-09 06:14:56', '账号3', '姓名3', '是', '设备名称3', 3, '2021-05-09'),
	(54, '2021-05-09 06:14:56', '账号4', '姓名4', '是', '设备名称4', 4, '2021-05-09'),
	(55, '2021-05-09 06:14:56', '账号5', '姓名5', '是', '设备名称5', 5, '2021-05-09'),
	(56, '2021-05-09 06:14:56', '账号6', '姓名6', '是', '设备名称6', 6, '2021-05-09');

DROP TABLE IF EXISTS `shebeishenqing`;
CREATE TABLE IF NOT EXISTS `shebeishenqing` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shifoushenqing` varchar(200) DEFAULT NULL COMMENT '是否申请',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `shuliang` int DEFAULT NULL COMMENT '数量',
  `shenqingyuanyin` longtext COMMENT '申请原因',
  `shenqingshijian` date DEFAULT NULL COMMENT '申请时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COMMENT='设备申请';

DELETE FROM `shebeishenqing`;
INSERT INTO `shebeishenqing` (`id`, `addtime`, `zhanghao`, `xingming`, `shifoushenqing`, `shebeimingcheng`, `shuliang`, `shenqingyuanyin`, `shenqingshijian`, `sfsh`, `shhf`) VALUES
	(41, '2021-05-09 06:14:56', '账号1', '姓名1', '是', '设备名称1', 1, '申请原因1', '2021-05-09', '是', ''),
	(42, '2021-05-09 06:14:56', '账号2', '姓名2', '是', '设备名称2', 2, '申请原因2', '2021-05-09', '是', ''),
	(43, '2021-05-09 06:14:56', '账号3', '姓名3', '是', '设备名称3', 3, '申请原因3', '2021-05-09', '是', ''),
	(44, '2021-05-09 06:14:56', '账号4', '姓名4', '是', '设备名称4', 4, '申请原因4', '2021-05-09', '是', ''),
	(45, '2021-05-09 06:14:56', '账号5', '姓名5', '是', '设备名称5', 5, '申请原因5', '2021-05-09', '是', ''),
	(46, '2021-05-09 06:14:56', '账号6', '姓名6', '是', '设备名称6', 6, '申请原因6', '2021-05-09', '是', '');

DROP TABLE IF EXISTS `shebeixiuli`;
CREATE TABLE IF NOT EXISTS `shebeixiuli` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiulidanhao` varchar(200) DEFAULT NULL COMMENT '修理单号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `xiulirenyuan` varchar(200) DEFAULT NULL COMMENT '修理人员',
  `wentimiaoshu` longtext COMMENT '问题描述',
  `xiuliriqi` date DEFAULT NULL COMMENT '修理日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xiulidanhao` (`xiulidanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb3 COMMENT='设备修理';

DELETE FROM `shebeixiuli`;
INSERT INTO `shebeixiuli` (`id`, `addtime`, `xiulidanhao`, `shebeimingcheng`, `xiulirenyuan`, `wentimiaoshu`, `xiuliriqi`, `beizhu`) VALUES
	(141, '2021-05-09 06:14:56', '修理单号1', '设备名称1', '修理人员1', '问题描述1', '2021-05-09', '备注1'),
	(142, '2021-05-09 06:14:56', '修理单号2', '设备名称2', '修理人员2', '问题描述2', '2021-05-09', '备注2'),
	(143, '2021-05-09 06:14:56', '修理单号3', '设备名称3', '修理人员3', '问题描述3', '2021-05-09', '备注3'),
	(144, '2021-05-09 06:14:56', '修理单号4', '设备名称4', '修理人员4', '问题描述4', '2021-05-09', '备注4'),
	(145, '2021-05-09 06:14:56', '修理单号5', '设备名称5', '修理人员5', '问题描述5', '2021-05-09', '备注5'),
	(146, '2021-05-09 06:14:56', '修理单号6', '设备名称6', '修理人员6', '问题描述6', '2021-05-09', '备注6');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'abo', 'users', '管理员', 'knu2zh0yc2v9g411q5bqch9fx07ik341', '2021-05-09 06:16:29', '2024-03-17 02:14:02'),
	(2, 11, '用户1', 'yonghu', '用户', '2wrf0xgkddu82p7p86rgasqtea3ck26u', '2024-03-17 01:13:07', '2024-03-17 02:15:42');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-05-09 06:14:56');

DROP TABLE IF EXISTS `weihubaoyang`;
CREATE TABLE IF NOT EXISTS `weihubaoyang` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `weihudanhao` varchar(200) DEFAULT NULL COMMENT '维护单号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `weihurenyuan` varchar(200) DEFAULT NULL COMMENT '维护人员',
  `weihuneirong` longtext COMMENT '维护内容',
  `weihuriqi` date DEFAULT NULL COMMENT '维护日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `weihudanhao` (`weihudanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb3 COMMENT='维护保养';

DELETE FROM `weihubaoyang`;
INSERT INTO `weihubaoyang` (`id`, `addtime`, `weihudanhao`, `shebeimingcheng`, `weihurenyuan`, `weihuneirong`, `weihuriqi`, `beizhu`) VALUES
	(121, '2021-05-09 06:14:56', '维护单号1', '设备名称1', '维护人员1', '维护内容1', '2021-05-09', '备注1'),
	(122, '2021-05-09 06:14:56', '维护单号2', '设备名称2', '维护人员2', '维护内容2', '2021-05-09', '备注2'),
	(123, '2021-05-09 06:14:56', '维护单号3', '设备名称3', '维护人员3', '维护内容3', '2021-05-09', '备注3'),
	(124, '2021-05-09 06:14:56', '维护单号4', '设备名称4', '维护人员4', '维护内容4', '2021-05-09', '备注4'),
	(125, '2021-05-09 06:14:56', '维护单号5', '设备名称5', '维护人员5', '维护内容5', '2021-05-09', '备注5'),
	(126, '2021-05-09 06:14:56', '维护单号6', '设备名称6', '维护人员6', '维护内容6', '2021-05-09', '备注6');

DROP TABLE IF EXISTS `xiaohaobaobiao`;
CREATE TABLE IF NOT EXISTS `xiaohaobaobiao` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `yuefen` varchar(200) DEFAULT NULL COMMENT '月份',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `xiaohaoshuliang` int DEFAULT NULL COMMENT '消耗数量',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb3 COMMENT='消耗报表';

DELETE FROM `xiaohaobaobiao`;
INSERT INTO `xiaohaobaobiao` (`id`, `addtime`, `bianhao`, `yuefen`, `shebeimingcheng`, `xiaohaoshuliang`, `dengjiriqi`) VALUES
	(81, '2021-05-09 06:14:56', '编号1', '月份1', '设备名称1', 1, '2021-05-09'),
	(82, '2021-05-09 06:14:56', '编号2', '月份2', '设备名称2', 2, '2021-05-09'),
	(83, '2021-05-09 06:14:56', '编号3', '月份3', '设备名称3', 3, '2021-05-09'),
	(84, '2021-05-09 06:14:56', '编号4', '月份4', '设备名称4', 4, '2021-05-09'),
	(85, '2021-05-09 06:14:56', '编号5', '月份5', '设备名称5', 5, '2021-05-09'),
	(86, '2021-05-09 06:14:56', '编号6', '月份6', '设备名称6', 6, '2021-05-09');

DROP TABLE IF EXISTS `xiaohaoshebei`;
CREATE TABLE IF NOT EXISTS `xiaohaoshebei` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeibianhao` varchar(200) DEFAULT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  `yongtu` longtext COMMENT '用途',
  `shebeixiangqing` longtext COMMENT '设备详情',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shebeibianhao` (`shebeibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COMMENT='消耗设备';

DELETE FROM `xiaohaoshebei`;
INSERT INTO `xiaohaoshebei` (`id`, `addtime`, `shebeibianhao`, `shebeimingcheng`, `tupian`, `shuliang`, `zhuangtai`, `yongtu`, `shebeixiangqing`, `dengjiriqi`) VALUES
	(31, '2021-05-09 06:14:56', '设备编号1', '设备名称1', 'http://localhost:8080/springbootrze22/upload/xiaohaoshebei_tupian1.jpg', '数量1', '正常', '用途1', '设备详情1', '2021-05-09'),
	(32, '2021-05-09 06:14:56', '设备编号2', '设备名称2', 'http://localhost:8080/springbootrze22/upload/xiaohaoshebei_tupian2.jpg', '数量2', '正常', '用途2', '设备详情2', '2021-05-09'),
	(33, '2021-05-09 06:14:56', '设备编号3', '设备名称3', 'http://localhost:8080/springbootrze22/upload/xiaohaoshebei_tupian3.jpg', '数量3', '正常', '用途3', '设备详情3', '2021-05-09'),
	(34, '2021-05-09 06:14:56', '设备编号4', '设备名称4', 'http://localhost:8080/springbootrze22/upload/xiaohaoshebei_tupian4.jpg', '数量4', '正常', '用途4', '设备详情4', '2021-05-09'),
	(35, '2021-05-09 06:14:56', '设备编号5', '设备名称5', 'http://localhost:8080/springbootrze22/upload/xiaohaoshebei_tupian5.jpg', '数量5', '正常', '用途5', '设备详情5', '2021-05-09'),
	(36, '2021-05-09 06:14:56', '设备编号6', '设备名称6', 'http://localhost:8080/springbootrze22/upload/xiaohaoshebei_tupian6.jpg', '数量6', '正常', '用途6', '设备详情6', '2021-05-09');

DROP TABLE IF EXISTS `xiulijihua`;
CREATE TABLE IF NOT EXISTS `xiulijihua` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jihuamingcheng` varchar(200) DEFAULT NULL COMMENT '计划名称',
  `xiulineirong` longtext COMMENT '修理内容',
  `jihuashijian` date DEFAULT NULL COMMENT '计划时间',
  `caozuoren` varchar(200) DEFAULT NULL COMMENT '操作人',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8mb3 COMMENT='修理计划';

DELETE FROM `xiulijihua`;
INSERT INTO `xiulijihua` (`id`, `addtime`, `jihuamingcheng`, `xiulineirong`, `jihuashijian`, `caozuoren`, `beizhu`) VALUES
	(171, '2021-05-09 06:14:56', '计划名称1', '修理内容1', '2021-05-09', '操作人1', '备注1'),
	(172, '2021-05-09 06:14:56', '计划名称2', '修理内容2', '2021-05-09', '操作人2', '备注2'),
	(173, '2021-05-09 06:14:56', '计划名称3', '修理内容3', '2021-05-09', '操作人3', '备注3'),
	(174, '2021-05-09 06:14:56', '计划名称4', '修理内容4', '2021-05-09', '操作人4', '备注4'),
	(175, '2021-05-09 06:14:56', '计划名称5', '修理内容5', '2021-05-09', '操作人5', '备注5'),
	(176, '2021-05-09 06:14:56', '计划名称6', '修理内容6', '2021-05-09', '操作人6', '备注6');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `nianling` varchar(200) NOT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `addtime`, `zhanghao`, `mima`, `xingming`, `nianling`, `xingbie`, `shouji`, `zhaopian`) VALUES
	(11, '2021-05-09 06:14:56', '用户1', '123456', '姓名1', '年龄1', '男', '13823888881', 'http://localhost:8080/springbootrze22/upload/yonghu_zhaopian1.jpg'),
	(12, '2021-05-09 06:14:56', '用户2', '123456', '姓名2', '年龄2', '男', '13823888882', 'http://localhost:8080/springbootrze22/upload/yonghu_zhaopian2.jpg'),
	(13, '2021-05-09 06:14:56', '用户3', '123456', '姓名3', '年龄3', '男', '13823888883', 'http://localhost:8080/springbootrze22/upload/yonghu_zhaopian3.jpg'),
	(14, '2021-05-09 06:14:56', '用户4', '123456', '姓名4', '年龄4', '男', '13823888884', 'http://localhost:8080/springbootrze22/upload/yonghu_zhaopian4.jpg'),
	(15, '2021-05-09 06:14:56', '用户5', '123456', '姓名5', '年龄5', '男', '13823888885', 'http://localhost:8080/springbootrze22/upload/yonghu_zhaopian5.jpg'),
	(16, '2021-05-09 06:14:56', '用户6', '123456', '姓名6', '年龄6', '男', '13823888886', 'http://localhost:8080/springbootrze22/upload/yonghu_zhaopian6.jpg');

DROP TABLE IF EXISTS `yonghufankui`;
CREATE TABLE IF NOT EXISTS `yonghufankui` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fankuibiaoti` varchar(200) DEFAULT NULL COMMENT '反馈标题',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `fankuineirong` longtext COMMENT '反馈内容',
  `fankuishijian` date DEFAULT NULL COMMENT '反馈时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb3 COMMENT='用户反馈';

DELETE FROM `yonghufankui`;
INSERT INTO `yonghufankui` (`id`, `addtime`, `fankuibiaoti`, `shebeimingcheng`, `fankuineirong`, `fankuishijian`, `zhanghao`, `xingming`, `sfsh`, `shhf`) VALUES
	(111, '2021-05-09 06:14:56', '反馈标题1', '设备名称1', '反馈内容1', '2021-05-09', '账号1', '姓名1', '是', ''),
	(112, '2021-05-09 06:14:56', '反馈标题2', '设备名称2', '反馈内容2', '2021-05-09', '账号2', '姓名2', '是', ''),
	(113, '2021-05-09 06:14:56', '反馈标题3', '设备名称3', '反馈内容3', '2021-05-09', '账号3', '姓名3', '是', ''),
	(114, '2021-05-09 06:14:56', '反馈标题4', '设备名称4', '反馈内容4', '2021-05-09', '账号4', '姓名4', '是', ''),
	(115, '2021-05-09 06:14:56', '反馈标题5', '设备名称5', '反馈内容5', '2021-05-09', '账号5', '姓名5', '是', ''),
	(116, '2021-05-09 06:14:56', '反馈标题6', '设备名称6', '反馈内容6', '2021-05-09', '账号6', '姓名6', '是', '');

DROP TABLE IF EXISTS `zhuangtaihuibao`;
CREATE TABLE IF NOT EXISTS `zhuangtaihuibao` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huibaobianhao` varchar(200) DEFAULT NULL COMMENT '汇报编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `shebeizhuangtai` varchar(200) DEFAULT NULL COMMENT '设备状态',
  `huibaoshijian` date DEFAULT NULL COMMENT '汇报时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `huibaobianhao` (`huibaobianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3 COMMENT='状态汇报';

DELETE FROM `zhuangtaihuibao`;
INSERT INTO `zhuangtaihuibao` (`id`, `addtime`, `huibaobianhao`, `shebeimingcheng`, `shebeizhuangtai`, `huibaoshijian`, `zhanghao`, `xingming`, `sfsh`, `shhf`) VALUES
	(61, '2021-05-09 06:14:56', '汇报编号1', '设备名称1', '正常运行', '2021-05-09', '账号1', '姓名1', '是', ''),
	(62, '2021-05-09 06:14:56', '汇报编号2', '设备名称2', '正常运行', '2021-05-09', '账号2', '姓名2', '是', ''),
	(63, '2021-05-09 06:14:56', '汇报编号3', '设备名称3', '正常运行', '2021-05-09', '账号3', '姓名3', '是', ''),
	(64, '2021-05-09 06:14:56', '汇报编号4', '设备名称4', '正常运行', '2021-05-09', '账号4', '姓名4', '是', ''),
	(65, '2021-05-09 06:14:56', '汇报编号5', '设备名称5', '正常运行', '2021-05-09', '账号5', '姓名5', '是', ''),
	(66, '2021-05-09 06:14:56', '汇报编号6', '设备名称6', '正常运行', '2021-05-09', '账号6', '姓名6', '是', '');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
