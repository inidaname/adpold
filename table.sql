-- Create syntax for TABLE 'fulladd'
CREATE TABLE `fulladd` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `stateoforigin` varchar(244) DEFAULT NULL,
  `lgarea` varchar(244) DEFAULT NULL,
  `wardarea` varchar(244) DEFAULT NULL,
  `countryofres` varchar(244) DEFAULT NULL,
  `addressOfRes` varchar(244) DEFAULT NULL,
  `hashUser` varchar(244) DEFAULT NULL,
  `timecreated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Create syntax for TABLE 'fullpro'
CREATE TABLE `fullpro` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(244) DEFAULT NULL,
  `lastname` varchar(244) DEFAULT NULL,
  `picture` varchar(244) DEFAULT NULL,
  `gender` varchar(244) DEFAULT NULL,
  `dateofbirth` varchar(244) DEFAULT NULL,
  `hashUser` varchar(244) DEFAULT NULL,
  `email` varchar(244) DEFAULT NULL,
  `phone` varchar(244) DEFAULT NULL,
  `whatsapp` varchar(244) DEFAULT NULL,
  `timecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Create syntax for TABLE 'randomCode'
CREATE TABLE `randomCode` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hashUser` varchar(244) DEFAULT NULL,
  `randomCode` varchar(15) DEFAULT NULL,
  `dateCreated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Create syntax for TABLE 'visituser'
CREATE TABLE `visituser` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fullname` varchar(244) DEFAULT NULL,
  `contactDetail` varchar(244) DEFAULT NULL,
  `contactType` varchar(244) DEFAULT NULL,
  `hashUser` varchar(244) DEFAULT NULL,
  `timecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
