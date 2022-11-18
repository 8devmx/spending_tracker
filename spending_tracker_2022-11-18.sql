# ************************************************************
# Sequel Pro SQL dump
# Versión 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.4.21-MariaDB)
# Base de datos: spending_tracker
# Tiempo de Generación: 2022-11-18 16:39:33 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Volcado de tabla gastos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gastos`;

CREATE TABLE `gastos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cantidad` float(8,2) NOT NULL,
  `categoria` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `descripcion` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `descripcion` (`descripcion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `gastos` WRITE;
/*!40000 ALTER TABLE `gastos` DISABLE KEYS */;

INSERT INTO `gastos` (`id`, `cantidad`, `categoria`, `fecha`, `descripcion`)
VALUES
	(1,12.00,3,'2022-10-23 15:22:45','Gansito'),
	(6,10.00,3,'2022-10-17 18:57:39','Agua Purificada'),
	(7,15.00,3,'2022-10-17 18:58:10','Coca Cola'),
	(8,65.00,3,'2022-10-17 19:03:02','Cigarros'),
	(14,70.00,3,'2022-10-17 19:03:02','McDonald\'s'),
	(28,20.50,3,'2022-10-17 19:02:15','Gansitos'),
	(32,50.00,4,'2022-10-23 15:11:35','Desayuno');

/*!40000 ALTER TABLE `gastos` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla gastos_categorias
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gastos_categorias`;

CREATE TABLE `gastos_categorias` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `gastos_categorias` WRITE;
/*!40000 ALTER TABLE `gastos_categorias` DISABLE KEYS */;

INSERT INTO `gastos_categorias` (`id`, `nombre`)
VALUES
	(1,'Sin categoría'),
	(2,'Viáticos'),
	(3,'Despensa'),
	(4,'Gastos Fíjos'),
	(5,'Diversión'),
	(6,'Transporte');

/*!40000 ALTER TABLE `gastos_categorias` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;

INSERT INTO `roles` (`id`, `nombre`)
VALUES
	(1,'Administrador'),
	(2,'Usuario'),
	(3,'Lector');

/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla usuarios
# ------------------------------------------------------------

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `correo` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  `telefono` varchar(15) NOT NULL DEFAULT '',
  `nombre` varchar(100) NOT NULL DEFAULT '',
  `status` int(1) NOT NULL DEFAULT 0,
  `rol_id` int(1) NOT NULL DEFAULT 2,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;

INSERT INTO `usuarios` (`id`, `correo`, `password`, `telefono`, `nombre`, `status`, `rol_id`)
VALUES
	(1,'hola@8dev.com','123456','123123123','8dev',1,3);

/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
