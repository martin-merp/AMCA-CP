-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-09-2021 a las 00:58:11
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `amca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agricultores`
--

CREATE TABLE `agricultores` (
  `id` int(11) NOT NULL,
  `nombres` varchar(300) COLLATE utf8_spanish2_ci NOT NULL,
  `apellidos` varchar(300) COLLATE utf8_spanish2_ci NOT NULL,
  `telefono` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `documento` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `agricultores`
--

INSERT INTO `agricultores` (`id`, `nombres`, `apellidos`, `telefono`, `imagen`, `created_at`, `updated_at`, `documento`) VALUES
(2, 'Livardo Morado', 'Ulkue Tizoy', '3145226633', '2_agricultor 1.jpg', '2020-08-26 22:37:55', '2020-08-27 03:37:55', '694184522'),
(3, 'Gonzalo Osorio', 'Malparado Soskue', '3138524562', '3_agricultor 2.jpg', '2020-08-26 22:38:07', '2020-08-27 03:38:07', '658894215'),
(4, 'Benito Camelas', 'Paredes Sucias', '3135241542', '4_agricultor 4.jpg', '2020-08-26 22:38:18', '2020-08-27 03:38:18', '125455555685'),
(5, 'Kelvin Calvados', 'Rochados Palawas', '3138137458', '5_agricultor 6.jpg', '2020-08-26 22:38:27', '2020-08-27 03:38:27', '11234584525'),
(6, 'Kelvin Calvados', 'Rochados Palawas', '3145226633', '6_agricultor 7.jpg', '2020-08-26 22:38:53', '2020-08-27 03:38:53', '11234584525'),
(7, 'Gilverta Penosos', 'Rochados Palawas', '54646546', '7_agricultor 5.jpg', '2020-08-26 22:39:48', '2020-08-27 03:39:48', '11234584525');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agricultores_animales`
--

CREATE TABLE `agricultores_animales` (
  `id` int(11) NOT NULL,
  `id_agricultor` int(11) NOT NULL,
  `id_animal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `agricultores_animales`
--

INSERT INTO `agricultores_animales` (`id`, `id_agricultor`, `id_animal`) VALUES
(5, 2, 5),
(6, 3, 1),
(7, 3, 5),
(8, 3, 9),
(9, 7, 5),
(10, 7, 11),
(11, 2, 9),
(13, 4, 5),
(14, 4, 9),
(15, 5, 5),
(16, 5, 12),
(17, 6, 12),
(18, 6, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agricultores_fincas`
--

CREATE TABLE `agricultores_fincas` (
  `id` int(11) NOT NULL,
  `id_agricultor` int(11) NOT NULL,
  `id_finca` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `agricultores_fincas`
--

INSERT INTO `agricultores_fincas` (`id`, `id_agricultor`, `id_finca`) VALUES
(11, 2, 10),
(12, 3, 11),
(13, 3, 12),
(14, 2, 11),
(17, 7, 13),
(18, 7, 12),
(19, 4, 11),
(20, 4, 12),
(21, 5, 13),
(22, 5, 12),
(23, 6, 13),
(24, 6, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agricultores_preparados`
--

CREATE TABLE `agricultores_preparados` (
  `id` int(11) NOT NULL,
  `id_agricultor` int(11) NOT NULL,
  `id_preparado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `agricultores_preparados`
--

INSERT INTO `agricultores_preparados` (`id`, `id_agricultor`, `id_preparado`) VALUES
(4, 3, 1),
(5, 3, 2),
(6, 2, 1),
(7, 7, 4),
(8, 7, 3),
(9, 2, 4),
(10, 4, 6),
(11, 4, 3),
(12, 5, 4),
(13, 5, 1),
(14, 6, 6),
(15, 6, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agricultores_vegetales`
--

CREATE TABLE `agricultores_vegetales` (
  `id` int(11) NOT NULL,
  `id_agricultor` int(11) NOT NULL,
  `id_vegetal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `agricultores_vegetales`
--

INSERT INTO `agricultores_vegetales` (`id`, `id_agricultor`, `id_vegetal`) VALUES
(2, 2, 3),
(5, 3, 3),
(6, 2, 6),
(7, 7, 6),
(8, 7, 5),
(9, 4, 6),
(10, 4, 7),
(11, 5, 7),
(12, 5, 3),
(13, 6, 5),
(14, 6, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `animales`
--

CREATE TABLE `animales` (
  `id` int(11) NOT NULL,
  `especie` varchar(300) COLLATE utf8_spanish2_ci NOT NULL,
  `raza` varchar(300) COLLATE utf8_spanish2_ci NOT NULL,
  `alimentacion` text COLLATE utf8_spanish2_ci NOT NULL,
  `cuidados` text COLLATE utf8_spanish2_ci NOT NULL,
  `reproduccion` text COLLATE utf8_spanish2_ci NOT NULL,
  `observaciones` text COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `imagen` text COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `animales`
--

INSERT INTO `animales` (`id`, `especie`, `raza`, `alimentacion`, `cuidados`, `reproduccion`, `observaciones`, `created_at`, `updated_at`, `imagen`) VALUES
(1, 'warha', 'amazonico', 'come chiros y frutas silvestres', 'dejarlo en ambiente natural', 'cada que puede', 'no lo deje reproducir tanto', '2020-08-01 18:54:20', '2020-08-27 03:23:57', '1_warha.jfif'),
(5, 'Boruga', 'amazonico', 'chiros y platanos', 'Cuidar del calor extremo', 'Cada de vez que puede', 'Evitar exceso de reproducción', '2020-08-02 00:37:31', '2020-08-27 03:25:06', '5_boruga.jpg'),
(9, 'gallinetas', 'aves', 'granos de maiz', 'mantenerlo en su abita natural', 'cada vez que puede', 'nada por el momento', '2020-08-02 08:11:15', '2020-08-27 03:26:40', '9_gallinetas.jpg'),
(10, 'Armadillo', 'silvestre', 'insectos y frutas silvestre', 'mantenerlo en su abita', 'quien sabe !!', 'traga mucho', '2020-08-26 09:49:03', '2020-08-27 03:28:21', '10_armadillo.jpg'),
(11, 'gallinas de corral', 'aves', 'maíz y granos', 'mantenerlo en fincas', 'cada vez que puede', 'quien sabe', '2020-08-27 03:29:59', '2020-08-27 03:30:00', '11_gallinas.jpg'),
(12, 'Tilapia', 'uuy', 'uiuyi', 'uiuy', 'yuiyu', 'yuiu', '2020-12-23 04:19:59', '2021-04-22 02:19:14', '12_circuito2.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `finca`
--

CREATE TABLE `finca` (
  `id` int(11) NOT NULL,
  `nombre` varchar(300) COLLATE utf8_spanish2_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish2_ci NOT NULL,
  `ubicacion` varchar(300) COLLATE utf8_spanish2_ci NOT NULL,
  `propietario` varchar(300) COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `finca`
--

INSERT INTO `finca` (`id`, `nombre`, `imagen`, `ubicacion`, `propietario`, `created_at`, `updated_at`) VALUES
(10, 'la raya', '10_finca 3.jpg', 'puerto vega', '1123544886', '2020-08-26 22:40:14', '2020-08-27 03:40:14'),
(11, 'el grangero', '11_finca 8.png', 'la playa', '65888455645', '2020-08-26 22:40:25', '2020-08-27 03:40:25'),
(12, 'guaricha 2', '12_finca 2.jpg', 'hongkong', '56123485', '2020-08-26 22:40:37', '2020-08-27 03:40:37'),
(13, 'envuelto de piedras', '13_finca 6.jpg', 'puente arando los cachos', 'kelvin', '2020-08-26 22:41:49', '2020-08-27 03:41:49'),
(14, 'la cabaña', '14_finca 1.jpg', 'puerto vega', '1123544886', '2020-08-26 22:42:20', '2020-08-27 03:42:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preparados`
--

CREATE TABLE `preparados` (
  `id` int(11) NOT NULL,
  `nombre` varchar(300) COLLATE utf8_spanish2_ci NOT NULL,
  `preparacion` text COLLATE utf8_spanish2_ci NOT NULL,
  `observaciones` text COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `imagen` text COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `preparados`
--

INSERT INTO `preparados` (`id`, `nombre`, `preparacion`, `observaciones`, `created_at`, `updated_at`, `imagen`) VALUES
(1, 'tamales', 'hojas de plátano y arroz con maza etc', 'comalos bn calientes', '2020-08-26 22:35:38', '2020-08-27 03:35:38', '1_embuelto de yuca.webp'),
(2, 'envuelto de yuca', 'yuca y queso', 'reposar hasta el día siguiente', '2020-08-26 22:35:49', '2020-08-27 03:35:49', '2_embuelto de choclo.jfif'),
(3, 'sancocho de bagre', 'variedad de verduras y bagre', 'preparado a leña', '2020-08-26 22:36:17', '2020-08-27 03:36:17', '3_sopa de bagre.jpg'),
(4, 'picada', 'asado al vapor', 'comer bien caliente', '2020-08-26 22:58:52', '2020-08-27 03:58:52', '4_picada de chicharron.jpg'),
(6, 'lechona', 'asado a temperatura', 'ninguna', '2020-08-26 22:37:35', '2020-08-27 03:37:35', '6_lechona.jpeg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'admin', 'ccmonpan@hotmail.com', NULL, '$2y$10$Cinu/bJMrSHnyt2HlIoJkOEb6z9zhqqLwpKi39SDIwe2m1tqpY5Fm', NULL, '2021-04-22 02:05:31', '2021-04-22 02:05:31'),
(5, 'user', 'martin@hotmail.com', NULL, '$2y$10$i9I2/1vaPQ7aavtsYfxoT.QH3F5M9J0KSAu.yw16reYoYG9Dw3Aw2', NULL, '2021-04-22 02:06:04', '2021-04-22 02:06:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vegetales`
--

CREATE TABLE `vegetales` (
  `id` int(11) NOT NULL,
  `especie` varchar(300) COLLATE utf8_spanish2_ci NOT NULL,
  `cultivo` text COLLATE utf8_spanish2_ci NOT NULL,
  `observaciones` text COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `imagen` text COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `vegetales`
--

INSERT INTO `vegetales` (`id`, `especie`, `cultivo`, `observaciones`, `created_at`, `updated_at`, `imagen`) VALUES
(1, 'yuca', 'tierra caliente', 'dejar madurar por un año', '2020-08-26 05:45:47', '2020-08-26 10:45:47', '1_yuca.jpg'),
(3, 'platanos', 'tierra caliente', 'produce cada 3 meses', '2020-08-26 05:45:59', '2020-08-26 10:45:59', '3_platano.jpeg'),
(4, 'cacao', 'zonas calientes', 'lar put kime so the', '2020-08-26 05:47:26', '2020-08-26 10:47:26', '4_cacao.jpg'),
(5, 'chonta duro', 'en tierra áridas', 'no dejar madurar en finales diaz', '2020-08-26 05:47:10', '2020-08-26 10:47:10', '5_chonta-duro.jpg'),
(6, 'calabaza', 'zonas aridas', 'nada por el momento', '2020-08-26 22:33:40', '2020-08-27 03:33:40', '6_calabazas.jpg'),
(7, 'pepino verde', 'zonas calientes', 'ninguna por el momento', '2020-08-26 22:35:04', '2020-08-27 03:35:04', '7_pepino.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agricultores`
--
ALTER TABLE `agricultores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `agricultores_animales`
--
ALTER TABLE `agricultores_animales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_agricultor` (`id_agricultor`),
  ADD KEY `id_animal` (`id_animal`);

--
-- Indices de la tabla `agricultores_fincas`
--
ALTER TABLE `agricultores_fincas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_agricultor` (`id_agricultor`),
  ADD KEY `id_finca` (`id_finca`);

--
-- Indices de la tabla `agricultores_preparados`
--
ALTER TABLE `agricultores_preparados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_agricultor` (`id_agricultor`),
  ADD KEY `id_preparado` (`id_preparado`);

--
-- Indices de la tabla `agricultores_vegetales`
--
ALTER TABLE `agricultores_vegetales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_agricultor` (`id_agricultor`),
  ADD KEY `id_vegetales` (`id_vegetal`);

--
-- Indices de la tabla `animales`
--
ALTER TABLE `animales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `finca`
--
ALTER TABLE `finca`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `preparados`
--
ALTER TABLE `preparados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `vegetales`
--
ALTER TABLE `vegetales`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `agricultores`
--
ALTER TABLE `agricultores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `agricultores_animales`
--
ALTER TABLE `agricultores_animales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `agricultores_fincas`
--
ALTER TABLE `agricultores_fincas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `agricultores_preparados`
--
ALTER TABLE `agricultores_preparados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `agricultores_vegetales`
--
ALTER TABLE `agricultores_vegetales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `animales`
--
ALTER TABLE `animales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `finca`
--
ALTER TABLE `finca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `preparados`
--
ALTER TABLE `preparados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `vegetales`
--
ALTER TABLE `vegetales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `agricultores_animales`
--
ALTER TABLE `agricultores_animales`
  ADD CONSTRAINT `agricultores_animales_ibfk_1` FOREIGN KEY (`id_agricultor`) REFERENCES `agricultores` (`id`),
  ADD CONSTRAINT `agricultores_animales_ibfk_2` FOREIGN KEY (`id_animal`) REFERENCES `animales` (`id`);

--
-- Filtros para la tabla `agricultores_fincas`
--
ALTER TABLE `agricultores_fincas`
  ADD CONSTRAINT `agricultores_fincas_ibfk_2` FOREIGN KEY (`id_finca`) REFERENCES `finca` (`id`),
  ADD CONSTRAINT `agricultores_fincas_ibfk_3` FOREIGN KEY (`id_agricultor`) REFERENCES `agricultores` (`id`);

--
-- Filtros para la tabla `agricultores_preparados`
--
ALTER TABLE `agricultores_preparados`
  ADD CONSTRAINT `agricultores_preparados_ibfk_1` FOREIGN KEY (`id_agricultor`) REFERENCES `agricultores` (`id`),
  ADD CONSTRAINT `agricultores_preparados_ibfk_2` FOREIGN KEY (`id_preparado`) REFERENCES `preparados` (`id`);

--
-- Filtros para la tabla `agricultores_vegetales`
--
ALTER TABLE `agricultores_vegetales`
  ADD CONSTRAINT `agricultores_vegetales_ibfk_1` FOREIGN KEY (`id_agricultor`) REFERENCES `agricultores` (`id`),
  ADD CONSTRAINT `agricultores_vegetales_ibfk_2` FOREIGN KEY (`id_vegetal`) REFERENCES `vegetales` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
