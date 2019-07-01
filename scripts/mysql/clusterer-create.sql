#INSERT INTO version (table_name, table_version) values ('clusterer','4');
CREATE TABLE `clusterer` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cluster_id` int(10) NOT NULL,
  `node_id` int(10) NOT NULL,
  `url` char(64) NOT NULL,
  `state` int(1) NOT NULL DEFAULT 1,
  `no_ping_retries` int(10) NOT NULL DEFAULT 3,
  `priority` int(10) NOT NULL DEFAULT 50,
  `sip_addr` char(64) DEFAULT NULL,
  `flags` char(64) DEFAULT NULL,
  `description` char(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `clusterer_idx` (`cluster_id`,`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

