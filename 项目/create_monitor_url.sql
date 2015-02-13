use url_mon;
CREATE TABLE `montior_url` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `url` char(254) CHARACTER SET latin1 NOT NULL COMMENT '网络地址',
  `location` varchar(256) DEFAULT NULL COMMENT '监控的location\n',
  `method` enum('POST','GET') NOT NULL COMMENT '监控方法',
  `keyword` varchar(128) NOT NULL COMMENT '监控关键字',
  `post_data` varchar(1024) DEFAULT NULL COMMENT '如果method为post时，需要提供该参数',
  `fail_time` int(11) DEFAULT NULL COMMENT '最大的失败次数',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='监控信息基础表\n';

CREATE TABLE `status_code` (
  `ID` int(11) NOT NULL,
  `status_code` int(11) DEFAULT '0' COMMENT '0为正常，错误时加1，计算方法 last_status * cur_status + cur_status',
  `rep_point` varchar(45) NOT NULL COMMENT '上报节点，建议使用IP',
  `rep_time` datetime DEFAULT NULL COMMENT '上报时间\n',
  `last_fail` datetime DEFAULT NULL COMMENT '上次失败时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8
