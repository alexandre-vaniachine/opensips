#INSERT INTO version (table_name, table_version) values ('usr_preferences','3');
CREATE TABLE `usr_preferences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(64) NOT NULL DEFAULT '',
  `username` char(64) NOT NULL DEFAULT '0',
  `domain` char(64) NOT NULL DEFAULT '',
  `attribute` char(32) NOT NULL DEFAULT '',
  `type` int(11) NOT NULL DEFAULT 0,
  `value` char(128) NOT NULL DEFAULT '',
  `last_modified` datetime NOT NULL DEFAULT '1900-01-01 00:00:01',
  PRIMARY KEY (`id`),
  KEY `ua_idx` (`uuid`, `attribute`),
  KEY `uda_idx` (`username`, `domain`, `attribute`),
  KEY `value_idx` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


