#INSERT INTO version (table_name, table_version) values ('dialplan','5');
CREATE TABLE `dialplan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dpid` int(11) NOT NULL,
  `pr` int(11) NOT NULL DEFAULT 0,
  `match_op` int(11) NOT NULL,
  `match_exp` char(64) NOT NULL,
  `match_flags` int(11) NOT NULL DEFAULT 0,
  `subst_exp` char(64) DEFAULT NULL,
  `repl_exp` char(32) DEFAULT NULL,
  `timerec` char(255) DEFAULT NULL,
  `disabled` int(11) NOT NULL DEFAULT 0,
  `attrs` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

