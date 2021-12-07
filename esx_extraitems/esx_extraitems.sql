INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES
	('bulletproof', 'Bullet-Proof Vest', 5, 0, 1),
	('clip', 'Weapon Clip', 50, 0, 1)
;

INSERT INTO `weashops` (zone, item, price) VALUES
	('ExtraItemsShop', 'clip', 250),
	('ExtraItemsShop', 'bulletproof', 300),
;