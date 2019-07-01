INSERT INTO version (table_name, table_version) values ('freeswitch','1');
CREATE TABLE `freeswitch` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(64) DEFAULT NULL,
  `password` char(64) NOT NULL,
  `ip` char(20) NOT NULL,
  `port` int(11) NOT NULL DEFAULT 8021,
  `events_csv` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

