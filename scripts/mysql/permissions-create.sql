INSERT INTO version (table_name, table_version) values ('address','5');
CREATE TABLE `address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `grp` smallint(5) unsigned NOT NULL DEFAULT 0,
  `ip` char(50) NOT NULL,
  `mask` tinyint(4) NOT NULL DEFAULT 32,
  `port` smallint(5) unsigned NOT NULL DEFAULT 0,
  `proto` char(4) NOT NULL DEFAULT 'any',
  `pattern` char(64) DEFAULT NULL,
  `context_info` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

