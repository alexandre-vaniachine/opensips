#INSERT INTO version (table_name, table_version) values ('subscriber','7');
CREATE TABLE `subscriber` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(64) NOT NULL DEFAULT '',
  `domain` char(64) NOT NULL DEFAULT '',
  `password` char(25) NOT NULL DEFAULT '',
  `email_address` char(64) NOT NULL DEFAULT '',
  `ha1` char(64) NOT NULL DEFAULT '',
  `ha1b` char(64) NOT NULL DEFAULT '',
  `rpid` char(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_idx` (`username`,`domain`),
  KEY `username_idx` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#INSERT INTO version (table_name, table_version) values ('uri','2');
CREATE TABLE `uri` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(64) NOT NULL DEFAULT '',
  `domain` char(64) NOT NULL DEFAULT '',
  `uri_user` char(64) NOT NULL DEFAULT '',
  `last_modified` datetime NOT NULL DEFAULT '1900-01-01 00:00:01',
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_idx` (`username`,`domain`,`uri_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

