#INSERT INTO version (table_name, table_version) values ('dispatcher','8');
CREATE TABLE `dispatcher` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `setid` int(11) NOT NULL DEFAULT 0,
  `destination` char(192) NOT NULL DEFAULT '',
  `socket` char(128) DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `weight` char(64) NOT NULL DEFAULT '1',
  `priority` int(11) NOT NULL DEFAULT 0,
  `attrs` char(128) NOT NULL DEFAULT '',
  `description` char(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

