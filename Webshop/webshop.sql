-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2021. Dec 01. 19:11
-- Kiszolgáló verziója: 10.4.6-MariaDB
-- PHP verzió: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `webshop`
--
CREATE DATABASE IF NOT EXISTS `webshop` DEFAULT CHARACTER SET utf16 COLLATE utf16_hungarian_ci;
USE `webshop`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `mennyisegiegyseg`
--

CREATE TABLE `mennyisegiegyseg` (
  `ID_Me` int(11) NOT NULL,
  `Nev` varchar(10) COLLATE utf16_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_hungarian_ci;

--
-- A tábla adatainak kiíratása `mennyisegiegyseg`
--

INSERT INTO `mennyisegiegyseg` (`ID_Me`, `Nev`) VALUES
(2, 'DB'),
(1, 'Liter');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `rendeles`
--

CREATE TABLE `rendeles` (
  `ID_rendeles` int(11) NOT NULL,
  `ID_user` int(11) NOT NULL,
  `ID_termek` int(11) NOT NULL,
  `Mennyiseg` int(11) NOT NULL,
  `ID_Me` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `termekek`
--

CREATE TABLE `termekek` (
  `ID_termek` int(11) NOT NULL,
  `Nev` varchar(30) COLLATE utf16_hungarian_ci NOT NULL,
  `Mennyiseg` float NOT NULL,
  `ID_Me` int(11) NOT NULL,
  `Nettoar` int(10) NOT NULL,
  `Afa` int(2) NOT NULL DEFAULT 27,
  `Kep` varchar(100) COLLATE utf16_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `ID_user` int(11) NOT NULL,
  `Nev` varchar(50) COLLATE utf16_hungarian_ci NOT NULL,
  `Jelszo` varchar(20) COLLATE utf16_hungarian_ci NOT NULL,
  `Iranyitoszam` varchar(4) COLLATE utf16_hungarian_ci NOT NULL,
  `Utca` varchar(30) COLLATE utf16_hungarian_ci NOT NULL,
  `Hazszam` varchar(10) COLLATE utf16_hungarian_ci NOT NULL,
  `Emelet` varchar(2) COLLATE utf16_hungarian_ci NOT NULL,
  `Ajto` varchar(2) COLLATE utf16_hungarian_ci NOT NULL,
  `Email` varchar(30) COLLATE utf16_hungarian_ci NOT NULL,
  `Telefon` varchar(15) COLLATE utf16_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_hungarian_ci;

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `mennyisegiegyseg`
--
ALTER TABLE `mennyisegiegyseg`
  ADD PRIMARY KEY (`ID_Me`),
  ADD UNIQUE KEY `idx_nev` (`Nev`);

--
-- A tábla indexei `rendeles`
--
ALTER TABLE `rendeles`
  ADD PRIMARY KEY (`ID_rendeles`),
  ADD KEY `idx_user` (`ID_user`),
  ADD KEY `idx_termek` (`ID_termek`),
  ADD KEY `idx_Me` (`ID_Me`);

--
-- A tábla indexei `termekek`
--
ALTER TABLE `termekek`
  ADD PRIMARY KEY (`ID_termek`),
  ADD UNIQUE KEY `idx_termeknev` (`Nev`),
  ADD KEY `idx_Me` (`ID_Me`),
  ADD KEY `idx_Kep` (`Kep`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID_user`),
  ADD UNIQUE KEY `idx_nev` (`Nev`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `mennyisegiegyseg`
--
ALTER TABLE `mennyisegiegyseg`
  MODIFY `ID_Me` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT a táblához `rendeles`
--
ALTER TABLE `rendeles`
  MODIFY `ID_rendeles` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `termekek`
--
ALTER TABLE `termekek`
  MODIFY `ID_termek` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `ID_user` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
