-- --------------------------------------------------------
-- Host:                         172.16.1.12
-- Versión del servidor:         5.5.42-cll-lve - MySQL Community Server (GPL) by Atomicorp
-- SO del servidor:              Linux
-- HeidiSQL Versión:             10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para bd_proyecto_nuevo
DROP DATABASE IF EXISTS `bd_proyecto_nuevo`;
CREATE DATABASE IF NOT EXISTS `bd_proyecto_nuevo` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `bd_proyecto_nuevo`;

-- Volcando estructura para tabla bd_proyecto_nuevo.bovedas
DROP TABLE IF EXISTS `bovedas`;
CREATE TABLE IF NOT EXISTS `bovedas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numeracion` int(11) DEFAULT NULL COMMENT 'numero de boveda',
  `fk_idpanteon` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_idpanteon` (`fk_idpanteon`) USING BTREE,
  CONSTRAINT `bovedas_ibfk_1` FOREIGN KEY (`fk_idpanteon`) REFERENCES `panteones` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Volcando datos para la tabla bd_proyecto_nuevo.bovedas: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `bovedas` DISABLE KEYS */;
INSERT INTO `bovedas` (`id`, `numeracion`, `fk_idpanteon`) VALUES
	(2, 2112, 5);
/*!40000 ALTER TABLE `bovedas` ENABLE KEYS */;

-- Volcando estructura para tabla bd_proyecto_nuevo.cementerios
DROP TABLE IF EXISTS `cementerios`;
CREATE TABLE IF NOT EXISTS `cementerios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_idparroquia` int(11) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL COMMENT 'nombre cementerio',
  `direccion` varchar(20) DEFAULT NULL COMMENT 'direccion del cementerio',
  `telefono1` varchar(20) DEFAULT NULL COMMENT 'telefono contacto cementerio',
  `telefono2` varchar(20) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_idparroquia` (`fk_idparroquia`) USING BTREE,
  CONSTRAINT `cementerios_ibfk_1` FOREIGN KEY (`fk_idparroquia`) REFERENCES `parroquias` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Volcando datos para la tabla bd_proyecto_nuevo.cementerios: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `cementerios` DISABLE KEYS */;
/*!40000 ALTER TABLE `cementerios` ENABLE KEYS */;

-- Volcando estructura para tabla bd_proyecto_nuevo.ci_sessions
DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bd_proyecto_nuevo.ci_sessions: ~23 rows (aproximadamente)
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
	('p2fcv64k2g5fn5cf4vkhsdm604aj5dj2', '172.16.4.61', 1553203464, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313535333230333436343B),
	('3s08gu8ie3arlp2989pht1ec36r1k91t', '172.16.4.61', 1553204482, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313535333230343438323B),
	('8sqemagintjigcrjlr6abpsld3bq27tn', '172.16.4.61', 1553205169, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313535333230353030383B),
	('95gvrcl2m9eut63jl8ni7a2fb29srb1n', '172.16.4.61', 1553205689, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313535333230353630343B),
	('oe9pbhno49v1pdmk7bigq96hvi93ifrh', '172.16.4.61', 1553206198, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313535333230353932333B),
	('885dh3u1vgmdq7vl8odp4jq37p3ah506', '172.16.4.61', 1553206653, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313535333230363335343B),
	('4rbp8393rpfk4ljnfvtnskalj8qmg56l', '172.16.4.61', 1553207019, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313535333230363735343B),
	('ijon6r5nbqtpj5mjce8thl38r38v3ek9', '172.16.4.61', 1553207816, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313535333230373536323B),
	('rplaimv9vjod1m0fbj981bshvn7d3pa5', '172.16.4.61', 1553208575, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313535333230383331323B),
	('02r0rl2kck3vbvmvuribqsv4ftn2ci6s', '172.16.4.61', 1553208977, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313535333230383733373B),
	('oqag4h14lh85prcu3gsvf795qj3hbcli', '172.16.4.61', 1553262163, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313535333236313837363B),
	('0p5idm0tleacqoie5crebdkv2kkp4qr9', '172.16.4.61', 1553262422, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313535333236323231353B),
	('bniud8j1b555ohfjabnf0mrft981sppe', '172.16.4.61', 1553262591, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313535333236323532303B),
	('dfm350f4jjvdtnpc4t5rk1o4von70evj', '172.16.4.61', 1553263996, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313535333236333736363B),
	('hcjircros91q8k99gsuiaa7876ebmbm6', '172.16.4.61', 1553265241, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313535333236353039353B),
	('dsd1b6nkq8gipc1f72aogmemgdtp5qt6', '172.16.4.61', 1553266304, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313535333236363030343B),
	('u2qc00b2v628ej15tiuqusgidkmq18ci', '172.16.4.61', 1553266541, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313535333236363330353B),
	('6av2h71cpquqdgo87nurs497a4vr7gie', '172.16.4.61', 1553266773, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313535333236363630363B),
	('93fc3nq3inplrh7ub5rpuuo1ra0r2p0o', '172.16.4.61', 1553267168, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313535333236363933313B),
	('jfgv56k6m5e8plf7pm4qlbbm4v1v3mkp', '172.16.4.61', 1553267479, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313535333236373333353B),
	('r7aofqksc19ccab81tso9val75o4nne4', '172.16.4.61', 1553267893, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313535333236373638363B),
	('ts4oso733gtqddrbssnn4bth67qd2c7s', '172.16.4.61', 1553268355, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313535333236383037313B),
	('c7sm9e3c286983vqume50rd40pg9e260', '172.16.4.61', 1553268569, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313535333236383530393B555345525F4C4F474745447C623A313B5549447C733A313A2233223B555345525F524F4C7C733A313A2231223B555345525F524F4C5F4E414D457C733A31333A2241646D696E6973747261646F72223B555345525F4E414D457C733A323A223132223B555345525F4150454C4C49444F537C733A323A223132223B555345525F4C4F47494E7C733A383A2261646D696E323731223B555345525F454D41494C7C733A32353A2272646865726E616E64657A3033303340676D61696C2E636F6D223B555345525F444F43554D454E544F7C733A343A2231323530223B);
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;

-- Volcando estructura para tabla bd_proyecto_nuevo.contratos
DROP TABLE IF EXISTS `contratos`;
CREATE TABLE IF NOT EXISTS `contratos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_inicio` date DEFAULT NULL COMMENT 'fecha contrato',
  `fk_idsepultura` int(11) DEFAULT NULL COMMENT 'tipo de servicio',
  `lapida` bit(1) DEFAULT NULL COMMENT 'lapida contrato 1 si 0 no',
  `fk_iddifunto` int(11) DEFAULT NULL,
  `fk_idpariente` int(11) DEFAULT NULL,
  `fk_idboveda` int(11) DEFAULT NULL COMMENT 'boveda que ocupa el difunto',
  `plazo` int(11) DEFAULT NULL COMMENT 'plazo para desocupar la boveda',
  `fk_idtipocontrato` int(11) unsigned DEFAULT NULL COMMENT 'T-tumba///E-exhumacion',
  `fecha_fin` date DEFAULT NULL,
  `valor` float NOT NULL,
  `observacion` varchar(50) DEFAULT NULL,
  `contratotumba` int(11) DEFAULT NULL COMMENT 'el numero de contrato de la tumba, solo se usa en caso de ser contrato de exhumacion',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_iddifunto` (`fk_iddifunto`) USING BTREE,
  KEY `fk_idpariente` (`fk_idpariente`) USING BTREE,
  KEY `fk_boveda` (`fk_idboveda`) USING BTREE,
  KEY `fk_idsepultura` (`fk_idsepultura`) USING BTREE,
  KEY `fk_idtipocontrato` (`fk_idtipocontrato`),
  CONSTRAINT `contratos_ibfk_1` FOREIGN KEY (`fk_iddifunto`) REFERENCES `difuntos` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `contratos_ibfk_2` FOREIGN KEY (`fk_idpariente`) REFERENCES `parientes` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `contratos_ibfk_3` FOREIGN KEY (`fk_idboveda`) REFERENCES `bovedas` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `contratos_ibfk_4` FOREIGN KEY (`fk_idsepultura`) REFERENCES `sepulturas` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `contratos_ibfk_5` FOREIGN KEY (`fk_idtipocontrato`) REFERENCES `tipos_contratos` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Volcando datos para la tabla bd_proyecto_nuevo.contratos: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `contratos` DISABLE KEYS */;
INSERT INTO `contratos` (`id`, `fecha_inicio`, `fk_idsepultura`, `lapida`, `fk_iddifunto`, `fk_idpariente`, `fk_idboveda`, `plazo`, `fk_idtipocontrato`, `fecha_fin`, `valor`, `observacion`, `contratotumba`) VALUES
	(2, '2019-03-06', 1, b'1', 1, 1, 2, 1, 1, '2019-04-11', 13200, '12', 1),
	(3, '2019-03-06', 1, b'1', 2, 2, 2, 1, 1, '2019-04-11', 13200, '120', 1),
	(4, '2019-03-06', 1, b'1', 3, 3, 2, 1, 1, '2019-04-11', 13200, '12', 1),
	(5, '2019-03-04', 1, b'1', 4, 4, 2, 12, 1, '2019-04-27', 12, '12', 12),
	(6, '2019-03-01', 2, b'1', 5, 5, 2, 1111, 1, '2019-04-28', 1111, '1111', 0);
/*!40000 ALTER TABLE `contratos` ENABLE KEYS */;

-- Volcando estructura para tabla bd_proyecto_nuevo.difuntos
DROP TABLE IF EXISTS `difuntos`;
CREATE TABLE IF NOT EXISTS `difuntos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(80) DEFAULT NULL,
  `apellidos` varchar(80) DEFAULT NULL,
  `fk_idtipodocumento` int(10) unsigned DEFAULT NULL,
  `documento` varchar(25) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `fecha_defuncion` date DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_idtipodocumento` (`fk_idtipodocumento`),
  CONSTRAINT `difuntos_ibfk_1` FOREIGN KEY (`fk_idtipodocumento`) REFERENCES `tipos_documentos` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Volcando datos para la tabla bd_proyecto_nuevo.difuntos: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `difuntos` DISABLE KEYS */;
INSERT INTO `difuntos` (`id`, `nombres`, `apellidos`, `fk_idtipodocumento`, `documento`, `fecha_nacimiento`, `fecha_defuncion`) VALUES
	(1, 'Ronald Darley', 'Hernandez Jurado', 1, '37833008', '2019-03-13', '2019-12-21'),
	(2, 'Ronald Darley', 'Hernandez Jurado', 1, '37833008', '2019-03-13', '2019-12-21'),
	(3, 'Ronald Darley', 'Hernandez Jurado', 1, '37833008', '2019-03-13', '2019-12-21'),
	(4, 'Ronald Darley', 'Hernandez Jurado', 1, '123123', '2019-03-13', '2019-03-14'),
	(5, 'NOMBRE DIFUNTO', 'APELLIDO DIFUNTO', 1, '1111', '2019-03-14', '2019-03-21');
/*!40000 ALTER TABLE `difuntos` ENABLE KEYS */;

-- Volcando estructura para tabla bd_proyecto_nuevo.exhumaciones
DROP TABLE IF EXISTS `exhumaciones`;
CREATE TABLE IF NOT EXISTS `exhumaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_idcontrato` int(11) DEFAULT NULL,
  `fk_idboveda` int(11) DEFAULT NULL,
  `valor` float(11,0) DEFAULT NULL COMMENT 'cementerio recepcion',
  `fecha` date DEFAULT NULL COMMENT 'tipo de sepultura a donde se envia',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_idcontrato` (`fk_idcontrato`),
  KEY `fk_idboveda` (`fk_idboveda`),
  CONSTRAINT `exhumaciones_ibfk_1` FOREIGN KEY (`fk_idboveda`) REFERENCES `bovedas` (`id`),
  CONSTRAINT `exhumaciones_ibfk_2` FOREIGN KEY (`fk_idcontrato`) REFERENCES `contratos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Volcando datos para la tabla bd_proyecto_nuevo.exhumaciones: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `exhumaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `exhumaciones` ENABLE KEYS */;

-- Volcando estructura para tabla bd_proyecto_nuevo.panteones
DROP TABLE IF EXISTS `panteones`;
CREATE TABLE IF NOT EXISTS `panteones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `fk_idparroquia` int(11) DEFAULT NULL,
  `minimo` int(11) DEFAULT NULL COMMENT 'minimo numero de la boveda',
  `maximo` int(11) DEFAULT NULL COMMENT 'maximo numero de la boveda',
  `ancho` int(10) unsigned DEFAULT NULL,
  `alto` int(10) unsigned DEFAULT NULL,
  `osario` int(1) DEFAULT NULL,
  `cenizario` int(1) DEFAULT NULL,
  `tumba` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_idparroquia` (`fk_idparroquia`) USING BTREE,
  CONSTRAINT `panteones_ibfk_1` FOREIGN KEY (`fk_idparroquia`) REFERENCES `parroquias` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Volcando datos para la tabla bd_proyecto_nuevo.panteones: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `panteones` DISABLE KEYS */;
INSERT INTO `panteones` (`id`, `nombre`, `fk_idparroquia`, `minimo`, `maximo`, `ancho`, `alto`, `osario`, `cenizario`, `tumba`) VALUES
	(5, 'asdasdsad', 6, 0, 12, 0, 0, 0, 1, 0);
/*!40000 ALTER TABLE `panteones` ENABLE KEYS */;

-- Volcando estructura para tabla bd_proyecto_nuevo.parientes
DROP TABLE IF EXISTS `parientes`;
CREATE TABLE IF NOT EXISTS `parientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(80) DEFAULT NULL,
  `apellidos` varchar(80) DEFAULT NULL,
  `fk_idtipodocumento` int(10) unsigned DEFAULT NULL,
  `documento` varchar(25) DEFAULT NULL,
  `parentezco` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_idtipodocumento` (`fk_idtipodocumento`),
  CONSTRAINT `parientes_ibfk_1` FOREIGN KEY (`fk_idtipodocumento`) REFERENCES `tipos_documentos` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Volcando datos para la tabla bd_proyecto_nuevo.parientes: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `parientes` DISABLE KEYS */;
INSERT INTO `parientes` (`id`, `nombres`, `apellidos`, `fk_idtipodocumento`, `documento`, `parentezco`) VALUES
	(1, 'asd', 'ads', 1, '231', 12),
	(2, 'asd', 'ads', 1, '231', 12),
	(3, 'asd', 'ads', 1, '231', 12),
	(4, 'Ronald Darley', 'Hernandez Jurado', 1, '1212', 1212),
	(5, 'NOMBRE PARIENTE', 'APELLIDO PARIENTE', 1, '1111', 1111);
/*!40000 ALTER TABLE `parientes` ENABLE KEYS */;

-- Volcando estructura para tabla bd_proyecto_nuevo.parroquias
DROP TABLE IF EXISTS `parroquias`;
CREATE TABLE IF NOT EXISTS `parroquias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `nombre_parroco` varchar(50) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `direccion` varchar(30) DEFAULT NULL,
  `osario` int(1) DEFAULT NULL,
  `cenizario` int(1) DEFAULT NULL,
  `cementerio` int(1) DEFAULT NULL,
  `nit` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Volcando datos para la tabla bd_proyecto_nuevo.parroquias: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `parroquias` DISABLE KEYS */;
INSERT INTO `parroquias` (`id`, `nombre`, `nombre_parroco`, `telefono`, `direccion`, `osario`, `cenizario`, `cementerio`, `nit`) VALUES
	(6, '123', '132', '123', '13', 1, 1, 1, '213213');
/*!40000 ALTER TABLE `parroquias` ENABLE KEYS */;

-- Volcando estructura para tabla bd_proyecto_nuevo.precios
DROP TABLE IF EXISTS `precios`;
CREATE TABLE IF NOT EXISTS `precios` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fk_idsepultura` int(11) DEFAULT NULL,
  `fk_idparroquia` int(11) DEFAULT NULL,
  `precio_palida` float DEFAULT NULL COMMENT 'precio con lapida',
  `precio_sin_lapida` int(11) DEFAULT NULL COMMENT 'precio_sin_lapida',
  PRIMARY KEY (`id`),
  KEY `fk_idsepultura` (`fk_idsepultura`) USING BTREE,
  KEY `fk_idparroquia` (`fk_idparroquia`) USING BTREE,
  CONSTRAINT `precios_ibfk_1` FOREIGN KEY (`fk_idsepultura`) REFERENCES `sepulturas` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `precios_ibfk_2` FOREIGN KEY (`fk_idparroquia`) REFERENCES `parroquias` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Volcando datos para la tabla bd_proyecto_nuevo.precios: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `precios` DISABLE KEYS */;
/*!40000 ALTER TABLE `precios` ENABLE KEYS */;

-- Volcando estructura para tabla bd_proyecto_nuevo.roles
DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Volcando datos para la tabla bd_proyecto_nuevo.roles: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `nombre`) VALUES
	(1, 'Administrador'),
	(2, 'Visitante');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Volcando estructura para tabla bd_proyecto_nuevo.sepulturas
DROP TABLE IF EXISTS `sepulturas`;
CREATE TABLE IF NOT EXISTS `sepulturas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `estado` int(11) DEFAULT '1' COMMENT '1-activo///0-inactivo',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Volcando datos para la tabla bd_proyecto_nuevo.sepulturas: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `sepulturas` DISABLE KEYS */;
INSERT INTO `sepulturas` (`id`, `nombre`, `estado`) VALUES
	(1, 'SEPULTURA 12', 1),
	(2, 'or1', 1);
/*!40000 ALTER TABLE `sepulturas` ENABLE KEYS */;

-- Volcando estructura para tabla bd_proyecto_nuevo.tipos_contratos
DROP TABLE IF EXISTS `tipos_contratos`;
CREATE TABLE IF NOT EXISTS `tipos_contratos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla bd_proyecto_nuevo.tipos_contratos: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `tipos_contratos` DISABLE KEYS */;
INSERT INTO `tipos_contratos` (`id`, `nombre`) VALUES
	(1, 'T-tumba'),
	(2, 'E-exhumacion');
/*!40000 ALTER TABLE `tipos_contratos` ENABLE KEYS */;

-- Volcando estructura para tabla bd_proyecto_nuevo.tipos_documentos
DROP TABLE IF EXISTS `tipos_documentos`;
CREATE TABLE IF NOT EXISTS `tipos_documentos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla bd_proyecto_nuevo.tipos_documentos: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `tipos_documentos` DISABLE KEYS */;
INSERT INTO `tipos_documentos` (`id`, `nombre`) VALUES
	(1, 'Registro civil'),
	(2, 'Tarjeta de identidad'),
	(3, 'Cedula de ciudadania');
/*!40000 ALTER TABLE `tipos_documentos` ENABLE KEYS */;

-- Volcando estructura para tabla bd_proyecto_nuevo.usuarios
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `estado` int(11) unsigned NOT NULL DEFAULT '1',
  `usuario` varchar(40) NOT NULL,
  `password` varchar(72) DEFAULT NULL,
  `documento` varchar(25) DEFAULT NULL,
  `nombres` varchar(40) DEFAULT NULL,
  `apellidos` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `celular1` varchar(25) DEFAULT NULL,
  `celular2` varchar(25) DEFAULT NULL,
  `fk_idrol` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_idrol` (`fk_idrol`) USING BTREE,
  CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`fk_idrol`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Volcando datos para la tabla bd_proyecto_nuevo.usuarios: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`id`, `estado`, `usuario`, `password`, `documento`, `nombres`, `apellidos`, `email`, `celular1`, `celular2`, `fk_idrol`) VALUES
	(1, 1, 'rhernandez', '$2y$09$JqMrprX8uOd10HexLzEpdObuZlUzw2FuZ5Y0Yb.ahU7j2aAenSeRG', '1102389236', 'Ronald Darley', 'Hernandez Jurado', 'rdhernandez0302@gmail.com', '3162560279', '', 1),
	(2, 1, 'admin27', '$2y$09$l1m1ScZFMw7JIPNGPW3nC.OUBIZBnwdiy8YHebXBHGloR.Phbpwr6', '123123', '12', '12', 'rdhernandez0302@gmail.com1', NULL, '', 1),
	(3, 1, 'admin271', '$2y$09$4tiI8iRIGLFxr8ikP6IMcuEJnp4Qc6/jxqvN4z7dXcVbAhirD.s9G', '1250', '12', '12', 'rdhernandez0303@gmail.com', '', '', 1);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
