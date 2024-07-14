-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 11-07-2024 a las 23:31:53
-- Versión del servidor: 8.3.0
-- Versión de PHP: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `anime`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anime`
--

DROP TABLE IF EXISTS `anime`;
CREATE TABLE IF NOT EXISTS `anime` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `genero` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `duracion` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `anime`
--

INSERT INTO `anime` (`id`, `titulo`, `genero`, `duracion`, `imagen`) VALUES
(1, 'Kaiju NÂ° 8', 'Shonen', '23 min', 'https://images.cdn2.buscalibre.com/fit-in/360x360/48/ce/48ce5aa33ebee9712f472569198fcfbe.jpg'),
(2, 'Demon Slayer', 'fantasia', '30', 'https://es.web.img3.acsta.net/pictures/19/09/18/13/46/0198270.jpg'),
(3, 'Dragon Ball Z', 'fantasia', '30', 'https://imgsrv.crunchyroll.com/cdn-cgi/image/fit=contain,format=auto,quality=85,width=480,height=720/catalog/crunchyroll/35e4ac6339f5fdcc164160a5755790cd.jpeg'),
(4, 'Dororo', 'fantasia', '30', 'https://es.web.img3.acsta.net/c_310_420/pictures/19/06/26/11/13/1639915.jpg'),
(5, 'Solo Leveling', 'fantasia', '30', 'https://www.tematika.com/media/catalog/Ilhsa/Imagenes/698495.jpg'),
(6, 'Darling in the Franxx', 'fantasia', '30', 'https://imgsrv.crunchyroll.com/cdn-cgi/image/fit=contain,format=auto,quality=85,width=480,height=720/catalog/crunchyroll/3fa31250f0604ff16ef6cb0a12dea63d.jpeg'),
(7, 'Naruto', 'fantasia', '30', 'https://imgsrv.crunchyroll.com/cdn-cgi/image/fit=contain,format=auto,quality=85,width=480,height=720/catalog/crunchyroll/8532171bec0d05bfe45769a330fbab82.jpeg'),
(8, 'Chainsaw Man', 'fantasia', '30', 'https://imgsrv.crunchyroll.com/cdn-cgi/image/fit=contain,format=auto,quality=85,width=480,height=720/catalog/crunchyroll/922742d9acaeba7d887ed11b6caab0e4.jpeg'),
(9, 'Jujutsu Kaisen', 'fantasia', '30', 'https://awsimages.detik.net.id/community/media/visual/2024/02/08/jujutsu-kaisen.jpeg'),
(10, 'One Piece', 'fantasia', '30', 'https://es.web.img3.acsta.net/pictures/16/02/03/17/11/571106.jpg'),
(11, 'Wind Breaker', 'fantasia', '30', 'https://ramenparados.com/wp-content/uploads/2023/10/WindBreakerKV-scaled.jpg'),
(12, 'Spy for Family', 'fantasia', '30', 'https://es.web.img3.acsta.net/pictures/21/11/22/10/54/0321052.jpg'),
(13, 'Full Matal Alchemist', 'fantasia', '30', 'https://imgsrv.crunchyroll.com/cdn-cgi/image/fit=contain,format=auto,quality=85,width=480,height=720/catalog/crunchyroll/0662921aa3b81ff85737ddeb56deefab.jpeg'),
(14, 'Attack on Titan', 'fantasia', '30', 'https://acdn.mitiendanube.com/stores/001/184/069/products/aot_04_3ra-edicion-cov1-389fb527e230f4d80416239489282083-640-0.jpg'),
(15, 'Tokyo Revengers', 'fantasia', '30', 'https://imgsrv.crunchyroll.com/cdn-cgi/image/fit=contain,format=auto,quality=85,width=480,height=720/catalog/crunchyroll/70975a1227b453c1caf24fa05a93617d.jpeg'),
(16, 'Ninja Kamuy', 'fantasia', '30', 'https://i.ebayimg.com/images/g/IScAAOSwvf5mQ0HS/s-l400.jpg'),
(17, 'One Punch Man', 'fantasia', '30', 'https://es.web.img3.acsta.net/pictures/17/02/27/17/41/046707.jpg'),
(18, 'Hellsing', 'fantasia', '30', 'https://imgsrv.crunchyroll.com/cdn-cgi/image/fit=contain,format=auto,quality=85,width=480,height=720/catalog/crunchyroll/13a04677667fcf9d0ba4bf144c2dcb8d.jpeg'),
(19, 'El Caso de Studio Vanitas', 'fantasia', '30', 'https://imgsrv.crunchyroll.com/cdn-cgi/image/fit=contain,format=auto,quality=85,width=480,height=720/catalog/crunchyroll/efa8f160c660955cf5a510485cef6ea1.jpeg'),
(20, 'Hunter x Hunter', 'fantasia', '30', 'https://imgsrv.crunchyroll.com/cdn-cgi/image/fit=contain,format=auto,quality=85,width=480,height=720/catalog/crunchyroll/cbb55a6382682bf71e91f685c6473c5a.jpeg'),
(21, 'My Hero Academy', 'fantasia', '30', 'https://imgsrv.crunchyroll.com/cdn-cgi/image/fit=contain,format=auto,quality=85,width=480,height=720/catalog/crunchyroll/a30d7186097866e311f55708caf90038.jpg'),
(22, 'Cyberpunk Edgerunners', 'fantasia', '30', 'https://upload.wikimedia.org/wikipedia/en/a/a1/Cyberpunk_Edgerunners_poster.jpg'),
(23, 'Violet Evergarden', 'fantasia', '30', 'https://pics.filmaffinity.com/gekijouban_violet_evergarden-490162315-msmall.jpg'),
(24, 'Castlevania', 'fantasia', '30', 'https://es.web.img2.acsta.net/pictures/21/05/10/23/27/0599462.jpg'),
(25, 'Neon Genesis Evangelion', 'fantasia', '30', 'https://es.web.img2.acsta.net/pictures/18/12/07/12/40/4530128.jpg'),
(26, 'Dota Sangre de Dragon', 'fantasia', '30', 'https://pics.filmaffinity.com/Dota_Sangre_de_dragaon_Serie_de_TV-464665290-large.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
