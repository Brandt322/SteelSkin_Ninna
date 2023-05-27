-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-05-2023 a las 06:11:33
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdcarritocompras`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--
-- Creación: 26-05-2023 a las 04:04:26
-- Última actualización: 27-05-2023 a las 03:53:24
--

CREATE TABLE `cliente` (
  `idCliente` int(11) UNSIGNED NOT NULL,
  `Nombres` varchar(50) DEFAULT NULL,
  `Email` varchar(60) DEFAULT NULL,
  `Password` varchar(60) DEFAULT NULL,
  `Telefono` int(20) DEFAULT NULL,
  `Direccion` varchar(20) DEFAULT NULL,
  `Tipo_usuario` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idCliente`, `Nombres`, `Email`, `Password`, `Telefono`, `Direccion`, `Tipo_usuario`) VALUES
(21, 'Brandon Gamboa', 'bgamsad.322@gmail.com', '322322', 963564585, 'Chosica', 'Cliente'),
(22, 'Chris Salcedo', 'chris.22@gmail.com', 'zekken', 956365485, 'Huaycan', 'Consultor'),
(23, 'Test Test', 'Test@gmail.com', 'test', 963258852, 'Ate', 'Cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--
-- Creación: 26-05-2023 a las 00:08:20
-- Última actualización: 27-05-2023 a las 01:32:52
--

CREATE TABLE `compras` (
  `idCompras` int(11) UNSIGNED NOT NULL,
  `idCliente` int(11) UNSIGNED NOT NULL,
  `idPago` int(11) UNSIGNED NOT NULL,
  `FechaCompras` varchar(11) DEFAULT NULL,
  `Monto` double DEFAULT NULL,
  `Estado` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`idCompras`, `idCliente`, `idPago`, `FechaCompras`, `Monto`, `Estado`) VALUES
(7, 21, 16, '2023-05-25', 1400, 'Cancelado - En Proceso de Envio'),
(8, 21, 22, '2023-05-26', 99.8, 'Cancelado - En Proceso de Envio'),
(9, 22, 23, '2023-05-26', 113.69999999999999, 'Cancelado - En Proceso de Envio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_compras`
--
-- Creación: 26-05-2023 a las 00:08:20
-- Última actualización: 27-05-2023 a las 01:32:52
--

CREATE TABLE `detalle_compras` (
  `idDetalle` int(10) UNSIGNED NOT NULL,
  `idProducto` int(11) UNSIGNED NOT NULL,
  `idCompras` int(11) UNSIGNED NOT NULL,
  `Cantidad` int(11) UNSIGNED DEFAULT NULL,
  `PrecioCompra` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalle_compras`
--

INSERT INTO `detalle_compras` (`idDetalle`, `idProducto`, `idCompras`, `Cantidad`, `PrecioCompra`) VALUES
(11, 44, 8, 2, 49.9),
(12, 37, 9, 2, 31.9),
(13, 44, 9, 1, 49.9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--
-- Creación: 26-05-2023 a las 00:08:20
-- Última actualización: 27-05-2023 a las 01:32:44
--

CREATE TABLE `pago` (
  `idPago` int(11) UNSIGNED NOT NULL,
  `Monto` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pago`
--

INSERT INTO `pago` (`idPago`, `Monto`) VALUES
(16, 1400),
(17, 1400),
(18, 63.8),
(19, 63.8),
(20, 31.9),
(21, 49.9),
(22, 99.8),
(23, 113.69999999999999);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--
-- Creación: 26-05-2023 a las 07:17:44
-- Última actualización: 27-05-2023 a las 03:48:01
--

CREATE TABLE `producto` (
  `idProducto` int(11) UNSIGNED NOT NULL,
  `Nombres` varchar(255) DEFAULT NULL,
  `Foto` varchar(255) DEFAULT NULL,
  `Descripcion` varchar(455) DEFAULT NULL,
  `Precio` double DEFAULT NULL,
  `Stock` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idProducto`, `Nombres`, `Foto`, `Descripcion`, `Precio`, `Stock`) VALUES
(34, ' Magnat select', 'http://localhost:8000/carrito/Magnat select.png', 'ORIENTAL ESPECIADA. Sofisticado y especiado modernas notas de jenjibre de Madagascar y maderas ambaradas.', 110.9, 10),
(37, 'Active men', 'http://localhost:8000/carrito/activeMen.jpg', 'Aroma herbal con frescas notas de bergamota y menta.', 31.9, 5),
(44, 'Cadena hope cross', 'http://localhost:9443/carrito/cadena_cross.png', 'BaÃ±o de oro de 24k, collar mediano de 60 cm.', 49.9, 2),
(45, 'Reloj frescott', 'http://localhost:9443/carrito/reloj_frescott.png', 'Caja de metal de 4,5 cm, correa de cuero de 26cm, incluye 3 cronografos decorativos.', 114.9, 2),
(46, 'HOMME', 'http://localhost:9443/carrito/shampoo_homme.png', 'Shampoo para el control de caida de cabello y de uso diario. 250ml. Su textura con microesferas ayuda a eliminar cualquier residuo de grasos o impurezas en el cabello y cuero cabelludo, dando como resultado un cabello limpio, fresco y sano.', 27, 6),
(47, 'BLEU INTENSE', 'http://localhost:9443/carrito/bleu_intense.png', 'HERBAL AROMATICA. La frescura del reventar de las olas y notas herbales de salvia. Gracias a sus notas frescas y aromÃ¡ticas es ideal para cualquier ocasiÃ³n de dÃ­a.', 69, 10),
(48, 'RELOJ BARSTOW', 'http://localhost:9443/carrito/reloj_barstow.png', 'Caja de metal plateado y correa de cuero marrÃ³n. CronÃ³grafos decorativos. Largo aprox.: 26 cm.', 235, 2),
(49, 'Set Nitro Ultimate', 'http://localhost:9443/carrito/set_nitro_ultimate.png', 'El set de regalo incluye un perfume de hombre Nitro Ultimate 90ml con aroma herbal aromÃ¡tico, una increÃ­ble combinaciÃ³n de acordes minerales, toques maderosos de Ã¡mbar y neuro energy accord que activa tu energÃ­a. AcompaÃ±ado del desodorante de hombre Trax Mysterious Aerosol 103g con aroma cool e intenso de hierbas verdes que te darÃ¡ una sensaciÃ³n de limpieza y extrema frescura durante el dÃ­a.', 101.5, 4),
(50, 'Trax So Close', 'http://localhost:9443/carrito/trax_so_close.png', 'El Desodorante de Hombre Trax So Close en Aerosol cuenta con un aroma maderoso. Es un desodorante para hombre sin alcohol que protege tus axilas les brinda una sensaciÃ³n de limpieza y extrema frescura durante todo el dÃ­a.', 30.9, 5),
(51, 'Dancing Sunset', 'http://localhost:9443/carrito/dancing_sunset.png', 'SorprÃ©ndete con el aroma oriental dulce del perfume Dancing Sunset y sus radiantes notas vibrantes de flores de sambac y sugar ambar.', 72.5, 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`idCompras`),
  ADD KEY `Compras_FKIndex1` (`idPago`),
  ADD KEY `Compras_FKIndex2` (`idCliente`);

--
-- Indices de la tabla `detalle_compras`
--
ALTER TABLE `detalle_compras`
  ADD PRIMARY KEY (`idDetalle`,`idProducto`,`idCompras`),
  ADD KEY `Producto_has_Compras_FKIndex1` (`idProducto`),
  ADD KEY `Producto_has_Compras_FKIndex2` (`idCompras`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`idPago`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idProducto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `idCompras` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `detalle_compras`
--
ALTER TABLE `detalle_compras`
  MODIFY `idDetalle` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `pago`
--
ALTER TABLE `pago`
  MODIFY `idPago` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idProducto` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`idPago`) REFERENCES `pago` (`idPago`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `compras_ibfk_2` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalle_compras`
--
ALTER TABLE `detalle_compras`
  ADD CONSTRAINT `detalle_compras_ibfk_1` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `detalle_compras_ibfk_2` FOREIGN KEY (`idCompras`) REFERENCES `compras` (`idCompras`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
