
drop table if exists level_25_first_generation_petit_cup;


CREATE TABLE `level_25_first_generation_petit_cup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_rule` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `hp` int(11) DEFAULT NULL,
  `attack` int(11) DEFAULT NULL,
  `defense` int(11) DEFAULT NULL,
  `speed` int(11) DEFAULT NULL,
  `special` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_level_25_first_generation_petit_cup` (`id_rule`),
  CONSTRAINT `fk_level_25_first_generation_petit_cup_rules` FOREIGN KEY (`id_rule`) REFERENCES `petit_cup_rules` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;