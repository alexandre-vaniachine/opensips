#INSERT INTO version (table_name, table_version) values ('smpp','1');
CREATE TABLE `smpp` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(255) NOT NULL,
  `ip` char(50) NOT NULL,
  `port` int(5) unsigned NOT NULL,
  `system_id` char(16) NOT NULL,
  `password` char(9) NOT NULL,
  `system_type` char(13) NOT NULL DEFAULT '',
  `src_ton` int(10) unsigned NOT NULL DEFAULT 0,
  `src_npi` int(10) unsigned NOT NULL DEFAULT 0,
  `dst_ton` int(10) unsigned NOT NULL DEFAULT 0,
  `dst_npi` int(10) unsigned NOT NULL DEFAULT 0,
  `session_type` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

