-- Create syntax for 'visitUser'

CREATE TABLE `visitUser` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fullname` varchar(244) DEFAULT NULL,
  `contactDetail` varchar(244) DEFAULT NULL,
  `contactType` varchar(244) DEFAULT NULL,
  `hashUser` varchar(244) DEFAULT NULL,
  `timecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
