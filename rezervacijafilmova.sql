-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2018 at 12:20 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rezervacijafilmova`
--

-- --------------------------------------------------------

--
-- Table structure for table `datum`
--

CREATE TABLE `datum` (
  `ID` int(11) NOT NULL,
  `Datum` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `datum`
--

INSERT INTO `datum` (`ID`, `Datum`) VALUES
(7, '2018-01-07'),
(8, '2018-04-13'),
(11, '2018-06-23'),
(12, '2018-06-27');

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `id` int(11) NOT NULL,
  `nazivFilma` varchar(100) NOT NULL,
  `zanr` varchar(100) NOT NULL,
  `godina` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`id`, `nazivFilma`, `zanr`, `godina`) VALUES
(1, 'Tomb Raider', 'akcija', 2018),
(4, 'Avengers 7', 'akcija', 2018),
(5, 'Spiderman 4', 'akcija', 2016),
(6, 'Glup i gluplji', 'komedija', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `ID` int(11) NOT NULL,
  `username` varchar(27) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Ime` varchar(27) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Prezime` varchar(27) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uloga` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email` varchar(27) COLLATE utf8mb4_unicode_ci NOT NULL,
  `BrojTelefona` varchar(27) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Lozinka` varchar(27) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`ID`, `username`, `Ime`, `Prezime`, `uloga`, `Email`, `BrojTelefona`, `Lozinka`) VALUES
(2, 'admin', 'Franjo', '?ido', NULL, 'fd@werbeeinfach.de', '63471405', 'admin'),
(3, 'marko', 'Marko', 'Markovic', NULL, 'f@f.com', '62035456', 'marko');

-- --------------------------------------------------------

--
-- Table structure for table `rezervacije`
--

CREATE TABLE `rezervacije` (
  `ID` int(11) NOT NULL,
  `ImeRezervacije` varchar(27) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sjedala` int(11) NOT NULL,
  `Datum` date NOT NULL,
  `KontaktBroj` varchar(27) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nazivFilma` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rezervacije`
--

INSERT INTO `rezervacije` (`ID`, `ImeRezervacije`, `Sjedala`, `Datum`, `KontaktBroj`, `nazivFilma`) VALUES
(18, 'marko', 1, '2018-01-03', '063471405', 'Tomb Raider'),
(19, 'hehe hehe', 2, '2018-01-07', '063458789', 'Avengers 7'),
(20, 'ok ok', 1, '2018-06-23', '062 142 254', 'Spiderman 4'),
(21, 'Vedran Corluka', 4, '2018-06-27', '021357988', 'Glup i gluplji');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `datum`
--
ALTER TABLE `datum`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rezervacije`
--
ALTER TABLE `rezervacije`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `datum`
--
ALTER TABLE `datum`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `film`
--
ALTER TABLE `film`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `rezervacije`
--
ALTER TABLE `rezervacije`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
