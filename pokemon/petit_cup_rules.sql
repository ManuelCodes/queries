use pokemon;

DROP TABLE IF EXISTS petit_cup_rules;

CREATE TABLE petit_cup_rules (
	id int(11) NOT NULL AUTO_INCREMENT,
	`id_pokemon` int(11) NOT NULL,
	`created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	 PRIMARY KEY (`id`),
	 KEY `fk_petit_cup_rules` (`id_pokemon`),
	 CONSTRAINT `fk_fk_petit_cup_rules_pokemones` FOREIGN KEY (`id_pokemon`) REFERENCES `pokemons` (`id`)
);
