#INSERT INTO version (table_name, table_version) values ('presentity','5');
CREATE TABLE `presentity` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(64) NOT NULL,
  `domain` char(64) NOT NULL,
  `event` char(64) NOT NULL,
  `etag` char(64) NOT NULL,
  `expires` int(11) NOT NULL,
  `received_time` int(11) NOT NULL,
  `body` blob DEFAULT NULL,
  `extra_hdrs` blob DEFAULT NULL,
  `sender` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `presentity_idx` (`username`,`domain`,`event`,`etag`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#INSERT INTO version (table_name, table_version) values ('active_watchers','12');
CREATE TABLE `active_watchers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `presentity_uri` char(255) NOT NULL,
  `watcher_username` char(64) NOT NULL,
  `watcher_domain` char(64) NOT NULL,
  `to_user` char(64) NOT NULL,
  `to_domain` char(64) NOT NULL,
  `event` char(64) NOT NULL DEFAULT 'presence',
  `event_id` char(64) DEFAULT NULL,
  `to_tag` char(64) NOT NULL,
  `from_tag` char(64) NOT NULL,
  `callid` char(64) NOT NULL,
  `local_cseq` int(11) NOT NULL,
  `remote_cseq` int(11) NOT NULL,
  `contact` char(255) NOT NULL,
  `record_route` text DEFAULT NULL,
  `expires` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 2,
  `reason` char(64) DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT 0,
  `socket_info` char(64) NOT NULL,
  `local_contact` char(255) NOT NULL,
  `sharing_tag` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `active_watchers_idx` (`presentity_uri`,`callid`,`to_tag`,`from_tag`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#INSERT INTO version (table_name, table_version) values ('watchers','4');
CREATE TABLE `watchers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `presentity_uri` char(255) NOT NULL,
  `watcher_username` char(64) NOT NULL,
  `watcher_domain` char(64) NOT NULL,
  `event` char(64) NOT NULL DEFAULT 'presence',
  `status` int(11) NOT NULL,
  `reason` char(64) DEFAULT NULL,
  `inserted_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `watcher_idx` (`presentity_uri`,`watcher_username`,`watcher_domain`,`event`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#INSERT INTO version (table_name, table_version) values ('xcap','4');
CREATE TABLE `xcap` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(64) NOT NULL,
  `domain` char(64) NOT NULL,
  `doc` longblob NOT NULL,
  `doc_type` int(11) NOT NULL,
  `etag` char(64) NOT NULL,
  `source` int(11) NOT NULL,
  `doc_uri` char(255) NOT NULL,
  `port` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_doc_type_idx` (`username`,`domain`,`doc_type`,`doc_uri`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE INDEX source_idx ON xcap (source);

#INSERT INTO version (table_name, table_version) values ('pua','8');
CREATE TABLE `pua` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pres_uri` char(255) NOT NULL,
  `pres_id` char(255) NOT NULL,
  `event` int(11) NOT NULL,
  `expires` int(11) NOT NULL,
  `desired_expires` int(11) NOT NULL,
  `flag` int(11) NOT NULL,
  `etag` char(64) DEFAULT NULL,
  `tuple_id` char(64) DEFAULT NULL,
  `watcher_uri` char(255) DEFAULT NULL,
  `to_uri` char(255) DEFAULT NULL,
  `call_id` char(64) DEFAULT NULL,
  `to_tag` char(64) DEFAULT NULL,
  `from_tag` char(64) DEFAULT NULL,
  `cseq` int(11) DEFAULT NULL,
  `record_route` text DEFAULT NULL,
  `contact` char(255) DEFAULT NULL,
  `remote_contact` char(255) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `extra_headers` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE INDEX del1_idx ON pua (pres_uri, event);
CREATE INDEX del2_idx ON pua (expires);
CREATE INDEX update_idx ON pua (pres_uri, pres_id, flag, event);

