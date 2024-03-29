#INSERT INTO version (table_name, table_version) values ('dialog','10');
CREATE TABLE `dialog` (
  `dlg_id` bigint(10) unsigned NOT NULL,
  `callid` char(255) NOT NULL,
  `from_uri` char(255) NOT NULL,
  `from_tag` char(64) NOT NULL,
  `to_uri` char(255) NOT NULL,
  `to_tag` char(64) NOT NULL,
  `mangled_from_uri` char(64) DEFAULT NULL,
  `mangled_to_uri` char(64) DEFAULT NULL,
  `caller_cseq` char(11) NOT NULL,
  `callee_cseq` char(11) NOT NULL,
  `caller_ping_cseq` int(11) unsigned NOT NULL,
  `callee_ping_cseq` int(11) unsigned NOT NULL,
  `caller_route_set` text DEFAULT NULL,
  `callee_route_set` text DEFAULT NULL,
  `caller_contact` char(255) DEFAULT NULL,
  `callee_contact` char(255) DEFAULT NULL,
  `caller_sock` char(64) NOT NULL,
  `callee_sock` char(64) NOT NULL,
  `state` int(10) unsigned NOT NULL,
  `start_time` int(10) unsigned NOT NULL,
  `timeout` int(10) unsigned NOT NULL,
  `vars` blob DEFAULT NULL,
  `profiles` text DEFAULT NULL,
  `script_flags` int(10) unsigned NOT NULL DEFAULT 0,
  `module_flags` int(10) unsigned NOT NULL DEFAULT 0,
  `flags` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`dlg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

