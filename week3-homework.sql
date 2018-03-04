
use  webshop;
CREATE TABLE `customer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,

  `address` varchar(255) NOT NULL,

  `phone` varchar(255) NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `title` varchar(255) NOT NULL,
  `description` text NULL DEFAULT NULL,

  `price` varchar(255) NOT NULL,

  
  `date` DATETIME NULL DEFAULT NULL,
  `orders_id` int(10) unsigned NOT NULL,
  CONSTRAINT `fk_orders` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `order_products` (
  `orders_id` int(10) unsigned NOT NULL,
  `products_id` int(10) unsigned NOT NULL,
  PRIMARY KEY(`orders_id`, `products_id`),
  CONSTRAINT `fk_customer_products_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_user_products_products` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

show tables;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `title` varchar(255) NOT NULL,
  `description` text NULL DEFAULT NULL,

  `price` varchar(255) NOT NULL,

  
  `date` DATETIME NULL DEFAULT NULL,
  `orders_id` int(10) unsigned NOT NULL,
  CONSTRAINT `fk_orders` FOREIGN KEY (`orders_id`) REFERENCES `status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `title` varchar(255) NOT NULL,
  `description` text NULL DEFAULT NULL,

  `price` varchar(255) NOT NULL,

  
  `date` DATETIME NULL DEFAULT NULL,
  `orders_id` int(10) unsigned NOT NULL,
  CONSTRAINT `fk_orders` FOREIGN KEY (`orders_id`) REFERENCES `status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `order_products` (
  `orders_id` int(10) unsigned NOT NULL,
  `products_id` int(10) unsigned NOT NULL,
  PRIMARY KEY(`orders_id`, `products_id`),
  CONSTRAINT `fk_orders_products_orders` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_user_products_products` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
show tables;



insert into customer (id, name, email, address, phone) values (1, 'ali', 'ali@gmail.com', '12345');
insert into customer (id, name, email, address, phone) values (2, 'peter', 'peter@gmail.com', '788888');
insert into orders (id, name) values (1, 'shampoo');

insert into products (id, title, description, price, date, order_id) values (1, 'shampoo', 'all kind of hair.', '100', '2017-10-15',  2);
insert into products (id, title, description, price, date, order_id) values (1, 'shampoo', 'all kind of hair.', '100', '2017-10-15',  2);
# database-week3
