#INSERT INTO version (table_name, table_version) values ('load_balancer','2');
CREATE TABLE `load_balancer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(11) unsigned NOT NULL DEFAULT 0,
  `dst_uri` char(128) NOT NULL,
  `resources` char(255) NOT NULL,
  `probe_mode` int(11) unsigned NOT NULL DEFAULT 0,
  `description` char(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE INDEX dsturi_idx ON load_balancer (dst_uri);

