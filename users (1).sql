-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2025 at 05:24 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `women_safety`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(1, 'niveditas22cs@psnacet.edu.in', '$2y$10$TBUGizZCbZuhsFHV1AKhkO1AtEwhdtgbs6eIUGK9fBan8vMxr4nl6'),
(6, 'praveena@gmail.com', '$2y$10$v6kCjLU83nPXC.iBIjFMMuNYKPcW2q2EqyELZ23cBFCK8Dh/86WhO'),
(13, 'sanjana@gmail.com', '$2y$10$IVdeR5HSOQqyUnjtgh3GnOQSd31NiCYxt1OJEXCtPMwM7a2RewE5y'),
(14, 'niveditasenthilkumar@gmail.com', '$2y$10$Y0OIZVzuR0otGIM5EUTRK.1RstRgN973zMSDUqVvjVHhRQo0Y91J2'),
(15, 'shahana@gmail.com', '$2y$10$M68bLjczMiKc48t8ayqOuOx76S7jGQLB4Doi.lVzqZPM7yE.pK2h6'),
(17, 'indu@gmail.com', '$2y$10$/qqpClR92rcSKs8TrzgaeO1bZ0/tG1Px49gcPMB1ANhQMYuYIpU0i'),
(18, 'vijayavii@gmail.com', '$2y$10$/8ItOyCgw0ITQl7uLDAZY.RCHtWxvpbsZp78d8yl3ByC3WwHwYQIK'),
(30, 'praveenap2605@gmail.com', '$2y$10$CIIC5Luojquoir8EJLZZ7uUHc/xDC5kYTp3X0R8ixUfq5VJVji4ey'),
(32, 'raji@gmail.com', '$2y$10$wxp/pAntmszqXWnYkMWYmeyk5fi8mXeW30S21dpWVIwyvHBmRJkda'),
(34, 'jhsduhduj@gmail.com', '$2y$10$wnCrNSrB72N9WXIhwVuG4uz7Af7dp57FoRJlFTa5Scw8g8cSziJ3G'),
(35, 'jhsduhdduj@gmail.com', '$2y$10$Otej5OaA7gQapZkv08xvZeC8AXEUh7X8jstt9d5utyDa9QxewFkbS'),
(36, 'jhsduhddujj@gmail.com', '$2y$10$JCL7SGPkWpBG8BuCeZMKdO59Wb7Y6aEUhfHmuj9P.FLgaJNwdn586'),
(37, 'jbdjkabjk@gmail.com', '$2y$10$nz3wMzIsocxPHUcnDVD6POXQr9rz.nkJPvk83dwqARrhIXzSXdl7G'),
(38, 'jbdjkabjjk@gmail.com', '$2y$10$lHzUWSFi7kUNZvmUn/S9uenax3saeydn3bMj6svWvziXx6q2kzg9m'),
(39, 'jbdjkadvknbjjk@gmail.com', '$2y$10$YPD0kIvGR7PTONtLmlXJneyF84u8W28hEw7XMiDWZTCFnBO1vFYxe'),
(40, 'useremail@gmail.com', '$2y$10$mu0F.3D18WUDxCtet9oHveFtZ8ZrgDB1KASbEVh9afBUb5vDb7.5W'),
(41, 'njsndk@gmail.com', '$2y$10$3kF0WzMlm0sX2UYCBIi9luWueisW62rTgFSAVFguK/i1B0PApQqrO'),
(42, 'njsndkd@gmail.com', '$2y$10$/ZwR4a94ezHES1xQaeiYy.yr6lZGeKt1OOrmbMGCaaxfTHONgP552'),
(44, 'njsndmkd@gmail.com', '$2y$10$I8M81.OaRZdIFSPpXEMYfu/HZk6XLgYrHzGJeJcCkIL8Z2Bhf3Py6'),
(45, 'niveditass22cs@psnacet.edu.in', '$2y$10$l/.IFfIvd9Riblk5mqeGz.6eslq7p6kBCootL4v6EchuRBUd8rDKK'),
(46, 'niveditasenthilkusmar@gmail.com', '$2y$10$Uf8SRNSz7ol1iv/FjHcQYubWorKH.I77/3VMR6lRTGfByWuC2eIrW'),
(47, 'nivdxfe@gmail.com', '$2y$10$MbrDEKYBWUZOWUTE6HTmLeAh4XYeejR7Fa3IhG4BK/mhtuqc4elfS'),
(48, 'ngkbm@gmail.com', '$2y$10$Hc1xtLDmh0/c.OHh33He..BGTyuzqs4dQwoSVeuKovjoHDAXNUSWi'),
(49, 'niveditbas22cs@psnacet.edu.in', '$2y$10$Li80Rh3luKIK86J1Wkv3LeF.Mm8fGbXVNsu.2X7Nxe3XDvKmjcLC.'),
(50, 'rajarams2323@gmail.com', '$2y$10$CCQHoeA0uscYzHk8BdWWfOygi6KgiRQMMZwkOlgmkCSj5mwGW3M2O');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
