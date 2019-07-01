INSERT INTO version (table_name, table_version) values ('silo','6');
CREATE TABLE `silo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `src_addr` char(255) NOT NULL DEFAULT '',
  `dst_addr` char(255) NOT NULL DEFAULT '',
  `username` char(64) NOT NULL DEFAULT '',
  `domain` char(64) NOT NULL DEFAULT '',
  `inc_time` int(11) NOT NULL DEFAULT 0,
  `exp_time` int(11) NOT NULL DEFAULT 0,
  `snd_time` int(11) NOT NULL DEFAULT 0,
  `ctype` char(255) DEFAULT NULL,
  `body` blob DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE INDEX account_idx ON silo (username, domain);

