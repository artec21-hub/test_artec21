/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 5.1.45-log : Database - cubecompany
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cubecompany` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `cubecompany`;

/*Table structure for table `shop_banner` */

DROP TABLE IF EXISTS `shop_banner`;

CREATE TABLE `shop_banner` (
  `bn_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '주키',
  `mb_id` varchar(20) NOT NULL COMMENT '가맹점ID',
  `bn_device` varchar(10) NOT NULL DEFAULT 'pc' COMMENT '노출기기',
  `bn_theme` varchar(255) NOT NULL DEFAULT 'basic' COMMENT '쇼핑몰스킨',
  `bn_code` tinyint(4) NOT NULL DEFAULT '0' COMMENT '배너코드',
  `bn_file` varchar(255) NOT NULL COMMENT '배너이미지',
  `bn_link` varchar(255) NOT NULL COMMENT '배너URL',
  `bn_target` varchar(10) NOT NULL COMMENT '새창여부',
  `bn_width` int(11) NOT NULL DEFAULT '0' COMMENT '가로크기',
  `bn_height` int(11) NOT NULL DEFAULT '0' COMMENT '세로크기',
  `bn_bg` varchar(10) NOT NULL COMMENT '백그라운드색상',
  `bn_text` varchar(255) NOT NULL COMMENT '배너설명',
  `bn_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '노출여부',
  `bn_order` int(11) NOT NULL DEFAULT '0' COMMENT '노출순위',
  PRIMARY KEY (`bn_id`),
  KEY `mb_id` (`mb_id`),
  KEY `bn_code` (`bn_code`),
  KEY `bn_use` (`bn_use`)
) ENGINE=MyISAM AUTO_INCREMENT=333 DEFAULT CHARSET=utf8 COMMENT='배너관리 테이블';

/*Data for the table `shop_banner` */

insert  into `shop_banner`(`bn_id`,`mb_id`,`bn_device`,`bn_theme`,`bn_code`,`bn_file`,`bn_link`,`bn_target`,`bn_width`,`bn_height`,`bn_bg`,`bn_text`,`bn_use`,`bn_order`) values 
(36,'admin','pc','basic',3,'v7NLrHQd5y25bzkyx97YFur9PMxBcQ.png','http://casefarm.kr/bbs/read.php?boardid=13&index_no=25','_self',595,300,'','',1,0),
(4,'admin','pc','basic',2,'TxUFqWfUrLuECdbZrXq5r81CypZg8v.png','','_self',205,110,'','',1,0),
(18,'admin','mobile','basic',1,'9Gwm8PfnrTj5KtHuqYnwwJHBTpQkAM.jpg','','_self',960,120,'','',1,0),
(19,'admin','mobile','basic',2,'LYdCxA4wbDKpk3vpXYC7ZnZ45WRsZ9.jpg','','_self',475,270,'','',1,0),
(37,'admin','pc','basic',4,'kRweWx925h4cqg7thjJwZMNbdDCRj3.png','http://casefarm.kr/bbs/read.php?index_no=26&boardid=13&page=1','_self',595,300,'','',1,0),
(38,'admin','pc','basic',5,'Q3GW9zPePCdx41jnvQxbhQTMLX6Qt8.png','','_self',393,150,'','',0,0),
(39,'admin','pc','basic',6,'uS2KqQ6ZbwSU9LQ4XBEpARGns8YWHK.png','','_self',393,150,'','',0,0),
(40,'admin','pc','basic',7,'c6pdPdXwT7m12yy2qXFwLh2DqgmdPC.png','','_self',1920,2880,'','',1,0),
(41,'admin','pc','basic',8,'nCKM8HW7ksnG1299sMMNXspjaTLYGW.png','http://caseking.co.kr/?MT=sub&ms=%C2%F7%B7%AE%BF%EB','_blank',395,145,'','',1,0),
(42,'admin','pc','basic',9,'yWm3lceryJGd8FDWwAecFQJe8jxs5Y.png','','_self',395,145,'','',1,0),
(43,'admin','pc','basic',11,'zxBj8DMqbQG364XuKMxSaUSx9RLm7M.jpg','','_self',300,500,'','',1,0),
(44,'admin','pc','basic',10,'l3z2MrlzzkXgKFKhyvyLDQrrubeRZK.png','','_self',395,145,'','',1,0),
(45,'admin','pc','basic',1,'Z1cCCJTGt51dgzHdT7u4AwVcapHXBl.png','/shop/listtype.php?type=4','_self',1000,70,'F2877F','',1,0),
(46,'admin','pc','basic',90,'EPULGkW4hHbVD93V3GqblQpurxErgz.png','','_self',80,80,'F4F4F4','',0,0),
(47,'admin','pc','basic',90,'rht5ngPvAMS1YVc8XB9ybdG425uhgu.png','','_self',80,80,'','',1,0),
(48,'admin','mobile','basic',3,'VFavnYbGvhGE4rjwedA5V4p5wYYGkT.jpg','','_self',475,270,'','',1,0),
(49,'admin','mobile','basic',4,'dStrtRCPZ3FhRr7MLA7pxdyMrWK5lM.jpg','','_self',960,233,'','',1,0),
(50,'admin','mobile','basic',5,'uP2P9k8F4uk5bUctjwb72kJzX8kvtN.jpg','','_self',960,300,'','',1,0),
(51,'admin','mobile','basic',6,'HPdwLbj1hguccmtZFXCVQTwfaganyL.jpg','','_self',960,300,'','',1,0),
(52,'admin','mobile','basic',7,'fHw1ceKKy3jXusysbVA4gUC3ky1G29.jpg','','_self',960,300,'','',1,0),
(53,'admin','mobile','basic',8,'AKepcVeCNBCx7Htd9WfkRWZ5xvkzeK.jpg','','_self',960,300,'','',1,0),
(141,'admin','pc','basic',0,'Lq1KTtMKg1yDxQnaBLJRDpqT4S1RVp.png','','_self',1200,480,'eeeeee','1번 텍스트',1,1),
(142,'admin','pc','basic',0,'c4nVXYmE6PnNnGtz2vHLmaZdXWJtE3.jpg','','_self',1200,480,'e7edfa','2번 텍스트',0,2),
(143,'admin','pc','basic',0,'eCx2X32v8tmnS2drdKQgCAjWYF8nfF.jpg','','_self',1200,480,'fee3df','3번 텍스트',0,3),
(144,'admin','mobile','basic',0,'5Zn5J4Mzn3wUelnjKkWVj5FAvqahMG.jpg','','_self',960,720,'','',1,1),
(145,'admin','mobile','basic',0,'W9ssZMNNKc3RbASPejwLJG2qHLlpM4.jpg','','_self',960,720,'','',1,2),
(146,'admin','mobile','basic',0,'gcrqZeHbZzVmUeufhrfTmr9wHbx5GW.jpg','','_self',960,720,'','',1,3),
(147,'admin','pc','basic',100,'UAzBR7GP5uEsq2SqyqgphnlmxAuPvS.gif','','_self',410,410,'','',0,0),
(148,'admin','pc','basic',100,'w611LjGVu2GzUdGMkmhuFmlQkkFJW4.gif','','_self',410,410,'','',0,0),
(296,'tube1','pc','basic',6,'296_dC5wjsjhj5CyM6RWReRp8NJCm9SsJt.jpg','','_self',1000,200,'','',1,0),
(297,'tube1','pc','basic',7,'297_eDgCtJytyjdaAt6s3NpC4ZGE1UZV74.jpg','','_self',1920,2880,'','배경은 7번 배너이미지 입니다. <br>여기는 배너 텍스트를 넣어주세요.',1,0),
(298,'tube1','pc','basic',8,'298_jfrGcAfEHjxUSJudVWJSzX2ZuErmJZ.jpg','','_self',480,290,'','',1,0),
(299,'tube1','pc','basic',9,'299_Hmgye7tWqqelSug53Fql3c7tMhKQ96.jpg','','_self',200,290,'','',1,0),
(300,'tube1','pc','basic',11,'300_zxBj8DMqbQG364XuKMxSaUSx9RLm7M.jpg','','_self',300,500,'','',1,0),
(301,'tube1','pc','basic',10,'301_ASChUd9h6Vl5UxlsHhqzETzy7NnRsm.jpg','','_self',690,200,'','',1,0),
(302,'tube1','pc','basic',1,'302_szEreKjpPshELPSNnS8esg8RXvRd5T.jpg','/shop/listtype.php?type=4','_self',1000,70,'F2877F','',1,0),
(303,'tube1','pc','basic',90,'303_EPULGkW4hHbVD93V3GqblQpurxErgz.png','','_self',80,80,'F4F4F4','',1,0),
(304,'tube1','pc','basic',90,'304_rkBbmRPAfzbav4j2u2msEszx4LZeXX.png','','_self',80,80,'','',1,0),
(305,'tube1','pc','basic',0,'305_Q9Kb37h7rETJmvCA8R31bkkxrjUq6Z.jpg','','_self',1000,400,'eeeeee','1번 텍스트',1,1),
(306,'tube1','pc','basic',0,'306_c4nVXYmE6PnNnGtz2vHLmaZdXWJtE3.jpg','','_self',1000,400,'e7edfa','2번 텍스트',1,2),
(307,'tube1','pc','basic',0,'307_eCx2X32v8tmnS2drdKQgCAjWYF8nfF.jpg','','_self',1000,400,'fee3df','3번 텍스트',1,3),
(308,'tube1','pc','basic',100,'308_UAzBR7GP5uEsq2SqyqgphnlmxAuPvS.gif','','_self',410,410,'','',1,0),
(309,'tube1','pc','basic',100,'309_w611LjGVu2GzUdGMkmhuFmlQkkFJW4.gif','','_self',410,410,'','',1,0),
(273,'tube1','mobile','basic',0,'273_gcrqZeHbZzVmUeufhrfTmr9wHbx5GW.jpg','','_self',960,720,'','',1,3),
(264,'tube1','mobile','basic',2,'264_LYdCxA4wbDKpk3vpXYC7ZnZ45WRsZ9.jpg','','_self',475,270,'','',1,0),
(265,'tube1','mobile','basic',3,'265_VFavnYbGvhGE4rjwedA5V4p5wYYGkT.jpg','','_self',475,270,'','',1,0),
(266,'tube1','mobile','basic',4,'266_dStrtRCPZ3FhRr7MLA7pxdyMrWK5lM.jpg','','_self',960,233,'','',1,0),
(267,'tube1','mobile','basic',5,'267_uP2P9k8F4uk5bUctjwb72kJzX8kvtN.jpg','','_self',960,300,'','',1,0),
(268,'tube1','mobile','basic',6,'268_HPdwLbj1hguccmtZFXCVQTwfaganyL.jpg','','_self',960,300,'','',1,0),
(269,'tube1','mobile','basic',7,'269_fHw1ceKKy3jXusysbVA4gUC3ky1G29.jpg','','_self',960,300,'','',1,0),
(270,'tube1','mobile','basic',8,'270_AKepcVeCNBCx7Htd9WfkRWZ5xvkzeK.jpg','','_self',960,300,'','',1,0),
(271,'tube1','mobile','basic',0,'271_5Zn5J4Mzn3wUelnjKkWVj5FAvqahMG.jpg','','_self',960,720,'','',1,1),
(272,'tube1','mobile','basic',0,'272_W9ssZMNNKc3RbASPejwLJG2qHLlpM4.jpg','','_self',960,720,'','',1,2),
(263,'tube1','mobile','basic',1,'263_9Gwm8PfnrTj5KtHuqYnwwJHBTpQkAM.jpg','','_self',960,120,'','',1,0),
(295,'tube1','pc','basic',5,'295_NGgjGw9KKy1Uc5bXteFsRFYeh16bw4.jpg','','_self',420,195,'','',1,0),
(292,'tube1','pc','basic',2,'292_6hTUUw67mkPz6ZJkf74TBdDBk2bqZG.gif','','_self',160,60,'','',1,0),
(293,'tube1','pc','basic',3,'293_Wu8kdNjC5zMm6HRzVtzmZ8tg1CRfb6.jpg','','_self',280,400,'','',1,0),
(294,'tube1','pc','basic',4,'294_AVnBX5paYMDMhc6kr5ndWq7vnEBjHK.jpg','','_self',420,195,'','',1,0),
(313,'gamen','pc','somae',2,'313_TxUFqWfUrLuECdbZrXq5r81CypZg8v.png','','_self',205,110,'','',1,0),
(312,'admin','pc','basic',77,'4Py3bS8fQDEdxMWdLEjaN1YYz14qQq.png','','_self',393,150,'','',0,0),
(314,'gamen','pc','somae',3,'314_v7NLrHQd5y25bzkyx97YFur9PMxBcQ.png','','_self',595,300,'','',1,0),
(315,'gamen','pc','somae',4,'315_kRweWx925h4cqg7thjJwZMNbdDCRj3.png','','_self',595,300,'','',1,0),
(316,'gamen','pc','somae',5,'316_Q3GW9zPePCdx41jnvQxbhQTMLX6Qt8.png','','_self',393,150,'','',0,0),
(317,'gamen','pc','somae',6,'317_uS2KqQ6ZbwSU9LQ4XBEpARGns8YWHK.png','','_self',393,150,'','',0,0),
(318,'gamen','pc','somae',7,'318_c6pdPdXwT7m12yy2qXFwLh2DqgmdPC.png','','_self',1920,2880,'','',1,0),
(319,'gamen','pc','somae',8,'319_nCKM8HW7ksnG1299sMMNXspjaTLYGW.png','http://caseking.co.kr/?MT=sub&ms=%C2%F7%B7%AE%BF%EB','_blank',395,145,'','',1,0),
(320,'gamen','pc','somae',9,'320_yWm3lceryJGd8FDWwAecFQJe8jxs5Y.png','','_self',395,145,'','',1,0),
(321,'gamen','pc','somae',11,'321_zxBj8DMqbQG364XuKMxSaUSx9RLm7M.jpg','','_self',300,500,'','',1,0),
(322,'gamen','pc','somae',10,'322_l3z2MrlzzkXgKFKhyvyLDQrrubeRZK.png','','_self',395,145,'','',1,0),
(323,'gamen','pc','somae',1,'323_Z1cCCJTGt51dgzHdT7u4AwVcapHXBl.png','/shop/listtype.php?type=4','_self',1000,70,'F2877F','',1,0),
(324,'gamen','pc','somae',90,'324_EPULGkW4hHbVD93V3GqblQpurxErgz.png','','_self',80,80,'F4F4F4','',0,0),
(325,'gamen','pc','somae',90,'325_rht5ngPvAMS1YVc8XB9ybdG425uhgu.png','','_self',80,80,'','',1,0),
(326,'gamen','pc','somae',0,'326_Lq1KTtMKg1yDxQnaBLJRDpqT4S1RVp.png','','_self',1200,480,'eeeeee','1번 텍스트',1,1),
(327,'gamen','pc','somae',0,'327_c4nVXYmE6PnNnGtz2vHLmaZdXWJtE3.jpg','','_self',1200,480,'e7edfa','2번 텍스트',0,2),
(328,'gamen','pc','somae',0,'328_eCx2X32v8tmnS2drdKQgCAjWYF8nfF.jpg','','_self',1200,480,'fee3df','3번 텍스트',0,3),
(329,'gamen','pc','somae',100,'329_UAzBR7GP5uEsq2SqyqgphnlmxAuPvS.gif','','_self',410,410,'','',0,0),
(330,'gamen','pc','somae',100,'330_w611LjGVu2GzUdGMkmhuFmlQkkFJW4.gif','','_self',410,410,'','',0,0),
(331,'gamen','pc','somae',77,'331_4Py3bS8fQDEdxMWdLEjaN1YYz14qQq.png','','_self',393,150,'','',0,0),
(332,'','pc','basic',0,'','','',0,0,'','',0,0);

/*Table structure for table `shop_board_13` */

DROP TABLE IF EXISTS `shop_board_13`;

CREATE TABLE `shop_board_13` (
  `index_no` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '주키',
  `btype` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '형식(1:공지,2:일반)',
  `fid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '글등록 순서',
  `ca_name` varchar(100) NOT NULL COMMENT '분류',
  `issecret` char(1) NOT NULL COMMENT '비밀글(Y:비밀글,N:공개)',
  `havehtml` char(1) NOT NULL COMMENT 'HTML 사용여부(미사용)',
  `writer` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '회원주키',
  `writer_s` varchar(50) NOT NULL COMMENT '작성자명',
  `subject` varchar(200) NOT NULL COMMENT '글제목',
  `memo` text NOT NULL COMMENT '글내용',
  `fileurl1` varchar(50) NOT NULL COMMENT '파일첨부1',
  `fileurl2` varchar(50) NOT NULL COMMENT '파일첨부2',
  `readcount` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '조회수',
  `tailcount` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '댓글수',
  `wdate` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '등록일',
  `wip` varchar(20) NOT NULL COMMENT '작성자IP',
  `thread` varchar(255) NOT NULL COMMENT '답글체크',
  `passwd` varchar(20) NOT NULL COMMENT '패스워드',
  `average` char(1) NOT NULL COMMENT '미사용',
  `product` varchar(50) NOT NULL COMMENT '미사용',
  `pt_id` varchar(20) NOT NULL COMMENT '가맹점ID',
  PRIMARY KEY (`index_no`),
  KEY `btype` (`btype`,`fid`,`wdate`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='쇼핑몰 공지사항';

/*Data for the table `shop_board_13` */

insert  into `shop_board_13`(`index_no`,`btype`,`fid`,`ca_name`,`issecret`,`havehtml`,`writer`,`writer_s`,`subject`,`memo`,`fileurl1`,`fileurl2`,`readcount`,`tailcount`,`wdate`,`wip`,`thread`,`passwd`,`average`,`product`,`pt_id`) values 
(9,2,9,'','N','N',1,'관리자','wfewfewf','<p>dsfwf</p>','','',2,0,1612509728,'112.147.101.109','A','','','','admin'),
(8,2,8,'','N','N',1,'관리자','ewr2r','<p>23r2r2r</p>','','',1,0,1612509638,'112.147.101.109','A','','','','admin'),
(7,2,7,'','N','N',1,'관리자','dfsdfwfwe','<p>wefwgqqrqwrq</p>','RqD6SPkD5HWfarvWyuPPx1r3wXc6Yn.jpg','',2,0,1612509596,'112.147.101.109','A','','','','admin'),
(6,2,1,'','N','N',1,'관리자','wfwef','<p>wfwfwgwegwegwe</p>','','',0,0,1612509577,'112.147.101.109','A','','','','admin'),
(10,2,10,'','N','N',1,'관리자','wfwe','<p>fwfwfwef</p>','','',3,0,1612509833,'112.147.101.109','A','','','','admin'),
(11,1,11,'','N','N',1,'관리자','wgwg','<p>wegegew</p>','','',4,0,1612509983,'112.147.101.109','A','','','','admin'),
(12,2,12,'','N','N',1,'관리자','wfewfw','<p>wfwfw</p>','','',1,0,1612510140,'112.147.101.109','A','','','','admin'),
(13,2,13,'','Y','N',1,'관리자','df','<p>wfwefewf</p>','','',0,0,1612510318,'112.147.101.109','A','','','','admin'),
(14,2,14,'','N','N',1,'관리자','wetwe','<p>tewt</p>','','',0,0,1612510344,'112.147.101.109','A','','','','admin'),
(15,2,15,'','N','N',1,'관리자','wetwetwe','<p>gwetwet</p>','','',0,0,1612510357,'112.147.101.109','A','','','','admin'),
(16,2,16,'','N','N',1,'관리자','wetwet','<p>ewtwet</p>','','',0,0,1612510361,'112.147.101.109','A','','','','admin'),
(17,2,17,'','N','N',1,'관리자','wtwt','<p>wetwet</p>','','',1,0,1612510366,'112.147.101.109','A','','','','admin'),
(18,2,18,'','N','N',1,'관리자','wetwt','<p>wetewt</p>','','',0,0,1612510371,'112.147.101.109','A','','','','admin'),
(20,2,20,'','N','N',1,'관리자','wtwet','<p>wetewt</p>','','',1,0,1612510380,'112.147.101.109','A','','','','admin'),
(21,2,21,'','N','N',1,'관리자','wtwet','<p>wetewtwe</p>','','',1,0,1612510385,'112.147.101.109','A','','','','admin'),
(25,1,25,'','N','N',1,'관리자','도매회원 가입 방법안내','<p>도매회원 가입 방법안내&nbsp;</p>','','',15,0,1613697368,'110.45.19.189','A','','','','admin'),
(23,2,23,'','N','N',1,'관리자','wetwet','<p>wetwet</p>','','',3,0,1612510396,'112.147.101.109','A','','','','admin'),
(24,2,24,'','N','N',1,'관리자','wfwefwf','<p>wfwfewfw</p>','','',4,1,1612510543,'112.147.101.109','A','','','','admin'),
(26,1,26,'','N','N',1,'관리자','쇼핑몰 분양 가이드','<p>쇼핑몰 분양 가이드&nbsp;</p>','','',4,0,1613697481,'110.45.19.189','A','','','','admin');

/*Table structure for table `shop_board_13_tail` */

DROP TABLE IF EXISTS `shop_board_13_tail`;

CREATE TABLE `shop_board_13_tail` (
  `index_no` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '주키',
  `board_index` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '게시판주키',
  `writer` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '회원주키',
  `writer_s` varchar(30) NOT NULL COMMENT '작성자명',
  `memo` text NOT NULL COMMENT '글내용',
  `wdate` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '작성일',
  `wip` varchar(20) NOT NULL COMMENT '작성자IP',
  `passwd` varchar(20) NOT NULL COMMENT '패스워드',
  PRIMARY KEY (`index_no`),
  KEY `board_index` (`board_index`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `shop_board_13_tail` */

insert  into `shop_board_13_tail`(`index_no`,`board_index`,`writer`,`writer_s`,`memo`,`wdate`,`wip`,`passwd`) values 
(3,24,1,'관리자','ewfwe',1612510551,'112.147.101.109',''),
(2,3,1,'관리자','wfwf',1612508822,'112.147.101.109','');

/*Table structure for table `shop_board_20` */

DROP TABLE IF EXISTS `shop_board_20`;

CREATE TABLE `shop_board_20` (
  `index_no` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '주키',
  `btype` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '형식(1:공지,2:일반)',
  `fid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '글등록 순서',
  `ca_name` varchar(100) NOT NULL COMMENT '분류',
  `issecret` char(1) NOT NULL COMMENT '비밀글(Y:비밀글,N:공개)',
  `havehtml` char(1) NOT NULL COMMENT 'HTML 사용여부(미사용)',
  `writer` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '회원주키',
  `writer_s` varchar(50) NOT NULL COMMENT '작성자명',
  `subject` varchar(200) NOT NULL COMMENT '글제목',
  `memo` text NOT NULL COMMENT '글내용',
  `fileurl1` varchar(50) NOT NULL COMMENT '파일첨부1',
  `fileurl2` varchar(50) NOT NULL COMMENT '파일첨부2',
  `readcount` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '조회수',
  `tailcount` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '댓글수',
  `wdate` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '등록일',
  `wip` varchar(20) NOT NULL COMMENT '작성자IP',
  `thread` varchar(255) NOT NULL COMMENT '답글체크',
  `passwd` varchar(20) NOT NULL COMMENT '패스워드',
  `average` char(1) NOT NULL COMMENT '미사용',
  `product` varchar(50) NOT NULL COMMENT '미사용',
  `pt_id` varchar(20) NOT NULL COMMENT '가맹점ID',
  PRIMARY KEY (`index_no`),
  KEY `btype` (`btype`,`fid`,`wdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='공급사 공지사항';

/*Data for the table `shop_board_20` */

/*Table structure for table `shop_board_20_tail` */

DROP TABLE IF EXISTS `shop_board_20_tail`;

CREATE TABLE `shop_board_20_tail` (
  `index_no` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '주키',
  `board_index` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '게시판주키',
  `writer` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '회원주키',
  `writer_s` varchar(30) NOT NULL COMMENT '작성자명',
  `memo` text NOT NULL COMMENT '글내용',
  `wdate` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '작성일',
  `wip` varchar(20) NOT NULL COMMENT '작성자IP',
  `passwd` varchar(20) NOT NULL COMMENT '패스워드',
  PRIMARY KEY (`index_no`),
  KEY `board_index` (`board_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `shop_board_20_tail` */

/*Table structure for table `shop_board_21` */

DROP TABLE IF EXISTS `shop_board_21`;

CREATE TABLE `shop_board_21` (
  `index_no` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '주키',
  `btype` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '형식(1:공지,2:일반)',
  `fid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '글등록 순서',
  `ca_name` varchar(100) NOT NULL COMMENT '분류',
  `issecret` char(1) NOT NULL COMMENT '비밀글(Y:비밀글,N:공개)',
  `havehtml` char(1) NOT NULL COMMENT 'HTML 사용여부(미사용)',
  `writer` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '회원주키',
  `writer_s` varchar(50) NOT NULL COMMENT '작성자명',
  `subject` varchar(200) NOT NULL COMMENT '글제목',
  `memo` text NOT NULL COMMENT '글내용',
  `fileurl1` varchar(50) NOT NULL COMMENT '파일첨부1',
  `fileurl2` varchar(50) NOT NULL COMMENT '파일첨부2',
  `readcount` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '조회수',
  `tailcount` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '댓글수',
  `wdate` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '등록일',
  `wip` varchar(20) NOT NULL COMMENT '작성자IP',
  `thread` varchar(255) NOT NULL COMMENT '답글체크',
  `passwd` varchar(20) NOT NULL COMMENT '패스워드',
  `average` char(1) NOT NULL COMMENT '미사용',
  `product` varchar(50) NOT NULL COMMENT '미사용',
  `pt_id` varchar(20) NOT NULL COMMENT '가맹점ID',
  PRIMARY KEY (`index_no`),
  KEY `btype` (`btype`,`fid`,`wdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='공급사 질문과답변';

/*Data for the table `shop_board_21` */

/*Table structure for table `shop_board_21_tail` */

DROP TABLE IF EXISTS `shop_board_21_tail`;

CREATE TABLE `shop_board_21_tail` (
  `index_no` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '주키',
  `board_index` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '게시판주키',
  `writer` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '회원주키',
  `writer_s` varchar(30) NOT NULL COMMENT '작성자명',
  `memo` text NOT NULL COMMENT '글내용',
  `wdate` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '작성일',
  `wip` varchar(20) NOT NULL COMMENT '작성자IP',
  `passwd` varchar(20) NOT NULL COMMENT '패스워드',
  PRIMARY KEY (`index_no`),
  KEY `board_index` (`board_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `shop_board_21_tail` */

/*Table structure for table `shop_board_22` */

DROP TABLE IF EXISTS `shop_board_22`;

CREATE TABLE `shop_board_22` (
  `index_no` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '주키',
  `btype` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '형식(1:공지,2:일반)',
  `fid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '글등록 순서',
  `ca_name` varchar(100) NOT NULL COMMENT '분류',
  `issecret` char(1) NOT NULL COMMENT '비밀글("Y":비밀글,"N":공개)',
  `havehtml` char(1) NOT NULL COMMENT 'HTML 사용여부(미사용)',
  `writer` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '회원주키',
  `writer_s` varchar(50) NOT NULL COMMENT '작성자명',
  `subject` varchar(200) NOT NULL COMMENT '글제목',
  `memo` text NOT NULL COMMENT '글내용',
  `fileurl1` varchar(50) NOT NULL COMMENT '파일첨부1',
  `fileurl2` varchar(50) NOT NULL COMMENT '파일첨부2',
  `readcount` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '조회수',
  `tailcount` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '댓글수',
  `wdate` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '등록일',
  `wip` varchar(20) NOT NULL COMMENT '작성자IP',
  `thread` varchar(255) NOT NULL COMMENT '답글체크',
  `passwd` varchar(20) NOT NULL COMMENT '패스워드',
  `average` char(1) NOT NULL COMMENT '미사용',
  `product` varchar(50) NOT NULL COMMENT '미사용',
  `pt_id` varchar(20) NOT NULL COMMENT '가맹점ID',
  PRIMARY KEY (`index_no`),
  KEY `btype` (`btype`,`fid`,`wdate`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='가맹점 공지사항';

/*Data for the table `shop_board_22` */

insert  into `shop_board_22`(`index_no`,`btype`,`fid`,`ca_name`,`issecret`,`havehtml`,`writer`,`writer_s`,`subject`,`memo`,`fileurl1`,`fileurl2`,`readcount`,`tailcount`,`wdate`,`wip`,`thread`,`passwd`,`average`,`product`,`pt_id`) values 
(1,2,1,'','N','N',1,'관리자','dd','<p>ddd</p>','','',4,0,1612503566,'112.147.101.109','A','','','','admin'),
(2,2,2,'','N','N',1,'관리자','dfwf','<p>wfwfww</p>','','',0,0,1612503707,'112.147.101.109','A','','','','admin'),
(3,2,3,'','N','N',1,'관리자','sdfsfsf','<p>sdfdsf</p>','','',2,0,1612503735,'112.147.101.109','A','','','','admin');

/*Table structure for table `shop_board_22_tail` */

DROP TABLE IF EXISTS `shop_board_22_tail`;

CREATE TABLE `shop_board_22_tail` (
  `index_no` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '주키',
  `board_index` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '게시판주키',
  `writer` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '회원주키',
  `writer_s` varchar(30) NOT NULL COMMENT '작성자명',
  `memo` text NOT NULL COMMENT '글내용',
  `wdate` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '작성일',
  `wip` varchar(20) NOT NULL COMMENT '작성자IP',
  `passwd` varchar(20) NOT NULL COMMENT '패스워드',
  PRIMARY KEY (`index_no`),
  KEY `board_index` (`board_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `shop_board_22_tail` */

/*Table structure for table `shop_board_36` */

DROP TABLE IF EXISTS `shop_board_36`;

CREATE TABLE `shop_board_36` (
  `index_no` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '주키',
  `btype` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '형식(1:공지,2:일반)',
  `fid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '글등록 순서',
  `ca_name` varchar(100) NOT NULL COMMENT '분류',
  `issecret` char(1) NOT NULL COMMENT '비밀글(Y:비밀글,N:공개)',
  `havehtml` char(1) NOT NULL COMMENT 'HTML 사용여부(미사용)',
  `writer` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '회원주키',
  `writer_s` varchar(50) NOT NULL COMMENT '작성자명',
  `subject` varchar(200) NOT NULL COMMENT '글제목',
  `memo` text NOT NULL COMMENT '글내용',
  `fileurl1` varchar(50) NOT NULL COMMENT '파일첨부1',
  `fileurl2` varchar(50) NOT NULL COMMENT '파일첨부2',
  `readcount` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '조회수',
  `tailcount` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '댓글수',
  `wdate` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '등록일',
  `wip` varchar(20) NOT NULL COMMENT '작성자IP',
  `thread` varchar(255) NOT NULL COMMENT '답글체크',
  `passwd` varchar(20) NOT NULL COMMENT '패스워드',
  `average` char(1) NOT NULL COMMENT '미사용',
  `product` varchar(50) NOT NULL COMMENT '미사용',
  `pt_id` varchar(20) NOT NULL COMMENT '가맹점ID',
  PRIMARY KEY (`index_no`),
  KEY `btype` (`btype`,`fid`,`wdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='가맹점 질문과답변';

/*Data for the table `shop_board_36` */

/*Table structure for table `shop_board_36_tail` */

DROP TABLE IF EXISTS `shop_board_36_tail`;

CREATE TABLE `shop_board_36_tail` (
  `index_no` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '주키',
  `board_index` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '게시판주키',
  `writer` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '회원주키',
  `writer_s` varchar(30) NOT NULL COMMENT '작성자명',
  `memo` text NOT NULL COMMENT '글내용',
  `wdate` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '작성일',
  `wip` varchar(20) NOT NULL COMMENT '작성자IP',
  `passwd` varchar(20) NOT NULL COMMENT '패스워드',
  PRIMARY KEY (`index_no`),
  KEY `board_index` (`board_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `shop_board_36_tail` */

/*Table structure for table `shop_board_41` */

DROP TABLE IF EXISTS `shop_board_41`;

CREATE TABLE `shop_board_41` (
  `index_no` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '주키',
  `btype` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '형식(1:공지,2:일반)',
  `fid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '글등록 순서',
  `ca_name` varchar(100) NOT NULL COMMENT '분류',
  `issecret` char(1) NOT NULL COMMENT '비밀글(Y:비밀글,N:공개)',
  `havehtml` char(1) NOT NULL COMMENT 'HTML 사용여부(미사용)',
  `writer` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '회원주키',
  `writer_s` varchar(50) NOT NULL COMMENT '작성자명',
  `subject` varchar(200) NOT NULL COMMENT '글제목',
  `memo` text NOT NULL COMMENT '글내용',
  `fileurl1` varchar(50) NOT NULL COMMENT '파일첨부1',
  `fileurl2` varchar(50) NOT NULL COMMENT '파일첨부2',
  `readcount` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '조회수',
  `tailcount` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '댓글수',
  `wdate` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '등록일',
  `wip` varchar(20) NOT NULL COMMENT '작성자IP',
  `thread` varchar(255) NOT NULL COMMENT '답글체크',
  `passwd` varchar(20) NOT NULL COMMENT '패스워드',
  `average` char(1) NOT NULL COMMENT '미사용',
  `product` varchar(50) NOT NULL COMMENT '미사용',
  `pt_id` varchar(20) NOT NULL COMMENT '가맹점ID',
  PRIMARY KEY (`index_no`),
  KEY `btype` (`btype`,`fid`,`wdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='쇼핑몰 갤러리게시판';

/*Data for the table `shop_board_41` */

/*Table structure for table `shop_board_41_tail` */

DROP TABLE IF EXISTS `shop_board_41_tail`;

CREATE TABLE `shop_board_41_tail` (
  `index_no` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '주키',
  `board_index` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '게시판주키',
  `writer` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '회원주키',
  `writer_s` varchar(30) NOT NULL COMMENT '작성자명',
  `memo` text NOT NULL COMMENT '글내용',
  `wdate` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '작성일',
  `wip` varchar(20) NOT NULL COMMENT '작성자IP',
  `passwd` varchar(20) NOT NULL COMMENT '패스워드',
  PRIMARY KEY (`index_no`),
  KEY `board_index` (`board_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `shop_board_41_tail` */

/*Table structure for table `shop_board_conf` */

DROP TABLE IF EXISTS `shop_board_conf`;

CREATE TABLE `shop_board_conf` (
  `index_no` int(11) NOT NULL AUTO_INCREMENT COMMENT '주키',
  `gr_id` varchar(100) NOT NULL COMMENT '게시판그룹ID',
  `skin` varchar(50) NOT NULL COMMENT '게시판스킨',
  `list_skin` varchar(50) NOT NULL COMMENT '게시판목록스킨',
  `boardname` varchar(255) NOT NULL COMMENT '게시판명',
  `list_priv` tinyint(4) NOT NULL DEFAULT '0' COMMENT '목록보기 권한',
  `read_priv` tinyint(4) NOT NULL DEFAULT '0' COMMENT '글읽기 권한',
  `write_priv` tinyint(4) NOT NULL DEFAULT '0' COMMENT '글쓰기 권한',
  `reply_priv` tinyint(4) NOT NULL DEFAULT '0' COMMENT '글답변 권한',
  `tail_priv` tinyint(4) NOT NULL DEFAULT '0' COMMENT '댓글쓰기 권한',
  `topfile` varchar(255) NOT NULL COMMENT '상단 파일 경로',
  `downfile` varchar(255) NOT NULL COMMENT '하단 파일 경로',
  `use_secret` tinyint(4) NOT NULL DEFAULT '0' COMMENT '비밀글 사용',
  `use_category` tinyint(4) NOT NULL DEFAULT '0' COMMENT '분류사용여부',
  `usecate` varchar(255) NOT NULL COMMENT '분류',
  `usefile` char(1) NOT NULL COMMENT '파일업로드 사용여부',
  `usereply` char(1) NOT NULL COMMENT '글답변사용여부',
  `usetail` char(1) NOT NULL COMMENT '댓글쓰기사용여부',
  `width` int(11) NOT NULL DEFAULT '0' COMMENT '게시판 테이블 폭',
  `page_num` tinyint(4) NOT NULL DEFAULT '0' COMMENT '페이지당 목록 수',
  `read_list` tinyint(4) NOT NULL DEFAULT '0' COMMENT '글내용 옵션',
  `list_cut` int(11) NOT NULL DEFAULT '0' COMMENT '제목 길이',
  `content_head` text NOT NULL COMMENT '상단 내용',
  `content_tail` text NOT NULL COMMENT '하단 내용',
  `insert_content` text NOT NULL COMMENT '글쓰기 기본 내용',
  `fileurl1` varchar(50) NOT NULL COMMENT '상단 이미지',
  `fileurl2` varchar(50) NOT NULL COMMENT '하단 이미지',
  PRIMARY KEY (`index_no`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COMMENT='게시판 환경설정 테이블';

/*Data for the table `shop_board_conf` */

insert  into `shop_board_conf`(`index_no`,`gr_id`,`skin`,`list_skin`,`boardname`,`list_priv`,`read_priv`,`write_priv`,`reply_priv`,`tail_priv`,`topfile`,`downfile`,`use_secret`,`use_category`,`usecate`,`usefile`,`usereply`,`usetail`,`width`,`page_num`,`read_list`,`list_cut`,`content_head`,`content_tail`,`insert_content`,`fileurl1`,`fileurl2`) values 
(13,'gr_mall','basic','basic','공지사항',99,99,9,1,1,'./board_head.php','./board_tail.php',0,0,'','Y','Y','Y',100,20,1,56,'','','','',''),
(20,'gr_item','basic','basic','공지사항',9,9,1,1,1,'../mypage/board_head.php','../mypage/board_tail.php',0,0,'','Y','Y','',890,25,1,100,'','','','',''),
(21,'gr_item','basic','basic','질문과답변',9,9,9,1,1,'../mypage/board_head.php','../mypage/board_tail.php',0,0,'','','Y','Y',890,20,1,100,'','','','',''),
(22,'gr_home','basic','basic','본사 공지사항',99,99,9,1,9,'../mypage/board_head.php','../mypage/board_tail.php',0,0,'','Y','Y','Y',100,20,1,100,'','','','',''),
(36,'gr_home','basic','basic','질문과답변',6,6,6,1,6,'../mypage/board_head.php','../mypage/board_tail.php',0,0,'','Y','','Y',100,20,1,100,'','','','',''),
(41,'gr_mall','webzine','webzine','갤러리게시판',99,9,9,9,9,'./board_head.php','./board_tail.php',0,0,'','Y','Y','Y',100,30,1,40,'','','','','');

/*Table structure for table `shop_board_group` */

DROP TABLE IF EXISTS `shop_board_group`;

CREATE TABLE `shop_board_group` (
  `gr_id` varchar(10) NOT NULL COMMENT '그룹ID',
  `gr_subject` varchar(255) NOT NULL COMMENT '그룹명',
  PRIMARY KEY (`gr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='게시판그룹 테이블';

/*Data for the table `shop_board_group` */

insert  into `shop_board_group`(`gr_id`,`gr_subject`) values 
('gr_home','가맹점'),
('gr_mall','쇼핑몰'),
('gr_item','공급사');

/*Table structure for table `shop_brand` */

DROP TABLE IF EXISTS `shop_brand`;

CREATE TABLE `shop_brand` (
  `br_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '주키',
  `mb_id` varchar(20) NOT NULL COMMENT '가맹점ID',
  `br_name` varchar(255) NOT NULL COMMENT '브랜드명',
  `br_name_eng` varchar(255) NOT NULL COMMENT '브랜드영문명',
  `br_logo` varchar(255) NOT NULL COMMENT '브랜드로고',
  `br_user_yes` tinyint(4) NOT NULL DEFAULT '0' COMMENT '가맹점등록시(1)',
  `br_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '등록일시',
  `br_updatetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '수정일시',
  PRIMARY KEY (`br_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='상품 브랜드 테이블';

/*Data for the table `shop_brand` */

insert  into `shop_brand`(`br_id`,`mb_id`,`br_name`,`br_name_eng`,`br_logo`,`br_user_yes`,`br_time`,`br_updatetime`) values 
(1,'admin','카노','CANO','',0,'2021-02-02 14:09:19','2021-02-02 14:09:19'),
(2,'admin','플라핏','','',0,'2021-02-02 14:11:06','2021-02-02 14:11:06'),
(3,'admin','프리마클라쎄','','',0,'2021-02-02 14:11:44','2021-02-02 14:11:44'),
(4,'admin','에디터','','',0,'2021-02-02 14:11:50','2021-02-02 14:11:50'),
(5,'admin','슈피겐','','',0,'2021-02-02 14:11:57','2021-02-02 14:11:57'),
(6,'admin','아라리','','',0,'2021-02-02 14:12:05','2021-02-02 14:12:05'),
(7,'admin','베루스','','',0,'2021-02-02 14:12:11','2021-02-02 14:12:11'),
(8,'admin','팬톤','','',0,'2021-02-02 14:12:16','2021-02-02 14:12:16'),
(9,'admin','엘라고','','',0,'2021-02-02 14:12:21','2021-02-02 14:12:21'),
(10,'admin','케이맥스','','',0,'2021-02-02 14:12:29','2021-02-02 14:12:29'),
(11,'admin','탄탄','','',0,'2021-02-02 14:12:31','2021-02-02 14:12:31'),
(12,'admin','엣핸드','','',0,'2021-02-02 14:12:36','2021-02-02 14:12:36'),
(13,'admin','스타','','',0,'2021-02-02 14:12:40','2021-02-02 14:12:40'),
(14,'admin','삼성','','',0,'2021-02-02 14:12:43','2021-02-02 14:12:43'),
(15,'admin','엘지','','',0,'2021-02-02 14:12:45','2021-02-02 14:12:45'),
(16,'admin','애플','','',0,'2021-02-02 14:12:47','2021-02-02 14:12:47'),
(17,'admin','아이리버','','',0,'2021-02-02 14:12:49','2021-02-02 14:12:49'),
(18,'admin','플레오맥스','','',0,'2021-02-02 14:12:55','2021-02-02 14:12:55'),
(19,'admin','베어스어스','','',0,'2021-02-02 14:13:02','2021-02-02 14:13:02'),
(20,'admin','요이치','','',0,'2021-02-02 14:13:08','2021-02-02 14:13:08'),
(21,'admin','로지텍','','',0,'2021-02-02 14:13:12','2021-02-02 14:13:12'),
(22,'admin','코시','','',0,'2021-02-02 14:13:14','2021-02-02 14:13:14'),
(23,'admin','베온','','',0,'2021-02-02 14:13:21','2021-02-02 14:13:21'),
(24,'admin','템플러','','',0,'2021-02-02 14:13:26','2021-02-02 14:13:26'),
(25,'admin','엑티몬','','',0,'2021-02-02 14:13:33','2021-02-02 14:13:33'),
(26,'admin','카카오','','',0,'2021-02-02 15:25:48','2021-02-02 15:25:48');

/*Table structure for table `shop_cart` */

DROP TABLE IF EXISTS `shop_cart`;

CREATE TABLE `shop_cart` (
  `index_no` int(11) NOT NULL AUTO_INCREMENT COMMENT '주키',
  `od_id` varchar(30) NOT NULL COMMENT '주문번호',
  `od_no` varchar(30) NOT NULL COMMENT '일련번호',
  `mb_id` varchar(20) NOT NULL COMMENT '회원아이디',
  `ca_id` varchar(15) NOT NULL COMMENT '카테고리번호',
  `gs_id` int(11) NOT NULL DEFAULT '0' COMMENT '상품주키',
  `ct_direct` varchar(100) NOT NULL COMMENT '구매자 고유쿠키값',
  `ct_price` int(11) NOT NULL DEFAULT '0' COMMENT '상품금액',
  `ct_supply_price` int(11) NOT NULL DEFAULT '0' COMMENT '도매 공급가격',
  `ct_somae_supply_price` int(11) NOT NULL COMMENT '소매 공급가격',
  `ct_qty` int(11) NOT NULL DEFAULT '0' COMMENT '수량',
  `ct_point` int(11) NOT NULL DEFAULT '0' COMMENT '적립포인트',
  `io_id` varchar(255) NOT NULL COMMENT '옵션항목',
  `io_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '옵션타입(필수:0, 선택:1)',
  `io_supply_price` int(11) NOT NULL DEFAULT '0' COMMENT '옵션공급가',
  `io_somae_supply_price` int(11) NOT NULL COMMENT '옵션도매가격',
  `io_price` int(11) NOT NULL DEFAULT '0' COMMENT '옵션가격',
  `ct_option` varchar(255) NOT NULL COMMENT '옵션명',
  `ct_send_cost` tinyint(4) NOT NULL DEFAULT '0' COMMENT '배송비(선불/착불)여부',
  `ct_select` tinyint(4) NOT NULL DEFAULT '0' COMMENT '주문전(0), 주문후(1)',
  `ct_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '등록일시',
  `ct_ip` varchar(255) NOT NULL COMMENT '구매자IP',
  PRIMARY KEY (`index_no`),
  KEY `od_id` (`od_id`),
  KEY `gs_id` (`gs_id`),
  KEY `ct_select` (`ct_select`)
) ENGINE=MyISAM AUTO_INCREMENT=226 DEFAULT CHARSET=utf8 COMMENT='장바구니 테이블';

/*Data for the table `shop_cart` */

insert  into `shop_cart`(`index_no`,`od_id`,`od_no`,`mb_id`,`ca_id`,`gs_id`,`ct_direct`,`ct_price`,`ct_supply_price`,`ct_somae_supply_price`,`ct_qty`,`ct_point`,`io_id`,`io_type`,`io_supply_price`,`io_somae_supply_price`,`io_price`,`ct_option`,`ct_send_cost`,`ct_select`,`ct_time`,`ct_ip`) values 
(225,'21022616311911','5828184378','panda2','002002002002',53,'1611824127',3600,3000,3000,1,0,'레드',0,0,0,0,'옵션:레드',0,1,'2021-02-26 16:31:15','110.45.19.189'),
(224,'21022616311911','4152851704','panda2','002002002001',54,'1611824127',36000,30000,30000,1,0,'레드와인',0,0,0,0,'옵션:레드와인',0,1,'2021-02-26 16:31:09','110.45.19.189'),
(223,'21022616311911','7178113668','panda2','002002002002',56,'1611824127',6000,5000,5000,1,0,'도날드',0,0,0,0,'옵션:도날드',0,1,'2021-02-26 16:31:01','110.45.19.189'),
(222,'21022616311911','7998425457','panda2','002002002002',56,'1611824127',6000,5000,5000,1,0,'미니',0,0,0,0,'옵션:미니',0,1,'2021-02-26 16:31:01','110.45.19.189'),
(221,'21022616311911','4434101842','panda2','002002002002',56,'1611824127',6000,5000,5000,1,0,'미키',0,0,0,0,'옵션:미키',0,1,'2021-02-26 16:31:01','110.45.19.189'),
(220,'21022616231188','2469271912','panda1','002002002002',54,'1614303346',38400,30000,30000,1,0,'그레이',0,0,0,0,'옵션:그레이',0,1,'2021-02-26 16:23:11','112.147.101.109'),
(218,'21022616015418','9521792957','man1','002002002001',55,'1611824127',2560,2000,2000,1,0,'후드지방',0,0,0,0,'옵션:후드지방',0,1,'2021-02-26 16:01:48','110.45.19.189'),
(219,'21022616015418','6117317717','man1','002002002001',55,'1611824127',2560,2000,2000,1,0,'후드곰',0,0,0,0,'옵션:후드곰',0,1,'2021-02-26 16:01:48','110.45.19.189'),
(217,'21022616015418','9885249541','man1','002002002001',55,'1611824127',2560,2000,2000,1,0,'곰고미',0,0,0,0,'옵션:곰고미',0,1,'2021-02-26 16:01:48','110.45.19.189'),
(216,'21022616015418','4171761764','man1','002002002001',54,'1611824127',38400,30000,30000,1,0,'블랙',0,0,0,0,'옵션:블랙',0,1,'2021-02-26 16:01:37','110.45.19.189'),
(213,'21022616221568','1884392482','panda1','002002002002',57,'1614303346',6400,5000,5000,2,0,'핑크',0,0,0,0,'옵션:핑크',0,1,'2021-02-26 15:56:30','112.147.101.109'),
(215,'21022616015418','8466660939','man1','002002002001',54,'1611824127',38400,30000,30000,1,0,'그레이',0,0,0,0,'옵션:그레이',0,1,'2021-02-26 16:01:37','110.45.19.189'),
(214,'21022616015418','9614228107','man1','002002002001',54,'1611824127',38400,30000,30000,1,0,'레드와인',0,0,0,0,'옵션:레드와인',0,1,'2021-02-26 16:01:37','110.45.19.189'),
(210,'21022615440934','6089762471','panda3','002002002001',57,'1611824127',5600,5000,5000,10,0,'블랙',0,0,0,0,'옵션:블랙',0,1,'2021-02-26 15:44:09','110.45.19.189'),
(209,'21022615250756','2317109708','man1','002002002001',57,'1611824127',6400,5000,5000,10,0,'블랙',0,0,0,0,'옵션:블랙',0,1,'2021-02-26 15:25:07','110.45.19.189'),
(208,'21022612020288','9784155344','panda2','002002002001',57,'1611799038',6000,5000,5000,2,0,'미드나잇블루',0,0,0,0,'옵션:미드나잇블루',0,1,'2021-02-26 12:02:02','110.45.19.189'),
(207,'21022610084106','8801079304','man3','002002002001',57,'1611799038',5600,5000,5000,50,0,'레드',0,0,0,0,'옵션:레드',0,1,'2021-02-26 10:08:40','110.45.19.189'),
(206,'','8141436449','man2','002002002002',56,'1611799038',6400,5000,5000,5,0,'데이지',0,0,0,0,'옵션:데이지',0,0,'2021-02-26 09:57:30','110.45.19.189'),
(205,'21022609413198','4722197674','man2','002002002001',55,'1611799038',2560,2000,2000,1,0,'곰고미',0,0,0,0,'옵션:곰고미',0,1,'2021-02-26 09:41:31','110.45.19.189'),
(203,'21022609165119','3086081661','man2','002002002001',57,'1611799038',6400,5000,5000,10,0,'미드나잇블루',0,0,0,0,'옵션:미드나잇블루',0,1,'2021-02-26 09:16:51','110.45.19.189'),
(204,'','5326505383','man2','002002002001',54,'1611799038',38400,30000,30000,20,0,'그레이',0,0,0,0,'옵션:그레이',0,0,'2021-02-26 09:40:06','110.45.19.189');

/*Table structure for table `shop_cash_charge` */

DROP TABLE IF EXISTS `shop_cash_charge`;

CREATE TABLE `shop_cash_charge` (
  `ch_id` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(20) NOT NULL,
  `to_id` varchar(20) NOT NULL,
  `action` varchar(512) NOT NULL,
  `charge_money` int(11) NOT NULL,
  `tax_result` varchar(8) NOT NULL DEFAULT 'N',
  `gubun` varchar(8) NOT NULL DEFAULT '도매',
  `input_date` datetime NOT NULL,
  `result` varchar(8) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ch_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

/*Data for the table `shop_cash_charge` */

/*Table structure for table `shop_cash_history` */

DROP TABLE IF EXISTS `shop_cash_history`;

CREATE TABLE `shop_cash_history` (
  `ch_id` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(20) NOT NULL,
  `to_id` varchar(20) NOT NULL,
  `action` varchar(512) NOT NULL,
  `gubun` varchar(16) NOT NULL DEFAULT '도매',
  `plus_minus` varchar(16) NOT NULL DEFAULT '+',
  `cash_now` int(11) NOT NULL,
  `cash_remain` int(11) NOT NULL,
  `action_date` datetime NOT NULL,
  PRIMARY KEY (`ch_id`)
) ENGINE=MyISAM AUTO_INCREMENT=253292 DEFAULT CHARSET=utf8;

/*Data for the table `shop_cash_history` */

/*Table structure for table `shop_category` */

DROP TABLE IF EXISTS `shop_category`;

CREATE TABLE `shop_category` (
  `index_no` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '주키',
  `catecode` varchar(15) NOT NULL COMMENT '카테고리번호',
  `upcate` varchar(12) NOT NULL COMMENT '상위카테고리번호(최상위는 빈값)',
  `catename` varchar(255) NOT NULL COMMENT '카테고리명',
  `cateimg1` varchar(255) NOT NULL COMMENT '카테고리 아이콘',
  `cateimg2` varchar(255) NOT NULL COMMENT '카테고리 아이콘 (ON)',
  `headimg` varchar(255) NOT NULL COMMENT '카테고리 상단배너',
  `headimgurl` varchar(255) NOT NULL COMMENT '카테고리 상단배너 URL',
  `caterank` int(11) NOT NULL DEFAULT '0' COMMENT '정렬순서',
  `cateuse` tinyint(4) NOT NULL DEFAULT '0' COMMENT '노출',
  `catehide` longtext NOT NULL COMMENT '감춤(가맹점ID)',
  PRIMARY KEY (`index_no`),
  KEY `catecode` (`catecode`,`upcate`),
  KEY `cateuse` (`cateuse`)
) ENGINE=MyISAM AUTO_INCREMENT=682 DEFAULT CHARSET=utf8 COMMENT='카테고리 테이블';

/*Data for the table `shop_category` */

insert  into `shop_category`(`index_no`,`catecode`,`upcate`,`catename`,`cateimg1`,`cateimg2`,`headimg`,`headimgurl`,`caterank`,`cateuse`,`catehide`) values 
(500,'003001001','003001','다이어리케이스','','','','',1,0,''),
(499,'003001','003','가죽케이스','','','','',1,0,''),
(108,'002002002003','002002002','갤럭시노트10 플러스','','','','',3,0,'panda1'),
(107,'002002002002','002002002','갤럭시노트20','','','','',2,0,'panda1'),
(106,'002002002001','002002002','갤럭시노트20 울트라','','','','',1,0,'panda1'),
(101,'002002001004','002002001','갤럭시Z플립','','','','',4,0,'panda1'),
(501,'003001002','003001','플립케이스','','','','',2,0,''),
(502,'003001003','003001','뷰커버케이스','','','','',3,0,''),
(422,'002002001006','002002001','갤럭시폴드','','','','',6,0,'panda1'),
(100,'002002001003','002002001','갤럭시Z플립 5G','','','','',3,0,'panda1'),
(421,'002002001005','002002001','갤럭시Z폴드2','','','','',5,0,'panda1'),
(96,'002002006','002002','갤럭시 기타','','','','',6,0,'panda1'),
(97,'002002007','002002','삼성 폴더폰','','','','',7,0,'panda1'),
(92,'002002002','002002','갤럭시노트 시리즈','','','','',2,0,'panda1'),
(95,'002002005','002002','갤럭시J 시리즈','','','','',5,0,'panda1'),
(94,'002002004','002002','갤럭시A 시리즈','','','','',4,0,'panda1'),
(93,'002002003','002002','갤럭시S 시리즈','','','','',3,0,'panda1'),
(75,'002001005','002001','아이폰11 프로맥스','','','','',7,0,'panda1'),
(91,'002002001','002002','갤럭시Z 시리즈','','','','',1,0,'panda1'),
(90,'002002','002','갤럭시','','','','',2,0,'panda1'),
(89,'002001019','002001','아이폰5/5S/SE','','','','',19,0,'panda1'),
(617,'002010','002','아이패드','','','','',5,0,'panda1'),
(87,'002001017','002001','아이폰6/6S','','','','',18,0,'panda1'),
(77,'002001007','002001','아이폰SE2','','','','',8,0,'panda1'),
(76,'002001006','002001','아이폰11','','','','',5,0,'panda1'),
(85,'002001015','002001','아이폰7','','','','',16,0,'panda1'),
(86,'002001016','002001','아이폰6/6S 플러스','','','','',17,0,'panda1'),
(74,'002001004','002001','아이폰12 미니','','','','',4,0,'panda1'),
(73,'002001003','002001','아이폰12','','','','',1,0,'panda1'),
(72,'002001002','002001','아이폰12 프로','','','','',2,0,'panda1'),
(71,'002001001','002001','아이폰12 프로맥스','','','','',3,0,'panda1'),
(70,'002001','002','아이폰','','','','',1,0,'panda1'),
(69,'002','','기종별','','','','',2,0,'panda1'),
(78,'002001008','002001','아이폰XS MAX','','','','',9,0,'panda1'),
(79,'002001009','002001','아이폰XR','','','','',10,0,'panda1'),
(80,'002001010','002001','아이폰XS','','','','',11,0,'panda1'),
(81,'002001011','002001','아이폰X','','','','',12,0,'panda1'),
(82,'002001012','002001','아이폰8 플러스','','','','',13,0,'panda1'),
(83,'002001013','002001','아이폰8','','','','',14,0,'panda1'),
(84,'002001014','002001','아이폰7 플러스','','','','',15,0,'panda1'),
(109,'002002002004','002002002','갤럭시노트10','','','','',4,0,'panda1'),
(110,'002002002005','002002002','갤럭시노트9','','','','',5,0,'panda1'),
(111,'002002002006','002002002','갤럭시노트8','','','','',6,0,'panda1'),
(112,'002002002007','002002002','갤럭시노트7 FE','','','','',7,0,'panda1'),
(113,'002002002008','002002002','갤럭시노트5','','','','',8,0,'panda1'),
(114,'002002003001','002002003','갤럭시S21 울트라','','','','',1,0,'panda1'),
(115,'002002003002','002002003','갤럭시S21 플러스','','','','',2,0,'panda1'),
(116,'002002003003','002002003','갤럭시S21','','','','',3,0,'panda1'),
(117,'002002003004','002002003','갤럭시S20 FE','','','','',4,0,'panda1'),
(118,'002002003005','002002003','갤럭시S20 울트라','','','','',5,0,'panda1'),
(119,'002002003006','002002003','갤럭시S20 플러스','','','','',6,0,'panda1'),
(120,'002002003007','002002003','갤럭시S20','','','','',7,0,'panda1'),
(121,'002002003008','002002003','갤럭시S10 5G','','','','',8,0,'panda1'),
(122,'002002003009','002002003','갤럭시S10 플러스','','','','',9,0,'panda1'),
(123,'002002003010','002002003','갤럭시S10','','','','',10,0,'panda1'),
(124,'002002003011','002002003','갤럭시S10e','','','','',11,0,'panda1'),
(125,'002002003012','002002003','갤럭시S9 플러스','','','','',12,0,'panda1'),
(126,'002002003013','002002003','갤럭시S9','','','','',13,0,'panda1'),
(127,'002002003014','002002003','갤럭시S8 플러스','','','','',14,0,'panda1'),
(128,'002002003015','002002003','갤럭시S8','','','','',15,0,'panda1'),
(129,'002002003016','002002003','갤럭시S7 엣지','','','','',16,0,'panda1'),
(130,'002002003017','002002003','갤럭시S7','','','','',17,0,'panda1'),
(131,'002002003018','002002003','갤럭시S6 엣지플러스','','','','',18,0,'panda1'),
(132,'002002003019','002002003','갤럭시S6 엣지','','','','',19,0,'panda1'),
(133,'002002003020','002002003','갤럭시S6','','','','',20,0,'panda1'),
(498,'003','','제품별','','','','',3,0,''),
(497,'002006003003','002006003','LG Watch 어베인','','','','',3,0,'panda1'),
(496,'002006003002','002006003','LG G워치 스타일','','','','',2,0,'panda1'),
(495,'002006003001','002006003','LG G워치 스포츠','','','','',1,0,'panda1'),
(494,'002006003','002006','LG워치','','','','',3,0,'panda1'),
(493,'002006002010','002006002','애플워치 시리즈3 38mm','','','','',10,0,'panda1'),
(492,'002006002009','002006002','애플워치 시리즈3 42mm','','','','',9,0,'panda1'),
(491,'002006002008','002006002','애플워치 시리즈4 40mm','','','','',8,0,'panda1'),
(490,'002006002007','002006002','애플워치 시리즈4 44mm','','','','',7,0,'panda1'),
(152,'002002004001','002002004','갤럭시A71 5G','','','','',1,0,'panda1'),
(153,'002002004002','002002004','갤럭시A51 5G','','','','',2,0,'panda1'),
(155,'002002004003','002002004','갤럭시A31','','','','',3,0,'panda1'),
(156,'002002004004','002002004','갤럭시A21S','','','','',4,0,'panda1'),
(157,'002002004005','002002004','갤럭시A90 5G','','','','',5,0,'panda1'),
(158,'002002004006','002002004','갤럭시A80','','','','',6,0,'panda1'),
(159,'002002004007','002002004','갤럭시A50','','','','',7,0,'panda1'),
(160,'002002004008','002002004','갤럭시A40','','','','',8,0,'panda1'),
(161,'002002004009','002002004','갤럭시A30','','','','',9,0,'panda1'),
(162,'002002004010','002002004','갤럭시A20','','','','',10,0,'panda1'),
(163,'002002004011','002002004','갤럭시A20e','','','','',11,0,'panda1'),
(164,'002002004012','002002004','갤럭시A10','','','','',12,0,'panda1'),
(165,'002002004013','002002004','갤럭시A10e','','','','',13,0,'panda1'),
(166,'002002004014','002002004','갤럭시A9 프로','','','','',14,0,'panda1'),
(167,'002002004015','002002004','갤럭시A9 2018','','','','',15,0,'panda1'),
(168,'002002004016','002002004','갤럭시A8 스타','','','','',16,0,'panda1'),
(169,'002002004017','002002004','갤럭시A8 2018','','','','',17,0,'panda1'),
(170,'002002004018','002002004','갤럭시A8 2016','','','','',18,0,'panda1'),
(171,'002002004019','002002004','갤럭시A8','','','','',19,0,'panda1'),
(172,'002002004020','002002004','갤럭시A7 2018','','','','',20,0,'panda1'),
(173,'002002004021','002002004','갤럭시A7 2017','','','','',21,0,'panda1'),
(174,'002002004022','002002004','갤럭시A7 2016','','','','',22,0,'panda1'),
(175,'002002004023','002002004','갤럭시A7','','','','',23,0,'panda1'),
(176,'002002004024','002002004','갤럭시A6 플러스','','','','',24,0,'panda1'),
(177,'002002004025','002002004','갤럭시A6 2018','','','','',25,0,'panda1'),
(178,'002002004026','002002004','갤럭시A5 2017','','','','',26,0,'panda1'),
(179,'002002004027','002002004','갤럭시A5 2016','','','','',27,0,'panda1'),
(180,'002002004028','002002004','갤럭시A5','','','','',28,0,'panda1'),
(181,'002002004029','002002004','갤럭시A3 2017','','','','',29,0,'panda1'),
(182,'002002004030','002002004','갤럭시A3 2016','','','','',30,0,'panda1'),
(489,'002006002006','002006002','애플워치 시리즈5 40mm','','','','',6,0,'panda1'),
(481,'002006001009','002006001','갤럭시핏','','','','',9,0,'panda1'),
(482,'002006001010','002006001','갤럭시기어S3 프론티어/클래식 46mm','','','','',10,0,'panda1'),
(488,'002006002005','002006002','애플워치 시리즈5 44mm','','','','',5,0,'panda1'),
(487,'002006002004','002006002','애플워치SE 40mm','','','','',4,0,'panda1'),
(486,'002006002003','002006002','애플워치SE 44mm','','','','',3,0,'panda1'),
(484,'002006002001','002006002','애플워치 시리즈6 44mm','','','','',1,0,'panda1'),
(485,'002006002002','002006002','애플워치 시리즈6 40mm','','','','',2,0,'panda1'),
(483,'002006002','002006','애플워치','','','','',2,0,'panda1'),
(480,'002006001008','002006001','갤럭시핏E','','','','',8,0,'panda1'),
(479,'002006001007','002006001','갤럭시워치 액티브','','','','',7,0,'panda1'),
(478,'002006001006','002006001','갤럭시워치 46mm','','','','',6,0,'panda1'),
(477,'002006001005','002006001','갤럭시워치 42mm','','','','',5,0,'panda1'),
(476,'002006001004','002006001','갤럭시워치 액티브2 44mm','','','','',4,0,'panda1'),
(475,'002006001003','002006001','갤럭시워치 액티브2 40mm','','','','',3,0,'panda1'),
(474,'002006001002','002006001','갤럭시워치3 45mm','','','','',2,0,'panda1'),
(473,'002006001001','002006001','갤럭시워치3 41mm','','','','',1,0,'panda1'),
(472,'002006001','002006','갤럭시워치/기어','','','','',1,0,'panda1'),
(471,'002006','002','웨어러블','','','','',8,0,'panda1'),
(218,'002002005001','002002005','갤럭시J7 2017','','','','',1,0,'panda1'),
(219,'002002005002','002002005','갤럭시J7 2016','','','','',2,0,'panda1'),
(220,'002002005003','002002005','갤럭시J7','','','','',3,0,'panda1'),
(221,'002002005004','002002005','갤럭시J6 2018','','','','',4,0,'panda1'),
(222,'002002005005','002002005','갤럭시J5 2017','','','','',5,0,'panda1'),
(223,'002002005006','002002005','갤럭시J5 2016','','','','',6,0,'panda1'),
(224,'002002005007','002002005','갤럭시J5','','','','',7,0,'panda1'),
(225,'002002005008','002002005','갤럭시J4 플러스','','','','',8,0,'panda1'),
(226,'002002005009','002002005','갤럭시J3 2017','','','','',9,0,'panda1'),
(227,'002002005010','002002005','갤럭시J3 2016','','','','',10,0,'panda1'),
(228,'002002005011','002002005','갤럭시J2 프로','','','','',11,0,'panda1'),
(240,'002002006001','002002006','갤럭시와이드3','','','','',1,0,'panda1'),
(241,'002002006002','002002006','갤럭시와이드2','','','','',2,0,'panda1'),
(242,'002002006003','002002006','갤럭시와이드','','','','',3,0,'panda1'),
(243,'002002006004','002002006','갤럭시그랜드맥스','','','','',4,0,'panda1'),
(244,'002002006005','002002006','갤럭시그랜드2','','','','',5,0,'panda1'),
(245,'002002006006','002002006','갤럭시온7프라임 2018','','','','',6,0,'panda1'),
(246,'002002006007','002002006','갤럭시온7 2016','','','','',7,0,'panda1'),
(681,'002001020','002001','아이폰11 PRO','','','','',6,0,'panda1'),
(680,'002009002006','002009002','화웨이 Be Y 패드2 8.4','','','','',6,0,'panda1'),
(255,'002002007001','002002007','갤럭시폴더2','','','','',1,0,'panda1'),
(256,'002002007002','002002007','갤럭시폴더','','','','',2,0,'panda1'),
(257,'002002007003','002002007','삼성 마스터 듀얼','','','','',3,0,'panda1'),
(258,'002002007004','002002007','삼성 마스터','','','','',4,0,'panda1'),
(679,'002009002005','002009002','화웨이 미디어패드 M3 Lite CPN-L09','','','','',5,0,'panda1'),
(678,'002009002004','002009002','화웨이 미디어패드 M3 Lite 8.0','','','','',4,0,'panda1'),
(266,'002003','002','LG','','','','',3,0,'panda1'),
(267,'002003001','002003','LG G 시리즈','','','','',1,0,'panda1'),
(268,'002003001001','002003001','LG 벨벳','','','','',1,0,'panda1'),
(269,'002003001002','002003001','LG G8 ThinQ','','','','',2,0,'panda1'),
(270,'002003001003','002003001','LG G7','','','','',3,0,'panda1'),
(271,'002003001004','002003001','LG G6','','','','',4,0,'panda1'),
(272,'002003001005','002003001','LG G5','','','','',5,0,'panda1'),
(273,'002003001006','002003001','LG G4','','','','',6,0,'panda1'),
(677,'002009002003','002009002','화웨이 미디어패드 M5 8.4','','','','',3,0,'panda1'),
(676,'002009002002','002009002','화웨이 미디어패드 M5 10.8','','','','',2,0,'panda1'),
(674,'002009001008','002009001','LG G패드 8.3','','','','',8,0,'panda1'),
(675,'002009002001','002009002','화웨이 미디어패드 T5 10','','','','',1,0,'panda1'),
(672,'002009001006','002009001','LG G패드2 8.3','','','','',6,0,'panda1'),
(280,'002003002','002003','LG V 시리즈','','','','',2,0,'panda1'),
(281,'002003002001','002003002','LG V50S ThinQ','','','','',1,0,'panda1'),
(282,'002003002002','002003002','LG V50 ThinQ','','','','',2,0,'panda1'),
(283,'002003002003','002003002','LG V40 ThinQ','','','','',3,0,'panda1'),
(284,'002003002004','002003002','LG V35 ThinQ','','','','',4,0,'panda1'),
(285,'002003002005','002003002','LG V30','','','','',5,0,'panda1'),
(673,'002009001007','002009001','LG G패드2 8.0','','','','',7,0,'panda1'),
(671,'002009001005','002009001','LG G패드2 10.1','','','','',5,0,'panda1'),
(669,'002009001003','002009001','LG G패드3 10.1','','','','',3,0,'panda1'),
(670,'002009001004','002009001','LG G패드3 8.0','','','','',4,0,'panda1'),
(291,'002003003','002003','LG Q 시리즈','','','','',3,0,'panda1'),
(292,'002003003001','002003003','LG Q52','','','','',1,0,'panda1'),
(293,'002003003002','002003003','LG Q31','','','','',2,0,'panda1'),
(294,'002003003003','002003003','LG Q92','','','','',3,0,'panda1'),
(295,'002003003004','002003003','LG Q61','','','','',4,0,'panda1'),
(296,'002003003005','002003003','LG Q51','','','','',5,0,'panda1'),
(297,'002003003006','002003003','LG Q9 ONE','','','','',6,0,'panda1'),
(316,'002003003017','002003003','LG Q7플러스','','','','',17,0,'panda1'),
(315,'002003003016','002003003','LG Q8','','','','',16,0,'panda1'),
(314,'002003003015','002003003','LG Q8 2018','','','','',15,0,'panda1'),
(313,'002003003014','002003003','LG Q70','','','','',14,0,'panda1'),
(668,'002009001002','002009001','LG G패드4 8.0','','','','',2,0,'panda1'),
(666,'002009002','002009','화웨이','','','','',2,0,'panda1'),
(667,'002009001001','002009001','LG G패드5 10.1','','','','',1,0,'panda1'),
(664,'002008031','002008','갤럭시탭3 7.0','','','','',31,0,'panda1'),
(665,'002009001','002009','G패드','','','','',1,0,'panda1'),
(312,'002003003013','002003003','LG Q9','','','','',13,0,'panda1'),
(317,'002003003018','002003003','LG Q7','','','','',18,0,'panda1'),
(318,'002003003019','002003003','LG Q6','','','','',19,0,'panda1'),
(663,'002008030','002008','갤럭시탭3 8.0','','','','',30,0,'panda1'),
(661,'002008028','002008','갤럭시탭4 10.1','','','','',28,0,'panda1'),
(662,'002008029','002008','갤럭시탭4 8.0','','','','',29,0,'panda1'),
(660,'002008027','002008','갤럭시탭E 8.0','','','','',27,0,'panda1'),
(327,'002003004','002003','LG X 시리즈','','','','',4,0,'panda1'),
(328,'002003004001','002003004','LG X2 2019','','','','',1,0,'panda1'),
(329,'002003004002','002003004','LG X6 2019','','','','',2,0,'panda1'),
(330,'002003004003','002003004','LG X4 2019','','','','',3,0,'panda1'),
(331,'002003004004','002003004','LG X2 2018','','','','',4,0,'panda1'),
(332,'002003004005','002003004','LG X5 2018','','','','',5,0,'panda1'),
(333,'002003004006','002003004','LG X4플러스','','','','',6,0,'panda1'),
(334,'002003004007','002003004','LG X4','','','','',7,0,'panda1'),
(335,'002003004008','002003004','LG X500','','','','',8,0,'panda1'),
(336,'002003004009','002003004','LG X401','','','','',9,0,'panda1'),
(337,'002003004010','002003004','LG X400','','','','',10,0,'panda1'),
(338,'002003004011','002003004','LG X300','','','','',11,0,'panda1'),
(659,'002008026','002008','갤럭시탭 액티브 8.0','','','','',26,0,'panda1'),
(657,'002008024','002008','갤럭시탭A 7.0','','','','',24,0,'panda1'),
(658,'002008025','002008','갤럭시탭 액티브2 8.0','','','','',25,0,'panda1'),
(656,'002008023','002008','갤럭시탭A 9.7','','','','',23,0,'panda1'),
(654,'002008021','002008','갤럭시탭A 10.1 2016 S펜','','','','',21,0,'panda1'),
(655,'002008022','002008','갤럭시탭A 10.1 2016','','','','',22,0,'panda1'),
(653,'002008020','002008','갤럭시탭A 8.0 2017','','','','',20,0,'panda1'),
(651,'002008018','002008','갤럭시탭A 10.1 2019','','','','',18,0,'panda1'),
(652,'002008019','002008','갤럭시탭A 10.5 2018','','','','',19,0,'panda1'),
(350,'002003005','002003','LG 기타','','','','',5,0,'panda1'),
(351,'002003005001','002003005','LG WING','','','','',1,0,'panda1'),
(352,'002003005002','002003005','LG U폰','','','','',2,0,'panda1'),
(353,'002003005003','002003005','LG 스타일러스2','','','','',3,0,'panda1'),
(354,'002003005004','002003005','LG K10','','','','',4,0,'panda1'),
(355,'002003005005','002003005','LG 클래스','','','','',5,0,'panda1'),
(356,'002003005006','002003005','LG 마그나','','','','',6,0,'panda1'),
(357,'002003005007','002003005','LG 밴드플레이','','','','',7,0,'panda1'),
(358,'002003005008','002003005','LG G스타일로','','','','',8,0,'panda1'),
(359,'002003005009','002003005','LG 볼트','','','','',9,0,'panda1'),
(650,'002008017','002008','갤럭시탭A 8.0 2019','','','','',17,0,'panda1'),
(648,'002008015','002008','갤럭시탭A7 10.4 2020','','','','',15,0,'panda1'),
(649,'002008016','002008','갤럭시탭A 8.0 2019 S펜','','','','',16,0,'panda1'),
(647,'002008014','002008','갤럭시탭S 8.4','','','','',14,0,'panda1'),
(645,'002008012','002008','갤럭시탭S2 8.0','','','','',12,0,'panda1'),
(646,'002008013','002008','갤럭시탭S 10.5','','','','',13,0,'panda1'),
(643,'002008010','002008','갤럭시탭S3 9.7','','','','',10,0,'panda1'),
(370,'002003006','002003','LG 폴더폰','','','','',6,0,'panda1'),
(371,'002003006001','002003006','LG 폴더2','','','','',1,0,'panda1'),
(372,'002003006002','002003006','LG 폴더','','','','',2,0,'panda1'),
(373,'002003006003','002003006','LG 스마트폴더','','','','',3,0,'panda1'),
(374,'002003006004','002003006','LG 와인3G','','','','',4,0,'panda1'),
(375,'002003006005','002003006','와인스마트','','','','',5,0,'panda1'),
(644,'002008011','002008','갤럭시탭S2 9.7','','','','',11,0,'panda1'),
(642,'002008009','002008','갤럭시탭S4 10.5','','','','',9,0,'panda1'),
(640,'002008007','002008','갤럭시탭S6 10.5','','','','',7,0,'panda1'),
(641,'002008008','002008','갤럭시탭S5e 10.5','','','','',8,0,'panda1'),
(381,'002004','002','기타 스마트폰','','','','',4,0,'panda1'),
(382,'002004001','002004','SKY','','','','',1,0,'panda1'),
(383,'002004002','002004','화웨이','','','','',2,0,'panda1'),
(384,'002004001001','002004001','아이엠백','','','','',1,0,'panda1'),
(385,'002004001002','002004001','베가 팝업노트','','','','',2,0,'panda1'),
(386,'002004001003','002004001','베가 아이언2','','','','',3,0,'panda1'),
(387,'002004001004','002004001','베가 시크릿노트','','','','',4,0,'panda1'),
(639,'002008006','002008','갤럭시탭S6 Lite 10.4','','','','',6,0,'panda1'),
(637,'002008004','002008','갤럭시탭S7 플러스 12.4','','','','',4,0,'panda1'),
(638,'002008005','002008','갤럭시탭S7 11.0','','','','',5,0,'panda1'),
(392,'002004002001','002004002','화웨이 Be Y3','','','','',1,0,'panda1'),
(636,'002008003','002008','갤럭시노트10.1','','','','',3,0,'panda1'),
(394,'002004003','002004','샤오미','','','','',3,0,'panda1'),
(396,'002004003001','002004003','샤오미 미 10라이트','','','','',1,0,'panda1'),
(397,'002004003002','002004003','샤오미 홍미 노트7','','','','',2,0,'panda1'),
(398,'002004003003','002004003','샤오미 포코폰 F1','','','','',3,0,'panda1'),
(634,'002008001','002008','갤럭시노트 프로12.2','','','','',1,0,'panda1'),
(635,'002008002','002008','갤럭시노트10.1 2014','','','','',2,0,'panda1'),
(633,'002010016','002010','아이패드 10.2 7세대','','','','',16,0,'panda1'),
(619,'002010002','002010','아이패드 에어3 10.5','','','','',2,0,'panda1'),
(618,'002010001','002010','아이패드 에어4 10.9','','','','',1,0,'panda1'),
(632,'002010015','002010','아이패드 10.2 8세대','','','','',15,0,'panda1'),
(631,'002010014','002010','아이패드 미니3','','','','',14,0,'panda1'),
(630,'002010013','002010','아이패드 미니4','','','','',13,0,'panda1'),
(629,'002010012','002010','아이패드 미니5','','','','',12,0,'panda1'),
(628,'002010011','002010','아이패드 프로 9.7','','','','',11,0,'panda1'),
(627,'002010010','002010','아이패드 프로 10.5','','','','',10,0,'panda1'),
(626,'002010009','002010','아이패드 프로 11.0 1세대','','','','',9,0,'panda1'),
(625,'002010008','002010','아이패드 프로 12.9 1세대','','','','',8,0,'panda1'),
(624,'002010007','002010','아이패드 프로 11.0 2세대','','','','',7,0,'panda1'),
(623,'002010006','002010','아이패드 프로 12.9 3세대','','','','',6,0,'panda1'),
(622,'002010005','002010','아이패드 프로 12.9 4세대','','','','',5,0,'panda1'),
(621,'002010004','002010','아이패드 에어 9.7','','','','',4,0,'panda1'),
(620,'002010003','002010','아이패드 에어2 9.7','','','','',3,0,'panda1'),
(503,'003001004','003001','허리집케이스','','','','',4,0,''),
(504,'003001004001','003001004','중','','','','',1,0,''),
(505,'003001004002','003001004','대','','','','',2,0,''),
(508,'003002001','003002','젤리케이스','','','','',1,0,''),
(507,'003002','003','소프트케이스','','','','',2,0,''),
(509,'003002002','003002','실리콘케이스','','','','',2,0,''),
(510,'003002003','003002','캐릭터젤리케이스','','','','',3,0,''),
(511,'003003','003','하드케이스','','','','',3,0,''),
(512,'003003001','003003','하드케이스','','','','',1,0,''),
(513,'003003002','003003','범퍼케이스','','','','',2,0,''),
(514,'003004','003','태블릿케이스','','','','',4,0,''),
(515,'003004001','003004','태블릿가죽케이스','','','','',1,0,''),
(516,'003004002','003004','태블릿젤리케이스','','','','',2,0,''),
(517,'003004003','003004','태블릿하드케이스','','','','',3,0,''),
(518,'003005','003','보호필름','','','','',5,0,''),
(519,'003005001','003005','풀커버강화유리필름','','','','',1,0,''),
(520,'003005002','003005','풀커버우레탄필름','','','','',2,0,''),
(521,'003005003','003005','강화유리필름','','','','',3,0,''),
(522,'003005004','003005','방탄필름','','','','',4,0,''),
(523,'003005005','003005','지문방지필름','','','','',5,0,''),
(524,'003005006','003005','카메라보호필름','','','','',6,0,''),
(525,'003005007','003005','하드코팅필름','','','','',7,0,''),
(526,'003005008','003005','태블릿보호필름','','','','',8,0,''),
(527,'003005009','003005','기타보호필름','','','','',9,0,''),
(528,'003006','003','충전기/보조배터리','','','','',6,0,''),
(529,'003006001','003006','가정용충전기','','','','',1,0,''),
(530,'003006002','003006','차랑용충전기','','','','',2,0,''),
(531,'003006003','003006','무선충전기','','','','',3,0,''),
(532,'003006004','003006','보조배터리','','','','',4,0,''),
(533,'003006001001','003006001','C타입','','','','',1,0,''),
(534,'003006001002','003006001','애플8핀/30핀','','','','',2,0,''),
(535,'003006001003','003006001','마이크로 5핀','','','','',3,0,''),
(536,'003006001004','003006001','PD충전기','','','','',4,0,''),
(537,'003006001005','003006001','표준형24핀','','','','',5,0,''),
(538,'003006001006','003006001','통합20핀','','','','',6,0,''),
(539,'003006001007','003006001','삼성30핀','','','','',7,0,''),
(540,'003006002001','003006002','C타입','','','','',1,0,''),
(541,'003006002002','003006002','애플8핀/30핀','','','','',2,0,''),
(542,'003006002003','003006002','마이크로 5핀','','','','',3,0,''),
(543,'003006002004','003006002','PD충전기','','','','',4,0,''),
(544,'003006002005','003006002','표준형24핀','','','','',5,0,''),
(545,'003006002006','003006002','삼성30핀','','','','',6,0,''),
(546,'003006003001','003006003','패드형','','','','',1,0,''),
(547,'003006003002','003006003','거치형','','','','',2,0,''),
(548,'003006004001','003006004','~5000mAh','','','','',1,0,''),
(549,'003006004002','003006004','~8000mAh','','','','',2,0,''),
(550,'003006004003','003006004','~10000mAh','','','','',3,0,''),
(551,'003006004004','003006004','~20000mAh','','','','',4,0,''),
(552,'003006004005','003006004','유무선 보조배터리','','','','',5,0,''),
(553,'003007','003','블루투스/이어폰','','','','',7,0,''),
(554,'003007001','003007','블루투스','','','','',1,0,''),
(555,'003007002','003007','이어폰','','','','',2,0,''),
(556,'003007003','003007','스피커','','','','',3,0,''),
(557,'003007001001','003007001','모노 블루투스','','','','',1,0,''),
(558,'003007001002','003007001','스테레오 블루투스','','','','',2,0,''),
(559,'003007001003','003007001','버즈/에어팟 스타일','','','','',3,0,''),
(560,'003007001004','003007001','넥밴드형','','','','',4,0,''),
(561,'003007002001','003007002','유선이어폰','','','','',1,0,''),
(562,'003007002002','003007002','무선이어폰','','','','',2,0,''),
(563,'003007003001','003007003','블루투스 스피커','','','','',1,0,''),
(564,'003007003002','003007003','일반 스피커','','','','',2,0,''),
(565,'003008','003','기타악세사리','','','','',8,0,''),
(566,'003008001','003008','케이블','','','','',1,0,''),
(567,'003008001001','003008001','C타입','','','','',1,0,''),
(568,'003008001002','003008001','애플8핀/30핀','','','','',2,0,''),
(569,'003008001003','003008001','마이크로 5핀','','','','',3,0,''),
(570,'003008001004','003008001','듀얼 케이블','','','','',4,0,''),
(571,'003008001005','003008001','C to C 케이블','','','','',5,0,''),
(572,'003008001006','003008001','C to 8 케이블','','','','',6,0,''),
(573,'003008001007','003008001','PD 케이블','','','','',7,0,''),
(574,'003008001008','003008001','AUX 케이블','','','','',8,0,''),
(575,'003008001009','003008001','HDMI 케이블','','','','',9,0,''),
(576,'003008002','003008','젠더','','','','',2,0,''),
(577,'003008003','003008','거치대','','','','',3,0,''),
(578,'003008004','003008','메모리카드','','','','',4,0,''),
(579,'003008005','003008','에어팟/버즈케이스','','','','',5,0,''),
(580,'003008006','003008','스마트톡/스마트링','','','','',6,0,''),
(581,'003008007','003008','셀카봉/렌즈','','','','',7,0,''),
(582,'003008008','003008','휴대폰줄/목줄','','','','',8,0,''),
(583,'003008009','003008','휴대폰스티커/홈버튼','','','','',9,0,''),
(584,'003008010','003008','터치펜','','','','',10,0,''),
(585,'003008011','003008','암밴드','','','','',11,0,''),
(586,'003008012','003008','방수팩','','','','',12,0,''),
(587,'003008013','003008','카드홀더','','','','',13,0,''),
(588,'003008014','003008','파우치','','','','',14,0,''),
(589,'003008015','003008','담배케이스','','','','',15,0,''),
(590,'003008016','003008','공유기','','','','',16,0,''),
(591,'003008017','003008','키보드/마우스','','','','',17,0,''),
(592,'003008018','003008','미니선풍기','','','','',18,0,''),
(593,'003008019','003008','가습기','','','','',19,0,''),
(594,'003008020','003008','공기청정기','','','','',20,0,''),
(595,'003008021','003008','기타','','','','',21,0,''),
(596,'003008002001','003008002','5핀→8핀','','','','',1,0,''),
(597,'003008002002','003008002','5핀→C타입','','','','',2,0,''),
(598,'003008002003','003008002','C타입→8핀','','','','',3,0,''),
(599,'003008002004','003008002','C타입→5핀','','','','',4,0,''),
(600,'003008002005','003008002','8핀→C타입','','','','',5,0,''),
(601,'003008002006','003008002','OTG 젠더','','','','',6,0,''),
(602,'003008002007','003008002','이어폰 변환젠더','','','','',7,0,''),
(603,'003008003001','003008003','차량용거치대','','','','',1,0,''),
(604,'003008003002','003008003','휴대용거치대','','','','',2,0,''),
(605,'003008003003','003008003','자전거거치대','','','','',3,0,''),
(606,'003008003004','003008003','태블릿거치대','','','','',4,0,''),
(607,'003008003005','003008003','일반거치대','','','','',5,0,''),
(608,'003008004001','003008004','8GB','','','','',1,0,''),
(609,'003008004002','003008004','16GB','','','','',2,0,''),
(610,'003008004003','003008004','32GB','','','','',3,0,''),
(611,'003008004004','003008004','64GB','','','','',4,0,''),
(612,'003008004005','003008004','128GB','','','','',5,0,''),
(613,'003008004006','003008004','256GB','','','','',6,0,''),
(615,'002008','002','갤럭시탭','','','','',6,0,'panda1'),
(616,'002009','002','기타 태블릿','','','','',7,0,'panda1');

/*Table structure for table `shop_cert_history` */

DROP TABLE IF EXISTS `shop_cert_history`;

CREATE TABLE `shop_cert_history` (
  `cr_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '인증내역번호',
  `mb_id` varchar(20) NOT NULL COMMENT '회원아이디',
  `cr_company` varchar(255) NOT NULL COMMENT '인증요청서비스',
  `cr_method` varchar(255) NOT NULL COMMENT '인증요청유형',
  `cr_ip` varchar(255) NOT NULL COMMENT '요청',
  `cr_date` date NOT NULL DEFAULT '0000-00-00' COMMENT '요청일',
  `cr_time` time NOT NULL DEFAULT '00:00:00' COMMENT '요청시간',
  PRIMARY KEY (`cr_id`),
  KEY `mb_id` (`mb_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='인증내역 테이블';

/*Data for the table `shop_cert_history` */

/*Table structure for table `shop_config` */

DROP TABLE IF EXISTS `shop_config`;

CREATE TABLE `shop_config` (
  `admin_shop_url` varchar(255) NOT NULL COMMENT '대표도메인',
  `admin_reg_yes` tinyint(4) NOT NULL DEFAULT '0' COMMENT '본사몰 회원가입 가능여부',
  `admin_reg_msg` text NOT NULL COMMENT '본사몰 회원가입 거부시 출력 할 경고메세지',
  `admin_seal` varchar(255) NOT NULL COMMENT '사업자인감',
  `shop_name` varchar(100) NOT NULL COMMENT '쇼핑몰명',
  `shop_name_us` varchar(100) NOT NULL COMMENT '쇼핑몰 영문명',
  `company_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '사업자유형',
  `company_name` varchar(50) NOT NULL COMMENT '회사명',
  `company_saupja_no` varchar(30) NOT NULL COMMENT '사업자등록번호',
  `tongsin_no` varchar(30) NOT NULL COMMENT '통신판매업신고번호',
  `company_tel` varchar(30) NOT NULL COMMENT '대표전화번호',
  `company_fax` varchar(30) NOT NULL COMMENT '팩스번호',
  `company_item` varchar(100) NOT NULL COMMENT '업태',
  `company_service` varchar(100) NOT NULL COMMENT '종목',
  `company_owner` varchar(50) NOT NULL COMMENT '대표자명',
  `company_zip` varchar(5) NOT NULL COMMENT '사업장우편번호',
  `company_addr` varchar(255) NOT NULL COMMENT '사업장주소',
  `company_hours` varchar(255) NOT NULL COMMENT '상담가능시간',
  `company_lunch` varchar(255) NOT NULL COMMENT '점심시간',
  `company_close` varchar(255) NOT NULL COMMENT '휴무일',
  `info_name` varchar(50) NOT NULL COMMENT '정보책임자 이름',
  `info_email` varchar(255) NOT NULL COMMENT '정보책임자 e-mail',
  `head_title` varchar(255) NOT NULL COMMENT '브라우저 타이틀',
  `meta_author` varchar(255) NOT NULL COMMENT 'Author : 메타태그',
  `meta_description` varchar(255) NOT NULL COMMENT 'description : 메타태그',
  `meta_keywords` text NOT NULL COMMENT 'keywords : 메타태그',
  `add_meta` text NOT NULL COMMENT '추가 메타태그',
  `head_script` text NOT NULL COMMENT 'HEAD 내부 스크립트',
  `tail_script` text NOT NULL COMMENT 'BODY 내부 스크립트',
  `write_pages` int(11) NOT NULL DEFAULT '0' COMMENT '페이지 표시 수',
  `mobile_pages` int(11) NOT NULL DEFAULT '0' COMMENT '모바일 페이지 표시 수',
  `seller_reg_yes` tinyint(4) NOT NULL DEFAULT '0' COMMENT '입점서비스 사용',
  `seller_reg_auto` tinyint(4) NOT NULL DEFAULT '0' COMMENT '공급사 상품등록 관리자승인여부',
  `seller_mod_auto` tinyint(4) NOT NULL DEFAULT '0' COMMENT '공급사 상품수정 관리자승인여부',
  `seller_reg_agree` longtext NOT NULL COMMENT '입점 가입약관',
  `seller_reg_guide` longtext NOT NULL COMMENT 'PC 입점 이용안내',
  `seller_reg_mobile_guide` longtext NOT NULL COMMENT '모바일 입점 이용안내',
  `delivery_method` tinyint(4) NOT NULL DEFAULT '1' COMMENT '배송비유형',
  `delivery_price` int(11) NOT NULL DEFAULT '0' COMMENT '기본배송비',
  `delivery_price2` int(11) NOT NULL DEFAULT '0' COMMENT '조건부기본배송비',
  `delivery_minimum` int(11) NOT NULL DEFAULT '0' COMMENT '조건부무료배송비',
  `delivery_company` text NOT NULL COMMENT '배송업체 기본정보',
  `register_point` int(11) NOT NULL DEFAULT '0' COMMENT '회원가입 포인트',
  `partner_point` int(11) NOT NULL DEFAULT '0' COMMENT '회원가입 추천인 포인트',
  `login_point` int(11) NOT NULL DEFAULT '0' COMMENT '로그인 포인트',
  `usepoint` int(11) NOT NULL DEFAULT '0' COMMENT '주문시 최소 결제포인트',
  `usepoint_yes` tinyint(4) NOT NULL DEFAULT '0' COMMENT '주문시 포인트결제 사용',
  `mouseblock_yes` tinyint(4) NOT NULL DEFAULT '0' COMMENT '드레그, 마우스 우클릭 차단',
  `shop_provision` longtext NOT NULL COMMENT '회원가입약관',
  `shop_private` longtext NOT NULL COMMENT '개인정보 수집 및 이용',
  `shop_policy` longtext NOT NULL COMMENT '개인정보처리방침',
  `shop_intro_yes` tinyint(4) NOT NULL DEFAULT '0' COMMENT '폐쇄몰 사용여부',
  `cert_admin_yes` tinyint(4) NOT NULL DEFAULT '0' COMMENT '폐쇄몰 회원인증',
  `coupon_yes` tinyint(4) NOT NULL DEFAULT '0' COMMENT '온라인쿠폰 사용',
  `gift_yes` tinyint(4) NOT NULL DEFAULT '0' COMMENT '인쇄용쿠폰 사용',
  `baesong_cont1` text NOT NULL COMMENT '쇼핑몰 배송/교환/반품안내',
  `baesong_cont2` text NOT NULL COMMENT '모바일 배송/교환/반품안내',
  `prohibit_id` text NOT NULL COMMENT '가입불가 ID',
  `prohibit_email` text NOT NULL COMMENT '가입불가 e-mail',
  `possible_ip` text NOT NULL COMMENT '접근 가능 IP',
  `intercept_ip` text NOT NULL COMMENT '접근 차단 IP',
  `cf_cert_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '본인인증사용여부',
  `cf_cert_ipin` varchar(255) NOT NULL DEFAULT '' COMMENT '아이핀 본인인증',
  `cf_cert_hp` varchar(255) NOT NULL DEFAULT '' COMMENT '휴대폰 본인인증',
  `cf_cert_kcb_cd` varchar(255) NOT NULL DEFAULT '' COMMENT '코리아크레딧뷰로 KCB 회원사ID',
  `cf_cert_kcp_cd` varchar(255) NOT NULL DEFAULT '' COMMENT 'NHN KCP 사이트코드',
  `cf_lg_mid` varchar(255) NOT NULL DEFAULT '' COMMENT 'LG유플러스 상점아이디',
  `cf_lg_mert_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'LG유플러스 MERT KEY',
  `cf_cert_limit` int(11) NOT NULL DEFAULT '0' COMMENT '본인인증 이용제한',
  `cf_cert_req` tinyint(4) NOT NULL DEFAULT '0' COMMENT '본인인증 필수',
  `cf_point_term` int(11) NOT NULL DEFAULT '0' COMMENT '표인트 유효기간',
  `register_use_hp` tinyint(4) NOT NULL DEFAULT '0' COMMENT '회원가입시 핸드폰 사용',
  `register_req_hp` tinyint(4) NOT NULL DEFAULT '0' COMMENT '회원가입시 핸드폰 필수입력',
  `register_use_tel` tinyint(4) NOT NULL DEFAULT '0' COMMENT '회원가입시 전화번호 사용',
  `register_req_tel` tinyint(4) NOT NULL DEFAULT '0' COMMENT ' 회원가입시 전화번호 필수입력',
  `register_use_addr` tinyint(4) NOT NULL DEFAULT '0' COMMENT '회원가입시 주소 사용',
  `register_req_addr` tinyint(4) NOT NULL DEFAULT '0' COMMENT '회원가입시 주소 필수입력',
  `partner_reg_yes` tinyint(4) NOT NULL DEFAULT '0' COMMENT '가맹점모집 사용',
  `pf_sale_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '상품 판매수수료 사용',
  `pf_sale_flag` tinyint(4) NOT NULL DEFAULT '0' COMMENT '상품 판매수수료 유형',
  `pf_anew_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '분양 추천수수료 사용',
  `pf_visit_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '상점 접속수수료 사용',
  `pf_payment_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '수수료 정산방법',
  `pf_payment` int(11) NOT NULL DEFAULT '0' COMMENT '수수료 출금조건',
  `pf_payment_unit` int(11) NOT NULL DEFAULT '0' COMMENT '수수료 출금단위',
  `pf_payment_tax` varchar(11) NOT NULL DEFAULT '0' COMMENT '수수료 세액공제',
  `pf_payment_yes` tinyint(4) NOT NULL DEFAULT '0' COMMENT '판매수수료 노출여부',
  `pf_stipulation_subj` varchar(255) NOT NULL COMMENT '가맹점 이용약관 제목',
  `pf_stipulation` text NOT NULL COMMENT '가맹점 이용약관',
  `pf_regulation_subj` varchar(255) NOT NULL COMMENT '가맹점 규정안내 제목',
  `pf_regulation` text NOT NULL COMMENT '가맹점 규정안내',
  `pf_basedomain` varchar(255) NOT NULL COMMENT '도메인 종류',
  `pf_auth_good` tinyint(4) NOT NULL DEFAULT '0' COMMENT '상품판매 권한',
  `pf_auth_pg` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'PG결제연동 권한',
  `pf_auth_sms` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'SMS 문자설정 권한',
  `pf_expire_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '관리비 사용',
  `pf_expire_term` int(11) NOT NULL DEFAULT '0' COMMENT '관리비 연장기간 단위',
  `pf_login_no` tinyint(4) NOT NULL DEFAULT '0' COMMENT '관리비 미납시 로그인차단',
  `pf_account_no` tinyint(4) NOT NULL DEFAULT '0' COMMENT '관리비 미납시 수수료 출금신청 차단',
  `pf_session_no` tinyint(4) NOT NULL DEFAULT '0' COMMENT '관리비 미납시 운영권한을 본사로 귀속',
  `pf_sale_benefit_dan` int(11) NOT NULL DEFAULT '0' COMMENT '판매수수료 적립단계',
  `pf_sale_benefit_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '판매수수료 적립유형',
  `pf_sale_benefit_2` varchar(255) NOT NULL COMMENT '2레벨 판매수수료',
  `pf_sale_benefit_3` varchar(255) NOT NULL COMMENT '3레벨 판매수수료',
  `pf_sale_benefit_4` varchar(255) NOT NULL COMMENT '4레벨 판매수수료',
  `pf_sale_benefit_5` varchar(255) NOT NULL COMMENT '5레벨 판매수수료',
  `pf_sale_benefit_6` varchar(255) NOT NULL COMMENT '6레벨 판매수수료',
  `pf_anew_benefit_dan` int(11) NOT NULL DEFAULT '0' COMMENT '추천수수료 적립단계',
  `pf_anew_benefit_type` tinyint(4) DEFAULT '0' COMMENT '추천수수료 적립유형',
  `pf_anew_benefit_2` varchar(255) NOT NULL COMMENT '2레벨 추천수수료',
  `pf_anew_benefit_3` varchar(255) NOT NULL COMMENT '3레벨 추천수수료',
  `pf_anew_benefit_4` varchar(255) NOT NULL COMMENT '4레벨 추천수수료',
  `pf_anew_benefit_5` varchar(255) NOT NULL COMMENT '5레벨 추천수수료',
  `pf_anew_benefit_6` varchar(255) NOT NULL COMMENT '6레벨 추천수수료'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='쇼핑몰 환경설정1 테이블';

/*Data for the table `shop_config` */

insert  into `shop_config`(`admin_shop_url`,`admin_reg_yes`,`admin_reg_msg`,`admin_seal`,`shop_name`,`shop_name_us`,`company_type`,`company_name`,`company_saupja_no`,`tongsin_no`,`company_tel`,`company_fax`,`company_item`,`company_service`,`company_owner`,`company_zip`,`company_addr`,`company_hours`,`company_lunch`,`company_close`,`info_name`,`info_email`,`head_title`,`meta_author`,`meta_description`,`meta_keywords`,`add_meta`,`head_script`,`tail_script`,`write_pages`,`mobile_pages`,`seller_reg_yes`,`seller_reg_auto`,`seller_mod_auto`,`seller_reg_agree`,`seller_reg_guide`,`seller_reg_mobile_guide`,`delivery_method`,`delivery_price`,`delivery_price2`,`delivery_minimum`,`delivery_company`,`register_point`,`partner_point`,`login_point`,`usepoint`,`usepoint_yes`,`mouseblock_yes`,`shop_provision`,`shop_private`,`shop_policy`,`shop_intro_yes`,`cert_admin_yes`,`coupon_yes`,`gift_yes`,`baesong_cont1`,`baesong_cont2`,`prohibit_id`,`prohibit_email`,`possible_ip`,`intercept_ip`,`cf_cert_use`,`cf_cert_ipin`,`cf_cert_hp`,`cf_cert_kcb_cd`,`cf_cert_kcp_cd`,`cf_lg_mid`,`cf_lg_mert_key`,`cf_cert_limit`,`cf_cert_req`,`cf_point_term`,`register_use_hp`,`register_req_hp`,`register_use_tel`,`register_req_tel`,`register_use_addr`,`register_req_addr`,`partner_reg_yes`,`pf_sale_use`,`pf_sale_flag`,`pf_anew_use`,`pf_visit_use`,`pf_payment_type`,`pf_payment`,`pf_payment_unit`,`pf_payment_tax`,`pf_payment_yes`,`pf_stipulation_subj`,`pf_stipulation`,`pf_regulation_subj`,`pf_regulation`,`pf_basedomain`,`pf_auth_good`,`pf_auth_pg`,`pf_auth_sms`,`pf_expire_use`,`pf_expire_term`,`pf_login_no`,`pf_account_no`,`pf_session_no`,`pf_sale_benefit_dan`,`pf_sale_benefit_type`,`pf_sale_benefit_2`,`pf_sale_benefit_3`,`pf_sale_benefit_4`,`pf_sale_benefit_5`,`pf_sale_benefit_6`,`pf_anew_benefit_dan`,`pf_anew_benefit_type`,`pf_anew_benefit_2`,`pf_anew_benefit_3`,`pf_anew_benefit_4`,`pf_anew_benefit_5`,`pf_anew_benefit_6`) values 
('casefarm.kr/',0,'','CxmnP4zmaa3VsY1xmULZxhBTPUgE69.png','케이스팜','CaseFarm',0,'(주)삼오','427-81-02065','2017-서울강남-0000호','02-0000-0000','02-0000-0000','서비스업,도소매','전자상거래업','김민흠','50653','경상남도 양산시 물금읍 증산역로 153,403호 (정우프라자)','오전10시~오후06시','오후12시~오후1시','토요일/공휴일 휴무','임꺽정','help@domain.com','케이스팜 - 국내 휴대폰케이스 다량 보유','케이스팜, CaseFarm','케이스팜 - 국내 휴대폰케이스 다량 보유','케이스팜, 휴대폰케이스, 아이폰케이스, 젤리케이스, 갤럭시케이스, 휴대폰악세사리, 하드케이스','','','',10,5,1,1,1,'제 1 장 총칙\r\n\r\n제 1 조 (목적)\r\n\r\n본 약관은 케이스팜몰(www.casefarm.kr)의 인터넷 관련 서비스(이하 \'서비스\'라 한다.)를 이용함에 있어 사이버몰과 이용자의 권리, 의무 및 책임사항을 규정함을 목적으로 합니다.\r\n\r\n\r\n제 2 조 (정의)\r\n\r\n\"몰\" 이란 회사가 재화 또는 용역을 이용자에게 제공하기 위하여 컴퓨터등 정보통신 설비를 이용하여 재화 또는 용역을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이버몰을 운영하는 사업자의 의미로도 사용합니다.\r\n\r\n\"이용자\"란 \"몰\"에 접속하여 이 약관에 따라 \"몰\"이 제공하는 서비스를 받는 회원 및 비회원을 말합니다. \"회원\"이라 함은 \"몰\"에 개인정보를 제공하여 회원등록을 한 자로서, \"몰\"의 정보를 지속적으로\r\n\r\n\r\n\r\n제공받으며, \"몰\"이 제공하는 서비스를 계속적으로 이용할 수 있는 자를 말합니다.\r\n\r\n\"비회원\"이라 함은 회원에 가입하지 않고 \"몰\"이 제공하는 서비스를 이용하는 자를 말합니다.\r\n\r\n\r\n\r\n제 3 조 (약관의 명시와 개정)\r\n\r\n\"몰\"은 이 약관의 내용과 상호, 연락처(전화, 팩스, 전자우편 주소 등) 등을 이용자가 알 수 있도록 사이버몰의 초기 서비스화면에 게시합니다.\r\n\r\n\"몰\"은 약관의규제등에관한법률, 전자거래기본법, 전자서명법, 정보통신망이용촉진등에 관한 법률, 방문판매등에 관한 법률, 소비자보호법 등 관련 법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.\r\n\r\n\"몰\"이 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 몰의 초기화 면에 그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다.\r\n\r\n\"몰\"이 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제3항에 의한 개정약관의 공지기간내에 \"몰\"에 송신하여 \"몰\"의 동의를 받은 경우에는 개정약관조항이 적용됩니다.\r\n\r\n이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 정부가 제정한 전자거래소비자 보호지침 및 관계 법령 또는 상관례에 따릅니다.\r\n\r\n\r\n\r\n제 2 장 회원 가입 및 탈퇴\r\n\r\n제 4 조 (회원 가입 및 이용 계약의 성립)\r\n\r\n이용자는 \"몰\"이 정한 가입 양식에 따라 회원정보를 기입한 후 이 약관에 동의한다는 의사표시를 함으로서 회원가입을 신청합니다.\r\n\r\n회사는 제2항과 같이 회원으로 가입할 것을 신청한 이용자 중 다음 각호에 해당하지 않는 한 회원으로 등록합니다.\r\n\r\n\r\n\r\n①가입신청자가 본 약관 제5조제3항에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 다만 제5조제3항에 의한 회원자격 상실 후 3년이 경과한 자로서 \"몰\"의 회원재가입 승낙을 얻은 경우는 예외로 한다.\r\n\r\n②등록 내용이 허위, 기재누락, 오기가 있는 경우\r\n\r\n③기타 회원으로 등록하는 것이 \"몰\"의 기술상 현저히 지장이 있다고 판단되는 경우\r\n\r\n④법정대리인의 동의가 없는 만14세미만 아동인 경우\r\n\r\n회원가입계약의 성립시기는 \"몰\"의 승낙이 회원에게 도달한 시점으로 합니다.\r\n\r\n회원은 제7조제1항에 의한 등록사항에 변경이 있는 경우, 즉시 전자 우편 기타 방법으로 \"몰\"에 대하여 그 변경사항을 알려야 합니다.\r\n\r\n\r\n\r\n제 5 조 (회원 탈퇴 및 자격 상실 등)\r\n\r\n회원은 \"몰\"에 언제든지 탈퇴를 요청할 수 있으며 이 요청과 함께 \"몰\"의 개인정보 보유기간도 종료 됩니다. 이에 \"몰\"은 입력된 개인의 모든 정보를 삭제함으로서 회원탈퇴 처리합니다.\r\n\r\n회원이 다음 각호의 사유에 해당하는 경우, \"몰\"은 회원자격을 제한 및 정지시킬 수 있습니다.\r\n\r\n\r\n\r\n①가입 신청시에 허위 내용을 등록한 경우\r\n\r\n②\"몰\"을 이용하여 구입한 재화,용역 등의 대금, 기타 \"몰\"이용에 관련하여 회원이 부담하는 채무를 기일에 지급하지 않는 경우\r\n\r\n③다른 사람의 \"몰\" 이용을 방해하거나 그 정보를 도용하는 등 전자거래질서를 위협하는 경 우\r\n\r\n④\"몰\"을 이용하여 법령과 본 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우\r\n\r\n\"몰\"이 회원 자격을 제한,정지 시킨 후, 동일한 행위가 2회이상 반복되거나 30일이내에 그 사유가 시정되지 아니하는 경우 \"몰\"은 회원자격을 상실시킬 수 있습니다.\r\n\r\n\"몰\"이 회원자격을 상실시키는 경우에는 회원등록을 말소합니다. 이 경우 회원에게 이를 통지하고, 회원등록 말소전에 소명할 기회를 부여합니다.\r\n\r\n\r\n\r\n제 6 조 (회원에 대한 통지)\r\n\r\n\"몰\"이 회원에 대한 통지를 하는 경우, 회원이 \"몰\"에 제출한 전자우편 주소로 할 수 있습니다.\r\n\r\n\"몰\"은 불특정다수 회원에 대한 통지의 경우 1주일 이상 \"몰\" 게시판에 게시함으로서 개별 통지에 갈음할 수 있습니다.\r\n\r\n\r\n\r\n제 7 조 (개인 정보 보호)\r\n\r\n\"몰\"은 이 약관 제8조 1항 \"몰\"의 업무와 관련하여 개인의 정보를 수집,이용하며, 이에 필요한 최소한의 정보를 수집합니다.\r\n\r\n다음 사항을 필수사항으로 하며 그 외 사항은 선택사항으로 합니다.\r\n\r\n\r\n\r\n①성명\r\n\r\n②주소\r\n\r\n③전화번호\r\n\r\n④희망ID(회원의 경우)\r\n\r\n⑤비밀번호(회원의 경우)\r\n\r\n\r\n\"몰\"이 이용자의 개인식별이 가능한 개인정보를 수집하는 때에는 반드시 당해 이용자의 동의를 받습니다.\r\n\r\n제공된 개인정보는 당해 이용자의 동의없이 목적외의 이용이나 제3자에게 제공할 수 없으며, 이에 대한 모든 책임은 \"몰\"이 집니다. 다만, 다음의 경우에는 예외로 합니다.\r\n\r\n\r\n\r\n①배송업무상 배송업체에게 배송이 필요한 최소한의 이용자의 정보(성명, 주소, 전화번호)를 알려주는 경우\r\n\r\n②통계작성, 학술연구 또는 시장조사를 위하여 필요한 경우로서 특정개인을 식별할 수 없는 형태로 제공하는 경우\r\n\r\n\"몰\"이 제2항과 제3항에 의해 이용자의 동의를 받아야 하는 경우에는 개인정보관리 책임자의 시원(소속, 성명 및 전화번호 기타 연락처), 정보의 수집목적, 및 이용목적, 제3자에 대한 정보제공 관련사항(제공받는자, 제공목적 및 제공할 정보의 내용)등 정보통신망이용촉진등에관한법률 제16조제3항이 규정한 사항을 미리 명시하거나 고지해야 하며 이용자는 언제든지 이 동의를 철회할 수 있습니다.\r\n\r\n이용자는 언제든지 \"몰\"이 가지고 있는 자신의 개인정보에 대해 열람 및 오류정정을 요구할 수 있으며 \"몰\"은 이에 대해 지체없이 필요한 조치를 취할 의무를 집니다. 이용자가 오류의 정정을 요구한 경우에는 \"몰\"은 그 오류를 정정할 때까지 당해 개인정보를 이용하지 않습니다.\r\n\r\n\"몰\"은 개인정보 보호를 위하여 관리자를 한정하여 그 수를 최소화하며 신용카드, 은행계좌 등을 포함한 이용자의 개인정보의 분실, 도난, 유출, 변조 등으로 인한 이용자의 손해에 대하여 모든 책임을 집니다.\r\n\r\n\"몰\" 또는 그로부터 개인정보를 제공받은 제3자는 개인정보의 수집목적 또는 제공받은 목적을 달성한 때에는 당해 개인정보를 지체없이 파기합니다. (개인정보관리 책임자 : 김주혁, abnormalityc@hanmail.net)\r\n\r\n\r\n\r\n제 3 장 서비스 이용, 변경 및 중단\r\n\r\n제 8 조 (서비스 이용)\r\n\r\n\"몰\"은 다음과 같은 업무를 수행합니다.\r\n\r\n①재화 또는 용역에 대한 정보 제공 및 구매계약의 체결\r\n\r\n②구매계약이 체결된 재화 또는 용역의 배송\r\n\r\n③기타 \"몰\"이 정하는 업무\r\n\r\n\"몰\"은 재화의 품절 또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 의해 제공 할 재화,용역의 내용을 변경할 수 있습니다. 이 경우에는 변경된 재화,용역의 내용 및 제공일자를 명시하여 현재의 재화,용역의 내용을 게시한 곳에 그 제공일자 이전 7일부터 공지합니다.\r\n\r\n\"몰\"이 제공하기로 이용자와 계약을 체결한 서비스의 내용을 재화의 품절 또는 기술적 사양의 변경등의 사유로 변경할 경우에는 \"몰\"은 이로 인하여 이용자가 입은 손해를 배상합니다. 단, \"몰\"에 고의 또는 과실이 없는 경우에는 그러하지 아니합니다.\r\n\r\n\r\n\r\n제 9 조 (서비스 중단)\r\n\r\n\"몰\"은 컴퓨터 등 정보통신설비의 보수점검.교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다.\r\n\r\n제1항에 의한 서비스 중단의 경우에는 \"몰\"은 제11조에 정한 방법으로 이용자에게 통지합니다.\r\n\r\n\"몰\"은 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가 입은 손해에 대하여 배상합니다. 단 \"몰\"에 고의 또는 과실이 없는 경우에는 그러하지 아니합니다.\r\n\r\n\r\n\r\n제 4 장 구매 / 대금 결제 / 배송 / 취소 / 환불\r\n\r\n제 10 조 (구매 신청)\r\n\r\n\"몰\" 이용자는 \"몰\"상에서 이하의 방법에 의하여 구매를 신청합니다.\r\n\r\n①성명, 주소, 전화번호 입력\r\n\r\n②재화 또는 용역의 선택\r\n\r\n③결제방법의 선택\r\n\r\n④이 약관에 동의한다는 표시 (예: 마우스 클릭)\r\n\r\n\r\n\r\n제 11 조 (계약의 성립)\r\n\r\n\"몰\"은 제11조와 같은 구매신청에 대하여 다음 각호에 해당하지 않는 한 승낙합니다.\r\n\r\n⑤신청 내용에 허위, 기재누락, 오기가 있는 경우\r\n\r\n⑥미성년자가 담배, 주류등 청소년보호법에서 금지하는 재화 및 용역을 구매하는 경우\r\n\r\n⑦기타 구매신청에 승낙하는 것이 \"몰\" 기술상 현저히 지장이 있다고 판단하는 경우\r\n\r\n\"몰\"의 승낙이 제14조제1항의 수신확인 통지형태로 이용자에게 도달한 시점에 계약이 성립한 것으로 봅니다.\r\n\r\n\r\n\r\n제 12 조 (대금의 결제방법)\r\n\r\n회사에서 구매한 재화 또는 용역에 대한 대금지금방법은 다음 각호의 하나와 회사가 승인하는 대금결제수단을 이용합니다.\r\n\r\n①신용카드결제(신용카드 결제시 회원 본인 카드에 한함)\r\n\r\n\r\n\r\n제 13 조 (수신확인통지,구매신청 변경)\r\n\r\n\"몰\"은 이용자의 구매신청이 있는 경우 이용자에게 수신확인통지를 합니다.\r\n\r\n수신확인통지를 받은 이용자는 의사표시의 불일치등이 있는 경우에는 수신확인통지를 받은 후 즉시 구매신청 변경 및 취소를 요청할 수 있습니다.\r\n\r\n\"몰\"은 배송전 이용자의 구매신청 변경 및 취소 요청이 있는 때에는 지체없이 그 요청에 따라 처리합니다.\r\n\r\n\r\n\r\n제 14 조 (배송)\r\n\r\n\"몰\"은 이용자가 구매한 재화에 대해 배송수단, 수단별 배송비용 부담자, 수단별 배송기간 등을 명시합니다. 만약 \"몰\"의 고의·과실로 약정 배송기간을 초과한 경우에는 그로 인한 이용자의 손해를 배상합니다.\r\n\r\n\r\n\r\n제 15 조 (환급, 반품 및 교환)\r\n\r\n\"몰\"은 이용자가 구매신청한 재화 또는 용역이 품절등의 사유로 재화의 인도 또는 용역의 제공을 할 수 없을 때에는 지체없이 그 사유를 이용자에게 통지하고, 사전에 재화 또는 용역의 대금을 받은 경우에는 대금을 받은 날부터 3일이내에, 그렇지 않은 경우에는 그 사유발생일로부터 3일이내에 계약해제 및 환급절차를 취합니다.\r\n\r\n다음 각호의 경우에는 \"몰\"은 배송된 재화일지라도 재화를 반품받은 다음 영업일 이내에 이용자의 요구에 따라 즉시 환급, 반품 및 교환 조치를 합니다. 다만 수령하신 날로부터 7일이내 교환,반품 및 환급 의사를 통보해주셔야 합니다.\r\n\r\n\r\n\r\n①배송된 재화가 주문내용과 상이하거나 \"몰\"이 제공한 정보와 상이할 경우\r\n\r\n②배송된 재화가 파손, 손상되었거나 오염되었을 경우\r\n\r\n③재화가 광고에 표시된 배송기간보다 늦게 배송된 경우\r\n\r\n④방문판매등에관한법률 제18조에 의하여 광고에 표시하여야 할 사항을 표시하지 아니한 상 태에서 이용자의 청약이 이루어진 경우\r\n\r\n\r\n\r\n제 5 장 의무\r\n\r\n제 16 조 (회사의 의무)\r\n\r\n\"몰\"은 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며 이 약관이 정하는 바에 따라 지속적이고, 안정적으로 재화,용역을 제공하는 데 최선을 다하여야 합니다.\r\n\r\n\"몰\"은 이용자가 안전하게 인터넷 서비스를 이용할 수 있도록 이용자의 개인정보(신용정보 포함)보호를 위한 보안 시스템을 갖추어야 합니다.\r\n\r\n\"몰\"이 상품이나 용역에 대하여 [표시,광고의공정화에관한법률]제3조 소정의 부당한 표시,광고행위를 함으로써 이용자가 손해를 입은 때에는 이를 배상할 책임을 집니다.\r\n\r\n\"몰\"은 이용자가 원하지 않는 영리목적의 광고성 전자우편을 발송하지 않습니다.\r\n\r\n\r\n\r\n제17조( 회원의 ID 및 비밀번호에 대한 의무)\r\n\r\n제7조의 경우를 제외한 ID와 비밀번호에 관한 관리책임은 회원에게 있습니다.\r\n\r\n회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다.\r\n\r\n회원이 자신의 ID 및 비밀번호를 도난당하거나 제3자가 사용하고 있음을 인지한 경우에는 바로 \"몰\"에 통보하고 \"몰\"의 안내가 있는 경우에는 그에 따라야 합니다.\r\n\r\n\r\n\r\n제 18 조 (이용자 및 회원의 의무)\r\n\r\n이용자 및 회원은 아래 각 호의 행위를 하지 않아야 합니다.\r\n\r\n①회원 가입 및 개인 신상 정보의 변경시 허위 내용의 등록\r\n\r\n②\"몰\"에 게시된 정보의 변경\r\n\r\n③\"몰\"이 정한 정보 이외의 정보(컴퓨터 프로그램 등)의 송신 또는 게시\r\n\r\n④회사 혹은 제3자의 저작권 등 기타 지적재산권에 대한 침해\r\n\r\n⑤\"몰\" 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위\r\n\r\n⑥외설 또는 폭력적인 메시지,화상,음성 기타 공서양속에 반하는 정보를 몰에 공개 또는 게시 하는 행위\r\n\r\n\r\n\r\n제 6 장 기타\r\n\r\n제 19 조 (연결 \"몰\"과 피연결 \"몰\"간의 관계)\r\n\r\n상위 \"몰\"과 하위 \"몰\"이 하이퍼 링크 (예: 하이퍼 링크의 대상에는 무자, 그림 및 동화상 등이 포함됨)방식 등으로 연결된 경우, 전자를 연결 \"몰\"(웹 사이트)이라고 하고 후자를 피연결 \"몰\"(웹사이트)이라고 합니다.\r\n\r\n연결 \"몰\"은 피연결 \"몰\"이 독자적으로 제공하는 재화,용역에 의하여 이용자와 행하는 거래에 대해서 보증책임을 지지 않는다는 뜻을 연결 \"몰\"의 사이트에서 명시한 경우에는 그 거래에 대한 보증책임을 지지 않습니다.\r\n\r\n\r\n\r\n제 20 조 (저작권의 귀속 및 이용제한)\r\n\r\n\"몰\"이 작성한 저작물에 대한 저작권 기타 지적재산권은 \"몰\"에 귀속합니다.\r\n\r\n이용자는 \"몰\"을 이용함으로써 얻은 정보를 \"몰\"의 사전 승낙없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는 안됩니다.\r\n\r\n\r\n\r\n제 21 조 (분쟁해결)\r\n\r\n\"몰\"은 이용자가 제기하는 정당한 의견이나 불만을 반영하고 그 피해를 보상처리하기 위하여 피해보상처리기구를 설치,운영합니다.\r\n\r\n\"몰\"은 이용자로부터 제출되는 불만사항 및 의견은 우선적으로 그 사항을 처리합니다. 다만, 신속한 처리가 곤란한 경우에는 이용자에게 그 사유와 처리 일정을 즉시 통보해 드립니다.\r\n\r\n\"몰\"과 이용자간에 발생한 분쟁은 전자거래기본법 제28조 및 동 시행령 제15조에 의하여 설치 된 전자거래분쟁조정위원회의 조정에 따를 수 있습니다.\r\n\r\n\r\n\r\n제 22 조 (재판권 및 준거법)\r\n\r\n\"몰\"과 이용자간에 발생한 전자거래 분쟁에 관한 소송은 민사소송법상의 관할법원에 제기합니 다.\r\n\r\n\"몰\"과 이용자간에 제기된 전자거래 소송에는 한국법을 적용합니다.','입점 이용안내 내용 또는 이미지를 입력해주세요.','입점 이용안내 내용 또는 이미지를 입력해주세요.',1,1800,1800,80000,'KG로지스|http://www.kglogis.co.kr/contents/waybill.jsp?item_no=,KGB택배|http://www.kgbls.co.kr/sub5/trace.asp?f_slipno=,KG옐로우캡택배|http://www.yellowcap.co.kr/custom/inquiry_result.asp?invoice_no=,CVSnet편의점택배|http://was.cvsnet.co.kr/_ver2/board/ctod_status.jsp?invoice_no=,CJ대한통운|https://www.doortodoor.co.kr/parcel/doortodoor.do?fsp_action=PARC_ACT_002&fsp_cmd=retrieveInvNoACT&invc_no=,롯데택배(구현대택배)|https://www.lotteglogis.com/open/tracking?InvNo=,한진택배|http://www.hanjin.co.kr/Delivery_html/inquiry/result_waybill.jsp?wbl_num=,이노지스택배|http://www.innogis.co.kr/tracking_view.asp?invoice=,우체국|http://service.epost.go.kr/trace.RetrieveRegiPrclDeliv.postal?sid1=,로젠택배|https://www.ilogen.com/web/personal/trace/,동부택배|http://www.dongbups.com/delivery/delivery_search_view.jsp?item_no=,대신택배|http://home.daesinlogistics.co.kr/daesin/jsp/d_freight_chase/d_general_process2.jsp?billno1=,경동택배|http://www.kdexp.com/sub3_shipping.asp?stype=1&p_item=',3000,0,0,1000,1,1,'제1장 총 칙\r\n\r\n제1조(목적)\r\n이 약관은 \"케이스팜\"(이하 \"회사\"라 한다)가 홈페이지에서 제공하는 모든 서비스(이하 \"서비스\"라 한다)의 이용조건 및 절차에 관한 사항을 규정함을 목적으로 합니다. \r\n\r\n제2조(정의)\r\n이 약관에서 사용하는 용어의 정의는 다음 각 호와 같습니다.\r\n이용자 : 본 약관에 따라 회사가 제공하는 서비스를 받는 자\r\n이용계약 : 서비스 이용과 관련하여 회사와 이용자간에 체결하는 계약\r\n가입 : 회사가 제공하는 신청서 양식에 해당 정보를 기입하고, 본 약관에 동의하여 서비스 이용계약을 완료시키는 행위\r\n회원 : 당 사이트에 회원가입에 필요한 개인정보를 제공하여 회원 등록을 한 자\r\n이용자번호(ID) : 회원 식별과 회원의 서비스 이용을 위하여 이용자가 선정하고 회사가 승인하는 영문자와 숫자의 조합\r\n패스워드(PASSWORD) : 회원의 정보 보호를 위해 이용자 자신이 설정한 영문자와 숫자, 특수문자의 조합\r\n이용해지 : 회사 또는 회원이 서비스 이용이후 그 이용계약을 종료시키는 의사표시 \r\n\r\n제3조(약관의 효력과 변경)\r\n회원은 변경된 약관에 동의하지 않을 경우 회원 탈퇴(해지)를 요청할 수 있으며, 변경된 약관의 효력 발생일로부터 7일 이후에도 거부의사를 표시하지 아니하고 서비스를 계속 사용할 경우 약관의 변경 사항에 동의한 것으로 간주됩니다.\r\n이 약관의 서비스 화면에 게시하거나 공지사항 게시판 또는 기타의 방법으로 공지함으로써 효력이 발생됩니다.\r\n회사는 필요하다고 인정되는 경우 이 약관의 내용을 변경할 수 있으며, 변경된 약관은 서비스 화면에 공지하며, 공지후 7일 이후에도 거부의사를 표시하지 아니하고 서비스를 계속 사용할 경우 약관의 변경 사항에 동의한 것으로 간주됩니다.\r\n이용자가 변경된 약관에 동의하지 않는 경우 서비스 이용을 중단하고 본인의 회원등록을 취소할 수 있으며, 계속 사용하시는 경우에는 약관 변경에 동의한 것으로 간주되며 변경된 약관은 전항과 같은 방법으로 효력이 발생합니다. \r\n\r\n제4조(준용규정)\r\n이 약관에 명시되지 않은 사항은 전기통신기본법, 전기통신사업법 및 기타 관련법령의 규정에 따릅니다. \r\n\r\n\r\n\r\n제2장 서비스 이용계약\r\n\r\n제5조(이용계약의 성립)\r\n이용계약은 이용자의 이용신청에 대한 회사의 승낙과 이용자의 약관 내용에 대한 동의로 성립됩니다. \r\n\r\n제6조(이용신청)\r\n이용신청은 서비스의 회원정보 화면에서 이용자가 회사에서 요구하는 가입신청서 양식에 개인의 신상정보를 기록하여 신청할 수 있습니다. \r\n\r\n제7조(이용신청의 승낙)\r\n회원이 신청서의 모든 사항을 정확히 기재하여 이용신청을 하였을 경우에 특별한 사정이 없는 한 서비스 이용신청을 승낙합니다.\r\n다음 각 호에 해당하는 경우에는 이용 승낙을 하지 않을 수 있습니다.\r\n본인의 실명으로 신청하지 않았을 때\r\n타인의 명의를 사용하여 신청하였을 때\r\n이용신청의 내용을 허위로 기재한 경우\r\n사회의 안녕 질서 또는 미풍양속을 저해할 목적으로 신청하였을 때\r\n기타 회사가 정한 이용신청 요건에 미비 되었을 때 \r\n\r\n제8조(계약사항의 변경)\r\n회원은 이용신청시 기재한 사항이 변경되었을 경우에는 수정하여야 하며, 수정하지 아니하여 발생하는 문제의 책임은 회원에게 있습니다. \r\n\r\n\r\n\r\n제3장 계약당사자의 의무\r\n\r\n제9조(회사의 의무)\r\n회사는 서비스 제공과 관련해서 알고 있는 회원의 신상 정보를 본인의 승낙 없이 제3자에게 누설하거나 배포하지 않습니다. 단, 전기통신기본법 등 법률의 규정에 의해 국가기관의 요구가 있는 경우, 범죄에 대한 수사상의 목적이 있거나 또는 기타 관계법령에서 정한 절차에 의한 요청이 있을 경우에는 그러하지 아니합니다. \r\n\r\n제10조(회원의 의무)\r\n회원은 서비스를 이용할 때 다음 각 호의 행위를 하지 않아야 합니다.\r\n다른 회원의 ID를 부정하게 사용하는 행위\r\n서비스에서 얻은 정보를 복제, 출판 또는 제3자에게 제공하는 행위\r\n회사의 저작권, 제3자의 저작권 등 기타 권리를 침해하는 행위\r\n공공질서 및 미풍양속에 위반되는 내용을 유포하는 행위\r\n범죄와 결부된다고 객관적으로 판단되는 행위\r\n기타 관계법령에 위반되는 행위\r\n회원은 서비스를 이용하여 영업활동을 할 수 없으며, 영업활동에 이용하여 발생한 결과에 대하여 회사는 책임을 지지 않습니다.\r\n회원은 서비스의 이용권한, 기타 이용계약상 지위를 타인에게 양도하거나 증여할 수 없으며, 이를 담보로도 제공할 수 없습니다. \r\n\r\n\r\n\r\n제4장 서비스 이용\r\n\r\n제11조(회원의 의무)\r\n회원은 필요에 따라 자신의 메일, 게시판, 등록자료 등 유지보수에 대한 관리책임을 갖습니다.\r\n회원은 회사에서 제공하는 자료를 임의로 삭제, 변경할 수 없습니다.\r\n회원은 회사의 홈페이지에 공공질서 및 미풍양속에 위반되는 내용물이나 제3자의 저작권 등 기타권리를 침해하는 내용물을 등록하는 행위를 하지 않아야 합니다. 만약 이와 같은 내용물을 게재하였을 때 발생하는 결과에 대한 모든 책임은 회원에게 있습니다. \r\n\r\n제12조(게시물 관리 및 삭제)\r\n효율적인 서비스 운영을 위하여 회원의 메모리 공간, 메시지크기, 보관일수 등을 제한할 수 있으며 등록하는 내용이 다음 각 호에 해당하는 경우에는 사전 통지없이 삭제할 수 있습니다.\r\n다른 회원 또는 제3자를 비방하거나 중상모략으로 명예를 손상시키는 내용인 경우\r\n공공질서 및 미풍양속에 위반되는 내용인 경우\r\n범죄적 행위에 결부된다고 인정되는 내용인 경우\r\n회사의 저작권, 제3자의 저작권 등 기타 권리를 침해하는 내용인 경우\r\n회원이 회사의 홈페이지와 게시판에 음란물을 게재하거나 음란 사이트를 링크하는 경우\r\n기타 관계법령에 위반된다고 판단되는 경우 \r\n\r\n제13조(게시물의 저작권)\r\n게시물의 저작권은 게시자 본인에게 있으며 회원은 서비스를 이용하여 얻은 정보를 가공, 판매하는 행위 등 서비스에 게재된 자료를 상업적으로 사용할 수 없습니다. \r\n\r\n제14조(서비스 이용시간)\r\n서비스의 이용은 업무상 또는 기술상 특별한 지장이 없는 한 연중무휴 1일 24시간을 원칙으로 합니다. 다만 정기 점검 등의 사유 발생시는 그러하지 않습니다. \r\n\r\n제15조(서비스 이용 책임)\r\n서비스를 이용하여 해킹, 음란사이트 링크, 상용S/W 불법배포 등의 행위를 하여서는 아니되며, 이를 위반으로 인해 발생한 영업활동의 결과 및 손실, 관계기관에 의한 법적 조치 등에 관하여는 회사는 책임을 지지 않습니다. \r\n\r\n제16조(서비스 제공의 중지)\r\n다음 각 호에 해당하는 경우에는 서비스 제공을 중지할 수 있습니다.\r\n서비스용 설비의 보수 등 공사로 인한 부득이한 경우\r\n전기통신사업법에 규정된 기간통신사업자가 전기통신 서비스를 중지했을 경우\r\n시스템 점검이 필요한 경우 기타 불가항력적 사유가 있는 경우 \r\n\r\n\r\n\r\n제5장 계약해지 및 이용제한\r\n\r\n제17조(계약해지 및 이용제한)\r\n회원이 이용계약을 해지하고자 하는 때에는 회원 본인이 인터넷을 통하여 해지신청을 하여야 하며, 회사에서는 본인 여부를 확인 후 조치합니다.\r\n회사는 회원이 다음 각 호에 해당하는 행위를 하였을 경우 해지조치 30일전까지 그 뜻을 이용고객에게 통지하여 의견진술할 기회를 주어야 합니다.\r\n타인의 이용자ID 및 패스워드를 도용한 경우\r\n서비스 운영을 고의로 방해한 경우\r\n허위로 가입 신청을 한 경우\r\n같은 사용자가 다른 ID로 이중 등록을 한 경우\r\n공공질서 및 미풍양속에 저해되는 내용을 유포시킨 경우\r\n타인의 명예를 손상시키거나 불이익을 주는 행위를 한 경우\r\n서비스의 안정적 운영을 방해할 목적으로 다량의 정보를 전송하거나 광고성 정보를 전송하는 경우\r\n정보통신설비의 오작동이나 정보 등의 파괴를 유발시키는 컴퓨터바이러스 프로그램 등을 유포하는 경우\r\n회사 또는 다른 회원이나 제3자의 지적재산권을 침해하는 경우\r\n타인의 개인정보, 이용자ID 및 패스워드를 부정하게 사용하는 경우\r\n회원이 자신의 홈페이지나 게시판 등에 음란물을 게재하거나 음란 사이트를 링크하는 경우\r\n기타 관련법령에 위반된다고 판단되는 경우 \r\n\r\n\r\n\r\n제6장 기 타\r\n\r\n제18조(양도금지)\r\n회원은 서비스의 이용권한, 기타 이용계약상의 지위를 타인에게 양도, 증여할 수 없으며, 이를 담보로 제공할 수 없습니다. \r\n\r\n제19조(손해배상)\r\n회사는 무료로 제공되는 서비스와 관련하여 회원에게 어떠한 손해가 발생하더라도 동 손해가 회사의 고의 또는 중대한 과실로 인한 손해를 제외하고 이에 대하여 책임을 부담하지 아니합니다. \r\n\r\n제20조(면책 조항)\r\n회사는 천재지변, 전쟁 또는 기타 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 관한 책임이 면제됩니다.\r\n회사는 서비스용 설비의 보수, 교체, 정기점검, 공사 등 부득이한 사유로 발생한 손해에 대한 책임이 면제됩니다.\r\n회사는 회원의 귀책사유로 인한 서비스이용의 장애에 대하여 책임을 지지 않습니다.\r\n회사는 회원이 서비스를 이용하여 기대하는 이익이나 서비스를 통하여 얻는 자료로 인한 손해에 관하여 책임을 지지 않습니다.\r\n회사는 회원이 서비스에 게재한 정보, 자료, 사실의 신뢰도, 정확성 등의 내용에 관하여는 책임을 지지 않습니다. \r\n\r\n제21조(관할법원)\r\n서비스 이용으로 발생한 분쟁에 대해 소송이 제기 될 경우 회사의 소재지를 관할하는 법원을 전속 관할법원으로 합니다. \r\n\r\n\r\n부 칙\r\n\r\n(시행일) 이 약관은 2021년 2월 01일부터 시행합니다.','1. 개인정보 수집목적 및 이용목적\r\n\r\n(1) 홈페이지 회원 가입 및 관리\r\n회원 가입 의사 확인, 회원제 서비스 제공에 따른 본인 식별․인증, 회원자격 유지․관리, 제한적 본인확인제 시행에 따른 본인확인, 서비스 부정 이용 방지, 만 14세 미만 아동의 개인정보 처리시 법정대리인의 동의 여부 확인, 각종 고지․통지, 고충 처리 등의 목적\r\n\r\n(2) 재화 또는 서비스 제공\r\n물품 배송, 서비스 제공, 계약서․청구서 발송, 콘텐츠 제공, 맞춤 서비스 제공, 본인인증, 연령인증, 요금 결제 및 정산, 채권추심 등의 목적\r\n\r\n(3) 고충 처리\r\n민원인의 신원 확인, 민원사항 확인, 사실조사를 위한 연락․통지, 처리 결과 통보 등\r\n\r\n2. 수집하는 개인정보 항목\r\nID, 성명, 비밀번호, 주소, 휴대폰 번호, 이메일, 14세 미만 가입자의 경우 법정대리인 정보\r\n\r\n3. 개인정보 보유 및 이용기간\r\n회원탈퇴 시까지 (단, 관계 법령에 보존 근거가 있는 경우 해당 기간 시까지 보유, 개인정보처리방침에서 확인 가능)','개요 및 목록\r\n\r\n\'케이스팜\'는 (이하 \'회사\'는) 이용자님의 개인정보를 중요시하며,\r\n\"정보통신망 이용촉진 및 정보보호\"에 관한 법률을 준수하고 있습니다.\r\n\r\n회사는 개인정보취급방침을 통하여 이용자님께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며,\r\n개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다.\r\n\r\n\r\n수집하는 개인정보 항목\r\n회사는 회원가입, 상담, 서비스 신청 등을 위해 아래와 같은 개인정보를 수집하고 있습니다.\r\n개인정보 수집방법 : 홈페이지(회원가입, 게시판, 신청서)\r\n로그인ID, 패스워드, 별명, 이메일, 서비스 이용기록, 접속 로그, 쿠키, 접속 IP 정보, 결제기록 \r\n\r\n개인정보의 수집 및 이용목적\r\n회사는 수집한 개인정보를 다음의 목적을 위해 활용합니다.\r\n1. 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산\r\n컨텐츠 제공, 물품배송 또는 청구서 등 발송, 본인인증, 구매 및 요금 결제, 요금추심\r\n2. 회원 관리\r\n회원제 서비스 이용에 따른 본인확인 , 개인 식별 , 불량회원의 부정 이용 방지와 비인가 사용 방지 , 가입 의사 확인\r\n3. 마케팅 및 광고에 활용\r\n접속 빈도 파악 또는 회원의 서비스 이용에 대한 통계\r\n\r\n\r\n개인정보의 보유 및 이용기간\r\n원칙적으로, 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다.\r\n단, 관계법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 아래와 같이 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다.\r\n보존 항목 : 로그인ID , 결제기록\r\n보존 근거 : 신용정보의 이용 및 보호에 관한 법률\r\n보존 기간 : 3년\r\n표시/광고에 관한 기록 : 6개월 (전자상거래등에서의 소비자보호에 관한 법률)\r\n계약 또는 청약철회 등에 관한 기록 : 5년 (전자상거래등에서의 소비자보호에 관한 법률)\r\n대금결제 및 재화 등의 공급에 관한 기록 : 5년 (전자상거래등에서의 소비자보호에 관한 법률)\r\n소비자의 불만 또는 분쟁처리에 관한 기록 : 3년 (전자상거래등에서의 소비자보호에 관한 법률)\r\n신용정보의 수집/처리 및 이용 등에 관한 기록 : 3년 (신용정보의 이용 및 보호에 관한 법률) \r\n\r\n개인정보의 파기절차 및 방법\r\n회사는 원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체없이 파기합니다. 파기절차 및 방법은 다음과 같습니다.\r\n1. 파기절차\r\n회원님이 회원가입 등을 위해 입력하신 정보는 목적이 달성된 후 별도의 DB로 옮겨져(종이의 경우 별도의 서류함) 내부 방침 및 기타 관련 법령에 의한 정보보호 사유에 따라(보유 및 이용기간 참조) 일정 기간 저장된 후 파기되어집니다.\r\n별도 DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 보유되어지는 이외의 다른 목적으로 이용되지 않습니다.\r\n2. 파기방법\r\n전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다. \r\n\r\n개인정보 제공\r\n회사는 이용자님의 개인정보를 원칙적으로 외부에 제공하지 않습니다. 다만, 아래의 경우에는 예외로 합니다.\r\n이용자님이 사전에 동의한 경우\r\n법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우\r\n\r\n\r\n수집한 개인정보의 위탁\r\n회사는 이용자님의 동의없이 이용자님의 정보를 외부 업체에 위탁하지 않습니다. 향후 그러한 필요가 생길 경우, 위탁 대상자와 위탁 업무 내용에 대해 이용자님께 통지하고 필요한 경우 사전 동의를 받도록 하겠습니다. \r\n\r\n이용자 및 법정대리인의 권리와 그 행사방법\r\n이용자는 언제든지 등록되어 있는 자신의 개인정보를 조회하거나 수정할 수 있으며 가입해지를 요청할 수도 있습니다.\r\n이용자들의 개인정보 조회,수정을 위해서는 ‘개인정보변경’(또는 ‘회원정보수정’ 등)을 가입해지(동의철회)를 위해서는 “회원탈퇴”를 클릭하여 본인 확인 절차를 거치신 후 직접 열람, 정정 또는 탈퇴가 가능합니다.\r\n혹은 개인정보관리책임자에게 서면 또는 이메일로 연락하시면 지체없이 조치하겠습니다.\r\n귀하가 개인정보의 오류에 대한 정정을 요청하신 경우에는 정정을 완료하기 전까지 당해 개인정보를 이용 또는 제공하지 않습니다. 또한 잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체없이 통지하여 정정이 이루어지도록 하겠습니다.\r\n회사는 이용자의 요청에 의해 해지 또는 삭제된 개인정보는 “회사가 수집하는 개인정보의 보유 및 이용기간”에 명시된 바에 따라 처리하고 그 외의 용도로 열람 또는 이용할 수 없도록 처리하고 있습니다. \r\n\r\n개인정보 자동수집 장치의 설치, 운영 및 그 거부에 관한 사항\r\n회사는 귀하의 정보를 수시로 저장하고 찾아내는 ‘쿠키(cookie)’ 등을 운용합니다. 쿠키란 회사의 홈페이지를 운영하는데 이용되는 서버가 귀하의 브라우저에 보내는 아주 작은 텍스트 파일로서 귀하의 컴퓨터 하드디스크에 저장됩니다. 회사는 다음과 같은 목적을 위해 쿠키를 사용합니다.\r\n1. 쿠키 등 사용 목적\r\n회원과 비회원의 접속 빈도나 방문 시간 등을 분석, 이용자의 취향과 관심분야를 파악 및 자취 추적, 각종 이벤트 참여 정도 및 방문 회수 파악 등을 통한 타겟 마케팅 및 개인 맞춤 서비스 제공\r\n이용자는 쿠키 설치에 대한 선택권을 가지고 있습니다. 따라서, 이용자께서는 웹브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을 거치거나, 아니면 모든 쿠키의 저장을 거부할 수도 있습니다.\r\n2. 쿠키 설정 거부 방법\r\n예: 쿠키 설정을 거부하는 방법으로는 이용자님이 사용하시는 웹 브라우저의 옵션을 선택함으로써 모든 쿠키를 허용하거나 쿠키를 저장할 때마다 확인을 거치거나, 모든 쿠키의 저장을 거부할 수 있습니다.\r\n설정방법 예(인터넷 익스플로어의 경우) : 웹 브라우저 상단의 도구 > 인터넷 옵션 > 개인정보\r\n단, 귀하께서 쿠키 설치를 거부하였을 경우 서비스 제공에 어려움이 있을 수 있습니다.\r\n\r\n\r\n개인정보에 관한 민원서비스\r\n회사는 이용자님의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 아래와 같이 개인정보관리책임자를 지정하고 있습니다.\r\n\r\n개인정보관리책임자 : 이영아\r\n연락처 : 032-614-2225\r\n\r\n귀하께서는 회사의 서비스를 이용하시며 발생하는 모든 개인정보보호 관련 민원을 개인정보관리책임자에게 신고하실 수 있습니다. 회사는 이용자들의 신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다.\r\n기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.\r\n1.개인정보보호 침해센터 (privacy.kisa.or.kr / 02-405-5118)\r\n2.정보보호마크인증위원회 (www.eprivacy.or.kr / 02-580-9531~2)\r\n3.대검찰청 사이버범죄신고 (spo.go.kr / 02-3480-2000)\r\n4.경찰청 사이버테러대응센터 (www.ctrc.go.kr / 1566-0112) \r\n\r\n기타\r\n홈페이지에 링크되어 있는 웹사이트들이 개인정보를 수집하는 개별적인 행위에 대해서는 본 \"개인정보취급방침\"이 적용되지 않음을 알려 드립니다. \r\n\r\n고지의 의무\r\n현 개인정보취급방침의 내용이 변경될 경우에는 개정 최소 7일전부터 홈페이지의 \"공지사항\"을 통해 고지 하겠습니다.',0,1,1,0,'쇼핑몰 배송/교환/반품안내','모바일 배송/교환/반품안내','admin,administrator,webmaster,sysop,manager,root,su,guest,www','','','',0,'','','','','','',0,0,0,1,1,1,0,1,1,1,1,1,1,0,1,10000,10000,'13.3',0,'소프트웨어(쇼핑몰 솔루션) 사용권 계약서/이용약관(EULA)','','불법홍보 금지 및 규정안내','','asia|info|name|mobi|com|net|org|biz|tel|xxx|kr|co|so|me|eu|cc|or|pe|ne|re|tv|jp|tw|in|shop',1,2,1,0,1,1,1,1,0,0,'','','','','',0,0,'','','','','');

/*Table structure for table `shop_content` */

DROP TABLE IF EXISTS `shop_content`;

CREATE TABLE `shop_content` (
  `co_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '고유값',
  `co_subject` varchar(255) NOT NULL COMMENT '제목',
  `co_content` longtext NOT NULL COMMENT 'PC 내용',
  `co_mobile_content` longtext NOT NULL COMMENT '모바일 내용',
  PRIMARY KEY (`co_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='개별 페이지관리 테이블';

/*Data for the table `shop_content` */

insert  into `shop_content`(`co_id`,`co_subject`,`co_content`,`co_mobile_content`) values 
(1,'회사소개','회사소개 내용 또는 이미지를 입력해주세요.','회사소개 내용 또는 이미지를 입력해주세요.'),
(2,'이용안내','이용안내 내용 또는 이미지를 입력해주세요.','이용안내 내용 또는 이미지를 입력해주세요.');

/*Table structure for table `shop_coupon` */

DROP TABLE IF EXISTS `shop_coupon`;

CREATE TABLE `shop_coupon` (
  `cp_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '주키',
  `cp_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '쿠폰유형',
  `cp_dlimit` varchar(11) NOT NULL COMMENT '누적제한',
  `cp_dlevel` tinyint(4) NOT NULL DEFAULT '10' COMMENT '레벨제한',
  `cp_subject` varchar(255) NOT NULL COMMENT '쿠폰명',
  `cp_explan` varchar(255) NOT NULL COMMENT '설명',
  `cp_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '사용여부',
  `cp_download` tinyint(4) NOT NULL DEFAULT '0' COMMENT '쿠폰발급 시점',
  `cp_overlap` tinyint(4) NOT NULL DEFAULT '0' COMMENT '중복발급 여부',
  `cp_sale_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '해택유형',
  `cp_sale_percent` int(11) NOT NULL DEFAULT '0' COMMENT '해택(할인률)',
  `cp_sale_amt_max` int(11) NOT NULL DEFAULT '0' COMMENT '해택(최대 할인금액)',
  `cp_sale_amt` int(11) NOT NULL DEFAULT '0' COMMENT '해택(할인금액)',
  `cp_dups` tinyint(4) NOT NULL DEFAULT '0' COMMENT '중복사용 여부',
  `cp_use_sex` char(1) NOT NULL COMMENT '성별구분',
  `cp_use_sage` varchar(4) NOT NULL COMMENT '연령대 시작',
  `cp_use_eage` varchar(4) NOT NULL COMMENT '연령대 끝',
  `cp_week_day` varchar(100) NOT NULL COMMENT '쿠폰발행 요일',
  `cp_pub_1_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1.발행시간 사용',
  `cp_pub_shour1` char(2) NOT NULL COMMENT '1.발행시간 시작',
  `cp_pub_ehour1` char(2) NOT NULL COMMENT '1.발행시간 끝',
  `cp_pub_1_cnt` int(11) NOT NULL DEFAULT '0' COMMENT '1.발행매수',
  `cp_pub_1_down` int(11) NOT NULL DEFAULT '0' COMMENT '1.다운로드수',
  `cp_pub_2_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '2.발행시간 사용',
  `cp_pub_shour2` char(2) NOT NULL COMMENT '2.발행시간 시작',
  `cp_pub_ehour2` char(2) NOT NULL COMMENT '2.발행시간 끝',
  `cp_pub_2_cnt` int(11) NOT NULL DEFAULT '0' COMMENT '2.발행매수',
  `cp_pub_2_down` int(11) NOT NULL DEFAULT '0' COMMENT '2.다운로드수',
  `cp_pub_3_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '3.발행시간 사용',
  `cp_pub_shour3` char(2) NOT NULL COMMENT '3.발행시간 시작',
  `cp_pub_ehour3` char(2) NOT NULL COMMENT '3.발행시간 끝',
  `cp_pub_3_cnt` int(11) NOT NULL DEFAULT '0' COMMENT '3.발행매수',
  `cp_pub_3_down` int(11) NOT NULL DEFAULT '0' COMMENT '3.다운로드수',
  `cp_pub_sdate` varchar(10) NOT NULL COMMENT '쿠폰발행 기간 시작',
  `cp_pub_edate` varchar(10) NOT NULL COMMENT '쿠폰발행 기간 끝',
  `cp_pub_sday` varchar(11) NOT NULL COMMENT '쿠폰발행 기간 (생일) 시작',
  `cp_pub_eday` varchar(11) NOT NULL COMMENT '쿠폰발행 기간 (생일) 끝',
  `cp_inv_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '쿠폰유효 기간 유형',
  `cp_inv_sdate` varchar(10) NOT NULL COMMENT '쿠폰유효 기간 시작',
  `cp_inv_edate` varchar(10) NOT NULL COMMENT '쿠폰유효 기간 끝',
  `cp_inv_shour1` char(2) NOT NULL COMMENT '쿠폰유효 유효시간 시작',
  `cp_inv_shour2` char(2) NOT NULL COMMENT '쿠폰유효 유효시간 끝',
  `cp_inv_day` varchar(11) NOT NULL COMMENT '쿠폰발급일로부터 제한일',
  `cp_low_amt` int(11) NOT NULL DEFAULT '0' COMMENT '금액제한',
  `cp_use_part` tinyint(4) NOT NULL DEFAULT '0' COMMENT '사용가능대상',
  `cp_use_goods` text NOT NULL COMMENT '쿠폰 상품',
  `cp_use_category` text NOT NULL COMMENT '쿠폰 카테고리',
  `cp_odr_cnt` int(11) NOT NULL DEFAULT '0' COMMENT '주문수',
  `cp_wdate` datetime NOT NULL COMMENT '등록일시',
  `cp_udate` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`cp_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='온라인 쿠폰 테이블';

/*Data for the table `shop_coupon` */

/*Table structure for table `shop_coupon_log` */

DROP TABLE IF EXISTS `shop_coupon_log`;

CREATE TABLE `shop_coupon_log` (
  `lo_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '주키',
  `mb_id` varchar(50) NOT NULL COMMENT '회원아이디',
  `mb_name` varchar(50) NOT NULL COMMENT '회원명',
  `mb_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '회원사용유무',
  `od_no` varchar(20) NOT NULL COMMENT '주문일련번호',
  `cp_id` int(11) NOT NULL DEFAULT '0' COMMENT '쿠폰주키',
  `cp_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '쿠폰유형',
  `cp_dlimit` varchar(11) NOT NULL COMMENT '누적제한',
  `cp_dlevel` tinyint(4) NOT NULL DEFAULT '10' COMMENT '레벨제한',
  `cp_subject` varchar(255) NOT NULL COMMENT '쿠폰명',
  `cp_explan` varchar(255) NOT NULL COMMENT '설명',
  `cp_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '사용여부',
  `cp_download` tinyint(4) NOT NULL DEFAULT '0' COMMENT '쿠폰발급 시점',
  `cp_overlap` tinyint(4) NOT NULL DEFAULT '0' COMMENT '중복발급 여부',
  `cp_sale_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '해택유형',
  `cp_sale_percent` int(11) NOT NULL DEFAULT '0' COMMENT '해택(할인률)',
  `cp_sale_amt_max` int(11) NOT NULL DEFAULT '0' COMMENT '해택(최대 할인금액)',
  `cp_sale_amt` int(11) NOT NULL DEFAULT '0' COMMENT '해택(할인금액)',
  `cp_dups` tinyint(4) NOT NULL DEFAULT '0' COMMENT '중복사용 여부',
  `cp_use_sex` char(1) NOT NULL COMMENT '성별구분',
  `cp_use_sage` varchar(4) NOT NULL COMMENT '연령대 시작',
  `cp_use_eage` varchar(4) NOT NULL COMMENT '연령대 끝',
  `cp_week_day` varchar(100) NOT NULL COMMENT '쿠폰발행 요일',
  `cp_pub_1_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1.발행시간 사용',
  `cp_pub_shour1` char(2) NOT NULL COMMENT '1.발행시간 시작',
  `cp_pub_ehour1` char(2) NOT NULL COMMENT '1.발행시간 끝',
  `cp_pub_1_cnt` int(11) NOT NULL DEFAULT '0' COMMENT '1.발행매수',
  `cp_pub_1_down` int(11) NOT NULL DEFAULT '0' COMMENT '1.다운로드수',
  `cp_pub_2_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '2.발행시간 사용',
  `cp_pub_shour2` char(2) NOT NULL COMMENT '2.발행시간 시작',
  `cp_pub_ehour2` char(2) NOT NULL COMMENT '2.발행시간 끝',
  `cp_pub_2_cnt` int(11) NOT NULL DEFAULT '0' COMMENT '2.발행매수',
  `cp_pub_2_down` int(11) NOT NULL DEFAULT '0' COMMENT '2.다운로드수',
  `cp_pub_3_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '3.발행시간 사용',
  `cp_pub_shour3` char(2) NOT NULL COMMENT '3.발행시간 시작',
  `cp_pub_ehour3` char(2) NOT NULL COMMENT '3.발행시간 끝',
  `cp_pub_3_cnt` int(11) NOT NULL DEFAULT '0' COMMENT '3.발행매수',
  `cp_pub_3_down` int(11) NOT NULL DEFAULT '0' COMMENT '3.다운로드수',
  `cp_pub_sdate` varchar(10) NOT NULL COMMENT '쿠폰발행 기간 시작',
  `cp_pub_edate` varchar(10) NOT NULL COMMENT '쿠폰발행 기간 끝',
  `cp_pub_sday` varchar(11) NOT NULL COMMENT '쿠폰발행 기간 (생일) 시작',
  `cp_pub_eday` varchar(11) NOT NULL COMMENT '쿠폰발행 기간 (생일) 끝',
  `cp_inv_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '쿠폰유효 기간 유형',
  `cp_inv_sdate` varchar(10) NOT NULL COMMENT '쿠폰유효 기간 시작',
  `cp_inv_edate` varchar(10) NOT NULL COMMENT '쿠폰유효 기간 끝',
  `cp_inv_shour1` char(2) NOT NULL COMMENT '쿠폰유효 유효시간 시작',
  `cp_inv_shour2` char(2) NOT NULL COMMENT '쿠폰유효 유효시간 끝',
  `cp_inv_day` varchar(11) NOT NULL COMMENT '쿠폰발급일로부터 제한일',
  `cp_low_amt` int(11) NOT NULL DEFAULT '0' COMMENT '금액제한',
  `cp_use_part` tinyint(4) NOT NULL DEFAULT '0' COMMENT '사용가능대상',
  `cp_use_goods` text NOT NULL COMMENT '쿠폰 상품',
  `cp_use_category` text NOT NULL COMMENT '쿠폰 카테고리',
  `cp_wdate` datetime NOT NULL COMMENT '등록일시',
  `cp_udate` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`lo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='온라인 쿠폰 사용기록 테이블';

/*Data for the table `shop_coupon_log` */

/*Table structure for table `shop_default` */

DROP TABLE IF EXISTS `shop_default`;

CREATE TABLE `shop_default` (
  `de_bank_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '무통장결제 사용',
  `de_card_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '신용카드결제 사용',
  `de_iche_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '계좌이체결제 사용',
  `de_vbank_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '가상계좌결제 사용',
  `de_hp_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '휴대폰결제 사용',
  `de_card_test` tinyint(4) NOT NULL DEFAULT '0' COMMENT '결제 테스트',
  `de_pg_service` varchar(255) NOT NULL COMMENT '결제대행사',
  `de_tax_flag_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '복합과세 결제 사용',
  `de_taxsave_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '현금영수증 발급사용',
  `de_card_noint_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '신용카드 무이자할부사용',
  `de_easy_pay_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'PG사 간편결제 버튼사용',
  `de_escrow_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '에스크로 사용',
  `de_nicepay_mid` varchar(255) NOT NULL COMMENT '나이스페이 상점아이디',
  `de_nicepay_key` varchar(255) NOT NULL COMMENT '나이스페이 상점서명키',
  `de_nicepay_pwd` varchar(255) NOT NULL COMMENT '나이스페이 취소패스워드',
  `de_kcp_mid` varchar(255) NOT NULL COMMENT 'NHN KCP SITE CODE',
  `de_kcp_site_key` varchar(255) NOT NULL COMMENT 'NHN KCP SITE KEY',
  `de_inicis_mid` varchar(255) NOT NULL COMMENT 'KG이니시스 상점아이디',
  `de_inicis_admin_key` varchar(255) NOT NULL COMMENT 'KG이니시스 키패스워드',
  `de_inicis_sign_key` varchar(255) NOT NULL COMMENT 'KG이니시스 웹결제 사인키',
  `de_samsung_pay_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'KG이니시스 삼성페이 버튼 사용',
  `de_lg_mid` varchar(255) NOT NULL COMMENT 'LG유플러스 상점아이디',
  `de_lg_mert_key` varchar(255) NOT NULL COMMENT 'LG유플러스 MertKey',
  `de_kakaopay_mid` varchar(255) NOT NULL COMMENT '카카오페이 상점MID',
  `de_kakaopay_key` varchar(255) NOT NULL COMMENT '카카오페이 상점키',
  `de_kakaopay_enckey` varchar(255) NOT NULL COMMENT '카카오페이 상점 EncKey',
  `de_kakaopay_hashkey` varchar(255) NOT NULL COMMENT '카카오페이 상점 HashKey',
  `de_kakaopay_cancelpwd` varchar(255) NOT NULL COMMENT '카카오페이 결제취소 비밀번호',
  `de_naverpay_mid` varchar(255) NOT NULL COMMENT '네이버페이 가맹점 아이디',
  `de_naverpay_cert_key` varchar(255) NOT NULL COMMENT '네이버페이 가맹점 인증키',
  `de_naverpay_button_key` varchar(255) NOT NULL COMMENT '네이버페이 버튼 인증키',
  `de_naverpay_test` tinyint(4) NOT NULL DEFAULT '0' COMMENT '네이버페이 테스트결제',
  `de_naverpay_mb_id` varchar(255) NOT NULL COMMENT '네이버페이 결제테스트 아이디',
  `de_naverpay_sendcost` varchar(255) NOT NULL COMMENT '네이버페이 추가배송비 안내',
  `de_bank_account` text NOT NULL COMMENT '무통장입금계좌',
  `de_wish_keep_term` int(11) NOT NULL DEFAULT '0' COMMENT '찜 보관일수',
  `de_cart_keep_term` int(11) NOT NULL DEFAULT '0' COMMENT '장바구니 보관일수',
  `de_misu_keep_term` int(11) NOT NULL DEFAULT '0' COMMENT '미입금 주문내역  보관일수',
  `de_final_keep_term` int(11) NOT NULL DEFAULT '0' COMMENT '자동구매확정일',
  `de_optimize_date` date NOT NULL DEFAULT '0000-00-00' COMMENT '자동업데이트 처리일',
  `de_review_wr_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '구매후기) 작성된 분양몰에서만 노출',
  `de_board_wr_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '게시판글) 작성된 분양몰에서만 노출',
  `de_logo_wpx` int(11) NOT NULL DEFAULT '0' COMMENT 'PC 쇼핑몰로고 가로크기',
  `de_logo_hpx` int(11) NOT NULL DEFAULT '0' COMMENT 'PC 쇼핑몰로고 세로크기',
  `de_mobile_logo_wpx` int(11) NOT NULL DEFAULT '0' COMMENT '모바일 쇼핑몰로고 가로크기',
  `de_mobile_logo_hpx` int(11) NOT NULL DEFAULT '0' COMMENT '모바일 쇼핑몰로고 세로크기',
  `de_slider_wpx` int(11) NOT NULL DEFAULT '0' COMMENT 'PC 메인배너 가로크기',
  `de_slider_hpx` int(11) NOT NULL DEFAULT '0' COMMENT 'PC 메인배너 세로크기',
  `de_mobile_slider_wpx` int(11) NOT NULL DEFAULT '0' COMMENT '모바일 메인배너 가로크기',
  `de_mobile_slider_hpx` int(11) NOT NULL DEFAULT '0' COMMENT '모바일 메인배너 세로크기',
  `de_item_small_wpx` int(11) NOT NULL DEFAULT '0' COMMENT '상품 소이미지 가로크기',
  `de_item_small_hpx` int(11) NOT NULL DEFAULT '0' COMMENT '상품 소이미지 세로크기',
  `de_item_medium_wpx` int(11) NOT NULL DEFAULT '0' COMMENT '상품 중이미지 가로크기',
  `de_item_medium_hpx` int(11) NOT NULL DEFAULT '0' COMMENT '상품 중이미지 세로크기',
  `de_sns_login_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '소셜네트워크 로그인 사용',
  `de_naver_appid` varchar(255) NOT NULL COMMENT '네이버 Client ID',
  `de_naver_secret` varchar(255) NOT NULL COMMENT '네이버 Client Secret',
  `de_facebook_appid` varchar(255) NOT NULL COMMENT '페이스북 앱 ID',
  `de_facebook_secret` varchar(255) NOT NULL COMMENT '페이스북 앱 Secret',
  `de_kakao_rest_apikey` varchar(255) NOT NULL COMMENT '카카오 REST API Key',
  `de_kakao_js_apikey` varchar(255) NOT NULL COMMENT '카카오 Javascript API Key',
  `de_googl_shorturl_apikey` varchar(255) NOT NULL COMMENT '구글 짧은주소 API Key',
  `de_insta_url` varchar(255) NOT NULL COMMENT '인스타그램)URL',
  `de_insta_client_id` varchar(255) NOT NULL COMMENT '인스타그램)CLIENT ID',
  `de_insta_redirect_uri` varchar(255) NOT NULL COMMENT '인스타그램)Valid redirect URIs',
  `de_insta_access_token` varchar(255) NOT NULL COMMENT '인스타그램)ACCESS_TOKEN',
  `de_sns_facebook` varchar(255) NOT NULL COMMENT 'SNS URL)FACEBOOK',
  `de_sns_twitter` varchar(255) NOT NULL COMMENT 'SNS URL)TWITTER',
  `de_sns_instagram` varchar(255) NOT NULL COMMENT 'SNS URL)INSTAGRAM',
  `de_sns_pinterest` varchar(255) NOT NULL COMMENT 'SNS URL)PINTEREST',
  `de_sns_naverblog` varchar(255) NOT NULL COMMENT 'SNS URL)NAVER BLOG',
  `de_sns_naverband` varchar(255) NOT NULL COMMENT 'SNS URL)NAVER BAND',
  `de_sns_kakaotalk` varchar(255) NOT NULL COMMENT 'SNS URL)KAKAOTALK',
  `de_sns_kakaostory` varchar(255) NOT NULL COMMENT 'SNS URL)KAKAOSTORY',
  `de_skin1_gijong_menu` text NOT NULL COMMENT '상단 기종별 메뉴바',
  `de_skin1_jepum_menu` text NOT NULL COMMENT '상단 제품별 메뉴바',
  `de_skin1_name` varchar(255) NOT NULL COMMENT '카테고리별 베스트 타이틀',
  `de_skin1_best` text NOT NULL COMMENT '카테고리별 베스트 상품',
  `de_pname_1` varchar(255) NOT NULL COMMENT '메뉴명1',
  `de_pname_2` varchar(255) NOT NULL COMMENT '메뉴명2',
  `de_pname_3` varchar(255) NOT NULL COMMENT '메뉴명3',
  `de_pname_4` varchar(255) NOT NULL COMMENT '메뉴명4',
  `de_pname_5` varchar(255) NOT NULL COMMENT '메뉴명5',
  `de_pname_6` varchar(255) NOT NULL COMMENT '메뉴명6',
  `de_pname_7` varchar(255) NOT NULL COMMENT '메뉴명7',
  `de_pname_8` varchar(255) NOT NULL COMMENT '메뉴명8'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='쇼핑몰 환경설정2 테이블';

/*Data for the table `shop_default` */

insert  into `shop_default`(`de_bank_use`,`de_card_use`,`de_iche_use`,`de_vbank_use`,`de_hp_use`,`de_card_test`,`de_pg_service`,`de_tax_flag_use`,`de_taxsave_use`,`de_card_noint_use`,`de_easy_pay_use`,`de_escrow_use`,`de_nicepay_mid`,`de_nicepay_key`,`de_nicepay_pwd`,`de_kcp_mid`,`de_kcp_site_key`,`de_inicis_mid`,`de_inicis_admin_key`,`de_inicis_sign_key`,`de_samsung_pay_use`,`de_lg_mid`,`de_lg_mert_key`,`de_kakaopay_mid`,`de_kakaopay_key`,`de_kakaopay_enckey`,`de_kakaopay_hashkey`,`de_kakaopay_cancelpwd`,`de_naverpay_mid`,`de_naverpay_cert_key`,`de_naverpay_button_key`,`de_naverpay_test`,`de_naverpay_mb_id`,`de_naverpay_sendcost`,`de_bank_account`,`de_wish_keep_term`,`de_cart_keep_term`,`de_misu_keep_term`,`de_final_keep_term`,`de_optimize_date`,`de_review_wr_use`,`de_board_wr_use`,`de_logo_wpx`,`de_logo_hpx`,`de_mobile_logo_wpx`,`de_mobile_logo_hpx`,`de_slider_wpx`,`de_slider_hpx`,`de_mobile_slider_wpx`,`de_mobile_slider_hpx`,`de_item_small_wpx`,`de_item_small_hpx`,`de_item_medium_wpx`,`de_item_medium_hpx`,`de_sns_login_use`,`de_naver_appid`,`de_naver_secret`,`de_facebook_appid`,`de_facebook_secret`,`de_kakao_rest_apikey`,`de_kakao_js_apikey`,`de_googl_shorturl_apikey`,`de_insta_url`,`de_insta_client_id`,`de_insta_redirect_uri`,`de_insta_access_token`,`de_sns_facebook`,`de_sns_twitter`,`de_sns_instagram`,`de_sns_pinterest`,`de_sns_naverblog`,`de_sns_naverband`,`de_sns_kakaotalk`,`de_sns_kakaostory`,`de_skin1_gijong_menu`,`de_skin1_jepum_menu`,`de_skin1_name`,`de_skin1_best`,`de_pname_1`,`de_pname_2`,`de_pname_3`,`de_pname_4`,`de_pname_5`,`de_pname_6`,`de_pname_7`,`de_pname_8`) values 
(1,1,1,1,1,1,'kcp',1,1,0,1,1,'','','','T0000','3grptw1.zW0GSo4PQdaGvsF__','INIpayTest','1111','SU5JTElURV9UUklQTEVERVNfS0VZU1RS',1,'dacomst7','95160cce09854ef44d2edb2bfb05f9f3','','','','','','','','',1,'naverpay','제주도 3,000원 추가, 제주도 외 도서·산간 지역 5,000원 추가','a:1:{i:0;a:3:{s:4:\"name\";s:12:\"부산은행\";s:7:\"account\";s:11:\"00000000000\";s:6:\"holder\";s:9:\"홍길동\";}}',7,7,7,7,'2021-03-02',0,1,160,60,450,120,1000,400,960,720,400,400,400,400,0,'','','','','','','','','','','','https://www.facebook.com','https://twitter.com','https://www.instagram.com','https://www.pinterest.co.kr','https://blog.naver.com','https://band.us/ko','https://www.kakaocorp.com/service/KakaoTalk?lang=ko','https://story.kakao.com','YTo2OntpOjA7YTozOntzOjQ6InN1YmoiO3M6OToi7JWE7J207Y+wIjtzOjQ6ImhyZWYiO3M6MDoiIjtzOjExOiJtb2JpbGVfaHJlZiI7czowOiIiO31pOjE7YTozOntzOjQ6InN1YmoiO3M6OToi6rCk65+t7IucIjtzOjQ6ImhyZWYiO3M6MDoiIjtzOjExOiJtb2JpbGVfaHJlZiI7czowOiIiO31pOjI7YTozOntzOjQ6InN1YmoiO3M6MjoiTEciO3M6NDoiaHJlZiI7czowOiIiO3M6MTE6Im1vYmlsZV9ocmVmIjtzOjA6IiI7fWk6MzthOjM6e3M6NDoic3ViaiI7czo2OiLquLDtg4AiO3M6NDoiaHJlZiI7czowOiIiO3M6MTE6Im1vYmlsZV9ocmVmIjtzOjA6IiI7fWk6NDthOjM6e3M6NDoic3ViaiI7czo5OiLthYzruJTrpr8iO3M6NDoiaHJlZiI7czowOiIiO3M6MTE6Im1vYmlsZV9ocmVmIjtzOjA6IiI7fWk6NTthOjM6e3M6NDoic3ViaiI7czoxMjoi7Juo7Ja065+s67iUIjtzOjQ6ImhyZWYiO3M6MDoiIjtzOjExOiJtb2JpbGVfaHJlZiI7czowOiIiO319','YTo0OntpOjA7YTozOntzOjQ6InN1YmoiO3M6MTI6IuuLpOydtOyWtOumrCI7czo0OiJocmVmIjtzOjA6IiI7czoxMToibW9iaWxlX2hyZWYiO3M6MDoiIjt9aToxO2E6Mzp7czo0OiJzdWJqIjtzOjk6Iu2UjOumve2YlSI7czo0OiJocmVmIjtzOjA6IiI7czoxMToibW9iaWxlX2hyZWYiO3M6MDoiIjt9aToyO2E6Mzp7czo0OiJzdWJqIjtzOjY6IuuylO2NvCI7czo0OiJocmVmIjtzOjA6IiI7czoxMToibW9iaWxlX2hyZWYiO3M6MDoiIjt9aTozO2E6Mzp7czo0OiJzdWJqIjtzOjY6Iu2VhOumhCI7czo0OiJocmVmIjtzOjA6IiI7czoxMToibW9iaWxlX2hyZWYiO3M6MDoiIjt9fQ==','카테고리별 베스트','','쇼핑특가','베스트셀러','신상품','인기상품','MD추천상품','브랜드샵','악세사리','타임세일');

/*Table structure for table `shop_faq` */

DROP TABLE IF EXISTS `shop_faq`;

CREATE TABLE `shop_faq` (
  `index_no` int(11) NOT NULL AUTO_INCREMENT COMMENT '주키',
  `cate` int(11) NOT NULL DEFAULT '0' COMMENT '분류',
  `subject` varchar(255) NOT NULL COMMENT '제목',
  `memo` text NOT NULL COMMENT '내용',
  `wdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '등록일시',
  PRIMARY KEY (`index_no`),
  KEY `cate` (`cate`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='자주하는질문 테이블';

/*Data for the table `shop_faq` */

insert  into `shop_faq`(`index_no`,`cate`,`subject`,`memo`,`wdate`) values 
(1,3,'환불안내 입니다.','<p>&nbsp;</p><table class=\"__se_tbl_ext\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" style=\"width:100%; margin: 0px; padding: 0px; border-spacing: 0px; border: 0px none; font-family: 돋움, Dotum, 굴림, Gulim, Verdana, AppleGothic, sans-serif; background-color: rgb(255, 255, 255);\"><tbody><tr><td style=\"line-height: 1.3; letter-spacing: 0pt; padding-top: 10px; padding-bottom: 10px;\">안녕하세요.<span style=\"color: rgb(255, 108, 0);\"> </span><font color=\"#0086cf\"><span style=\"color: rgb(255, 108, 0);\">케이스팜</span></font><span style=\"color: rgb(255, 170, 0);\">&nbsp;</span>입니다.<br>환불시 반품 확인여부를 확인한 후 14영업일 이내에 결제 금액을 환불해 드립니다.<br><font color=\"#0086cf\"><span style=\"color: rgb(255, 108, 0);\">신용카드로 결제하신 경우</span></font>는 신용카드 승인을 취소하여 결제 대금이 청구되지 않게 합니다.<br><span style=\"color: rgb(255, 108, 0);\">(</span><font color=\"#0086cf\"><span style=\"color: rgb(255, 108, 0);\">단, 신용카드 결제일자에 맞추어 대금이 청구 될수 있으며 이 경우 익월 신용카드 대금청구시 카드사에서 환급처리 됩니다.</span></font><span style=\"color: rgb(255, 108, 0);\">) <br></span>단, 제품 불량으로 인한 A/S건은 한달에 한번, 모아서 택배로 반품해주시면 적립금으로 적립 됩니다.</td></tr></tbody></table><p>&nbsp;</p>','2021-02-03 10:16:19'),
(2,7,'로그인이 안돼요.','<p>&nbsp;</p>안녕하세요. <font color=\"#0086cf\"><span style=\"color: rgb(255, 108, 0);\">케이스팜</span></font>&nbsp;입니다.<br><br>로그인이 안되실때는&nbsp;<font color=\"#0086cf\"><span style=\"color: rgb(255, 108, 0);\">고객센터</span></font>로 연락 주시면 최대한 빠른시일안에 복구해드립니다.<br><br>감사합니다.<div style=\"margin: 0px; padding: 0px; line-height: 1.3; letter-spacing: 0px; font-family: 돋움, Dotum, 굴림, Gulim, Verdana, AppleGothic, sans-serif; height: 15px;\"></div><div style=\"margin: 0px; padding: 0px; line-height: 1.3; letter-spacing: 0px; font-family: 돋움, Dotum, 굴림, Gulim, Verdana, AppleGothic, sans-serif;\"></div><div style=\"margin: 0px; padding: 0px; line-height: 1.3; letter-spacing: 0px; font-family: 돋움, Dotum, 굴림, Gulim, Verdana, AppleGothic, sans-serif;\"></div><p>&nbsp;</p>','2021-02-03 10:16:58'),
(3,1,'구매자가 받은 상품이 파손되었다고 합니다. 어떻게 해야 하나요?','<p>&nbsp;</p><table class=\"__se_tbl_ext\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" style=\"width:100%; margin: 0px; padding: 0px; border-spacing: 0px; border: 0px none; font-family: 돋움, Dotum, 굴림, Gulim, Verdana, AppleGothic, sans-serif; background-color: rgb(255, 255, 255);\"><tbody><tr><td style=\"line-height: 1.3; letter-spacing: 0pt; padding-top: 10px; padding-bottom: 10px;\"><b><font color=\"#0086cf\"><span style=\"color: rgb(255, 108, 0);\">구매자가 받은 상품이 파손되었다면 우선 다음과 같이 조치하십시오.</span></font></b><br><br>1. 배송사에 사고 내용을 접수한다.<br>2. 구매자에게는 겉포장 및 내부 상품을 배달 당시 그대로 보관하도록 요청한다.<br>3. 배송을 의뢰한 배송사와 직접 사고처리 결과를 협의한다.</td></tr></tbody></table><p>&nbsp;</p>','2021-02-03 10:17:35'),
(4,1,'배송사고가 났을 때 누가 책임을 지나요?','<p>배송사고가 발생할 경우에는 배송사고의 원인을 제공한 자가 책임을 지도록 되어있습니다.</p><br><font color=\"#0086cf\"><b><span style=\"color: rgb(255, 108, 0);\">1. 배송사의 책임으로 인정되는 경우</span></b></font><br><br>상품 배송 도중 상품이 파손 또는 분실되었다고 판단되는 경우<br>--------------------------------------------------------------------------------------------------------------<br><font color=\"#0086cf\"><b><span style=\"color: rgb(255, 108, 0);\">2. 판매자의 책임으로 인정되는 경우</span></b></font><br>1) 포장이 부실하여 배송 중 상품이 파손 또는 분실되었을 경우<br>2) 구매자의 ‘배송시 요구사항’을 확인하지 않고 배송하여 문제가 발생한 경우<br>3) 배송사 측에 배송 불가품을 사전에 확인시키지 않고 배송을 의뢰하여 사고가 발생한 경우<br>4) 상품 발송 전 상품에 이상이 발생되었다고 판단되는 경우<br>-----------------------------------------------------------------------------------------------------------------<br><font color=\"#0086cf\"><span style=\"color: rgb(255, 108, 0);\"><b>3. 구매자의 책임으로 인정되는 경우</b></span></font><br>1) 수취지 불명(전화,주소지,성명 등) 또는 고객 부재중으로 배달이 지연되거나 잘못 배송된 경우<br>2) 파손사고 접수 시 배달 당시의 박스 및 포장재를 보관하지 않고 파손된 상품만 보관한 경우<br>3) 상품 배송 후 피해보상 청구일 이내에 이의 제기가 없었을 경우<br>4) 상품 배달 후 상품에 이상이 발생되었다고 판단되는 경우<br><br><font color=\"#0086cf\"><span style=\"color: rgb(255, 108, 0);\"><b>상품이 파손된 상태로 배달되었을 경우 겉포장 및 내부 상품들을 배달 당시 그대로 보관해주셔야 배상처리에 도움이 됩니다.</b></span></font><div style=\"margin: 0px; padding: 0px; line-height: 1.3; letter-spacing: 0px; font-family: 돋움, Dotum, 굴림, Gulim, Verdana, AppleGothic, sans-serif; height: 15px;\"></div><div style=\"margin: 0px; padding: 0px; line-height: 1.3; letter-spacing: 0px; font-family: 돋움, Dotum, 굴림, Gulim, Verdana, AppleGothic, sans-serif;\"></div><div style=\"margin: 0px; padding: 0px; line-height: 1.3; letter-spacing: 0px; font-family: 돋움, Dotum, 굴림, Gulim, Verdana, AppleGothic, sans-serif;\"></div><p>&nbsp;</p>','2021-02-03 10:18:29');

/*Table structure for table `shop_faq_cate` */

DROP TABLE IF EXISTS `shop_faq_cate`;

CREATE TABLE `shop_faq_cate` (
  `index_no` int(11) NOT NULL AUTO_INCREMENT COMMENT '주키',
  `catename` varchar(50) NOT NULL COMMENT '분류명',
  PRIMARY KEY (`index_no`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='자주하는질문 분류 테이블';

/*Data for the table `shop_faq_cate` */

insert  into `shop_faq_cate`(`index_no`,`catename`) values 
(1,'배송문의'),
(2,'취소/교환/반품'),
(3,'환불관련'),
(4,'주문/결제'),
(5,'쿠폰/포인트'),
(6,'회원관련'),
(7,'기타');

/*Table structure for table `shop_gift` */

DROP TABLE IF EXISTS `shop_gift`;

CREATE TABLE `shop_gift` (
  `no` int(11) NOT NULL AUTO_INCREMENT COMMENT '주키',
  `gr_id` varchar(20) NOT NULL COMMENT '그룹아이디',
  `gr_subject` varchar(255) NOT NULL COMMENT '쿠폰명',
  `gr_price` int(11) NOT NULL DEFAULT '0' COMMENT '쿠폰금액',
  `gr_sdate` varchar(10) NOT NULL COMMENT '쿠폰사용 시작일',
  `gr_edate` varchar(10) NOT NULL COMMENT '쿠폰사용 종료일',
  `gi_num` varchar(255) NOT NULL COMMENT '쿠폰번호',
  `gi_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '쿠폰사용여부',
  `mb_id` varchar(50) NOT NULL COMMENT '회원아이디',
  `mb_name` varchar(50) NOT NULL COMMENT '회원명',
  `mb_wdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '회원쿠폰사용일시',
  PRIMARY KEY (`no`),
  KEY `gr_id` (`gr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='오프라인 쿠폰 테이블';

/*Data for the table `shop_gift` */

/*Table structure for table `shop_gift_group` */

DROP TABLE IF EXISTS `shop_gift_group`;

CREATE TABLE `shop_gift_group` (
  `gr_id` varchar(20) NOT NULL COMMENT '일련번호',
  `gr_subject` varchar(255) NOT NULL COMMENT '쿠폰명',
  `gr_explan` varchar(255) NOT NULL COMMENT '설명',
  `gr_price` int(11) NOT NULL DEFAULT '0' COMMENT '발행금액',
  `gr_wdate` date NOT NULL COMMENT '등록일',
  `gr_sdate` varchar(10) NOT NULL COMMENT '사용시작일',
  `gr_edate` varchar(10) NOT NULL COMMENT '사용종료일',
  `use_gift` tinyint(4) NOT NULL DEFAULT '0' COMMENT '쿠폰발행방식',
  PRIMARY KEY (`gr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='오프라인 쿠폰 그룹 테이블';

/*Data for the table `shop_gift_group` */

/*Table structure for table `shop_goods` */

DROP TABLE IF EXISTS `shop_goods`;

CREATE TABLE `shop_goods` (
  `index_no` int(11) NOT NULL AUTO_INCREMENT COMMENT '주키',
  `gong_id` varchar(20) NOT NULL COMMENT '공급자ID',
  `mb_id` varchar(20) NOT NULL COMMENT '판매자ID',
  `ca_id` varchar(15) NOT NULL COMMENT '대표분류',
  `ca_id2` varchar(15) NOT NULL COMMENT '추가분류2',
  `ca_id3` varchar(15) NOT NULL COMMENT '추가분류3',
  `gcode` varchar(30) NOT NULL COMMENT '상품코드',
  `gname` varchar(255) NOT NULL COMMENT '상품명',
  `explan` varchar(255) NOT NULL COMMENT '짧은설명',
  `keywords` text NOT NULL COMMENT '키워드',
  `shop_state` tinyint(4) NOT NULL DEFAULT '0' COMMENT '승인상태',
  `isopen` tinyint(4) NOT NULL DEFAULT '1' COMMENT '판매여부',
  `normal_price` int(11) NOT NULL DEFAULT '0' COMMENT '시중가격',
  `supply_price` int(11) NOT NULL DEFAULT '0' COMMENT '공급가격',
  `lv1_price` int(11) NOT NULL DEFAULT '0' COMMENT '레벨1 판매가격',
  `lv2_price` int(11) NOT NULL DEFAULT '0' COMMENT '레벨2 판매가격',
  `lv3_price` int(11) NOT NULL DEFAULT '0' COMMENT '레벨3 판매가격',
  `lv4_price` int(11) NOT NULL DEFAULT '0' COMMENT '레벨4 판매가격',
  `lv5_price` int(11) NOT NULL DEFAULT '0' COMMENT '레벨5 판매가격',
  `lv6_price` int(11) NOT NULL DEFAULT '0' COMMENT '레벨6 판매가격',
  `lv7_price` int(11) NOT NULL DEFAULT '0' COMMENT '레벨7 판매가격',
  `lv8_price` int(11) NOT NULL DEFAULT '0' COMMENT '레벨8 판매가격',
  `lv9_price` int(11) NOT NULL DEFAULT '0' COMMENT '레벨9 판매가격',
  `goods_price` int(11) NOT NULL DEFAULT '0' COMMENT '판매가격',
  `gpoint` int(11) NOT NULL DEFAULT '0' COMMENT '적립포인트',
  `price_msg` varchar(100) NOT NULL COMMENT '가격대체문구',
  `simg_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '이미지 등록방식',
  `simg1` varchar(255) NOT NULL COMMENT '이미지1',
  `simg2` varchar(255) NOT NULL COMMENT '이미지2',
  `simg3` varchar(255) NOT NULL COMMENT '이미지3',
  `simg4` varchar(255) NOT NULL COMMENT '이미지4',
  `simg5` varchar(255) NOT NULL COMMENT '이미지5',
  `simg6` varchar(255) NOT NULL COMMENT '이미지6',
  `maker` varchar(255) NOT NULL COMMENT '제조사',
  `origin` varchar(255) NOT NULL COMMENT '원산지',
  `model` varchar(255) NOT NULL COMMENT '모델명',
  `notax` tinyint(4) NOT NULL DEFAULT '0' COMMENT '과세유무',
  `memo` text NOT NULL COMMENT '상세설명',
  `admin_memo` text NOT NULL COMMENT '관리자메모',
  `reg_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '등록일시',
  `update_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '수정일시',
  `readcount` int(11) NOT NULL DEFAULT '0' COMMENT '조회수',
  `rank` int(11) NOT NULL DEFAULT '0' COMMENT '노출순위',
  `sum_qty` int(11) NOT NULL DEFAULT '0' COMMENT '주문합계',
  `m_count` int(11) NOT NULL DEFAULT '0' COMMENT '구매후기수',
  `opt_subject` varchar(255) NOT NULL COMMENT '상품 주문옵션',
  `spl_subject` varchar(255) NOT NULL COMMENT '상품 추가옵션',
  `ppay_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '판매수수료 적용타입',
  `ppay_rate` tinyint(4) NOT NULL DEFAULT '0' COMMENT '판매수수료 적립유형',
  `ppay_fee` varchar(255) NOT NULL COMMENT '판매수수료 단계별금액',
  `ppay_dan` int(11) NOT NULL DEFAULT '0' COMMENT '판매수수료 적립단계',
  `stock_mod` tinyint(4) NOT NULL DEFAULT '0' COMMENT '수량유형',
  `stock_qty` int(11) NOT NULL DEFAULT '0' COMMENT '한정수량',
  `noti_qty` int(11) NOT NULL DEFAULT '0' COMMENT '통보수량',
  `brand_uid` varchar(11) NOT NULL COMMENT '브랜드주키',
  `brand_nm` varchar(255) NOT NULL COMMENT '브랜드명',
  `ec_mall_pid` varchar(255) NOT NULL COMMENT '네이버쇼핑 상품ID',
  `sc_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '배송비유형',
  `sc_method` tinyint(4) NOT NULL DEFAULT '0' COMMENT '배송비결제',
  `sc_minimum` int(11) NOT NULL DEFAULT '0' COMMENT '조건배송비',
  `sc_amt` int(11) NOT NULL DEFAULT '0' COMMENT '기본배송비',
  `sc_each_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '묶음배송불가',
  `zone` varchar(30) NOT NULL COMMENT '배송가능 지역',
  `zone_msg` varchar(255) NOT NULL COMMENT '배송가능 지역 추가설명',
  `buy_level` tinyint(4) NOT NULL DEFAULT '10' COMMENT '구매가능 레벨',
  `buy_only` tinyint(4) NOT NULL DEFAULT '0' COMMENT '특정 레벨이상 가격공개',
  `odr_max` varchar(10) NOT NULL COMMENT '최대 주문한도',
  `odr_min` varchar(10) NOT NULL COMMENT '최소 주문한도',
  `sb_date` date NOT NULL DEFAULT '0000-00-00' COMMENT '판매기간 시작일',
  `eb_date` date NOT NULL DEFAULT '0000-00-00' COMMENT '판매기간 종료일',
  `info_gubun` varchar(50) NOT NULL COMMENT '정보고시 카테고리',
  `info_value` text NOT NULL COMMENT '정보고시 값',
  `use_hide` text NOT NULL COMMENT '가맹점몰 판매여부',
  `use_aff` tinyint(4) NOT NULL DEFAULT '0' COMMENT '가맹점상품시(1)',
  PRIMARY KEY (`index_no`),
  KEY `mb_id` (`mb_id`),
  KEY `ca_id` (`ca_id`),
  KEY `gcode` (`gcode`),
  KEY `isopen` (`isopen`),
  KEY `shop_state` (`shop_state`),
  KEY `brand_uid` (`brand_uid`),
  KEY `use_aff` (`use_aff`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='상품 테이블';

/*Data for the table `shop_goods` */

insert  into `shop_goods`(`index_no`,`gong_id`,`mb_id`,`ca_id`,`ca_id2`,`ca_id3`,`gcode`,`gname`,`explan`,`keywords`,`shop_state`,`isopen`,`normal_price`,`supply_price`,`lv1_price`,`lv2_price`,`lv3_price`,`lv4_price`,`lv5_price`,`lv6_price`,`lv7_price`,`lv8_price`,`lv9_price`,`goods_price`,`gpoint`,`price_msg`,`simg_type`,`simg1`,`simg2`,`simg3`,`simg4`,`simg5`,`simg6`,`maker`,`origin`,`model`,`notax`,`memo`,`admin_memo`,`reg_time`,`update_time`,`readcount`,`rank`,`sum_qty`,`m_count`,`opt_subject`,`spl_subject`,`ppay_type`,`ppay_rate`,`ppay_fee`,`ppay_dan`,`stock_mod`,`stock_qty`,`noti_qty`,`brand_uid`,`brand_nm`,`ec_mall_pid`,`sc_type`,`sc_method`,`sc_minimum`,`sc_amt`,`sc_each_use`,`zone`,`zone_msg`,`buy_level`,`buy_only`,`odr_max`,`odr_min`,`sb_date`,`eb_date`,`info_gubun`,`info_value`,`use_hide`,`use_aff`) values 
(58,'gong','AP-100002','002001003','','','1614663909','아이폰11 PRO(5.8) 아트픽 카카오 리틀프렌즈 카드하드 케이스 [아이폰11 PRO(5.8)] [42496]','카카오 리틀프렌즈 카드하드 케이스','하드케이스',0,1,28000,10000,10000,13800,10000,11200,12000,12800,11200,12000,12800,13800,0,'',1,'http://caseking.co.kr/data/goods/img1//img1_42496.jpg','http://caseking.co.kr/data/goods/img1//img1_42496.jpg','','','','','케이스킹','중국','아이폰11 PRO(5.8)',1,'<center><img src=\"http://caseking.co.kr/data/goods/imgd/C00041924.jpg\"></center>','','2021-03-02 14:51:44','2021-03-02 14:51:48',0,0,0,0,'옵션','',0,0,'',0,0,0,0,'26','카카오','',0,0,0,0,0,'전국','',9,1,'','','0000-00-00','0000-00-00','etc','a:6:{s:12:\"product_name\";s:22:\"상품페이지 참고\";s:10:\"model_name\";s:22:\"상품페이지 참고\";s:16:\"certified_by_law\";s:22:\"상품페이지 참고\";s:6:\"origin\";s:22:\"상품페이지 참고\";s:5:\"maker\";s:22:\"상품페이지 참고\";s:2:\"as\";s:22:\"상품페이지 참고\";}','',0);

/*Table structure for table `shop_goods_option` */

DROP TABLE IF EXISTS `shop_goods_option`;

CREATE TABLE `shop_goods_option` (
  `io_no` int(11) NOT NULL AUTO_INCREMENT COMMENT '주키',
  `io_id` varchar(255) NOT NULL DEFAULT '0' COMMENT '옵션항목',
  `io_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '옵션유형',
  `gs_id` varchar(20) NOT NULL COMMENT '상품주키',
  `io_supply_price` int(11) NOT NULL DEFAULT '0' COMMENT '옵션공급가',
  `io_price` int(11) NOT NULL DEFAULT '0' COMMENT '추가금액',
  `io_stock_qty` int(11) NOT NULL DEFAULT '0' COMMENT '재고수량',
  `io_noti_qty` int(11) NOT NULL DEFAULT '0' COMMENT '통보수량',
  `io_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '사용여부',
  PRIMARY KEY (`io_no`),
  KEY `io_id` (`io_id`),
  KEY `gs_id` (`gs_id`)
) ENGINE=MyISAM AUTO_INCREMENT=732 DEFAULT CHARSET=utf8 COMMENT='상품 옵션 테이블';

/*Data for the table `shop_goods_option` */

insert  into `shop_goods_option`(`io_no`,`io_id`,`io_type`,`gs_id`,`io_supply_price`,`io_price`,`io_stock_qty`,`io_noti_qty`,`io_use`) values 
(731,'리틀튜브',0,'58',0,0,50,0,1),
(730,'리틀어피치',0,'58',0,0,50,0,1),
(729,'리틀라이언',0,'58',0,0,50,0,1),
(725,'핑크샌드',0,'57',0,0,50,0,1),
(724,'민트',0,'57',0,0,50,0,1),
(723,'레드',0,'57',0,0,0,0,1),
(722,'핑크',0,'57',0,0,50,0,1),
(721,'미드나잇블루',0,'57',0,0,38,0,1),
(720,'블랙',0,'57',0,0,30,0,1),
(713,'푸',0,'56',0,0,50,0,1),
(712,'데이지',0,'56',0,0,50,0,1),
(711,'도날드',0,'56',0,0,50,0,1),
(710,'미니',0,'56',0,0,49,0,1),
(709,'미키',0,'56',0,0,49,0,1),
(703,'후드곰',0,'55',0,0,49,0,1),
(702,'두루',0,'55',0,0,50,0,1),
(701,'쏘씨',0,'55',0,0,50,0,1),
(700,'후드지방',0,'55',0,0,49,0,1),
(699,'달위에우주인',0,'55',0,0,50,0,1),
(698,'3입지방',0,'55',0,0,50,0,1),
(697,'곰고미',0,'55',0,0,48,0,1),
(696,'블랙',0,'54',0,0,49,0,1),
(695,'그레이',0,'54',0,0,49,0,1),
(694,'레드와인',0,'54',0,0,49,0,1),
(693,'브라운',0,'53',0,0,11111,0,1),
(692,'레드',0,'53',0,0,11111,0,1),
(691,'네이비',0,'53',0,0,11111,0,1),
(690,'블랙',0,'53',0,0,11111,0,1);

/*Table structure for table `shop_goods_plan` */

DROP TABLE IF EXISTS `shop_goods_plan`;

CREATE TABLE `shop_goods_plan` (
  `pl_no` int(11) NOT NULL AUTO_INCREMENT COMMENT '주키',
  `mb_id` varchar(20) NOT NULL COMMENT '가맹점아이디',
  `pl_name` varchar(255) NOT NULL COMMENT '기획전명',
  `pl_it_code` text NOT NULL COMMENT '관련상품코드',
  `pl_limg` varchar(255) NOT NULL COMMENT '목록이미지',
  `pl_bimg` varchar(255) NOT NULL COMMENT '상단이미지',
  `pl_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '노출여부',
  PRIMARY KEY (`pl_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='상품 기획전 테이블';

/*Data for the table `shop_goods_plan` */

/*Table structure for table `shop_goods_qa` */

DROP TABLE IF EXISTS `shop_goods_qa`;

CREATE TABLE `shop_goods_qa` (
  `iq_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '주키',
  `mb_id` varchar(50) NOT NULL COMMENT '회원아이디',
  `seller_id` varchar(20) NOT NULL COMMENT '판매자아이디',
  `gs_id` varchar(20) NOT NULL COMMENT '상품주키',
  `iq_ty` varchar(20) NOT NULL COMMENT '구분',
  `iq_secret` tinyint(4) NOT NULL DEFAULT '0' COMMENT '비밀글',
  `iq_name` varchar(50) NOT NULL COMMENT '이름',
  `iq_email` varchar(50) NOT NULL COMMENT '이메일',
  `iq_hp` varchar(30) NOT NULL COMMENT '핸드폰',
  `iq_subject` varchar(255) NOT NULL COMMENT '제목',
  `iq_question` text NOT NULL COMMENT '질문',
  `iq_answer` text NOT NULL COMMENT '답변',
  `iq_reply` tinyint(4) NOT NULL DEFAULT '0' COMMENT '답변여부',
  `iq_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '등록일시',
  `iq_ip` varchar(30) NOT NULL COMMENT '작성자IP',
  PRIMARY KEY (`iq_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='상품 문의 테이블';

/*Data for the table `shop_goods_qa` */

/*Table structure for table `shop_goods_relation` */

DROP TABLE IF EXISTS `shop_goods_relation`;

CREATE TABLE `shop_goods_relation` (
  `gs_id` varchar(20) NOT NULL COMMENT '상품주키',
  `gs_id2` varchar(20) NOT NULL COMMENT '연관상품주키',
  `ir_no` int(11) NOT NULL DEFAULT '0' COMMENT '등록순',
  PRIMARY KEY (`gs_id`,`gs_id2`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='연관 상품 테이블';

/*Data for the table `shop_goods_relation` */

/*Table structure for table `shop_goods_review` */

DROP TABLE IF EXISTS `shop_goods_review`;

CREATE TABLE `shop_goods_review` (
  `index_no` int(11) NOT NULL AUTO_INCREMENT COMMENT '주키',
  `mb_id` varchar(20) NOT NULL COMMENT '회원아이디',
  `pt_id` varchar(20) NOT NULL COMMENT '가맹점아이디',
  `seller_id` varchar(20) NOT NULL COMMENT '판매자아이디',
  `gs_id` int(11) NOT NULL DEFAULT '0' COMMENT '상품주키',
  `score` tinyint(4) NOT NULL DEFAULT '0' COMMENT '평점',
  `memo` text NOT NULL COMMENT '내용',
  `reg_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '등록일시',
  PRIMARY KEY (`index_no`),
  KEY `mb_id` (`mb_id`),
  KEY `seller_id` (`seller_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='구매후기 테이블';

/*Data for the table `shop_goods_review` */

/*Table structure for table `shop_goods_type` */

DROP TABLE IF EXISTS `shop_goods_type`;

CREATE TABLE `shop_goods_type` (
  `gt_no` int(11) NOT NULL AUTO_INCREMENT COMMENT '주키',
  `mb_id` varchar(30) NOT NULL COMMENT '판매자ID',
  `gs_id` int(11) NOT NULL DEFAULT '0' COMMENT '상품주키',
  `it_type1` tinyint(4) NOT NULL DEFAULT '0' COMMENT '영역1',
  `it_type2` tinyint(4) NOT NULL DEFAULT '0' COMMENT '영역2',
  `it_type3` tinyint(4) NOT NULL DEFAULT '0' COMMENT '영역3',
  `it_type4` tinyint(4) NOT NULL DEFAULT '0' COMMENT '영역4',
  `it_type5` tinyint(4) NOT NULL DEFAULT '0' COMMENT '영역5',
  PRIMARY KEY (`gt_no`),
  KEY `mb_id` (`mb_id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COMMENT='상품 진열관리 테이블';

/*Data for the table `shop_goods_type` */

insert  into `shop_goods_type`(`gt_no`,`mb_id`,`gs_id`,`it_type1`,`it_type2`,`it_type3`,`it_type4`,`it_type5`) values 
(65,'admin',53,1,1,1,1,1),
(64,'admin',54,1,1,1,1,1),
(63,'admin',55,1,1,1,1,1),
(62,'admin',56,1,1,1,1,1),
(61,'admin',57,1,1,1,1,1);

/*Table structure for table `shop_inicis_log` */

DROP TABLE IF EXISTS `shop_inicis_log`;

CREATE TABLE `shop_inicis_log` (
  `oid` bigint(20) unsigned NOT NULL,
  `P_TID` varchar(255) NOT NULL,
  `P_MID` varchar(255) NOT NULL,
  `P_AUTH_DT` varchar(255) NOT NULL,
  `P_STATUS` varchar(255) NOT NULL,
  `P_TYPE` varchar(255) NOT NULL,
  `P_OID` varchar(255) NOT NULL,
  `P_FN_NM` varchar(255) NOT NULL,
  `P_AUTH_NO` varchar(255) NOT NULL,
  `P_AMT` int(11) NOT NULL DEFAULT '0',
  `P_RMESG1` varchar(255) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='결제로그 테이블';

/*Data for the table `shop_inicis_log` */

/*Table structure for table `shop_island` */

DROP TABLE IF EXISTS `shop_island`;

CREATE TABLE `shop_island` (
  `is_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '주키',
  `is_name` varchar(255) NOT NULL COMMENT '할증 지역명',
  `is_zip1` varchar(10) NOT NULL COMMENT '우편번호 시작',
  `is_zip2` varchar(10) NOT NULL COMMENT '우편번호 끝',
  `is_price` int(11) NOT NULL DEFAULT '0' COMMENT '추가금액',
  PRIMARY KEY (`is_id`),
  KEY `is_zip1` (`is_zip1`),
  KEY `is_zip2` (`is_zip2`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='지역별 추가배송비 테이블';

/*Data for the table `shop_island` */

/*Table structure for table `shop_leave_log` */

DROP TABLE IF EXISTS `shop_leave_log`;

CREATE TABLE `shop_leave_log` (
  `index_no` int(11) NOT NULL AUTO_INCREMENT COMMENT '주키',
  `mb_id` varchar(20) NOT NULL COMMENT '회원아이디',
  `new_id` varchar(20) NOT NULL COMMENT '신규추천인',
  `old_id` varchar(20) NOT NULL COMMENT '기존추천인',
  `memo` text NOT NULL COMMENT '내용',
  `reg_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '적용일시',
  PRIMARY KEY (`index_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='추천인변경 기록 테이블';

/*Data for the table `shop_leave_log` */

/*Table structure for table `shop_login` */

DROP TABLE IF EXISTS `shop_login`;

CREATE TABLE `shop_login` (
  `lo_ip` varchar(255) NOT NULL COMMENT 'IP',
  `mb_id` varchar(20) NOT NULL COMMENT '회원아이디',
  `lo_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '일시',
  `lo_location` text NOT NULL COMMENT 'location name',
  `lo_url` text NOT NULL COMMENT 'location url',
  PRIMARY KEY (`lo_ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='현재접속자 테이블';

/*Data for the table `shop_login` */

insert  into `shop_login`(`lo_ip`,`mb_id`,`lo_datetime`,`lo_location`,`lo_url`) values 
('210.220.79.254','','2021-03-02 14:42:34','케이스팜 - 국내 휴대폰케이스 다량 보유','/'),
('220.64.104.3','','2021-03-02 14:42:34','케이스팜 - 국내 휴대폰케이스 다량 보유','/'),
('110.45.19.189','admin','2021-03-02 14:52:03','',''),
('110.92.23.141','','2021-03-02 14:47:15','케이스팜 - 국내 휴대폰케이스 다량 보유','/');

/*Table structure for table `shop_logo` */

DROP TABLE IF EXISTS `shop_logo`;

CREATE TABLE `shop_logo` (
  `index_no` int(11) NOT NULL AUTO_INCREMENT COMMENT '주키',
  `mb_id` varchar(20) NOT NULL COMMENT '가맹점ID',
  `basic_logo` varchar(255) NOT NULL COMMENT '대표로고',
  `mobile_logo` varchar(255) NOT NULL COMMENT '모바일로고',
  `sns_logo` varchar(255) NOT NULL COMMENT 'SNS로고',
  `favicon_ico` varchar(255) NOT NULL COMMENT '파비콘',
  PRIMARY KEY (`index_no`),
  KEY `mb_id` (`mb_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='쇼핑몰 로고 테이블';

/*Data for the table `shop_logo` */

insert  into `shop_logo`(`index_no`,`mb_id`,`basic_logo`,`mobile_logo`,`sns_logo`,`favicon_ico`) values 
(1,'admin','rfxfTVW659V8ygaYuqUYSpNGHc1cWN.png','H7r2SAd3W9saUAG21RlhvhYcTHeMGQ.png','7eHyNRyAj8LVYjVYYawFGkj7m3DG4l.png','1mCsNJU4V4kE72TCJbRKXQXD9CcMbr.ico'),
(2,'gamen','l763pWVBkYVMLfD2GPaxHSELMCRtWq.png','Mw8pmVZ9DvgT6nLv5p1rM3NkA2Al2S.png','','zWMa7kAFYacS4AGs55Jq4tKyDjFdTS.ico');

/*Table structure for table `shop_mail` */

DROP TABLE IF EXISTS `shop_mail`;

CREATE TABLE `shop_mail` (
  `ma_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '주키',
  `ma_subject` varchar(255) NOT NULL COMMENT '메일 제목',
  `ma_content` mediumtext NOT NULL COMMENT '메일 내용',
  `ma_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '일시',
  `ma_ip` varchar(255) NOT NULL COMMENT 'IP',
  `ma_last_option` text NOT NULL COMMENT '메일 옵션',
  PRIMARY KEY (`ma_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='회원 메일 관리';

/*Data for the table `shop_mail` */

/*Table structure for table `shop_member` */

DROP TABLE IF EXISTS `shop_member`;

CREATE TABLE `shop_member` (
  `index_no` int(11) NOT NULL AUTO_INCREMENT COMMENT '주키',
  `name` varchar(255) NOT NULL COMMENT '이름',
  `id` varchar(20) NOT NULL COMMENT '아이디',
  `passwd` varchar(255) NOT NULL COMMENT '비밀번호',
  `cash` int(11) NOT NULL DEFAULT '0' COMMENT '예치금',
  `point` int(11) NOT NULL DEFAULT '0' COMMENT '포인트잔액',
  `sns_id` varchar(255) NOT NULL COMMENT 'sns 가입아이디',
  `gubun` varchar(8) NOT NULL DEFAULT '사업자' COMMENT '개인,사업자 구분',
  `company_owner` varchar(64) DEFAULT NULL COMMENT '대표자명',
  `company_saupja_no` varchar(10) DEFAULT NULL COMMENT '사업자등록번호',
  `company_item` varchar(64) DEFAULT NULL COMMENT '업태',
  `company_service` varchar(64) DEFAULT NULL COMMENT '종목',
  `company_tel` varchar(16) DEFAULT NULL COMMENT '회사전화번호',
  `company_fax` varchar(16) DEFAULT NULL COMMENT '회사팩스번호',
  `company_hompage` varchar(256) DEFAULT NULL COMMENT '홈페이지',
  `info_name` varchar(64) DEFAULT NULL COMMENT '담당자명',
  `info_email` varchar(128) DEFAULT NULL COMMENT '담당자 이메일',
  `shop_id` varchar(20) DEFAULT NULL COMMENT '가입쇼핑몰 아이디',
  `pt_id` varchar(20) DEFAULT NULL COMMENT '추천인아이디',
  `grade` tinyint(4) DEFAULT '9' COMMENT '레벨',
  `homepage` varchar(255) NOT NULL COMMENT '개별도메인',
  `theme` varchar(255) NOT NULL DEFAULT 'basic' COMMENT '스킨',
  `mobile_theme` varchar(255) NOT NULL DEFAULT 'basic' COMMENT '모바일스킨',
  `mb_birth` varchar(255) NOT NULL COMMENT '생년월일(8자)',
  `age` char(2) NOT NULL COMMENT '연령대',
  `gender` char(1) NOT NULL DEFAULT 'M' COMMENT '성별',
  `email` varchar(255) NOT NULL COMMENT '이메일',
  `telephone` varchar(255) NOT NULL COMMENT '전화번호',
  `cellphone` varchar(255) NOT NULL COMMENT '핸드폰',
  `zip` char(5) NOT NULL COMMENT '우편번호',
  `addr1` varchar(255) NOT NULL COMMENT '기본주소',
  `addr2` varchar(255) NOT NULL COMMENT '상세주소',
  `addr3` varchar(255) NOT NULL COMMENT '참고항목',
  `addr_jibeon` varchar(255) NOT NULL COMMENT '지번',
  `mailser` char(1) NOT NULL COMMENT '이메일수신',
  `smsser` char(1) NOT NULL COMMENT '문자수신',
  `reg_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '가입일시',
  `today_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '최근 로그인일시',
  `term_date` date NOT NULL DEFAULT '0000-00-00' COMMENT '가맹점만료일',
  `anew_date` date NOT NULL DEFAULT '0000-00-00' COMMENT '가맹점등업일',
  `login_ip` varchar(100) NOT NULL COMMENT '최근 접속아이피',
  `login_sum` int(11) NOT NULL DEFAULT '0' COMMENT '로그인횟수',
  `pay` int(11) NOT NULL DEFAULT '0' COMMENT '가맹점수수료잔액',
  `payment` int(11) NOT NULL DEFAULT '0' COMMENT '추가 판매수수료',
  `payflag` tinyint(4) NOT NULL DEFAULT '0' COMMENT '추가 판매수수료 유형',
  `use_good` tinyint(4) NOT NULL DEFAULT '0' COMMENT '개별 상품판매 허용',
  `use_pg` tinyint(4) NOT NULL DEFAULT '0' COMMENT '개별 PG결제 허용',
  `use_app` tinyint(4) NOT NULL DEFAULT '0' COMMENT '관리자 회원가입 승인',
  `memo` text NOT NULL COMMENT '메모',
  `supply` char(1) NOT NULL COMMENT '공급사여부',
  `lost_certify` varchar(255) NOT NULL COMMENT '아이디/비밀번호찾기 인증',
  `intercept_date` varchar(8) NOT NULL COMMENT '접근차단일',
  `vi_today` int(11) NOT NULL DEFAULT '0' COMMENT '가맹점)오늘접속자집계',
  `vi_yesterday` int(11) DEFAULT '0' COMMENT '가맹점)어제접속자집계',
  `vi_max` int(11) NOT NULL DEFAULT '0' COMMENT '가맹점)최대접속자집계',
  `vi_sum` int(11) NOT NULL DEFAULT '0' COMMENT '가맹점)전체접속자집계',
  `vi_history` varchar(255) NOT NULL COMMENT '접속자집계',
  `mb_certify` varchar(20) NOT NULL COMMENT '본인확인 인증',
  `mb_adult` tinyint(4) NOT NULL DEFAULT '0' COMMENT '성인인증',
  `mb_dupinfo` varchar(255) NOT NULL COMMENT '중복가입 체크',
  `mb_ip` varchar(255) NOT NULL COMMENT 'IP',
  `auth_1` tinyint(4) NOT NULL DEFAULT '0' COMMENT '부운영자 접근권한1',
  `auth_2` tinyint(4) NOT NULL DEFAULT '0' COMMENT '부운영자 접근권한2',
  `auth_3` tinyint(4) NOT NULL DEFAULT '0' COMMENT '부운영자 접근권한3',
  `auth_4` tinyint(4) NOT NULL DEFAULT '0' COMMENT '부운영자 접근권한4',
  `auth_5` tinyint(4) NOT NULL DEFAULT '0' COMMENT '부운영자 접근권한5',
  `auth_6` tinyint(4) NOT NULL DEFAULT '0' COMMENT '부운영자 접근권한6',
  `auth_7` tinyint(4) NOT NULL DEFAULT '0' COMMENT '부운영자 접근권한7',
  `auth_8` tinyint(4) NOT NULL DEFAULT '0' COMMENT '부운영자 접근권한8',
  `auth_9` tinyint(4) NOT NULL DEFAULT '0' COMMENT '부운영자 접근권한9',
  `auth_10` tinyint(4) NOT NULL DEFAULT '0' COMMENT '부운영자 접근권한10',
  PRIMARY KEY (`index_no`),
  KEY `id` (`id`),
  KEY `homepage` (`homepage`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COMMENT='회원 테이블';

/*Data for the table `shop_member` */

insert  into `shop_member`(`index_no`,`name`,`id`,`passwd`,`cash`,`point`,`sns_id`,`gubun`,`company_owner`,`company_saupja_no`,`company_item`,`company_service`,`company_tel`,`company_fax`,`company_hompage`,`info_name`,`info_email`,`shop_id`,`pt_id`,`grade`,`homepage`,`theme`,`mobile_theme`,`mb_birth`,`age`,`gender`,`email`,`telephone`,`cellphone`,`zip`,`addr1`,`addr2`,`addr3`,`addr_jibeon`,`mailser`,`smsser`,`reg_time`,`today_login`,`term_date`,`anew_date`,`login_ip`,`login_sum`,`pay`,`payment`,`payflag`,`use_good`,`use_pg`,`use_app`,`memo`,`supply`,`lost_certify`,`intercept_date`,`vi_today`,`vi_yesterday`,`vi_max`,`vi_sum`,`vi_history`,`mb_certify`,`mb_adult`,`mb_dupinfo`,`mb_ip`,`auth_1`,`auth_2`,`auth_3`,`auth_4`,`auth_5`,`auth_6`,`auth_7`,`auth_8`,`auth_9`,`auth_10`) values 
(55,'케이스킹','gong','*5E49D8DCB92FB2C22FBA856C789474AF5039CE1D',0,3000,'','사업자','김공급','11111111','케이스','전자상거래업','','','','김공급','gong@gong.com','admin','admin',9,'','basic','basic','','','M','gong@gong.com','','01000000000','06133','서울 강남구 테헤란로 125','1','(역삼동, D.A디에이성형외과)','R','Y','Y','2021-03-02 14:39:55','2021-03-02 14:39:55','0000-00-00','0000-00-00','110.45.19.189',0,0,0,0,0,0,1,'','Y','','',0,0,0,0,'','',0,'','110.45.19.189',0,0,0,0,0,0,0,0,0,0),
(44,'관리자','admin','*89C6B530AA78695E257E55D63C00A6EC9AD3E977',630500,0,'','사업자','김민흠','123-45-678','서비스','전자상거래','','','','김승일','speedchk2019@gmail.com','admin','',1,'','basic','basic','','','M','aaa@aaa.com','','01079798580','50653','경남 양산시 물금읍 야리2길 43','','(가촌리, 골든프라자)','R','Y','Y','2021-02-25 16:48:32','2021-03-02 08:59:42','0000-00-00','0000-00-00','110.45.19.189',2,0,0,0,0,0,0,'','Y','','',24,20,32,1229,'오늘:24, 어제:20, 최대:32, 전체:1229','',0,'','112.147.101.109',0,0,0,0,0,0,0,0,0,0);

/*Table structure for table `shop_member_grade` */

DROP TABLE IF EXISTS `shop_member_grade`;

CREATE TABLE `shop_member_grade` (
  `gb_no` int(11) NOT NULL AUTO_INCREMENT COMMENT '번호',
  `gb_name` varchar(50) NOT NULL COMMENT '레벨명',
  `gb_sale` int(11) NOT NULL DEFAULT '0' COMMENT '할인률',
  `gb_sale_unit` int(11) NOT NULL DEFAULT '0' COMMENT '할인률 단위절삭',
  `gb_sale_rate` tinyint(4) NOT NULL DEFAULT '0' COMMENT '할인률 유형',
  `gb_anew_price` int(11) NOT NULL DEFAULT '0' COMMENT '가맹점개설비',
  `gb_term_price` int(11) NOT NULL DEFAULT '0' COMMENT '관리비',
  `gb_visit_pay` int(11) NOT NULL DEFAULT '0' COMMENT '접속수수료(CPC)',
  `gb_promotion` int(11) NOT NULL DEFAULT '0' COMMENT '자동레벨업(누적수익)',
  PRIMARY KEY (`gb_no`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='회원 레벨 테이블';

/*Data for the table `shop_member_grade` */

insert  into `shop_member_grade`(`gb_no`,`gb_name`,`gb_sale`,`gb_sale_unit`,`gb_sale_rate`,`gb_anew_price`,`gb_term_price`,`gb_visit_pay`,`gb_promotion`) values 
(1,'관리자',0,0,0,0,0,0,0),
(2,'회원',38,100,0,0,0,0,0),
(3,'',0,10,0,0,0,0,0),
(4,'VIP',12,100,0,990000,0,0,1000000),
(5,'골드',20,100,0,660000,0,0,500000),
(6,'실버',28,100,0,330000,0,0,0),
(7,'특별회원',12,100,0,0,0,0,0),
(8,'우수회원',20,100,0,0,0,0,0),
(9,'일반회원',28,100,0,0,0,0,0);

/*Table structure for table `shop_member_leave` */

DROP TABLE IF EXISTS `shop_member_leave`;

CREATE TABLE `shop_member_leave` (
  `index_no` int(11) NOT NULL AUTO_INCREMENT COMMENT '주키',
  `mb_id` varchar(20) NOT NULL COMMENT '회원아이디',
  `mb_name` varchar(255) NOT NULL COMMENT '회원명',
  `memo` text NOT NULL COMMENT '메모',
  `other` text NOT NULL COMMENT '기타사항',
  `reg_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '일시',
  PRIMARY KEY (`index_no`),
  KEY `mb_id` (`mb_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='회원 탈퇴기록 테이블';

/*Data for the table `shop_member_leave` */

insert  into `shop_member_leave`(`index_no`,`mb_id`,`mb_name`,`memo`,`other`,`reg_time`) values 
(1,'guest4','guest4','관리자 강제 영구탈퇴처리','','2021-02-22 12:01:36'),
(2,'man2','man2','관리자 강제 영구탈퇴처리','','2021-02-25 16:55:42'),
(3,'man3','man3','관리자 강제 영구탈퇴처리','','2021-02-25 16:55:48');

/*Table structure for table `shop_order` */

DROP TABLE IF EXISTS `shop_order`;

CREATE TABLE `shop_order` (
  `index_no` int(11) NOT NULL AUTO_INCREMENT COMMENT '주키',
  `od_id` varchar(30) NOT NULL COMMENT '주문번호',
  `od_no` varchar(30) NOT NULL COMMENT '일련번호',
  `mb_id` varchar(20) NOT NULL COMMENT '주문자아이디',
  `pt_id` varchar(20) NOT NULL COMMENT '가맹점아이디',
  `gong_id` varchar(20) NOT NULL COMMENT '공급사아이디',
  `shop_id` varchar(20) NOT NULL COMMENT '주문쇼핑몰아이디',
  `dan` tinyint(4) NOT NULL DEFAULT '0' COMMENT '주문상태',
  `paymethod` varchar(255) NOT NULL COMMENT '결제방법',
  `name` varchar(255) NOT NULL COMMENT '주문자명',
  `cellphone` varchar(255) NOT NULL COMMENT '주문자 핸드폰',
  `telephone` varchar(255) NOT NULL COMMENT '주문자 전화번호',
  `email` varchar(255) NOT NULL COMMENT '주문자 이메일',
  `zip` varchar(5) NOT NULL COMMENT '주문자 우편번호',
  `addr1` varchar(255) NOT NULL COMMENT '주문자 기본주소',
  `addr2` varchar(255) NOT NULL COMMENT '주문자 상세주소',
  `addr3` varchar(255) NOT NULL COMMENT '주문자 주소 참고항목',
  `addr_jibeon` varchar(255) NOT NULL COMMENT '주문자 지번주소',
  `b_name` varchar(255) NOT NULL COMMENT '수령자명',
  `b_cellphone` varchar(255) NOT NULL COMMENT '수령자 핸드폰',
  `b_telephone` varchar(255) NOT NULL COMMENT '수령자 전화번호',
  `b_zip` varchar(5) NOT NULL COMMENT '수령자 우편번호',
  `b_addr1` varchar(255) NOT NULL COMMENT '수령자 기본주소',
  `b_addr2` varchar(255) NOT NULL COMMENT '수령자 상세주소',
  `b_addr3` varchar(255) NOT NULL COMMENT '수령자 주소 참고항목',
  `b_addr_jibeon` varchar(255) NOT NULL COMMENT '수령자 지번주소',
  `gs_id` int(11) NOT NULL DEFAULT '0' COMMENT '상품주키',
  `gs_notax` tinyint(4) NOT NULL DEFAULT '0' COMMENT '상품과세유무',
  `seller_id` varchar(20) NOT NULL COMMENT '판매자아이디',
  `sellerpay_yes` tinyint(4) NOT NULL DEFAULT '0' COMMENT '공급사정산유무',
  `sum_point` int(11) NOT NULL DEFAULT '0' COMMENT '총 적립포인트 ',
  `sum_qty` int(11) NOT NULL DEFAULT '0' COMMENT '총 주문수량',
  `goods_price` int(11) NOT NULL DEFAULT '0' COMMENT '총 상품금액',
  `somae_supply_price` int(11) NOT NULL COMMENT '총 소매공급가격',
  `supply_price` int(11) NOT NULL DEFAULT '0' COMMENT '총 공급가격',
  `coupon_price` int(11) NOT NULL DEFAULT '0' COMMENT '쿠폰할인금액',
  `coupon_lo_id` int(11) NOT NULL DEFAULT '0' COMMENT '상품별 쿠폰 shop_coupon_log (필드:lo_id)',
  `coupon_cp_id` int(11) NOT NULL DEFAULT '0' COMMENT '상품별 쿠폰 shop_coupon_log (필드:cp_id)',
  `use_price` int(11) NOT NULL DEFAULT '0' COMMENT '실결제금액',
  `use_point` int(11) NOT NULL DEFAULT '0' COMMENT '포인트결제',
  `baesong_price` int(11) NOT NULL DEFAULT '0' COMMENT '배송비',
  `baesong_price2` int(11) NOT NULL DEFAULT '0' COMMENT '추가배송비',
  `cancel_price` int(11) NOT NULL DEFAULT '0' COMMENT '취소금액',
  `refund_price` int(11) NOT NULL DEFAULT '0' COMMENT '환불금액',
  `bank` varchar(255) NOT NULL COMMENT '입금계좌',
  `deposit_name` varchar(255) NOT NULL COMMENT '입금자명',
  `receipt_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '입금일시',
  `delivery` varchar(255) NOT NULL COMMENT '배송회사|배송추적URL',
  `delivery_no` varchar(255) NOT NULL COMMENT '운송장번호',
  `delivery_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '배송일시',
  `cancel_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '취소일시',
  `return_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '반품완료일시',
  `change_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '교환완료일시',
  `invoice_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '배송완료일시',
  `refund_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '환불완료일시',
  `memo` text NOT NULL COMMENT '주문시전달사항',
  `shop_memo` text NOT NULL COMMENT '관리자메모',
  `user_ok` tinyint(4) NOT NULL DEFAULT '0' COMMENT '구매확정유무',
  `user_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '구매확정일시',
  `taxsave_check` char(1) NOT NULL DEFAULT 'N' COMMENT '현금영수증발급여부',
  `taxsave_yes` char(1) NOT NULL DEFAULT 'N' COMMENT '현금영수증요청',
  `taxbill_check` char(1) NOT NULL DEFAULT 'N' COMMENT '세금계산서발급여부',
  `taxbill_yes` char(1) NOT NULL DEFAULT 'N' COMMENT '세금계산서요청',
  `company_saupja_no` varchar(255) NOT NULL COMMENT '세금계산서(사업자번호)',
  `company_name` varchar(255) NOT NULL COMMENT '세금계산서(회사명)',
  `company_owner` varchar(255) NOT NULL COMMENT '세금계산서(대표자명)',
  `company_addr` varchar(255) NOT NULL COMMENT '세금계산서(사업장주소)',
  `company_item` varchar(255) NOT NULL COMMENT '세금계산서(업태)',
  `company_service` varchar(255) NOT NULL COMMENT '세금계산서(종목)',
  `tax_hp` varchar(255) NOT NULL COMMENT '현금영수증(핸드폰)',
  `tax_saupja_no` varchar(255) NOT NULL COMMENT '현금영수증(사업자번호)',
  `od_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '주문일시',
  `od_mobile` tinyint(4) NOT NULL DEFAULT '0' COMMENT '모바일주문',
  `od_mod_history` text NOT NULL COMMENT '전체취소 처리 내역',
  `od_pwd` varchar(255) NOT NULL COMMENT '주문 비밀번호',
  `od_test` tinyint(4) NOT NULL DEFAULT '0' COMMENT '테스트결제',
  `od_settle_pid` varchar(255) NOT NULL COMMENT 'PG계약 설정아이디',
  `od_pg` varchar(255) NOT NULL COMMENT 'PG 업체',
  `od_tno` varchar(255) NOT NULL COMMENT 'PG 거래번호',
  `od_app_no` varchar(20) NOT NULL COMMENT 'PG 승인번호',
  `od_escrow` tinyint(4) NOT NULL DEFAULT '0' COMMENT '에스크로 결제',
  `od_casseqno` varchar(255) NOT NULL COMMENT '현금영수증 LG',
  `od_tax_flag` tinyint(4) NOT NULL DEFAULT '0' COMMENT '복합과세결제',
  `od_tax_mny` int(11) NOT NULL DEFAULT '0' COMMENT '공급원가',
  `od_vat_mny` int(11) NOT NULL DEFAULT '0' COMMENT '부가세액',
  `od_free_mny` int(11) NOT NULL DEFAULT '0' COMMENT '면세금액',
  `od_cash` tinyint(4) NOT NULL DEFAULT '0' COMMENT '현금영수증 발급',
  `od_cash_no` varchar(255) NOT NULL COMMENT '현금영수증 번호',
  `od_cash_info` text NOT NULL COMMENT '현금영수증 내용',
  `od_goods` longtext NOT NULL COMMENT '주문시상품정보',
  `od_ip` varchar(25) NOT NULL COMMENT '주문IP',
  PRIMARY KEY (`index_no`),
  KEY `member` (`mb_id`),
  KEY `dan` (`dan`),
  KEY `orderdate` (`od_time`),
  KEY `od_id` (`od_id`,`od_no`)
) ENGINE=MyISAM AUTO_INCREMENT=146 DEFAULT CHARSET=utf8 COMMENT='주문 테이블';

/*Data for the table `shop_order` */

/*Table structure for table `shop_order_data` */

DROP TABLE IF EXISTS `shop_order_data`;

CREATE TABLE `shop_order_data` (
  `od_id` bigint(20) unsigned NOT NULL COMMENT '주문번호',
  `mb_id` varchar(20) NOT NULL COMMENT '회원아이디',
  `dt_pg` varchar(255) NOT NULL COMMENT '결제대행사',
  `dt_data` text NOT NULL COMMENT 'POST 값',
  `dt_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '일시',
  KEY `od_id` (`od_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='결제정보 임시저장 테이블';

/*Data for the table `shop_order_data` */

/*Table structure for table `shop_partner` */

DROP TABLE IF EXISTS `shop_partner`;

CREATE TABLE `shop_partner` (
  `index_no` int(11) NOT NULL AUTO_INCREMENT COMMENT '주키',
  `mb_id` varchar(20) NOT NULL COMMENT '회원아이디',
  `state` tinyint(4) NOT NULL DEFAULT '0' COMMENT '승인여부',
  `anew_grade` tinyint(4) NOT NULL DEFAULT '0' COMMENT '신청등급',
  `bank_name` varchar(255) NOT NULL COMMENT '은행명',
  `bank_account` varchar(255) NOT NULL COMMENT '계좌번호',
  `bank_holder` varchar(255) NOT NULL COMMENT '예금주명',
  `shop_name` varchar(255) NOT NULL COMMENT '쇼핑몰명',
  `shop_name_us` varchar(255) NOT NULL COMMENT '쇼핑몰 영문명',
  `saupja_yes` tinyint(4) NOT NULL DEFAULT '0' COMMENT '쇼핑몰 사업자노출 여부',
  `company_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '사업자유형',
  `company_name` varchar(255) NOT NULL COMMENT '회사명',
  `company_saupja_no` varchar(255) NOT NULL COMMENT '사업자등록번호',
  `tongsin_no` varchar(255) NOT NULL COMMENT '통신판매업신고번호',
  `company_tel` varchar(255) NOT NULL COMMENT '대표전화번호',
  `company_fax` varchar(255) NOT NULL COMMENT '팩스번호',
  `company_item` varchar(255) NOT NULL COMMENT '업태',
  `company_service` varchar(255) NOT NULL COMMENT '종목',
  `company_owner` varchar(255) NOT NULL COMMENT '대표자명',
  `company_zip` varchar(5) NOT NULL COMMENT '사업장우편번호',
  `company_addr` varchar(255) NOT NULL COMMENT '사업장주소',
  `company_hours` varchar(255) NOT NULL COMMENT '상담가능시간',
  `company_lunch` varchar(255) NOT NULL COMMENT '점심시간',
  `company_close` varchar(255) NOT NULL COMMENT '휴무일',
  `info_name` varchar(255) NOT NULL COMMENT '정보책임자 이름',
  `info_email` varchar(255) NOT NULL COMMENT '정보책임자 e-mail',
  `receipt_price` int(11) NOT NULL DEFAULT '0' COMMENT '가맹점신청)개설비',
  `deposit_name` varchar(100) NOT NULL COMMENT '가맹점신청)입금자명',
  `pay_settle_case` tinyint(4) NOT NULL DEFAULT '0' COMMENT '가맹점신청)결제방법',
  `bank_acc` varchar(50) NOT NULL COMMENT '가맹점신청)입금계좌',
  `head_title` varchar(255) NOT NULL COMMENT '브라우저 타이틀',
  `meta_author` varchar(255) NOT NULL COMMENT 'Author : 메타태그',
  `meta_description` varchar(255) NOT NULL COMMENT 'description : 메타태그',
  `meta_keywords` text NOT NULL COMMENT 'keywords : 메타태그',
  `add_meta` text NOT NULL COMMENT '추가 메타태그',
  `head_script` text NOT NULL COMMENT 'HEAD 내부 스크립트',
  `tail_script` text NOT NULL COMMENT 'BODY 내부 스크립트',
  `delivery_method` tinyint(4) NOT NULL DEFAULT '1' COMMENT '배송비유형',
  `delivery_price` int(11) NOT NULL DEFAULT '0' COMMENT '기본배송비',
  `delivery_price2` int(11) NOT NULL DEFAULT '0' COMMENT '조건부기본배송비',
  `delivery_minimum` int(11) NOT NULL DEFAULT '0' COMMENT '조건부무료배송비',
  `delivery_company` text NOT NULL COMMENT '배송업체정보',
  `baesong_cont1` text NOT NULL COMMENT '쇼핑몰 배송/교환/반품안내',
  `baesong_cont2` text NOT NULL COMMENT '모바일 배송/교환/반품안내',
  `shop_provision` longtext NOT NULL COMMENT '회원가입약관',
  `shop_private` longtext NOT NULL COMMENT '개인정보 수집 및 이용',
  `shop_policy` longtext NOT NULL COMMENT '개인정보처리방침',
  `de_bank_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '무통장결제 사용',
  `de_card_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '신용카드결제 사용',
  `de_iche_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '계좌이체결제 사용',
  `de_vbank_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '가상계좌결제 사용',
  `de_hp_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '휴대폰결제 사용',
  `de_card_test` tinyint(4) NOT NULL DEFAULT '0' COMMENT '결제 테스트',
  `de_pg_service` varchar(255) NOT NULL COMMENT '결제대행사',
  `de_tax_flag_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '복합과세 결제 사용',
  `de_taxsave_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '현금영수증 발급사용',
  `de_card_noint_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '신용카드 무이자할부사용',
  `de_easy_pay_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'PG사 간편결제 버튼사용',
  `de_escrow_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '에스크로 사용',
  `de_nicepay_mid` varchar(255) NOT NULL COMMENT '나이스페이 상점아이디',
  `de_nicepay_key` varchar(255) NOT NULL COMMENT '나이스페이 상점서명키',
  `de_nicepay_pwd` varchar(255) NOT NULL COMMENT '나이스페이 취소패스워드',
  `de_kcp_mid` varchar(255) NOT NULL COMMENT 'NHN KCP SITE CODE',
  `de_kcp_site_key` varchar(255) NOT NULL COMMENT 'NHN KCP SITE KEY',
  `de_inicis_mid` varchar(255) NOT NULL COMMENT 'KG이니시스 상점아이디',
  `de_inicis_admin_key` varchar(255) NOT NULL COMMENT 'KG이니시스 키패스워드',
  `de_inicis_sign_key` varchar(255) NOT NULL COMMENT 'KG이니시스 웹결제 사인키',
  `de_samsung_pay_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'KG이니시스 삼성페이 버튼 사용',
  `de_lg_mid` varchar(255) NOT NULL COMMENT 'LG유플러스 상점아이디',
  `de_lg_mert_key` varchar(255) NOT NULL COMMENT 'LG유플러스 MertKey',
  `de_kakaopay_mid` varchar(255) NOT NULL COMMENT '카카오페이 상점MID',
  `de_kakaopay_key` varchar(255) NOT NULL COMMENT '카카오페이 상점키',
  `de_kakaopay_enckey` varchar(255) NOT NULL COMMENT '카카오페이 상점 EncKey',
  `de_kakaopay_hashkey` varchar(255) NOT NULL COMMENT '카카오페이 상점 HashKey',
  `de_kakaopay_cancelpwd` varchar(255) NOT NULL COMMENT '카카오페이 결제취소 비밀번호',
  `de_naverpay_mid` varchar(255) NOT NULL COMMENT '네이버페이 가맹점 아이디',
  `de_naverpay_cert_key` varchar(255) NOT NULL COMMENT '네이버페이 가맹점 인증키',
  `de_naverpay_button_key` varchar(255) NOT NULL COMMENT '네이버페이 버튼 인증키',
  `de_naverpay_test` tinyint(4) NOT NULL DEFAULT '0' COMMENT '네이버페이 테스트결제',
  `de_naverpay_mb_id` varchar(255) NOT NULL COMMENT '네이버페이 결제테스트 아이디',
  `de_naverpay_sendcost` varchar(255) NOT NULL COMMENT '네이버페이 추가배송비 안내',
  `de_bank_account` text NOT NULL COMMENT '무통장입금계좌',
  `de_sns_login_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '소셜네트워크 로그인 사용',
  `de_naver_appid` varchar(255) NOT NULL COMMENT '네이버 Client ID',
  `de_naver_secret` varchar(255) NOT NULL COMMENT '네이버 Client Secret',
  `de_facebook_appid` varchar(255) NOT NULL COMMENT '페이스북 앱 ID',
  `de_facebook_secret` varchar(255) NOT NULL COMMENT '페이스북 앱 Secret',
  `de_kakao_rest_apikey` varchar(255) NOT NULL COMMENT '카카오 REST API Key',
  `de_kakao_js_apikey` varchar(255) NOT NULL COMMENT '카카오 Javascript API Key',
  `de_googl_shorturl_apikey` varchar(255) NOT NULL COMMENT '구글 짧은주소 API Key',
  `de_insta_url` varchar(255) NOT NULL COMMENT '인스타그램)URL',
  `de_insta_client_id` varchar(255) NOT NULL COMMENT '인스타그램)CLIENT ID',
  `de_insta_redirect_uri` varchar(255) NOT NULL COMMENT '인스타그램)Valid redirect URIs',
  `de_insta_access_token` varchar(255) NOT NULL COMMENT '인스타그램)ACCESS_TOKEN',
  `de_sns_facebook` varchar(255) NOT NULL COMMENT 'SNS URL)FACEBOOK',
  `de_sns_twitter` varchar(255) NOT NULL COMMENT 'SNS URL)TWITTER',
  `de_sns_instagram` varchar(255) NOT NULL COMMENT 'SNS URL)INSTAGRAM',
  `de_sns_pinterest` varchar(255) NOT NULL COMMENT 'SNS URL)PINTEREST',
  `de_sns_naverblog` varchar(255) NOT NULL COMMENT 'SNS URL)NAVER BLOG',
  `de_sns_naverband` varchar(255) NOT NULL COMMENT 'SNS URL)NAVER BAND',
  `de_sns_kakaotalk` varchar(255) NOT NULL COMMENT 'SNS URL)KAKAOTALK',
  `de_sns_kakaostory` varchar(255) NOT NULL COMMENT 'SNS URL)KAKAOSTORY',
  `shop_intro_yes` tinyint(4) NOT NULL DEFAULT '0' COMMENT '폐쇄몰 사용',
  `cert_admin_yes` tinyint(4) NOT NULL DEFAULT '0' COMMENT '가맹점 인증 후 회원가입',
  `de_skin1_menu` text NOT NULL COMMENT '상단 메뉴바',
  `de_skin1_name` varchar(255) NOT NULL COMMENT '카테고리별 베스트 타이틀',
  `de_skin1_best` text NOT NULL COMMENT '카테고리별 베스트 상품',
  `de_pname_1` varchar(255) NOT NULL COMMENT '메뉴명1',
  `de_pname_2` varchar(255) NOT NULL COMMENT '메뉴명2',
  `de_pname_3` varchar(255) NOT NULL COMMENT '메뉴명3',
  `de_pname_4` varchar(255) NOT NULL COMMENT '메뉴명4',
  `de_pname_5` varchar(255) NOT NULL COMMENT '메뉴명5',
  `de_pname_6` varchar(255) NOT NULL COMMENT '메뉴명6',
  `de_pname_7` varchar(255) NOT NULL COMMENT '메뉴명7',
  `de_pname_8` varchar(255) NOT NULL COMMENT '메뉴명8',
  `memo` text NOT NULL COMMENT '전달사항',
  `reg_signature_json` text NOT NULL COMMENT '서명',
  `reg_ip` varchar(30) NOT NULL COMMENT 'IP',
  `reg_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '신청일시',
  `update_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '최근수정일시',
  PRIMARY KEY (`index_no`),
  KEY `mb_id` (`mb_id`),
  KEY `state` (`state`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='가맹점 테이블';

/*Data for the table `shop_partner` */

/*Table structure for table `shop_partner_pay` */

DROP TABLE IF EXISTS `shop_partner_pay`;

CREATE TABLE `shop_partner_pay` (
  `pp_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '주키',
  `mb_id` varchar(20) NOT NULL COMMENT '회원아이디',
  `pp_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '일시',
  `pp_content` varchar(255) NOT NULL COMMENT '수수료내역',
  `pp_pay` int(11) NOT NULL DEFAULT '0' COMMENT '지급수수료',
  `pp_use_pay` int(11) NOT NULL DEFAULT '0' COMMENT '사용수수료',
  `pp_balance` int(11) NOT NULL DEFAULT '0' COMMENT '지급당시 수수료잔액',
  `pp_rel_table` varchar(20) NOT NULL COMMENT '관련 테이블',
  `pp_rel_id` varchar(20) NOT NULL COMMENT '관련 아이디',
  `pp_rel_action` varchar(255) NOT NULL COMMENT '관련 작업',
  `pp_referer` text NOT NULL COMMENT '접속 레퍼러',
  `pp_agent` varchar(255) NOT NULL COMMENT '접속 브라우저',
  PRIMARY KEY (`pp_id`),
  KEY `index1` (`mb_id`,`pp_rel_table`,`pp_rel_id`,`pp_rel_action`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='가맹점 수수료 테이블';

/*Data for the table `shop_partner_pay` */

/*Table structure for table `shop_partner_payrun` */

DROP TABLE IF EXISTS `shop_partner_payrun`;

CREATE TABLE `shop_partner_payrun` (
  `index_no` int(11) NOT NULL AUTO_INCREMENT COMMENT '주키',
  `mb_id` varchar(20) NOT NULL COMMENT '회원아이디',
  `state` tinyint(4) NOT NULL DEFAULT '0' COMMENT '상태',
  `balance` int(11) NOT NULL DEFAULT '0' COMMENT '출금요청액',
  `paytax` int(11) NOT NULL DEFAULT '0' COMMENT '세액공제',
  `paynet` int(11) NOT NULL DEFAULT '0' COMMENT '실수령액',
  `bank_name` varchar(255) NOT NULL COMMENT '은행명',
  `bank_account` varchar(255) NOT NULL COMMENT '계좌번호',
  `bank_holder` varchar(255) NOT NULL COMMENT '예금주명',
  `reg_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '일시',
  PRIMARY KEY (`index_no`),
  KEY `mb_id` (`mb_id`),
  KEY `state` (`state`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='가맹점 수수료 출금요청 테이블';

/*Data for the table `shop_partner_payrun` */

/*Table structure for table `shop_partner_term` */

DROP TABLE IF EXISTS `shop_partner_term`;

CREATE TABLE `shop_partner_term` (
  `index_no` int(11) NOT NULL AUTO_INCREMENT COMMENT '주키',
  `mb_id` varchar(20) NOT NULL COMMENT '회원아이디',
  `state` tinyint(4) NOT NULL DEFAULT '0' COMMENT '상태',
  `expire_date` int(11) NOT NULL DEFAULT '0' COMMENT '연장개월수',
  `term_price` int(11) NOT NULL DEFAULT '0' COMMENT '결제금액',
  `pay_method` varchar(255) NOT NULL COMMENT '결제방법',
  `deposit_name` varchar(255) NOT NULL COMMENT '입금자명',
  `bank_account` varchar(255) NOT NULL COMMENT '본사입금계좌',
  `reg_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '일시',
  PRIMARY KEY (`index_no`),
  KEY `mb_id` (`mb_id`),
  KEY `state` (`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='가맹점 기간연장 테이블';

/*Data for the table `shop_partner_term` */

/*Table structure for table `shop_point` */

DROP TABLE IF EXISTS `shop_point`;

CREATE TABLE `shop_point` (
  `po_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '주키',
  `mb_id` varchar(20) NOT NULL DEFAULT '' COMMENT '회원아이디',
  `po_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '지급일시',
  `po_content` varchar(255) NOT NULL DEFAULT '' COMMENT '포인트내역',
  `po_point` int(11) NOT NULL DEFAULT '0' COMMENT '지급포인트',
  `po_use_point` int(11) NOT NULL DEFAULT '0' COMMENT '사용포인트',
  `po_expired` tinyint(4) NOT NULL DEFAULT '0' COMMENT '포인트만료 유무',
  `po_expire_date` date NOT NULL DEFAULT '0000-00-00' COMMENT '포인트만료일',
  `po_mb_point` int(11) NOT NULL DEFAULT '0' COMMENT '지급당시 회원포인트',
  `po_rel_table` varchar(20) NOT NULL DEFAULT '' COMMENT '관련 테이블',
  `po_rel_id` varchar(20) NOT NULL DEFAULT '' COMMENT '관련 아이디',
  `po_rel_action` varchar(255) NOT NULL DEFAULT '' COMMENT '관련 작업',
  `od_no` varchar(30) DEFAULT NULL COMMENT '주문번호',
  `gubun` varchar(32) DEFAULT NULL COMMENT '포인트구분',
  PRIMARY KEY (`po_id`),
  KEY `index1` (`mb_id`,`po_rel_table`,`po_rel_id`,`po_rel_action`),
  KEY `index2` (`po_expire_date`)
) ENGINE=MyISAM AUTO_INCREMENT=175 DEFAULT CHARSET=utf8 COMMENT='회원 포인트 테이블';

/*Data for the table `shop_point` */

insert  into `shop_point`(`po_id`,`mb_id`,`po_datetime`,`po_content`,`po_point`,`po_use_point`,`po_expired`,`po_expire_date`,`po_mb_point`,`po_rel_table`,`po_rel_id`,`po_rel_action`,`od_no`,`gubun`) values 
(174,'gong','2021-03-02 14:39:55','회원가입 축하',3000,0,0,'9999-12-31',3000,'@member','gong','회원가입','','');

/*Table structure for table `shop_popular` */

DROP TABLE IF EXISTS `shop_popular`;

CREATE TABLE `shop_popular` (
  `pp_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '주키',
  `pt_id` varchar(20) NOT NULL COMMENT '가맹점아이디',
  `pp_word` varchar(50) NOT NULL COMMENT '검색어',
  `pp_date` date NOT NULL DEFAULT '0000-00-00' COMMENT '검색일',
  `pp_ip` varchar(50) NOT NULL COMMENT 'IP',
  PRIMARY KEY (`pp_id`),
  UNIQUE KEY `index1` (`pt_id`,`pp_word`,`pp_date`,`pp_ip`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='인기검색어 테이블';

/*Data for the table `shop_popular` */

insert  into `shop_popular`(`pp_id`,`pt_id`,`pp_word`,`pp_date`,`pp_ip`) values 
(1,'admin','아이폰','2021-02-02','110.45.19.189'),
(2,'admin','카카오','2021-02-02','110.45.19.189'),
(3,'admin','test','2021-02-18','110.45.19.189');

/*Table structure for table `shop_popup` */

DROP TABLE IF EXISTS `shop_popup`;

CREATE TABLE `shop_popup` (
  `index_no` int(11) NOT NULL AUTO_INCREMENT COMMENT '주키',
  `mb_id` varchar(50) NOT NULL COMMENT '가맹점아이디',
  `state` tinyint(4) NOT NULL DEFAULT '0' COMMENT '노출여부',
  `device` varchar(10) NOT NULL DEFAULT 'both' COMMENT '접속기기',
  `width` int(11) NOT NULL DEFAULT '0' COMMENT '팝업 가로크기',
  `height` int(11) NOT NULL DEFAULT '0' COMMENT '팝업 세로크기',
  `top` int(11) NOT NULL DEFAULT '0' COMMENT '팝업 상단위치',
  `lefts` int(11) NOT NULL DEFAULT '0' COMMENT '팝업 좌측위치',
  `title` varchar(255) NOT NULL COMMENT '팝업 제목',
  `begin_date` date NOT NULL DEFAULT '0000-00-00' COMMENT '팝업 시작일',
  `end_date` date NOT NULL DEFAULT '0000-00-00' COMMENT '팝업 종료일',
  `memo` text NOT NULL COMMENT '팝업 내용',
  PRIMARY KEY (`index_no`),
  KEY `mb_id` (`mb_id`),
  KEY `state` (`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='팝업 테이블';

/*Data for the table `shop_popup` */

/*Table structure for table `shop_qa` */

DROP TABLE IF EXISTS `shop_qa`;

CREATE TABLE `shop_qa` (
  `index_no` int(11) NOT NULL AUTO_INCREMENT COMMENT '주키',
  `mb_id` varchar(20) NOT NULL COMMENT '회원아이디',
  `catename` varchar(100) NOT NULL COMMENT '분류',
  `subject` varchar(255) NOT NULL COMMENT '제목',
  `memo` text NOT NULL COMMENT '내용',
  `wdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '등록일시',
  `result_yes` tinyint(4) NOT NULL DEFAULT '0' COMMENT '답변유무',
  `result_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '답변일시',
  `reply` text NOT NULL COMMENT '답변내용',
  `replyer` varchar(30) NOT NULL COMMENT '답변자',
  `email` varchar(100) NOT NULL COMMENT '작성자 이메일',
  `cellphone` varchar(30) NOT NULL COMMENT '작성자 핸드폰',
  `email_send_yes` tinyint(4) NOT NULL DEFAULT '0' COMMENT '이메일 답변수신요청',
  `sms_send_yes` tinyint(4) NOT NULL DEFAULT '0' COMMENT '문자 답변수신요청',
  `ip` varchar(20) NOT NULL COMMENT '작성자 IP',
  PRIMARY KEY (`index_no`),
  KEY `mb_id` (`mb_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='1:1 문의 테이블';

/*Data for the table `shop_qa` */

/*Table structure for table `shop_qa_cate` */

DROP TABLE IF EXISTS `shop_qa_cate`;

CREATE TABLE `shop_qa_cate` (
  `index_no` int(11) NOT NULL AUTO_INCREMENT COMMENT '주키',
  `catename` varchar(255) NOT NULL COMMENT '분류명',
  `isuse` char(1) NOT NULL DEFAULT 'Y' COMMENT '사용여부',
  PRIMARY KEY (`index_no`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='1:1 문의 분류 테이블';

/*Data for the table `shop_qa_cate` */

insert  into `shop_qa_cate`(`index_no`,`catename`,`isuse`) values 
(1,'주문결제','Y'),
(2,'배송문의','Y'),
(3,'반품문의','Y'),
(4,'취소문의','Y'),
(5,'교환문의','Y'),
(6,'적립금','Y'),
(7,'회원관련','Y'),
(8,'기타문의','Y');

/*Table structure for table `shop_seller` */

DROP TABLE IF EXISTS `shop_seller`;

CREATE TABLE `shop_seller` (
  `index_no` int(11) NOT NULL AUTO_INCREMENT COMMENT '주키',
  `mb_id` varchar(20) NOT NULL COMMENT '회원아이디',
  `state` tinyint(4) NOT NULL DEFAULT '0' COMMENT '승인상태',
  `seller_open` tinyint(4) NOT NULL DEFAULT '1' COMMENT '전체 상품진열 상태',
  `seller_code` varchar(20) NOT NULL COMMENT '공급사 코드',
  `seller_item` varchar(255) NOT NULL COMMENT '제공상품',
  `company_name` varchar(255) NOT NULL COMMENT '공급사명',
  `company_saupja_no` varchar(255) NOT NULL COMMENT '사업자등록번호',
  `company_tel` varchar(255) NOT NULL COMMENT '대표전화번호',
  `company_fax` varchar(255) NOT NULL COMMENT '팩스번호',
  `company_item` varchar(255) NOT NULL COMMENT '업태',
  `company_service` varchar(255) NOT NULL COMMENT '종목',
  `company_owner` varchar(255) NOT NULL COMMENT '대표자명',
  `company_zip` char(5) NOT NULL COMMENT '우편번호',
  `company_addr1` varchar(255) NOT NULL COMMENT '기본주소',
  `company_addr2` varchar(255) NOT NULL COMMENT '상세주소',
  `company_addr3` varchar(255) NOT NULL COMMENT '참고항목',
  `company_addr_jibeon` varchar(255) NOT NULL COMMENT '지번',
  `company_hompage` varchar(255) NOT NULL COMMENT '홈페이지',
  `info_name` varchar(100) NOT NULL COMMENT '담당자명',
  `info_tel` varchar(100) NOT NULL COMMENT '담당자 핸드폰',
  `info_email` varchar(100) NOT NULL COMMENT '담당자 이메일',
  `bank_name` varchar(100) NOT NULL COMMENT '은행명',
  `bank_account` varchar(100) NOT NULL COMMENT '계좌번호',
  `bank_holder` varchar(100) NOT NULL COMMENT '예금주명',
  `delivery_method` tinyint(4) NOT NULL DEFAULT '1' COMMENT '배송비유형',
  `delivery_price` int(11) NOT NULL DEFAULT '0' COMMENT '기본배송비',
  `delivery_price2` int(11) NOT NULL DEFAULT '0' COMMENT '조건부 기본배송비',
  `delivery_minimum` int(11) NOT NULL DEFAULT '0' COMMENT '조건부무료배송비',
  `delivery_company` text NOT NULL COMMENT '배송업체정보',
  `baesong_cont1` text NOT NULL COMMENT '쇼핑몰 배송/교환/반품안내',
  `baesong_cont2` text NOT NULL COMMENT '모바일 배송/교환/반품안내',
  `memo` text NOT NULL COMMENT '전달사항',
  `reg_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '신청일시',
  `update_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '수정일시',
  PRIMARY KEY (`index_no`),
  KEY `mb_id` (`mb_id`),
  KEY `state` (`state`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='공급사 테이블';

/*Data for the table `shop_seller` */

insert  into `shop_seller`(`index_no`,`mb_id`,`state`,`seller_open`,`seller_code`,`seller_item`,`company_name`,`company_saupja_no`,`company_tel`,`company_fax`,`company_item`,`company_service`,`company_owner`,`company_zip`,`company_addr1`,`company_addr2`,`company_addr3`,`company_addr_jibeon`,`company_hompage`,`info_name`,`info_tel`,`info_email`,`bank_name`,`bank_account`,`bank_holder`,`delivery_method`,`delivery_price`,`delivery_price2`,`delivery_minimum`,`delivery_company`,`baesong_cont1`,`baesong_cont2`,`memo`,`reg_time`,`update_time`) values 
(6,'gong',1,1,'AP-100002','1111','케이스킹','','','','','','111','','','','','','','','','','','','',1,0,0,0,'','','','','2021-03-02 14:43:53','2021-03-02 14:43:53'),
(5,'admin',1,1,'AP-100001','케이스','케이스킹','1111','','','1111','1111','김공급','06000','서울 강남구 강남대로 708','2','(압구정동, 한남대교레인보우카폐)','R','','d','d','dd@gong.com','','','',1,0,0,0,'','','','','2021-03-02 14:42:20','2021-03-02 14:42:20');

/*Table structure for table `shop_seller_cal` */

DROP TABLE IF EXISTS `shop_seller_cal`;

CREATE TABLE `shop_seller_cal` (
  `index_no` int(11) NOT NULL AUTO_INCREMENT COMMENT '주키',
  `mb_id` varchar(20) NOT NULL COMMENT '아이디',
  `order_idx` text NOT NULL COMMENT '주문서주키',
  `tot_price` int(111) NOT NULL DEFAULT '0' COMMENT '주문금액',
  `tot_point` int(11) NOT NULL DEFAULT '0' COMMENT '포인트결제',
  `tot_coupon` int(11) NOT NULL DEFAULT '0' COMMENT '쿠폰할인',
  `tot_baesong` int(11) NOT NULL DEFAULT '0' COMMENT '배송비',
  `tot_supply` int(11) NOT NULL DEFAULT '0' COMMENT '공급가총액',
  `tot_seller` int(11) NOT NULL DEFAULT '0' COMMENT '실정산액',
  `tot_partner` int(11) NOT NULL DEFAULT '0' COMMENT '가맹점수수료',
  `tot_admin` int(11) NOT NULL DEFAULT '0' COMMENT '본사마진',
  `reg_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '처리일시',
  PRIMARY KEY (`index_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='공급사 정산내역 테이블';

/*Data for the table `shop_seller_cal` */

/*Table structure for table `shop_sms` */

DROP TABLE IF EXISTS `shop_sms`;

CREATE TABLE `shop_sms` (
  `mb_id` varchar(20) NOT NULL COMMENT '가맹점아이디',
  `cf_sms_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'SMS 사용',
  `cf_sms_type` varchar(255) NOT NULL COMMENT 'SMS 전송유형',
  `cf_sms_recall` varchar(255) NOT NULL COMMENT '발신 전화번호',
  `cf_icode_server_ip` varchar(255) NOT NULL COMMENT '아이코드 아이피',
  `cf_icode_server_port` varchar(255) NOT NULL COMMENT '아이코드 포트번호',
  `cf_icode_id` varchar(255) NOT NULL COMMENT '아이코드 아이디',
  `cf_icode_pw` varchar(255) NOT NULL COMMENT '아이코드 비밀번호',
  `cf_cont1` text NOT NULL COMMENT '회원가입 메세지',
  `cf_cont2` text NOT NULL COMMENT '주문완료 메세지',
  `cf_cont3` text NOT NULL COMMENT '입금확인 메세지',
  `cf_cont4` text NOT NULL COMMENT '상품발주 메세지',
  `cf_cont5` text NOT NULL COMMENT '주문취소 메세지',
  `cf_cont6` text NOT NULL COMMENT '배송완료 메세지',
  `cf_mb_use1` tinyint(4) NOT NULL DEFAULT '0' COMMENT '회원가입시 고객전송',
  `cf_ad_use1` tinyint(4) NOT NULL DEFAULT '0' COMMENT '회원가입시 관리자전송',
  `cf_re_use1` tinyint(4) NOT NULL DEFAULT '0' COMMENT '회원가입시 가맹점전송',
  `cf_sr_use1` tinyint(4) NOT NULL DEFAULT '0' COMMENT '미사용',
  `cf_mb_use2` tinyint(4) NOT NULL DEFAULT '0' COMMENT '주문완료시 고객전송',
  `cf_ad_use2` tinyint(4) NOT NULL DEFAULT '0' COMMENT '주문완료시 관리자전송',
  `cf_re_use2` tinyint(4) NOT NULL DEFAULT '0' COMMENT '주문완료시 가맹점전송',
  `cf_sr_use2` tinyint(4) NOT NULL DEFAULT '0' COMMENT '주문완료시 공급사전송',
  `cf_mb_use3` tinyint(4) NOT NULL DEFAULT '0' COMMENT '입금확인시 고객전송',
  `cf_ad_use3` tinyint(4) NOT NULL DEFAULT '0' COMMENT '입금확인시 관리자전송',
  `cf_re_use3` tinyint(4) NOT NULL DEFAULT '0' COMMENT '입금확인시 가맹점전송',
  `cf_sr_use3` tinyint(4) NOT NULL DEFAULT '0' COMMENT '입금확인시 공급사전송',
  `cf_mb_use4` tinyint(4) NOT NULL DEFAULT '0' COMMENT '상품발주시 고객전송',
  `cf_ad_use4` tinyint(4) NOT NULL DEFAULT '0' COMMENT '상품발주시 관리자전송',
  `cf_re_use4` tinyint(4) NOT NULL DEFAULT '0' COMMENT '상품발주시 가맹점전송',
  `cf_sr_use4` tinyint(4) NOT NULL DEFAULT '0' COMMENT '상품발주시 공급사전송',
  `cf_mb_use5` tinyint(4) NOT NULL DEFAULT '0' COMMENT '주문취소시 고객전송',
  `cf_ad_use5` tinyint(4) NOT NULL DEFAULT '0' COMMENT '주문취소시 관리자전송',
  `cf_re_use5` tinyint(4) NOT NULL DEFAULT '0' COMMENT '주문취소시 가맹점전송',
  `cf_sr_use5` tinyint(4) NOT NULL DEFAULT '0' COMMENT '주문취소시 공급사전송',
  `cf_mb_use6` tinyint(4) NOT NULL DEFAULT '0' COMMENT '배송완료시 고객전송',
  `cf_ad_use6` tinyint(4) NOT NULL DEFAULT '0' COMMENT '배송완료시 관리자전송',
  `cf_re_use6` tinyint(4) NOT NULL DEFAULT '0' COMMENT '배송완료시 가맹점전송',
  `cf_sr_use6` tinyint(4) NOT NULL DEFAULT '0' COMMENT '배송완료시 공급사전송',
  UNIQUE KEY `mb_id` (`mb_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='SMS 테이블';

/*Data for the table `shop_sms` */

insert  into `shop_sms`(`mb_id`,`cf_sms_use`,`cf_sms_type`,`cf_sms_recall`,`cf_icode_server_ip`,`cf_icode_server_port`,`cf_icode_id`,`cf_icode_pw`,`cf_cont1`,`cf_cont2`,`cf_cont3`,`cf_cont4`,`cf_cont5`,`cf_cont6`,`cf_mb_use1`,`cf_ad_use1`,`cf_re_use1`,`cf_sr_use1`,`cf_mb_use2`,`cf_ad_use2`,`cf_re_use2`,`cf_sr_use2`,`cf_mb_use3`,`cf_ad_use3`,`cf_re_use3`,`cf_sr_use3`,`cf_mb_use4`,`cf_ad_use4`,`cf_re_use4`,`cf_sr_use4`,`cf_mb_use5`,`cf_ad_use5`,`cf_re_use5`,`cf_sr_use5`,`cf_mb_use6`,`cf_ad_use6`,`cf_re_use6`,`cf_sr_use6`) values 
('admin',0,'SMS','1600-0000','211.172.232.124','7295','gnd_test','','{이름}님 회원가입을 축하합니다. 가입하신 아디디는 {아이디}입니다.','{이름}님 {주문번호} 주문이 정상적으로 주문완료 되었습니다.','{이름}님 {주문번호} 주문이 입금 확인되었습니다.','{이름}님 {주문번호} 상품이 발송 되었습니다. 배송업체:{업체}, 송장번호:{송장번호}','{이름}님 {주문번호} 상품이 취소 되었습니다.','{이름}님 {주문번호} 상품이 배송완료 되었습니다.',1,1,0,0,1,1,0,1,1,1,0,1,1,1,0,0,1,1,0,1,1,1,0,0);

/*Table structure for table `shop_uniqid` */

DROP TABLE IF EXISTS `shop_uniqid`;

CREATE TABLE `shop_uniqid` (
  `uq_id` bigint(20) unsigned NOT NULL COMMENT '유니크키',
  `uq_ip` varchar(255) NOT NULL COMMENT '생성IP',
  PRIMARY KEY (`uq_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='유니크키 테이블';

/*Data for the table `shop_uniqid` */

insert  into `shop_uniqid`(`uq_id`,`uq_ip`) values 
(20122213214868,'112.147.101.109'),
(20122915372307,'112.147.101.109'),
(20123111361353,'112.147.101.109'),
(21012213073102,'112.147.101.109'),
(21020117521054,'110.45.19.189'),
(21020214315525,'110.45.19.189'),
(21020315344117,'110.45.19.189'),
(21020317350650,'110.45.19.189'),
(21020317360727,'110.45.19.189'),
(21020317365817,'110.45.19.189'),
(21020317372307,'110.45.19.189'),
(21020317374620,'110.45.19.189'),
(21020317421430,'110.45.19.189'),
(21020415301024,'112.147.101.109'),
(21020415342157,'112.147.101.109'),
(21020415400272,'112.147.101.109'),
(21020415441509,'112.147.101.109'),
(21020415485526,'112.147.101.109'),
(21020415490365,'112.147.101.109'),
(21020415492209,'112.147.101.109'),
(21020417235245,'112.147.101.109'),
(21020417251313,'112.147.101.109'),
(21021011002978,'112.147.101.109'),
(21021511430976,'110.45.19.189'),
(21021511460512,'110.45.19.189'),
(21021515380676,'110.45.19.189'),
(21021515431728,'110.45.19.189'),
(21021515532056,'112.147.101.109'),
(21021515561809,'112.147.101.109'),
(21021515574577,'112.147.101.109'),
(21021516025755,'112.147.101.109'),
(21021516073450,'112.147.101.109'),
(21021516074276,'112.147.101.109'),
(21021517562995,'112.147.101.109'),
(21021609291283,'110.45.19.189'),
(21021612022718,'112.147.101.109'),
(21021612531212,'112.147.101.109'),
(21021811220121,'110.45.19.189'),
(21021814073831,'110.45.19.189'),
(21021814140402,'110.45.19.189'),
(21021814171506,'211.36.137.94'),
(21021913113241,'112.147.101.109'),
(21021913302385,'112.147.101.109'),
(21021914041163,'112.147.101.109'),
(21021914121959,'112.147.101.109'),
(21021914154551,'112.147.101.109'),
(21021914170275,'112.147.101.109'),
(21021914222084,'112.147.101.109'),
(21021914223036,'112.147.101.109'),
(21021914332300,'112.147.101.109'),
(21021914342654,'112.147.101.109'),
(21021914343400,'112.147.101.109'),
(21021914351172,'112.147.101.109'),
(21021914354331,'112.147.101.109'),
(21021914545521,'112.147.101.109'),
(21022210393047,'110.45.19.189'),
(21022210415943,'110.45.19.189'),
(21022210441344,'110.45.19.189'),
(21022211050069,'110.45.19.189'),
(21022213223324,'110.45.19.189'),
(21022213345191,'110.45.19.189'),
(21022213460336,'110.45.19.189'),
(21022214083984,'110.45.19.189'),
(21022214290223,'110.45.19.189'),
(21022215053718,'112.147.101.109'),
(21022215192465,'112.147.101.109'),
(21022216013780,'110.45.19.189'),
(21022216184014,'112.147.101.109'),
(21022216235784,'112.147.101.109'),
(21022216580019,'110.45.19.189'),
(21022217081676,'110.45.19.189'),
(21022217083142,'110.45.19.189'),
(21022217294478,'110.45.19.189'),
(21022217380047,'110.45.19.189'),
(21022217430930,'110.45.19.189'),
(21022217531362,'112.147.101.109'),
(21022218012421,'112.147.101.109'),
(21022218035299,'112.147.101.109'),
(21022218063531,'112.147.101.109'),
(21022218070733,'112.147.101.109'),
(21022218072577,'112.147.101.109'),
(21022218094519,'112.147.101.109'),
(21022309064948,'110.45.19.189'),
(21022309085693,'110.45.19.189'),
(21022309363325,'110.45.19.189'),
(21022309493529,'110.45.19.189'),
(21022309501779,'110.45.19.189'),
(21022309561992,'110.45.19.189'),
(21022310010640,'110.45.19.189'),
(21022310030542,'110.45.19.189'),
(21022310222255,'110.45.19.189'),
(21022310222760,'110.45.19.189'),
(21022310361936,'110.45.19.189'),
(21022310362982,'110.45.19.189'),
(21022310515608,'110.45.19.189'),
(21022311181409,'110.45.19.189'),
(21022311245138,'110.45.19.189'),
(21022311375816,'110.45.19.189'),
(21022311380578,'110.45.19.189'),
(21022311380649,'110.45.19.189'),
(21022311385696,'110.45.19.189'),
(21022311432954,'110.45.19.189'),
(21022311433855,'110.45.19.189'),
(21022311524833,'110.45.19.189'),
(21022313015588,'110.45.19.189'),
(21022313080930,'110.45.19.189'),
(21022313283861,'110.45.19.189'),
(21022313370927,'110.45.19.189'),
(21022313594902,'110.45.19.189'),
(21022314203558,'110.45.19.189'),
(21022314285492,'110.45.19.189'),
(21022314314912,'112.147.101.109'),
(21022314320990,'112.147.101.109'),
(21022314324587,'112.147.101.109'),
(21022314375312,'112.147.101.109'),
(21022314451583,'110.45.19.189'),
(21022314453106,'112.147.101.109'),
(21022314473504,'112.147.101.109'),
(21022314481863,'112.147.101.109'),
(21022314491646,'112.147.101.109'),
(21022314553756,'112.147.101.109'),
(21022314562589,'112.147.101.109'),
(21022315021978,'112.147.101.109'),
(21022315025194,'112.147.101.109'),
(21022315033941,'112.147.101.109'),
(21022315094359,'112.147.101.109'),
(21022315145621,'112.147.101.109'),
(21022315162195,'112.147.101.109'),
(21022315185226,'112.147.101.109'),
(21022315192369,'112.147.101.109'),
(21022315195220,'112.147.101.109'),
(21022316423724,'112.147.101.109'),
(21022316462927,'112.147.101.109'),
(21022316475724,'112.147.101.109'),
(21022316475958,'112.147.101.109'),
(21022316490410,'112.147.101.109'),
(21022317372434,'110.45.19.189'),
(21022409423035,'110.45.19.189'),
(21022409563144,'110.45.19.189'),
(21022410031566,'110.45.19.189'),
(21022410065233,'110.45.19.189'),
(21022410103401,'110.45.19.189'),
(21022410134944,'110.45.19.189'),
(21022410185626,'110.45.19.189'),
(21022410223302,'110.45.19.189'),
(21022410372243,'110.45.19.189'),
(21022410401046,'110.45.19.189'),
(21022410401204,'110.45.19.189'),
(21022410411654,'110.45.19.189'),
(21022410443143,'110.45.19.189'),
(21022410555649,'110.45.19.189'),
(21022410565921,'112.147.101.109'),
(21022411002679,'112.147.101.109'),
(21022411005546,'112.147.101.109'),
(21022411032965,'112.147.101.109'),
(21022411033125,'112.147.101.109'),
(21022411042244,'112.147.101.109'),
(21022411051054,'112.147.101.109'),
(21022411055242,'112.147.101.109'),
(21022411083176,'112.147.101.109'),
(21022411085008,'112.147.101.109'),
(21022411093575,'112.147.101.109'),
(21022411095434,'112.147.101.109'),
(21022411124008,'112.147.101.109'),
(21022411153180,'110.45.19.189'),
(21022411163828,'110.45.19.189'),
(21022411334839,'110.45.19.189'),
(21022411411395,'110.45.19.189'),
(21022413275125,'110.45.19.189'),
(21022413511635,'110.45.19.189'),
(21022413573386,'106.101.67.98'),
(21022414010356,'110.45.19.189'),
(21022414080844,'110.45.19.189'),
(21022414150896,'110.45.19.189'),
(21022414383385,'110.45.19.189'),
(21022414450081,'110.45.19.189'),
(21022414480324,'110.45.19.189'),
(21022414503733,'110.45.19.189'),
(21022414515410,'110.45.19.189'),
(21022414531607,'110.45.19.189'),
(21022414554884,'110.45.19.189'),
(21022415005627,'110.45.19.189'),
(21022415103064,'110.45.19.189'),
(21022415154871,'110.45.19.189'),
(21022415304094,'112.147.101.109'),
(21022415345422,'110.45.19.189'),
(21022415390219,'110.45.19.189'),
(21022415422741,'110.45.19.189'),
(21022415452616,'110.45.19.189'),
(21022417062081,'110.45.19.189'),
(21022509140768,'110.45.19.189'),
(21022509142037,'110.45.19.189'),
(21022509143769,'110.45.19.189'),
(21022509145302,'110.45.19.189'),
(21022609160520,'110.45.19.189'),
(21022609165119,'110.45.19.189'),
(21022609400624,'110.45.19.189'),
(21022609413198,'110.45.19.189'),
(21022609573019,'110.45.19.189'),
(21022610084106,'110.45.19.189'),
(21022612020288,'110.45.19.189'),
(21022615250756,'110.45.19.189'),
(21022615440934,'110.45.19.189'),
(21022615504802,'110.45.19.189'),
(21022615553983,'112.147.101.109'),
(21022615563057,'112.147.101.109'),
(21022616015418,'110.45.19.189'),
(21022616052457,'112.147.101.109'),
(21022616071940,'112.147.101.109'),
(21022616074466,'112.147.101.109'),
(21022616083844,'112.147.101.109'),
(21022616094278,'112.147.101.109'),
(21022616101422,'112.147.101.109'),
(21022616110462,'112.147.101.109'),
(21022616112675,'112.147.101.109'),
(21022616120581,'112.147.101.109'),
(21022616123880,'112.147.101.109'),
(21022616130584,'112.147.101.109'),
(21022616134160,'112.147.101.109'),
(21022616135538,'112.147.101.109'),
(21022616143621,'112.147.101.109'),
(21022616170600,'112.147.101.109'),
(21022616182141,'112.147.101.109'),
(21022616203109,'112.147.101.109'),
(21022616221568,'112.147.101.109'),
(21022616231188,'112.147.101.109'),
(21022616311911,'110.45.19.189');

/*Table structure for table `shop_visit` */

DROP TABLE IF EXISTS `shop_visit`;

CREATE TABLE `shop_visit` (
  `vi_id` int(11) NOT NULL DEFAULT '0' COMMENT '주키',
  `mb_id` varchar(30) NOT NULL COMMENT '가맹점아이디',
  `vi_ip` varchar(255) NOT NULL COMMENT '접속IP',
  `vi_date` date NOT NULL DEFAULT '0000-00-00' COMMENT '접속일',
  `vi_time` time NOT NULL DEFAULT '00:00:00' COMMENT '접속시간',
  `vi_referer` text NOT NULL COMMENT '접속 레퍼러',
  `vi_agent` varchar(255) NOT NULL COMMENT '접속 브라우저',
  PRIMARY KEY (`vi_id`),
  UNIQUE KEY `index1` (`vi_ip`,`vi_date`),
  KEY `index2` (`vi_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='접속자 테이블';

/*Data for the table `shop_visit` */

insert  into `shop_visit`(`vi_id`,`mb_id`,`vi_ip`,`vi_date`,`vi_time`,`vi_referer`,`vi_agent`) values 
(1269,'admin','110.92.23.141','2021-03-02','14:47:15','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; wow64; Trident/5.0)'),
(1268,'admin','220.64.104.3','2021-03-02','14:42:34','','facebookexternalhit/1.1; kakaotalk-scrap/1.0; +https://devtalk.kakao.com/t/scrap/33984'),
(1267,'admin','210.220.79.254','2021-03-02','14:42:34','','facebookexternalhit/1.1; kakaotalk-scrap/1.0; +https://devtalk.kakao.com/t/scrap/33984'),
(1266,'admin','119.207.72.72','2021-03-02','13:54:40','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1265,'admin','211.249.40.12','2021-03-02','13:51:58','','Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1'),
(1264,'admin','112.147.101.109','2021-03-02','13:41:18','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36'),
(1262,'admin','220.64.100.1','2021-03-02','13:33:33','','facebookexternalhit/1.1; kakaotalk-scrap/1.0; +https://devtalk.kakao.com/t/scrap/33984'),
(1263,'admin','106.101.128.89','2021-03-02','13:41:04','','Mozilla/5.0 (iPhone; CPU iPhone OS 14_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 KAKAOTALK 9.2.2'),
(1261,'admin','121.53.80.1','2021-03-02','13:33:33','','facebookexternalhit/1.1; kakaotalk-scrap/1.0; +https://devtalk.kakao.com/t/scrap/33984'),
(1260,'admin','119.207.72.154','2021-03-02','13:25:31','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)'),
(1259,'admin','119.207.72.116','2021-03-02','13:07:26','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1258,'admin','119.207.72.73','2021-03-02','11:43:23','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1257,'admin','13.66.139.92','2021-03-02','09:29:36','','Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)'),
(1256,'admin','119.207.72.170','2021-03-02','09:27:55','','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)'),
(1255,'admin','110.45.19.189','2021-03-02','08:58:43','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36'),
(1254,'admin','119.207.72.76','2021-03-02','08:30:18','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1253,'panda1','119.207.72.198','2021-03-02','08:29:24','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36'),
(1252,'admin','119.207.72.117','2021-03-02','07:57:25','','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)'),
(1250,'admin','119.207.72.184','2021-03-02','06:29:43','','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'),
(1251,'admin','119.207.72.113','2021-03-02','06:30:59','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1249,'admin','119.207.72.79','2021-03-02','06:29:37','','Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1248,'admin','23.100.232.233','2021-03-02','06:00:17','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.0; Trident/5.0;  Trident/5.0)'),
(1247,'admin','66.249.79.99','2021-03-02','05:52:12','','Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.188 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'),
(1246,'admin','119.207.72.70','2021-03-02','05:22:28','','Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1245,'admin','119.207.72.69','2021-03-02','05:22:20','','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)'),
(1244,'panda1','119.207.72.197','2021-03-02','00:33:40','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36'),
(1243,'admin','119.207.72.152','2021-03-01','23:51:15','','Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.2)'),
(1242,'admin','119.207.72.151','2021-03-01','23:09:58','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1241,'admin','52.175.245.102','2021-03-01','22:34:36','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0;  Trident/5.0)'),
(1240,'admin','119.207.72.170','2021-03-01','21:30:11','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1239,'panda1','52.43.103.219','2021-03-01','17:10:29','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36'),
(1238,'admin','119.207.72.108','2021-03-01','15:41:08','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1236,'admin','119.207.72.72','2021-03-01','13:22:44','','Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.2)'),
(1237,'admin','119.207.72.71','2021-03-01','13:25:13','','Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1235,'admin','119.207.72.165','2021-03-01','12:07:10','','Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.2)'),
(1234,'admin','119.207.72.79','2021-03-01','12:07:09','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1233,'admin','119.207.72.185','2021-03-01','09:00:04','','Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1231,'admin','119.207.72.69','2021-03-01','08:59:06','','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'),
(1232,'admin','119.207.72.114','2021-03-01','08:59:49','','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'),
(1230,'admin','119.207.72.78','2021-03-01','08:59:04','','Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.2)'),
(1229,'admin','54.218.188.130','2021-03-01','08:54:43','','Mozilla/5.0 (Macintosh; PPC Mac OS X 10.12; rv:52.0) Gecko/20100101 Firefox/52.0'),
(1227,'admin','119.207.72.113','2021-03-01','06:16:25','','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'),
(1228,'admin','119.207.72.109','2021-03-01','07:14:47','','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'),
(1226,'admin','119.207.72.117','2021-03-01','04:02:37','','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'),
(1225,'admin','119.207.72.73','2021-03-01','02:38:21','','Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1224,'admin','119.207.72.171','2021-03-01','02:38:20','','Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.2)'),
(1222,'admin','119.207.72.116','2021-03-01','00:50:15','','Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.2)'),
(1223,'panda1','119.207.72.197','2021-03-01','00:51:25','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36'),
(1221,'admin','119.207.72.174','2021-02-28','22:30:08','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1220,'admin','119.207.72.113','2021-02-28','19:17:19','','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'),
(1218,'panda1','132.145.209.57','2021-02-28','17:31:13','','Mozilla/5.0 (Windows NT 6.1; rv:57.0) Gecko/20100101 Firefox/57.0'),
(1219,'admin','119.207.72.108','2021-02-28','18:55:51','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1216,'panda1','54.212.198.30','2021-02-28','17:18:50','','Go-http-client/1.1'),
(1217,'panda1','44.242.138.42','2021-02-28','17:19:19','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36'),
(1215,'panda1','119.207.72.198','2021-02-28','16:54:15','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36'),
(1214,'admin','119.207.72.172','2021-02-28','13:08:18','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)'),
(1213,'admin','158.101.107.229','2021-02-28','12:26:41','','Mozilla/5.0 (Windows NT 6.1; rv:57.0) Gecko/20100101 Firefox/57.0'),
(1211,'admin','119.207.72.173','2021-02-28','09:19:36','','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'),
(1212,'admin','119.207.72.164','2021-02-28','09:28:00','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)'),
(1210,'admin','119.207.72.74','2021-02-28','08:12:14','','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)'),
(1209,'admin','119.207.72.70','2021-02-28','08:12:12','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1208,'admin','119.207.72.79','2021-02-28','07:49:40','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1207,'admin','119.207.72.142','2021-02-28','06:58:01','','Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1206,'admin','119.207.72.180','2021-02-28','06:57:47','','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'),
(1205,'admin','119.207.72.77','2021-02-28','05:13:31','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1204,'admin','119.207.72.75','2021-02-28','04:45:30','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1202,'admin','119.207.72.73','2021-02-28','03:07:19','','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)'),
(1203,'admin','119.207.72.146','2021-02-28','04:08:20','','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)'),
(1200,'admin','119.207.72.117','2021-02-28','01:20:54','','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'),
(1201,'admin','119.207.72.71','2021-02-28','03:07:13','','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'),
(1199,'panda1','119.207.72.197','2021-02-28','01:01:28','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36'),
(1197,'admin','119.207.72.76','2021-02-27','17:48:39','','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)'),
(1198,'admin','119.207.72.180','2021-02-27','23:24:02','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)'),
(1196,'admin','119.207.72.117','2021-02-27','17:48:35','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1195,'panda1','54.190.194.64','2021-02-27','17:15:38','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36'),
(1194,'admin','119.207.72.75','2021-02-27','09:19:15','','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'),
(1193,'panda1','119.207.72.197','2021-02-27','09:06:04','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36'),
(1192,'admin','119.207.72.116','2021-02-27','08:45:10','','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)'),
(1191,'admin','119.207.72.184','2021-02-27','08:45:07','','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)'),
(1190,'panda1','192.36.53.165','2021-02-27','07:00:50','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.246'),
(1189,'admin','119.207.72.159','2021-02-27','05:13:18','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1188,'admin','119.207.72.141','2021-02-27','05:13:05','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1187,'panda1','119.207.72.198','2021-02-27','01:10:39','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36'),
(1186,'admin','119.207.72.77','2021-02-27','00:46:16','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1184,'admin','119.207.72.71','2021-02-26','22:47:15','','Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.2)'),
(1185,'admin','119.207.72.72','2021-02-27','00:46:12','','Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.2)'),
(1183,'admin','119.207.72.171','2021-02-26','19:50:59','','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)'),
(1181,'admin','119.207.72.75','2021-02-26','18:30:19','','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)'),
(1182,'admin','119.207.72.113','2021-02-26','19:50:53','','Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.2)'),
(1180,'panda1','52.38.226.21','2021-02-26','17:17:58','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36'),
(1179,'admin','119.207.72.180','2021-02-26','16:56:14','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)'),
(1177,'admin','119.207.72.188','2021-02-26','15:32:51','','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)'),
(1178,'admin','119.207.72.68','2021-02-26','15:32:54','','Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.2)'),
(1176,'admin','112.147.101.109','2021-02-26','10:35:46','http://casefarm.kr/shop/view.php?index_no=57','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(1175,'admin','121.176.175.22','2021-02-26','09:59:53','http://casefarm.kr/admin/','Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko'),
(1174,'admin','110.45.19.189','2021-02-26','09:18:03','http://casefarm.kr/admin/','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36 Edg/88.0.705.74'),
(1173,'admin','119.207.72.111','2021-02-26','07:11:47','','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'),
(1172,'admin','34.221.5.100','2021-02-26','07:07:50','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31'),
(1171,'admin','119.207.72.69','2021-02-26','06:42:35','','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'),
(1169,'admin','119.207.72.159','2021-02-26','04:56:49','','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)'),
(1170,'admin','185.220.100.255','2021-02-26','05:28:35','','Go-http-client/1.1'),
(1168,'admin','119.207.72.109','2021-02-26','04:56:47','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1167,'admin','119.207.72.115','2021-02-26','01:45:42','','Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1166,'admin','119.207.72.73','2021-02-26','01:45:42','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1165,'admin','119.207.72.198','2021-02-26','01:25:34','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36'),
(1163,'admin','13.66.139.92','2021-02-25','17:38:03','','Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)'),
(1164,'admin','216.139.248.2','2021-02-25','19:12:30','','Mozilla/5.0 (Windows; U; MSIE 7.0; Windows NT 6.0; en-US)'),
(1162,'admin','119.207.72.197','2021-02-25','17:31:48','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36'),
(1161,'admin','34.222.202.49','2021-02-25','17:14:14','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36'),
(1160,'admin','112.147.101.109','2021-02-25','16:45:36','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(1159,'admin','119.207.72.159','2021-02-25','15:27:45','','Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.2)'),
(1157,'admin','119.207.72.151','2021-02-25','14:04:37','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)'),
(1158,'admin','119.207.72.68','2021-02-25','15:27:44','','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)'),
(1156,'admin','66.249.79.99','2021-02-25','13:29:31','','Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.188 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'),
(1154,'admin','110.45.19.189','2021-02-25','09:15:17','http://casefarm.kr/admin/','Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko'),
(1155,'admin','119.207.72.114','2021-02-25','11:40:57','','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)'),
(1153,'admin','211.32.81.35','2021-02-25','09:05:26','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36'),
(1152,'admin','119.207.72.73','2021-02-25','08:35:26','','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)'),
(1151,'admin','119.207.72.170','2021-02-25','08:35:21','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1150,'admin','119.207.72.117','2021-02-25','07:36:52','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1149,'admin','119.207.72.71','2021-02-25','06:37:27','','Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.2)'),
(1148,'admin','34.96.130.78','2021-02-25','04:07:36','','Expanse indexes the network perimeters of our customers. If you have any questions or concerns, please reach out to: scaninfo@expanseinc.com'),
(1146,'admin','119.207.72.69','2021-02-25','03:05:32','','Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.2)'),
(1147,'admin','119.207.72.165','2021-02-25','03:08:02','','Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1144,'admin','119.207.72.116','2021-02-24','22:49:40','','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'),
(1145,'guest6','119.207.72.198','2021-02-25','00:06:33','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36'),
(1142,'admin','119.207.72.141','2021-02-24','21:26:53','','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'),
(1143,'admin','106.101.67.122','2021-02-24','21:40:06','http://casefarm.kr/m/','Mozilla/5.0 (Linux; Android 11; SM-G988N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.185 Mobile Safari/537.36'),
(1141,'admin','106.101.67.42','2021-02-24','21:22:17','http://casefarm.kr/m/shop/view.php?gs_id=50','Mozilla/5.0 (Linux; Android 11; SM-G988N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.185 Mobile Safari/537.36'),
(1140,'admin','119.207.72.71','2021-02-24','19:59:06','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1139,'admin','106.101.67.192','2021-02-24','18:39:19','http://casefarm.kr/m/shop/orderform.php','Mozilla/5.0 (Linux; Android 11; SM-G988N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.185 Mobile Safari/537.36'),
(1138,'admin','119.207.72.73','2021-02-24','17:59:38','','Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1136,'admin','119.207.72.111','2021-02-24','17:00:44','','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'),
(1137,'admin','119.207.72.173','2021-02-24','17:28:12','','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)'),
(1135,'admin','119.207.72.78','2021-02-24','16:43:33','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1134,'admin','119.207.72.159','2021-02-24','16:09:28','','Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.2)'),
(1133,'admin','119.207.72.76','2021-02-24','14:52:36','','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'),
(1131,'admin','182.172.56.228','2021-02-24','13:56:43','https://www.google.com/','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36'),
(1132,'admin','119.207.72.158','2021-02-24','14:20:59','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)'),
(1130,'admin','106.101.67.98','2021-02-24','13:56:39','','Mozilla/5.0 (Linux; Android 11; SM-G988N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.185 Mobile Safari/537.36'),
(1129,'admin','112.147.101.109','2021-02-24','13:56:17','http://casefarm.kr/shop/mypage.php','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(1128,'guest6','64.227.7.250','2021-02-24','13:42:04','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36'),
(1127,'admin','119.207.72.113','2021-02-24','10:36:59','','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'),
(1125,'admin','119.207.72.183','2021-02-24','07:40:35','','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'),
(1126,'admin','110.45.19.189','2021-02-24','09:02:33','','Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko'),
(1124,'admin','119.207.72.117','2021-02-24','06:10:50','','Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.2)'),
(1123,'admin','119.207.72.70','2021-02-24','04:57:59','','Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.2)'),
(1122,'admin','119.207.72.67','2021-02-24','04:57:58','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1121,'admin','119.207.72.148','2021-02-24','04:43:29','','Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1120,'admin','66.249.79.127','2021-02-24','04:38:29','http://casefarm.kr/','Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.175 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'),
(1119,'admin','66.249.79.99','2021-02-24','04:38:08','','Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.188 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'),
(1118,'guest6','119.207.72.198','2021-02-24','00:42:46','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36'),
(1117,'admin','119.207.72.111','2021-02-23','20:30:40','','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'),
(1116,'admin','119.207.72.117','2021-02-23','16:59:53','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1115,'admin','119.207.72.174','2021-02-23','13:39:43','','Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.2)'),
(1114,'admin','119.207.72.184','2021-02-23','11:16:54','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1113,'admin','211.36.137.94','2021-02-23','11:14:49','','Mozilla/5.0 (Linux; Android 10; SM-G965N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Mobile Safari/537.36'),
(1112,'admin','112.147.101.109','2021-02-23','11:13:48','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(1110,'admin','210.220.74.0','2021-02-23','10:33:04','','facebookexternalhit/1.1; kakaotalk-scrap/1.0; +https://devtalk.kakao.com/t/scrap/33984'),
(1111,'admin','220.64.100.0','2021-02-23','10:33:04','','facebookexternalhit/1.1; kakaotalk-scrap/1.0; +https://devtalk.kakao.com/t/scrap/33984'),
(1109,'admin','210.182.106.5','2021-02-23','10:25:48','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36'),
(1108,'admin','119.207.72.197','2021-02-23','09:02:53','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36'),
(1107,'admin','110.45.19.189','2021-02-23','08:58:32','http://casefarm.kr/mypage/page.php?code=partner_cashcharge','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36 Edg/88.0.705.74'),
(1106,'admin','66.249.79.97','2021-02-23','07:16:37','','Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.188 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'),
(1105,'admin','119.207.72.78','2021-02-23','06:44:12','','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)'),
(1104,'admin','34.86.35.219','2021-02-23','06:28:09','','Expanse indexes the network perimeters of our customers. If you have any questions or concerns, please reach out to: scaninfo@expanseinc.com'),
(1103,'admin','119.207.72.183','2021-02-23','05:05:54','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)'),
(1102,'admin','119.207.72.71','2021-02-23','03:07:02','','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'),
(1101,'admin','119.207.72.173','2021-02-23','02:23:45','','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)'),
(1100,'admin','119.207.72.198','2021-02-23','01:15:18','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36'),
(1099,'admin','119.207.72.153','2021-02-23','01:07:44','','Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1098,'admin','119.207.72.170','2021-02-23','01:07:39','','Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1097,'admin','119.207.72.69','2021-02-23','00:29:07','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1095,'admin','61.97.48.82','2021-02-22','17:36:00','','Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko'),
(1096,'admin','119.207.72.114','2021-02-22','22:04:57','','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'),
(1094,'admin','119.207.72.71','2021-02-22','17:08:45','','Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.2)'),
(1093,'admin','119.207.72.78','2021-02-22','14:34:04','','Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.2)'),
(1092,'admin','119.207.72.148','2021-02-22','14:33:59','','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'),
(1090,'admin','220.64.104.1','2021-02-22','13:01:31','','facebookexternalhit/1.1; kakaotalk-scrap/1.0; +https://devtalk.kakao.com/t/scrap/33984'),
(1091,'admin','220.64.104.2','2021-02-22','13:01:31','','facebookexternalhit/1.1; kakaotalk-scrap/1.0; +https://devtalk.kakao.com/t/scrap/33984'),
(1089,'admin','119.207.72.116','2021-02-22','12:21:36','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)'),
(1088,'admin','112.147.101.109','2021-02-22','09:49:23','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(1087,'admin','119.207.72.198','2021-02-22','09:41:49','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36'),
(1086,'admin','110.45.19.189','2021-02-22','09:09:38','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(1085,'admin','119.207.72.69','2021-02-22','06:30:19','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1084,'admin','119.207.72.109','2021-02-22','06:30:00','','Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1083,'admin','119.207.72.167','2021-02-22','05:03:46','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)'),
(1082,'admin','119.207.72.197','2021-02-22','01:57:01','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36'),
(1081,'admin','119.207.72.77','2021-02-22','01:17:15','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)'),
(1079,'admin','119.207.72.79','2021-02-22','00:06:13','','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'),
(1080,'admin','119.207.72.76','2021-02-22','00:06:18','','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'),
(1078,'admin','66.249.79.99','2021-02-21','23:24:41','http://casefarm.kr/','Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.175 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'),
(1077,'admin','66.249.79.127','2021-02-21','23:11:30','','Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.153 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'),
(1076,'admin','119.207.72.72','2021-02-21','21:24:28','','Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1075,'admin','119.207.72.77','2021-02-21','21:19:41','','Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1073,'admin','119.207.72.73','2021-02-21','19:15:03','','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'),
(1074,'admin','119.207.72.67','2021-02-21','21:19:34','','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'),
(1072,'admin','119.207.72.159','2021-02-21','18:38:31','','Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.2)'),
(1071,'admin','119.207.72.170','2021-02-21','18:34:17','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1069,'admin','119.207.72.76','2021-02-21','15:26:06','','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)'),
(1070,'admin','119.207.72.163','2021-02-21','18:34:09','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1068,'admin','119.207.72.69','2021-02-21','13:25:31','','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)'),
(1066,'admin','119.207.72.151','2021-02-21','12:02:28','','Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.2)'),
(1067,'admin','119.207.72.115','2021-02-21','12:02:31','','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'),
(1064,'admin','119.207.72.79','2021-02-21','10:43:23','','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'),
(1065,'admin','119.207.72.117','2021-02-21','11:41:14','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)'),
(1062,'admin','119.207.72.185','2021-02-21','06:31:38','','Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.2)'),
(1063,'admin','119.207.72.184','2021-02-21','08:16:55','','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)'),
(1061,'admin','119.207.72.116','2021-02-21','06:31:36','','Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1060,'admin','119.207.72.171','2021-02-21','04:40:09','','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'),
(1059,'admin','119.207.72.71','2021-02-21','02:41:51','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)'),
(1057,'admin','119.207.72.197','2021-02-21','01:15:12','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36'),
(1058,'admin','119.207.72.109','2021-02-21','02:08:15','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1056,'admin','119.207.72.142','2021-02-21','00:14:08','','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)'),
(1055,'admin','34.86.35.49','2021-02-20','22:29:42','','Expanse indexes the network perimeters of our customers. If you have any questions or concerns, please reach out to: scaninfo@expanseinc.com'),
(1054,'admin','119.207.72.197','2021-02-20','09:47:46','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36'),
(1053,'admin','119.207.72.116','2021-02-20','05:17:51','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1052,'admin','119.207.72.71','2021-02-20','04:36:47','','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)'),
(1051,'admin','119.207.72.110','2021-02-20','04:36:44','','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)'),
(1050,'admin','119.207.72.113','2021-02-20','04:11:03','','Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1049,'admin','119.207.72.198','2021-02-20','02:08:15','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36'),
(1048,'admin','119.207.72.163','2021-02-19','20:05:17','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1047,'admin','119.207.72.173','2021-02-19','19:06:18','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1046,'admin','119.207.72.109','2021-02-19','18:49:28','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1044,'admin','220.64.104.5','2021-02-19','18:29:56','','facebookexternalhit/1.1; kakaotalk-scrap/1.0; +https://devtalk.kakao.com/t/scrap/33984'),
(1045,'admin','220.64.106.1','2021-02-19','18:29:57','','facebookexternalhit/1.1; kakaotalk-scrap/1.0; +https://devtalk.kakao.com/t/scrap/33984'),
(1001,'admin','119.207.72.164','2021-02-17','11:31:39','','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)'),
(1002,'gamen','210.220.86.2','2021-02-17','11:51:43','','facebookexternalhit/1.1; kakaotalk-scrap/1.0; +https://devtalk.kakao.com/t/scrap/33984'),
(1003,'admin','210.220.79.248','2021-02-17','11:51:43','','facebookexternalhit/1.1; kakaotalk-scrap/1.0; +https://devtalk.kakao.com/t/scrap/33984'),
(1004,'admin','182.229.12.169','2021-02-17','12:39:58','','Mozilla/5.0 (Linux; Android 10; SM-G973N Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/88.0.4324.152 Mobile Safari/537.36;KAKAOTALK 2109210'),
(1005,'gamen','119.207.72.198','2021-02-17','12:50:41','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36'),
(1006,'admin','211.195.50.88','2021-02-17','14:50:16','','Mozilla/5.0 (Linux; Android 10; LM-G710N Build/QKQ1.191222.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/88.0.4324.152 Mobile Safari/537.36;KAKAOTALK 2109210'),
(1007,'admin','119.207.72.67','2021-02-17','15:07:20','','Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1008,'admin','119.207.72.165','2021-02-17','16:24:25','','Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1009,'gamen','210.220.86.0','2021-02-17','20:35:45','','facebookexternalhit/1.1; kakaotalk-scrap/1.0; +https://devtalk.kakao.com/t/scrap/33984'),
(1010,'admin','210.220.73.0','2021-02-17','20:35:45','','facebookexternalhit/1.1; kakaotalk-scrap/1.0; +https://devtalk.kakao.com/t/scrap/33984'),
(1011,'admin','119.207.72.174','2021-02-17','22:11:16','','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)'),
(1012,'admin','119.207.72.153','2021-02-17','23:15:23','','Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.2)'),
(1013,'admin','119.207.72.169','2021-02-17','23:20:48','','Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1014,'admin','119.207.72.70','2021-02-18','01:06:35','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)'),
(1015,'admin','119.207.72.165','2021-02-18','01:15:36','','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'),
(1016,'admin','119.207.72.77','2021-02-18','04:12:01','','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'),
(1017,'gamen','119.207.72.198','2021-02-18','04:12:02','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36'),
(1018,'admin','119.207.72.71','2021-02-18','04:37:23','','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)'),
(1019,'admin','119.207.72.114','2021-02-18','04:37:29','','Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.2)'),
(1020,'admin','119.207.72.117','2021-02-18','08:23:53','','Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1021,'admin','119.207.72.109','2021-02-18','08:35:41','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1022,'admin','119.207.72.153','2021-02-18','08:35:42','','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'),
(1023,'admin','119.207.72.73','2021-02-18','09:29:44','','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)'),
(1024,'admin','110.45.19.189','2021-02-18','11:17:13','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'),
(1025,'admin','119.207.72.67','2021-02-18','11:43:24','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1026,'gamen','119.207.72.197','2021-02-18','11:50:50','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36'),
(1027,'admin','119.207.72.75','2021-02-18','14:01:17','','Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.2)'),
(1028,'admin','211.36.137.94','2021-02-18','14:15:37','','Mozilla/5.0 (Linux; Android 10; SM-G965N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Mobile Safari/537.36'),
(1029,'admin','119.207.72.78','2021-02-18','14:44:54','','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'),
(1030,'admin','119.207.72.68','2021-02-18','15:43:47','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)'),
(1031,'admin','119.207.72.113','2021-02-18','17:46:11','','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'),
(1032,'admin','119.207.72.74','2021-02-18','18:43:47','','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'),
(1033,'admin','119.207.72.110','2021-02-18','19:23:26','','Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1034,'admin','119.207.72.178','2021-02-18','23:36:12','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)'),
(1035,'gamen','119.207.72.116','2021-02-19','00:02:38','','Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.2)'),
(1036,'gamen','119.207.72.197','2021-02-19','03:11:51','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36'),
(1037,'admin','119.207.72.68','2021-02-19','05:07:57','','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)'),
(1038,'admin','112.147.101.109','2021-02-19','09:36:42','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36'),
(1039,'admin','119.207.72.166','2021-02-19','09:39:55','','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)'),
(1040,'admin','119.207.72.74','2021-02-19','10:12:19','','Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.2)'),
(1041,'admin','119.207.72.151','2021-02-19','10:56:30','','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'),
(1042,'gamen','34.96.130.225','2021-02-19','12:17:25','','Expanse indexes the network perimeters of our customers. If you have any questions or concerns, please reach out to: scaninfo@expanseinc.com'),
(1043,'admin','110.45.19.189','2021-02-19','14:14:20','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36');

/*Table structure for table `shop_visit_sum` */

DROP TABLE IF EXISTS `shop_visit_sum`;

CREATE TABLE `shop_visit_sum` (
  `vs_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '주키',
  `mb_id` varchar(30) NOT NULL COMMENT '가맹점아이디',
  `vs_date` date NOT NULL DEFAULT '0000-00-00' COMMENT '방문일',
  `vs_count` int(11) NOT NULL DEFAULT '0' COMMENT '방문자수',
  PRIMARY KEY (`vs_id`),
  KEY `index1` (`vs_count`),
  KEY `vs_date` (`vs_date`)
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=utf8 COMMENT='접속자 합계 테이블';

/*Data for the table `shop_visit_sum` */

insert  into `shop_visit_sum`(`vs_id`,`mb_id`,`vs_date`,`vs_count`) values 
(1,'admin','2020-12-16',6),
(2,'admin','2020-12-17',20),
(3,'admin','2020-12-18',9),
(4,'admin','2020-12-19',13),
(5,'admin','2020-12-20',32),
(6,'admin','2020-12-21',30),
(7,'admin','2020-12-22',11),
(8,'admin','2020-12-23',25),
(9,'admin','2020-12-24',14),
(10,'admin','2020-12-25',20),
(11,'admin','2020-12-26',16),
(12,'admin','2020-12-27',24),
(13,'admin','2020-12-28',22),
(14,'admin','2020-12-29',29),
(15,'admin','2020-12-30',15),
(16,'admin','2020-12-31',24),
(17,'admin','2021-01-01',23),
(18,'admin','2021-01-02',25),
(19,'admin','2021-01-03',20),
(20,'admin','2021-01-04',20),
(21,'admin','2021-01-05',18),
(22,'admin','2021-01-06',32),
(23,'admin','2021-01-07',26),
(24,'admin','2021-01-08',22),
(25,'admin','2021-01-09',10),
(26,'admin','2021-01-10',18),
(27,'admin','2021-01-11',21),
(28,'admin','2021-01-12',18),
(29,'admin','2021-01-13',3),
(30,'admin','2021-01-14',2),
(31,'admin','2021-01-15',3),
(32,'admin','2021-01-17',1),
(33,'admin','2021-01-18',2),
(34,'admin','2021-01-19',2),
(35,'admin','2021-01-20',2),
(36,'admin','2021-01-21',4),
(37,'admin','2021-01-22',2),
(38,'admin','2021-01-23',1),
(39,'admin','2021-01-24',5),
(40,'admin','2021-01-25',8),
(41,'admin','2021-01-26',7),
(42,'admin','2021-01-27',25),
(43,'admin','2021-01-28',28),
(44,'admin','2021-01-29',16),
(45,'admin','2021-01-30',11),
(46,'admin','2021-01-31',12),
(47,'admin','2021-02-01',28),
(48,'admin','2021-02-02',20),
(49,'admin','2021-02-03',15),
(50,'admin','2021-02-04',9),
(51,'admin','2021-02-05',13),
(52,'admin','2021-02-06',15),
(53,'admin','2021-02-07',12),
(54,'admin','2021-02-08',12),
(55,'admin','2021-02-09',6),
(56,'admin','2021-02-10',6),
(57,'himomohi','2021-02-10',3),
(58,'admin','2021-02-11',18),
(59,'himomohi','2021-02-11',2),
(60,'admin','2021-02-12',18),
(61,'himomohi','2021-02-12',2),
(62,'admin','2021-02-13',28),
(63,'himomohi','2021-02-13',1),
(64,'admin','2021-02-14',27),
(65,'admin','2021-02-15',22),
(66,'gamen','2021-02-15',2),
(67,'admin','2021-02-16',21),
(68,'gamen','2021-02-16',4),
(69,'admin','2021-02-17',28),
(70,'gamen','2021-02-17',4),
(71,'admin','2021-02-18',19),
(72,'gamen','2021-02-18',2),
(73,'gamen','2021-02-19',3),
(74,'admin','2021-02-19',11),
(75,'admin','2021-02-20',7),
(76,'admin','2021-02-21',23),
(77,'admin','2021-02-22',18),
(78,'admin','2021-02-23',21),
(79,'guest6','2021-02-24',2),
(80,'admin','2021-02-24',25),
(81,'guest6','2021-02-25',1),
(82,'admin','2021-02-25',19),
(83,'admin','2021-02-26',19),
(84,'panda1','2021-02-26',1),
(85,'admin','2021-02-27',10),
(86,'panda1','2021-02-27',4),
(87,'panda1','2021-02-28',5),
(88,'admin','2021-02-28',18),
(89,'admin','2021-03-01',20),
(90,'panda1','2021-03-01',2),
(91,'panda1','2021-03-02',2),
(92,'admin','2021-03-02',24);

/*Table structure for table `shop_wish` */

DROP TABLE IF EXISTS `shop_wish`;

CREATE TABLE `shop_wish` (
  `wi_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '주키',
  `mb_id` varchar(20) NOT NULL COMMENT '회원아이디',
  `gs_id` int(11) NOT NULL DEFAULT '0' COMMENT '상품주키',
  `wi_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '일시',
  `wi_ip` varchar(25) NOT NULL COMMENT '회원IP',
  PRIMARY KEY (`wi_id`),
  KEY `mb_id` (`mb_id`,`gs_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='상품 찜 테이블';

/*Data for the table `shop_wish` */

insert  into `shop_wish`(`wi_id`,`mb_id`,`gs_id`,`wi_time`,`wi_ip`) values 
(10,'guest2',47,'2021-02-25 09:14:28','110.45.19.189'),
(9,'guest2',44,'2021-02-24 14:00:20','110.45.19.189'),
(11,'man2',57,'2021-02-26 09:51:52','110.45.19.189'),
(12,'panda3',56,'2021-02-26 15:50:33','110.45.19.189');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
