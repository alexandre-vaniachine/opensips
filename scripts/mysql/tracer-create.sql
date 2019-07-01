#INSERT INTO version (table_name, table_version) values ('sip_trace','5');
CREATE TABLE `sip_trace` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time_stamp` datetime NOT NULL DEFAULT '1900-01-01 00:00:01',
  `callid` char(255) NOT NULL DEFAULT '',
  `trace_attrs` char(255) DEFAULT NULL,
  `msg` text NOT NULL,
  `method` char(32) NOT NULL DEFAULT '',
  `status` char(255) DEFAULT NULL,
  `from_proto` char(5) NOT NULL,
  `from_ip` char(50) NOT NULL DEFAULT '',
  `from_port` int(5) unsigned NOT NULL,
  `to_proto` char(5) NOT NULL,
  `to_ip` char(50) NOT NULL DEFAULT '',
  `to_port` int(5) unsigned NOT NULL,
  `fromtag` char(64) NOT NULL DEFAULT '',
  `direction` char(4) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `trace_attrs_idx` (`trace_attrs`),
  KEY `date_idx` (`time_stamp`),
  KEY `fromip_idx` (`from_ip`),
  KEY `callid_idx` (`callid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


