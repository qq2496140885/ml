--
-- 表的结构 `sevpn`
--

CREATE TABLE IF NOT EXISTS `sevpn` (
  `id` int(11) NOT NULL,
  `iuser` varchar(16) NOT NULL,
  `isent` bigint(128) DEFAULT '0',
  `irecv` bigint(128) DEFAULT '0',
  `maxll` bigint(128) NOT NULL,
  `pass` varchar(18) NOT NULL,
  `i` int(1) NOT NULL,
  `starttime` varchar(30) DEFAULT NULL,
  `endtime` int(11) DEFAULT '0',
  `down` int(11) DEFAULT '0',
  `upload` int(11) DEFAULT '0',
  `logins` int(11) DEFAULT '0',
  `online` int(1) NOT NULL,
  `osent` bigint(128) DEFAULT '0',
  `orecv` bigint(128) DEFAULT '0',
  `mode` varchar(16) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `dlid` int(11) DEFAULT NULL,
  `tian` int(11) NOT NULL COMMENT '????????'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
