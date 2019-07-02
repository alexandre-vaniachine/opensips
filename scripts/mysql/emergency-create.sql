#INSERT INTO version (table_name, table_version) values ('emergency_routing','1');
CREATE TABLE `emergency_routing` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `selectiveRoutingID` char(11) NOT NULL,
  `routingESN` int(5) unsigned NOT NULL DEFAULT 0,
  `npa` int(3) unsigned NOT NULL DEFAULT 0,
  `esgwri` char(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#INSERT INTO version (table_name, table_version) values ('emergency_report','1');
CREATE TABLE `emergency_report` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `callid` char(25) NOT NULL,
  `selectiveRoutingID` char(11) NOT NULL,
  `routingESN` int(5) unsigned NOT NULL DEFAULT 0,
  `npa` int(3) unsigned NOT NULL DEFAULT 0,
  `esgwri` char(50) NOT NULL,
  `lro` char(20) NOT NULL,
  `VPC_organizationName` char(50) NOT NULL,
  `VPC_hostname` char(50) NOT NULL,
  `VPC_timestamp` char(30) NOT NULL,
  `result` char(4) NOT NULL,
  `disposition` char(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#INSERT INTO version (table_name, table_version) values ('emergency_service_provider','1');
CREATE TABLE `emergency_service_provider` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `organizationName` char(50) NOT NULL,
  `hostId` char(30) NOT NULL,
  `nenaId` char(50) NOT NULL,
  `contact` char(20) NOT NULL,
  `certUri` char(50) NOT NULL,
  `nodeIP` char(20) NOT NULL,
  `attribution` int(2) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

