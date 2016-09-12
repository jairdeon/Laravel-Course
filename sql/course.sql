# Host: localhost  (Version 5.5.5-10.1.9-MariaDB)
# Date: 2016-09-02 17:21:12
# Generator: MySQL-Front 5.3  (Build 8.12)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "categories"
#

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "categories"
#

INSERT INTO `categories` VALUES (1,'Minha edição.','2016-09-01 17:52:56','2016-09-02 17:42:47'),(2,'velit','2016-09-01 17:52:56','2016-09-01 17:52:56'),(3,'quidem','2016-09-01 17:52:56','2016-09-01 17:52:56'),(4,'facere','2016-09-01 17:52:56','2016-09-01 17:52:56'),(5,'sit','2016-09-01 17:52:56','2016-09-01 17:52:56'),(6,'maiores','2016-09-01 17:52:56','2016-09-01 17:52:56'),(7,'consequatur','2016-09-01 17:52:56','2016-09-01 17:52:56'),(8,'nihil','2016-09-01 17:52:56','2016-09-01 17:52:56'),(9,'fugiat','2016-09-01 17:52:56','2016-09-01 17:52:56'),(10,'quia','2016-09-01 17:52:56','2016-09-01 17:52:56'),(11,'Teste de Categoria - #1','2016-09-02 15:08:10','2016-09-02 15:08:10');

#
# Structure for table "migrations"
#

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "migrations"
#

INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table',1),('2014_10_12_100000_create_password_resets_table',1),('2016_09_01_130922_create_categories_table',1),('2016_09_01_134151_create_products_table',1),('2016_09_01_154447_create_clients_table',1),('2016_09_01_173252_create_orders_table',1),('2016_09_01_173339_create_orders_items_table',1);

#
# Structure for table "password_resets"
#

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "password_resets"
#


#
# Structure for table "products"
#

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `products_category_id_foreign` (`category_id`),
  CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "products"
#

INSERT INTO `products` VALUES (1,1,'dolore','Atque explicabo aliquid occaecati aspernatur culpa.',44.00,'2016-09-01 17:52:56','2016-09-01 17:52:56'),(2,1,'accusantium','Reprehenderit quis corrupti tempora.',12.00,'2016-09-01 17:52:56','2016-09-01 17:52:56'),(3,1,'cumque','Eligendi ad dolores nesciunt id libero.',32.00,'2016-09-01 17:52:56','2016-09-01 17:52:56'),(4,1,'omnis','Ut pariatur repellendus quia cumque omnis.',18.00,'2016-09-01 17:52:56','2016-09-01 17:52:56'),(5,1,'recusandae','Quisquam dolores nihil sit voluptatem doloremque officia.',36.00,'2016-09-01 17:52:56','2016-09-01 17:52:56'),(6,1,'sint','Dolorem tenetur fugit ut eligendi fugiat accusamus eum.',31.00,'2016-09-01 17:52:56','2016-09-01 17:52:56'),(7,2,'aliquid','Est doloremque ipsum explicabo et impedit.',29.00,'2016-09-01 17:52:56','2016-09-01 17:52:56'),(8,2,'in','At ex cumque fugit non omnis doloremque omnis.',25.00,'2016-09-01 17:52:56','2016-09-01 17:52:56'),(9,2,'sunt','Architecto qui sequi ipsum est dolor non in.',45.00,'2016-09-01 17:52:56','2016-09-01 17:52:56'),(10,2,'porro','Veritatis veniam sequi sunt commodi deserunt magni nihil impedit.',19.00,'2016-09-01 17:52:57','2016-09-01 17:52:57'),(11,2,'reiciendis','Corporis quis sed sapiente eos.',38.00,'2016-09-01 17:52:57','2016-09-01 17:52:57'),(12,2,'quibusdam','Voluptates hic sunt sapiente unde.',24.00,'2016-09-01 17:52:57','2016-09-01 17:52:57'),(13,3,'excepturi','Explicabo itaque est qui dolores odit ut.',34.00,'2016-09-01 17:52:57','2016-09-01 17:52:57'),(14,3,'dolores','Soluta ad explicabo veritatis et possimus similique.',28.00,'2016-09-01 17:52:57','2016-09-01 17:52:57'),(15,3,'quasi','Unde praesentium sunt atque quia.',27.00,'2016-09-01 17:52:57','2016-09-01 17:52:57'),(16,3,'enim','Eos fugit aut atque neque.',48.00,'2016-09-01 17:52:57','2016-09-01 17:52:57'),(17,3,'non','Adipisci hic quasi veritatis reprehenderit magni amet eos.',21.00,'2016-09-01 17:52:57','2016-09-01 17:52:57'),(18,3,'laboriosam','Aut nulla voluptates rerum fugit veniam eum.',19.00,'2016-09-01 17:52:57','2016-09-01 17:52:57'),(19,4,'atque','Voluptas nihil omnis et voluptates asperiores dolor ad.',39.00,'2016-09-01 17:52:57','2016-09-01 17:52:57'),(20,4,'quia','Accusamus enim sunt doloribus vel eum.',17.00,'2016-09-01 17:52:57','2016-09-01 17:52:57'),(21,4,'et','Minima qui maxime labore voluptas consequatur.',30.00,'2016-09-01 17:52:57','2016-09-01 17:52:57'),(22,4,'quibusdam','Corporis a optio recusandae voluptatem culpa rem perspiciatis.',33.00,'2016-09-01 17:52:57','2016-09-01 17:52:57'),(23,4,'iste','Placeat amet adipisci tempora minima dolores.',26.00,'2016-09-01 17:52:57','2016-09-01 17:52:57'),(24,4,'sed','Sint molestiae esse aut dolor consequatur quod ut.',23.00,'2016-09-01 17:52:57','2016-09-01 17:52:57'),(25,5,'sunt','Reprehenderit omnis id velit sed assumenda velit.',46.00,'2016-09-01 17:52:57','2016-09-01 17:52:57'),(26,5,'odio','Et provident dolorem dolorem tempore repudiandae sequi.',38.00,'2016-09-01 17:52:57','2016-09-01 17:52:57'),(27,5,'eveniet','Error commodi nihil dolorem rerum eveniet sunt.',39.00,'2016-09-01 17:52:57','2016-09-01 17:52:57'),(28,5,'et','Facilis architecto magnam eos nesciunt culpa autem ut cum.',40.00,'2016-09-01 17:52:57','2016-09-01 17:52:57'),(29,5,'sint','Odit fugit commodi nemo aut tempora aliquid explicabo.',46.00,'2016-09-01 17:52:57','2016-09-01 17:52:57'),(30,5,'quis','Enim veritatis ut et dolores omnis.',40.00,'2016-09-01 17:52:57','2016-09-01 17:52:57'),(31,6,'impedit','Non tempore consequuntur eveniet quibusdam.',40.00,'2016-09-01 17:52:57','2016-09-01 17:52:57'),(32,6,'iusto','Voluptate et et alias tenetur aut.',12.00,'2016-09-01 17:52:57','2016-09-01 17:52:57'),(33,6,'officia','Commodi repudiandae quis porro quas esse.',12.00,'2016-09-01 17:52:57','2016-09-01 17:52:57'),(34,6,'dolores','Ad alias libero est sunt pariatur.',34.00,'2016-09-01 17:52:57','2016-09-01 17:52:57'),(35,6,'incidunt','Laudantium maiores voluptatibus soluta eveniet corrupti.',48.00,'2016-09-01 17:52:57','2016-09-01 17:52:57'),(36,6,'delectus','Veniam eos sint inventore adipisci sint qui et.',43.00,'2016-09-01 17:52:57','2016-09-01 17:52:57'),(37,7,'sit','Asperiores sapiente nulla et.',14.00,'2016-09-01 17:52:57','2016-09-01 17:52:57'),(38,7,'velit','Numquam soluta id eius accusamus repudiandae ab ipsum.',29.00,'2016-09-01 17:52:58','2016-09-01 17:52:58'),(39,7,'fugiat','Nesciunt adipisci est esse voluptatem hic doloribus molestiae soluta.',45.00,'2016-09-01 17:52:58','2016-09-01 17:52:58'),(40,7,'aspernatur','Dignissimos sapiente sed sunt.',46.00,'2016-09-01 17:52:58','2016-09-01 17:52:58'),(41,7,'error','Est ullam eaque sequi qui alias ut.',45.00,'2016-09-01 17:52:58','2016-09-01 17:52:58'),(42,7,'molestiae','Ea consequatur necessitatibus inventore sit.',41.00,'2016-09-01 17:52:58','2016-09-01 17:52:58'),(43,8,'molestiae','Harum qui doloremque ex eum ut labore.',37.00,'2016-09-01 17:52:58','2016-09-01 17:52:58'),(44,8,'sint','Magni dolor doloribus dignissimos quibusdam repellendus.',18.00,'2016-09-01 17:52:58','2016-09-01 17:52:58'),(45,8,'impedit','Consequatur similique quia unde voluptate ut modi saepe accusamus.',14.00,'2016-09-01 17:52:58','2016-09-01 17:52:58'),(46,8,'assumenda','Nesciunt vel rerum voluptates fugit exercitationem eum.',31.00,'2016-09-01 17:52:58','2016-09-01 17:52:58'),(47,8,'quis','Explicabo reprehenderit aut ratione enim voluptas.',33.00,'2016-09-01 17:52:58','2016-09-01 17:52:58'),(48,8,'nesciunt','Iusto tempora doloremque in beatae ullam amet dolorum.',36.00,'2016-09-01 17:52:58','2016-09-01 17:52:58'),(49,9,'reprehenderit','Hic eum consequatur veniam eaque earum.',22.00,'2016-09-01 17:52:58','2016-09-01 17:52:58'),(50,9,'explicabo','Alias iure rerum impedit perspiciatis autem ducimus vitae.',28.00,'2016-09-01 17:52:58','2016-09-01 17:52:58'),(51,9,'ut','Optio sunt totam consectetur et.',12.00,'2016-09-01 17:52:58','2016-09-01 17:52:58'),(52,9,'dolorum','Blanditiis eos atque beatae quae magni.',33.00,'2016-09-01 17:52:58','2016-09-01 17:52:58'),(53,9,'eum','Perspiciatis qui facere et odit.',26.00,'2016-09-01 17:52:58','2016-09-01 17:52:58'),(54,9,'voluptates','Molestiae qui consequatur non assumenda autem temporibus sunt doloribus.',20.00,'2016-09-01 17:52:58','2016-09-01 17:52:58'),(55,10,'nobis','Modi rerum quia omnis eaque qui minus aut omnis.',40.00,'2016-09-01 17:52:58','2016-09-01 17:52:58'),(56,10,'omnis','Cupiditate velit ut atque repudiandae sed quo aut.',26.00,'2016-09-01 17:52:58','2016-09-01 17:52:58'),(57,10,'quod','Mollitia eligendi et deleniti recusandae veniam reiciendis eos totam.',29.00,'2016-09-01 17:52:58','2016-09-01 17:52:58'),(58,10,'atque','Ipsa aut magni sed magnam rerum.',27.00,'2016-09-01 17:52:58','2016-09-01 17:52:58'),(59,10,'sit','Occaecati quod rerum rerum blanditiis.',28.00,'2016-09-01 17:52:58','2016-09-01 17:52:58'),(60,10,'totam','Aut consequatur nihil minus porro dolores illo ducimus.',10.00,'2016-09-01 17:52:58','2016-09-01 17:52:58');

#
# Structure for table "users"
#

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'client',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "users"
#

INSERT INTO `users` VALUES (1,'Birdie Gaylord','jena.oconner@example.net','$2y$10$ns.tGL29y1aDY.dBakqv6eA8QmuP0wbhShDxH0lOLsMlk0eIbNa8K','client','Dd3HW4d0VH','2016-09-01 17:52:55','2016-09-01 17:52:55'),(2,'Joey Kertzmann','uwill@example.org','$2y$10$3.bmVxmE002kiDb2JzrJlu0681mkrMEX164qFPWFeOgh.bN1/Mb8a','client','pdmgs6LXDi','2016-09-01 17:52:55','2016-09-01 17:52:55'),(3,'Kevon Yost','stevie.bergstrom@example.com','$2y$10$8ZOYwZE2UQiMy.wA5kGOGeq2nHW4mP8Hr45jbzHIShm./JYK37eM2','client','u5p8yiuaLu','2016-09-01 17:52:55','2016-09-01 17:52:55'),(4,'Gilberto Waelchi V','uoconner@example.net','$2y$10$cqR0B/cymk6kIm8zzjMrV.MGElblM5RjiEtL61C5Df2pDxic4BRLG','client','w2JKFCg4tI','2016-09-01 17:52:55','2016-09-01 17:52:55'),(5,'Ayden Heathcote','hickle.kaya@example.org','$2y$10$gqwzTgn8KU1hZWrwjed52uLhi.lPL2gle/nnqeD2n29/TIvShnJRe','client','GzDjKRtcUT','2016-09-01 17:52:55','2016-09-01 17:52:55'),(6,'Prof. Emilio Turcotte','mcdermott.coty@example.net','$2y$10$wB3JkapDU9f1l6qR5L5gDuaaqSoN1lNwe5rTTIF01RIGbqhTXQ/uK','client','6412ngqvUg','2016-09-01 17:52:55','2016-09-01 17:52:55'),(7,'Brennon Greenholt','cdenesik@example.net','$2y$10$.MRNXx/QZegrkAVkQluk5eQNrQLKzr00.pP2/yLyY/URQUNXD8rgO','client','PsKm5agaZ4','2016-09-01 17:52:55','2016-09-01 17:52:55'),(8,'Florine Conroy','fay.terrence@example.com','$2y$10$n.wZemxi7TMonI9dJNcqLOBTDUFG8tX1ampbAJjjH9GJzrHosiLRG','client','WoX5Ajhufp','2016-09-01 17:52:55','2016-09-01 17:52:55'),(9,'Pearline Gutmann','arianna.walter@example.com','$2y$10$OYXps1ilmojDZIhYaMxtyOF4gfWh7YnAFrvVlNvBjxrAslZXCME2m','client','dSJIDuWltZ','2016-09-01 17:52:55','2016-09-01 17:52:55'),(10,'Prof. Izaiah Hamill DVM','alana.gottlieb@example.net','$2y$10$aksjPPSCIOSzTUM54HXD.u0bpNS2167fg9rZVE3SjcyBxrLJ7C6la','client','60FjXRkgTm','2016-09-01 17:52:55','2016-09-01 17:52:55');

#
# Structure for table "orders"
#

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `user_deliveryman_id` int(10) unsigned DEFAULT NULL,
  `total` decimal(8,2) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `orders_client_id_foreign` (`client_id`),
  KEY `orders_user_deliveryman_id_foreign` (`user_deliveryman_id`),
  CONSTRAINT `orders_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `users` (`id`),
  CONSTRAINT `orders_user_deliveryman_id_foreign` FOREIGN KEY (`user_deliveryman_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "orders"
#


#
# Structure for table "order_items"
#

DROP TABLE IF EXISTS `order_items`;
CREATE TABLE `order_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `qtd` smallint(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `order_items_product_id_foreign` (`product_id`),
  KEY `order_items_order_id_foreign` (`order_id`),
  CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "order_items"
#


#
# Structure for table "clients"
#

DROP TABLE IF EXISTS `clients`;
CREATE TABLE `clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `clients_user_id_foreign` (`user_id`),
  CONSTRAINT `clients_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "clients"
#

INSERT INTO `clients` VALUES (1,1,'1-989-371-2242 x16066','81050 Mallory Green Apt. 074\nSchimmelmouth, IN 61132-8707','Port Estherfurt','West Virginia','60797','2016-09-01 17:52:55','2016-09-01 17:52:55'),(2,2,'598-402-7835','5795 Crona Inlet\nNew Patricia, CT 38277-9580','Ollietown','Montana','58836','2016-09-01 17:52:55','2016-09-01 17:52:55'),(3,3,'+1.441.338.8225','111 Walsh Square Apt. 615\nKiannastad, IA 81097','Funkmouth','New York','90027-4179','2016-09-01 17:52:55','2016-09-01 17:52:55'),(4,4,'336-619-0686','278 Bernice River\nEast Deshawnhaven, AK 09658','Verdaland','New Hampshire','06820','2016-09-01 17:52:55','2016-09-01 17:52:55'),(5,5,'(724) 756-5625','381 Gonzalo Haven\nLake Anachester, NC 10911','Lake Claudie','Oklahoma','03995-1028','2016-09-01 17:52:55','2016-09-01 17:52:55'),(6,6,'306.215.8129 x2381','21706 Murazik Ridges Apt. 737\nWest Sybleburgh, AK 40386','North Nettietown','Rhode Island','17718-0164','2016-09-01 17:52:55','2016-09-01 17:52:55'),(7,7,'(280) 418-1613','47013 Nolan Haven Suite 546\nBeaumouth, HI 96958','Port Geraldinetown','Nevada','22121-0572','2016-09-01 17:52:55','2016-09-01 17:52:55'),(8,8,'304-575-3248 x86862','893 Hickle Junction Apt. 631\nJordaneville, MD 45142-6888','Alvertamouth','Pennsylvania','07693','2016-09-01 17:52:55','2016-09-01 17:52:55'),(9,9,'+1.978.842.0254','4324 Watsica Shore Suite 760\nEast Richmond, CT 26646-7141','New Shanel','California','12737-0602','2016-09-01 17:52:56','2016-09-01 17:52:56'),(10,10,'697-667-2156','29291 Hal Gardens Suite 322\nBergestad, AK 84792','West Mathias','District of Columbia','66648-6364','2016-09-01 17:52:56','2016-09-01 17:52:56');
