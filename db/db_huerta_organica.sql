-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-07-2023 a las 23:43:53
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_huerta_organica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `descripcion` varchar(3500) NOT NULL,
  `detalles` varchar(5000) NOT NULL,
  `img1` varchar(3000) NOT NULL,
  `img2` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`ID`, `nombre`, `descripcion`, `detalles`, `img1`, `img2`) VALUES
(1, 'Verduras', 'Los plantines de verduras son pequeñas plántulas que se cultivan a partir de semillas y se trasplantan al suelo para su desarrollo y crecimiento. Estos plantines ofrecen varias ventajas para los jardineros y agricultores, ya que permiten un inicio temprano del cultivo, un mejor control de las condiciones de crecimiento y una mayor tasa de éxito en el establecimiento de las plantas.', 'Los plantines de verduras son una excelente opción para aquellos que desean tener un inicio temprano en la temporada de cultivo, obtener cosechas más rápidas y garantizar un mejor establecimiento de las plantas. Con una adecuada atención y cuidado, estos plantines pueden convertirse en plantas saludables y productivas que brinden una abundante cosecha de verduras frescas y sabrosas.', 'https://www.semana.com/resizer/x9R_YUdvLVqYpy5A--WTguVUCOA=/1280x720/smart/filters:format(jpg):quality(80)/cloudfront-us-east-1.images.arcpublishing.com/semana/PRXHUOH5PBFDDNP3FBOFNY6EPQ.jpg', 'https://www.semana.com/resizer/x9R_YUdvLVqYpy5A--WTguVUCOA=/1280x720/smart/filters:format(jpg):quality(80)/cloudfront-us-east-1.images.arcpublishing.com/semana/PRXHUOH5PBFDDNP3FBOFNY6EPQ.jpg'),
(2, 'Aromáticas', 'Los plantines de aromáticas son plántulas de hierbas y plantas medicinales que se cultivan a partir de semillas y se trasplantan al suelo o se mantienen en macetas para su desarrollo y crecimiento. Estos plantines ofrecen una forma conveniente de cultivar y disfrutar de una variedad de hierbas aromáticas y medicinales en el jardín, huerto o incluso en interiores.', 'Los plantines de aromáticas son una excelente opción para aquellos que desean tener acceso a hierbas frescas, sabrosas y medicinales en su hogar. Con un cuidado adecuado, estos plantines pueden proporcionar una fuente constante de hierbas frescas para cocinar, infusiones, remedios caseros y también agregar belleza y fragancia a los espacios al aire libre.', 'https://www.elmueble.com/medio/2020/09/23/plantas-aromaticas-perejil-albahaca-tomillo-lavanda-00342926_o_41e7bcc6_1200x630.jpg', 'https://www.elmueble.com/medio/2020/09/23/plantas-aromaticas-perejil-albahaca-tomillo-lavanda-00342926_o_41e7bcc6_1200x630.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `ID` int(11) NOT NULL,
  `Producto` varchar(400) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `precio` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `descripcion` varchar(5000) DEFAULT NULL,
  `detalles` varchar(5000) NOT NULL,
  `img1` varchar(2000) NOT NULL,
  `img2` varchar(3500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`ID`, `Producto`, `id_categoria`, `precio`, `stock`, `descripcion`, `detalles`, `img1`, `img2`) VALUES
(1, 'Tomate platense', 1, 70, 150, 'El tomate es una planta de origen tropical que se cultiva en todo el mundo por sus frutos comestibles. Es una planta anual que pertenece a la familia de las solanáceas y se caracteriza por tener tallos verdes y flexibles, hojas compuestas de forma lobulada y flores amarillas en racimos.', 'El tomate (Solanum lycopersicum) es una planta de origen tropical que se cultiva en todo el mundo por sus frutos comestibles. Es una planta anual que pertenece a la familia de las solanáceas y se caracteriza por tener tallos verdes y flexibles, hojas compuestas de forma lobulada y flores amarillas en racimos.\r\n\r\nLa planta de tomate puede variar en tamaño, desde variedades pequeñas ideales para macetas hasta variedades más grandes que requieren un espacio de jardín. Es una planta que requiere luz solar directa y un suelo bien drenado y rico en nutrientes.\r\n\r\nEl tomate produce frutos en forma de baya de diferentes tamaños, formas y colores, como rojo, amarillo, naranja, verde o incluso morado. Estos frutos son muy versátiles en la cocina y se utilizan en una amplia variedad de platos, desde ensaladas y salsas hasta sopas y guisos.\r\n\r\nAl cultivar tomates, es importante proporcionar un buen soporte para que los tallos puedan crecer verticalmente y evitar que se dañen. También se recomienda realizar un riego regular y fertilizar la planta para promover un crecimiento saludable y una buena producción de frutos.\r\n\r\nEn resumen, la planta de tomate es una planta popular en la huerta debido a la deliciosa variedad de frutos que produce. Su cultivo requiere cuidados adecuados, pero los resultados valen la pena, ya que los tomates frescos y maduros son una delicia culinaria.', 'https://d3ugyf2ht6aenh.cloudfront.net/stores/001/656/903/products/d_nq_np_785808-mla31305832898_072019-o1-ae013401d95810b8e216200009155246-640-0.webp', 'https://d3ugyf2ht6aenh.cloudfront.net/stores/001/656/903/products/d_nq_np_785808-mla31305832898_072019-o1-ae013401d95810b8e216200009155246-640-0.webp'),
(2, 'Lechuga morada', 1, 35, 200, 'El plantín de lechuga se caracteriza por tener un tallo corto y un conjunto de hojas de forma variada, que van desde hojas sueltas y onduladas hasta hojas más compactas y en forma de cabeza. Las hojas de la lechuga son de color verde intenso, aunque también existen variedades de hojas rojas o de colores mixtos.', 'La lechuga (Lactuca sativa) es una planta de hojas verdes y crujientes que se cultiva principalmente por sus hojas comestibles. Es una planta anual de la familia de las asteráceas y se encuentra entre las hortalizas más populares y consumidas en todo el mundo.\r\n\r\nEl plantín de lechuga se caracteriza por tener un tallo corto y un conjunto de hojas de forma variada, que van desde hojas sueltas y onduladas hasta hojas más compactas y en forma de cabeza. Las hojas de la lechuga son de color verde intenso, aunque también existen variedades de hojas rojas o de colores mixtos.\r\n\r\nLa lechuga es una planta de clima fresco y se cultiva mejor en primavera y otoño, ya que altas temperaturas pueden hacer que las plantas se vuelvan amargas o propensas a enfermedades. Requiere un suelo bien drenado y rico en materia orgánica, y necesita recibir luz solar directa durante al menos 6 horas al día.\r\n\r\nEs importante regar regularmente el plantín de lechuga para mantener el suelo húmedo, pero evitando el encharcamiento. Además, se recomienda fertilizar la planta para promover un crecimiento vigoroso y un follaje abundante.\r\n\r\nLa lechuga es ampliamente utilizada en ensaladas, sándwiches y como guarnición en diversos platos. Se puede cosechar en diferentes etapas de crecimiento, desde hojas jóvenes tiernas hasta cabezas más maduras y compactas.\r\n\r\nEn resumen, el plantín de lechuga es una opción popular en la huerta debido a su fácil cultivo y versatilidad culinaria. Proporciona hojas frescas y crujientes que son una adición saludable y sabrosa a muchas preparaciones alimenticias.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRetRRBVXKHoRyiO8muIG-t-dZvzuRI4o-gmAgARi0bIVk8dYmMsz_UBC3RLeG_5uSJgiQ&usqp=CAU', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRetRRBVXKHoRyiO8muIG-t-dZvzuRI4o-gmAgARi0bIVk8dYmMsz_UBC3RLeG_5uSJgiQ&usqp=CAU'),
(3, 'Lavanda', 2, 500, 10, 'La lavanda es un arbusto perenne de tamaño mediano que puede alcanzar una altura de 30 a 60 centímetros. Tiene hojas estrechas y alargadas, de color verde grisáceo, que están dispuestas de forma opuesta en el tallo. Las flores de lavanda son pequeñas y de forma tubular, agrupadas en espigas largas y fragantes. Pueden variar en color, desde tonos pálidos de lila hasta violeta intenso.', 'La lavanda, con su delicado encanto y su aroma embriagador, es una planta perenne que nos transporta a los campos soleados de la región mediterránea. Con su follaje verde grisáceo y hojas estrechas que parecen bailar al ritmo de la brisa, la lavanda se alza como una dama elegante en el jardín.\r\n\r\nEn primavera, cuando el sol comienza a acariciar la tierra, la lavanda despliega su esplendor con inflorescencias en forma de espigas largas y fragantes. Las pequeñas flores tubulares se agrupan en racimos de tonalidades sutiles que van desde pálidos matices de lila hasta vibrantes tonos de violeta. Cada flor, cada pétalo, exhala un perfume suave y floral que envuelve el aire y deleita nuestros sentidos.\r\n\r\nEsta planta aromática, querida por muchas culturas a lo largo de la historia, ha encontrado su lugar en el mundo de la belleza y el bienestar. Sus propiedades aromáticas relajantes han sido utilizadas en productos para el cuidado de la piel, en la aromaterapia y en la creación de perfumes. Además, la lavanda se ha ganado su lugar en la cocina, donde sus flores y hojas se utilizan para realzar el sabor de platos dulces y salados.\r\n\r\nLa lavanda, con su rusticidad y resistencia, se adapta a diferentes condiciones de cultivo. Prefiere el sol radiante y los suelos bien drenados, pero no es exigente en cuanto a nutrientes o riego. En campos y jardines, la lavanda se convierte en una sinfonía de colores y aromas, atrayendo abejas y mariposas que se deleitan con su néctar.', 'https://images.hola.com/imagenes/decoracion/20210415187823/cultivar-lavanda-plantas-exterior-mc/0-943-935/lavanda1-t.jpg', 'https://images.hola.com/imagenes/decoracion/20210415187823/cultivar-lavanda-plantas-exterior-mc/0-943-935/lavanda1-t.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_productos_categorias` (`id_categoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `fk_productos_categorias` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
