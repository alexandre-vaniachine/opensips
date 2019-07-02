#INSERT INTO version (table_name, table_version) values ('cpl','2');
CREATE TABLE `cpl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(64) NOT NULL,
  `domain` char(64) NOT NULL DEFAULT '',
  `cpl_xml` text DEFAULT NULL,
  `cpl_bin` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_idx` (`username`,`domain`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

