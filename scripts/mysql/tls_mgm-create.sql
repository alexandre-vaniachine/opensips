#INSERT INTO version (table_name, table_version) values ('tls_mgm','3');
CREATE TABLE `tls_mgm` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `domain` char(64) NOT NULL,
  `match_ip_address` char(255) DEFAULT NULL,
  `match_sip_domain` char(255) DEFAULT NULL,
  `type` int(1) NOT NULL DEFAULT 1,
  `method` char(16) DEFAULT 'SSLv23',
  `verify_cert` int(1) DEFAULT 1,
  `require_cert` int(1) DEFAULT 1,
  `certificate` blob DEFAULT NULL,
  `private_key` blob DEFAULT NULL,
  `crl_check_all` int(1) DEFAULT 0,
  `crl_dir` char(255) DEFAULT NULL,
  `ca_list` mediumblob DEFAULT NULL,
  `ca_dir` char(255) DEFAULT NULL,
  `cipher_list` char(255) DEFAULT NULL,
  `dh_params` blob DEFAULT NULL,
  `ec_curve` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `domain_type_idx` (`domain`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

