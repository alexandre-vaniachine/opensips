#INSERT INTO version (table_name, table_version) values ('cachedb','2');
CREATE TABLE `cachedb` (
  `keyname` char(255) NOT NULL,
  `value` text NOT NULL,
  `counter` int(10) NOT NULL DEFAULT 0,
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`keyname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

