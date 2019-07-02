CREATE TABLE `version` (
  `table_name` char(32) NOT NULL,
  `table_version` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

