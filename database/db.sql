-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.22-0ubuntu0.20.04.2 - (Ubuntu)
-- SO del servidor:              Linux
-- HeidiSQL Versión:             11.1.0.6116
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para mydb_crud
CREATE DATABASE IF NOT EXISTS `mydb_crud` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mydb_crud`;

-- Volcando estructura para tabla mydb_crud.empresa
CREATE TABLE IF NOT EXISTS `empresa` (
  `id_empresa` int NOT NULL AUTO_INCREMENT,
  `nombre_empresa` varchar(70) NOT NULL,
  `fundacion_empresa` date DEFAULT NULL,
  `valoracion_empresa` decimal(10,2) DEFAULT NULL,
  `created_empresa` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_empresa` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla mydb_crud.empresa: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` (`id_empresa`, `nombre_empresa`, `fundacion_empresa`, `valoracion_empresa`, `created_empresa`, `updated_empresa`) VALUES
	(1, 'caribbean', '2020-10-01', 4.50, '2020-11-09 21:09:59', '2020-11-09 21:09:59');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
