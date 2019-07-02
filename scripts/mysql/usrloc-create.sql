#INSERT INTO version (table_name, table_version) values ('location','1013');
CREATE TABLE `location` (
  `contact_id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(64) NOT NULL DEFAULT '',
  `domain` char(64) DEFAULT NULL,
  `contact` char(255) NOT NULL DEFAULT '',
  `received` char(255) DEFAULT NULL,
  `path` char(255) DEFAULT NULL,
  `expires` int(10) unsigned NOT NULL,
  `q` float(10,2) NOT NULL DEFAULT 1.00,
  `callid` char(255) NOT NULL DEFAULT 'Default-Call-ID',
  `cseq` int(11) NOT NULL DEFAULT 13,
  `last_modified` datetime NOT NULL DEFAULT '1900-01-01 00:00:01',
  `flags` int(11) NOT NULL DEFAULT 0,
  `cflags` char(255) DEFAULT NULL,
  `user_agent` char(255) NOT NULL DEFAULT '',
  `socket` char(64) DEFAULT NULL,
  `methods` int(11) DEFAULT NULL,
  `sip_instance` char(255) DEFAULT NULL,
  `kv_store` text DEFAULT NULL,
  `attr` char(255) DEFAULT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

