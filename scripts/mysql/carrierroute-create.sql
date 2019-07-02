#INSERT INTO version (table_name, table_version) values ('carrierroute','3');
CREATE TABLE `carrierroute` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `carrier` int(10) unsigned NOT NULL DEFAULT 0,
  `domain` char(64) NOT NULL DEFAULT '',
  `scan_prefix` char(64) NOT NULL DEFAULT '',
  `flags` int(11) unsigned NOT NULL DEFAULT 0,
  `mask` int(11) unsigned NOT NULL DEFAULT 0,
  `prob` float NOT NULL DEFAULT 0,
  `strip` int(11) unsigned NOT NULL DEFAULT 0,
  `rewrite_host` char(255) NOT NULL DEFAULT '',
  `rewrite_prefix` char(64) NOT NULL DEFAULT '',
  `rewrite_suffix` char(64) NOT NULL DEFAULT '',
  `description` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#INSERT INTO version (table_name, table_version) values ('carrierfailureroute','2');
CREATE TABLE `carrierfailureroute` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `carrier` int(10) unsigned NOT NULL DEFAULT 0,
  `domain` char(64) NOT NULL DEFAULT '',
  `scan_prefix` char(64) NOT NULL DEFAULT '',
  `host_name` char(255) NOT NULL DEFAULT '',
  `reply_code` char(3) NOT NULL DEFAULT '',
  `flags` int(11) unsigned NOT NULL DEFAULT 0,
  `mask` int(11) unsigned NOT NULL DEFAULT 0,
  `next_domain` char(64) NOT NULL DEFAULT '',
  `description` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#INSERT INTO version (table_name, table_version) values ('route_tree','2');
CREATE TABLE `route_tree` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `carrier` char(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

