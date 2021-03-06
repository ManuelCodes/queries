drop table if exists level_20_first_generation;


CREATE TABLE `level_20_first_generation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_pokemon` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `hp` int(11) DEFAULT NULL,
  `attack` int(11) DEFAULT NULL,
  `defense` int(11) DEFAULT NULL,
  `speed` int(11) DEFAULT NULL,
  `special` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_level_20_first_generation_pokemones` (`id_pokemon`),
  CONSTRAINT `fk_level_20_first_generation_pokemones` FOREIGN KEY (`id_pokemon`) REFERENCES `pokemones` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1