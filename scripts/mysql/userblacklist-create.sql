#INSERT INTO version (table_name, table_version) values ('userblacklist','2');
CREATE TABLE `userblacklist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(64) NOT NULL DEFAULT '',
  `domain` char(64) NOT NULL DEFAULT '',
  `prefix` char(64) NOT NULL DEFAULT '',
  `whitelist` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `userblacklist_idx` (`username`,`domain`,`prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#INSERT INTO version (table_name, table_version) values ('globalblacklist','2');
CREATE TABLE `globalblacklist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `prefix` char(64) NOT NULL DEFAULT '',
  `whitelist` tinyint(1) NOT NULL DEFAULT 0,
  `description` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `globalblacklist_idx` (`prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


