DROP TABLE IF EXISTS  `ecs_crons`;
CREATE TABLE `ecs_crons` (
  `cron_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `cron_code` varchar(20) NOT NULL,
  `cron_name` varchar(120) NOT NULL,
  `cron_desc` text,
  `cron_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cron_config` text NOT NULL,
  `thistime` int(10) NOT NULL DEFAULT '0',
  `nextime` int(10) NOT NULL,
  `day` tinyint(2) NOT NULL,
  `week` varchar(1) NOT NULL,
  `hour` varchar(2) NOT NULL,
  `minute` varchar(255) NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `run_once` tinyint(1) NOT NULL DEFAULT '0',
  `allow_ip` varchar(100) NOT NULL DEFAULT '',
  `alow_files` varchar(255) NOT NULL,
  PRIMARY KEY (`cron_id`),
  KEY `nextime` (`nextime`),
  KEY `enable` (`enable`),
  KEY `cron_code` (`cron_code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

insert into `ecs_crons`(`cron_id`,`cron_code`,`cron_name`,`cron_desc`,`cron_order`,`cron_config`,`thistime`,`nextime`,`day`,`week`,`hour`,`minute`,`enable`,`run_once`,`allow_ip`,`alow_files`) values
('2','order_confirm','自动确认收货','自动确认已发货未确认收货的订单','0','a:1:{i:0;a:3:{s:4:"name";s:7:"out_day";s:4:"type";s:4:"text";s:5:"value";s:5:"0.001";}}','1442272195','1442347200','0','','12','30,31','1','0','','');
