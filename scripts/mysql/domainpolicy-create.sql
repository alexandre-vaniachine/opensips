#INSERT INTO version (table_name, table_version) values ('domainpolicy','3');
CREATE TABLE `domainpolicy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rule` char(255) NOT NULL,
  `type` char(255) NOT NULL,
  `att` char(255) DEFAULT NULL,
  `val` char(128) DEFAULT NULL,
  `description` char(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rav_idx` (`rule`,`att`,`val`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE INDEX rule_idx ON domainpolicy (rule);

