#INSERT INTO version (table_name, table_version) values ('closeddial','1');
CREATE TABLE `closeddial` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(64) NOT NULL DEFAULT '',
  `domain` char(64) NOT NULL DEFAULT '',
  `cd_username` char(64) NOT NULL DEFAULT '',
  `cd_domain` char(64) NOT NULL DEFAULT '',
  `group_id` char(64) NOT NULL DEFAULT '',
  `new_uri` char(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cd_idx1` (`username`,`domain`,`cd_domain`,`cd_username`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE INDEX cd_idx2 ON closeddial (group_id);
CREATE INDEX cd_idx3 ON closeddial (cd_username);
CREATE INDEX cd_idx4 ON closeddial (username);

