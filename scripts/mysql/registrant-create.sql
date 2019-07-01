#INSERT INTO version (table_name, table_version) values ('registrant','2');
CREATE TABLE `registrant` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `registrar` char(255) NOT NULL DEFAULT '',
  `proxy` char(255) DEFAULT NULL,
  `aor` char(255) NOT NULL DEFAULT '',
  `third_party_registrant` char(255) DEFAULT NULL,
  `username` char(64) DEFAULT NULL,
  `password` char(64) DEFAULT NULL,
  `binding_URI` char(255) NOT NULL DEFAULT '',
  `binding_params` char(64) DEFAULT NULL,
  `expiry` int(1) unsigned DEFAULT NULL,
  `forced_socket` char(64) DEFAULT NULL,
  `cluster_shtag` char(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `aor_idx` (`aor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

