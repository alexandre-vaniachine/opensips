#INSERT INTO version (table_name, table_version) values ('rtpengine','1');
CREATE TABLE `rtpengine` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `socket` text NOT NULL,
  `set_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

