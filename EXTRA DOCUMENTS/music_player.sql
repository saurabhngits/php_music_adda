-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2018 at 09:27 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music_player`
--

-- --------------------------------------------------------

--
-- Table structure for table `songs_metadata`
--

CREATE TABLE `songs_metadata` (
  `id` int(50) NOT NULL,
  `name` varchar(150) NOT NULL,
  `artist` varchar(150) NOT NULL,
  `album` varchar(150) NOT NULL,
  `duration` varchar(50) NOT NULL,
  `image` varchar(250) NOT NULL,
  `artist_image` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `songs_metadata`
--

INSERT INTO `songs_metadata` (`id`, `name`, `artist`, `album`, `duration`, `image`, `artist_image`) VALUES
(1, 'Garba 01 PARAS NON STOP DANDIYA', 'Falguni Pathak', 'Dhol Hindi', '30:38', 'Dhol-Hindi-1997.jpg', 'Falguni_Pathak.jpg'),
(2, 'Garba mokul.saksena.delhi', 'Falguni Pathak', 'Dhol Hindi', '29:24', 'Dhol-Hindi-1997.jpg', 'Falguni_Pathak.jpg'),
(3, 'Garba GARBA', 'Falguni Pathak', 'Dhol Hindi', '28:58', 'Dhol-Hindi-1997.jpg', 'Falguni_Pathak.jpg'),
(4, 'Garba Final Mix DAndiya', 'Falguni Pathak', 'Dhol Hindi', '58:29', 'Dhol-Hindi-1997.jpg', 'Falguni_Pathak.jpg'),
(5, 'Garba Falguni_Pathak_Non_Stop_Garba-_KingMasti.Com', 'Falguni Pathak', 'Dhol Hindi', '28:00', 'Dhol-Hindi-1997.jpg', 'Falguni_Pathak.jpg'),
(6, 'Garba Dandiya', 'Falguni Pathak', 'Dhol Hindi', '29:58', 'Dhol-Hindi-1997.jpg', 'Falguni_Pathak.jpg'),
(11, 'Soniye Dil Nayi - Baaghi 2 - 320Kbps', 'Ankit Tiwari', 'Baaghi2', '05:20', 'Baaghi2.jpg', 'Ankit_Tiwari.jpg'),
(7, 'Katyar Bhola Bhandari', 'Arijit_Singh', 'Katyar Kaljat Ghusli', '03:30', 'Katyar-Kaljat-Ghusli.jpg', 'Arijit_Singh.jpg'),
(8, 'Katyar Din Gele', 'Shankar Mahadevan', 'Katyar Kaljat Ghusli', '01:06', 'Katyar-Kaljat-Ghusli.jpg', 'Shankar_Mahadevan.jpg'),
(9, 'Katyar Man Mandira', 'Shankar Mahadevan', 'Katyar Kaljat Ghusli', '04:39', 'Katyar-Kaljat-Ghusli.jpg', 'Shankar_Mahadevan.jpg'),
(10, 'Katyar Muralidhar Shyam', 'Shankar Mahadevan', 'Katyar Kaljat Ghusli', '00:43', 'Katyar-Kaljat-Ghusli.jpg', 'Shankar_Mahadevan.jpg'),
(12, 'O Saathi - Baaghi 2 - 320Kbps', 'Atif Aslam', 'Baaghi2', '04:11', 'Baaghi2.jpg', 'Atif_Aslam.jpg'),
(13, 'Mundiyan - Baaghi 2 - 320Kbps', 'Atif Aslam', 'Baaghi2', '03:29', 'Baaghi2.jpg', 'Atif_Aslam.jpg'),
(14, 'Lo Safar - Baaghi 2 - 320Kbps', 'Ankit Tiwari', 'Baaghi2', '04:42', 'Baaghi2.jpg', 'Ankit_Tiwari.jpg'),
(15, 'Get Ready To Fight Again - Baaghi 2 320Kbps', 'Ankit Tiwari', 'Baaghi2', '03:16', 'Baaghi2.jpg', 'Ankit_Tiwari.jpg'),
(16, 'Ek Do Teen - Baaghi 2 - 320Kbps', 'Shreya Ghoshal', 'Baaghi2', '04:03', 'Baaghi2.jpg', 'Shreya_Ghoshal.jpg'),
(17, 'Aali Lahar(MixMarathi.Com)', 'Swapnil_Bandodkar', 'Mitwaa', '05:03', 'Mitwaa.jpg', 'Swapnil_Bandodkar.jpg'),
(18, 'Jahan Jau Tujhe Paun(MixMarathi.Com)', 'Swapnil_Bandodkar', 'Mitwaa', '05:01', 'Mitwaa.jpg', 'Swapnil_Bandodkar.jpg'),
(19, 'Mitwaa Title Song(wadal.in)-1', 'Shankar Mahadevan', 'Mitwaa', '04:34', 'Mitwaa.jpg', 'Shankar_Mahadevan.jpg'),
(20, 'Saavar Re Mana (Mitwaa)(VipMarathi.Com)', 'Swapnil_Bandodkar', 'Mitwaa', '05:39', 'Mitwaa.jpg', 'Swapnil_Bandodkar.jpg'),
(21, 'Satyam Shivam Sundaram - Mp3Marathi.Com', 'Swapnil_Bandodkar', 'Mitwaa', '04:04', 'Mitwaa.jpg', 'Swapnil_Bandodkar.jpg'),
(22, 'jodhaaakbar03(www.SongsPK.info)', 'AR_Rahman', 'Hichki', '05:15', 'Hichki.jpg', 'AR_Rahman.jpg'),
(23, 'jodhaaakbar06(www.SongsPK.info)', 'AR_Rahman', 'Hichki', '06:56', 'Hichki.jpg', 'AR_Rahman.jpg'),
(24, 'rdb07 lose control(www.SongsPK.info)', 'AR_Rahman', 'Hichki', '03:40', 'Hichki.jpg', 'AR_Rahman.jpg'),
(25, 'rdb09rubaru roshni(www.SongsPK.info)', 'AR_Rahman', 'Hichki', '04:43', 'Hichki.jpg', 'AR_Rahman.jpg'),
(26, 'rdb10 tu bin btai(www.SongsPK.info)', 'AR_Rahman', 'Hichki', '05:57', 'Hichki.jpg', 'AR_Rahman.jpg'),
(27, 'Break Up Ke Baad.mp3', 'Swapnil_Bandodkar', 'Naina-Album-2018', '05:36', 'Naina-Album-2018.jpg', 'Swapnil_Bandodkar.jpg'),
(28, 'collegedays02(www.songs.pk)', 'Swapnil_Bandodkar', 'Naina-Album-2018', '04:52', 'Naina-Album-2018.jpg', 'Swapnil_Bandodkar.jpg'),
(29, 'Doorie - Atif Aslam', 'Atif Aslam', 'Naina-Album-2018', '04:53', 'Naina-Album-2018.jpg', 'Atif_Aslam.jpg'),
(30, 'Gacchhi Varun (The Art Matter Team Presents)[mp3tx.com]', 'Swapnil_Bandodkar', 'Naina-Album-2018', '04:12', 'Naina-Album-2018.jpg', 'Swapnil_Bandodkar.jpg'),
(31, 'Gori - A Band of Boys - The official vid', 'Swapnil_Bandodkar', 'Naina-Album-2018', '03:59', 'Naina-Album-2018.jpg', 'Swapnil_Bandodkar.jpg'),
(32, 'School Me Jane Do Na', 'Swapnil_Bandodkar', 'Naina-Album-2018', '03:30', 'Naina-Album-2018.jpg', 'Swapnil_Bandodkar.jpg'),
(33, 'tere ashkon se', 'Atif Aslam', 'Naina-Album-2018', '04:28', 'Naina-Album-2018.jpg', 'Atif_Aslam.jpg'),
(34, 'thodi thodi piya(www.songs.pk)', 'Atif Aslam', 'Naina-Album-2018', '06:29', 'Naina-Album-2018.jpg', 'Atif_Aslam.jpg'),
(35, 'Dil To Bachacha Hai [www.DJMaza.Com]', 'Rahat_Fateh_Ali_Khan', 'Nusrat-Bollywood-Originals-MIX', '05:36', 'Nusrat-Bollywood-Originals-MIX.jpg', 'Rahat_Fateh_Ali_Khan.jpg'),
(36, 'Iam in love', 'Rahat_Fateh_Ali_Khan', 'Nusrat-Bollywood-Originals-MIX', '05:01', 'Nusrat-Bollywood-Originals-MIX.jpg', 'Rahat_Fateh_Ali_Khan.jpg'),
(37, 'kesa hai isk hai(www.songs.pk)', 'Rahat_Fateh_Ali_Khan', 'Nusrat-Bollywood-Originals-MIX', '04:54', 'Nusrat-Bollywood-Originals-MIX.jpg', 'Rahat_Fateh_Ali_Khan.jpg'),
(38, 'Phool_Gendwa_Na_Maro-Manna_Dey-www.Mp3Mad.Com', 'Rahat_Fateh_Ali_Khan', 'Nusrat-Bollywood-Originals-MIX', '03:20', 'Nusrat-Bollywood-Originals-MIX.jpg', 'Rahat_Fateh_Ali_Khan.jpg'),
(39, 'tum jo aye', 'Rahat_Fateh_Ali_Khan', 'Nusrat-Bollywood-Originals-MIX', '04:48', 'Nusrat-Bollywood-Originals-MIX.jpg', 'Rahat_Fateh_Ali_Khan.jpg'),
(40, 'Aaj Phir- Hate story 2', 'Arijit_Singh', 'October', '04:21', 'October.jpg', 'Arijit_Singh.jpg'),
(41, 'Galliyan- ek villain', 'Ankit Tiwari', 'October', '05:40', 'October.jpg', 'Ankit_Tiwari.jpg'),
(42, 'Milne Hai Mujhse Aayi-Aashiqui2', 'Arijit_Singh', 'October', '04:55', 'October.jpg', 'Arijit_Singh.jpg'),
(43, 'Sunn Raha Hai (Female)-Aashiqui 2', 'Shreya Ghoshal', 'October', '05:14', 'October.jpg', 'Shreya_Ghoshal.jpg'),
(44, 'Sunn Raha Hai-Aashiqui 2', 'Ankit Tiwari', 'October', '06:30', 'October.jpg', 'Ankit_Tiwari.jpg'),
(45, 'Tum hi ho-Aashiqui 2', 'Arijit_Singh', 'October', '04:22', 'October.jpg', 'Arijit_Singh.jpg'),
(46, 'Aankh hai bhari bhari', 'Kumar_Sanu', '90s-Kumar-Sanu-Vs-Udit-Narayan-Hindi', '07:15', '90s-Kumar-Sanu-Vs-Udit-Narayan-Hindi.jpg', 'Kumar_Sanu.jpg'),
(47, 'baaton_baaton_mein1(www.songs.pk)', 'Kumar_Sanu', '90s-Kumar-Sanu-Vs-Udit-Narayan-Hindi', '03:41', '90s-Kumar-Sanu-Vs-Udit-Narayan-Hindi.jpg', 'Kumar_Sanu.jpg'),
(48, 'chalte_chalte_1976_2(www.songs.pk)', 'Kumar_Sanu', '90s-Kumar-Sanu-Vs-Udit-Narayan-Hindi', '05:19', '90s-Kumar-Sanu-Vs-Udit-Narayan-Hindi.jpg', 'Kumar_Sanu.jpg'),
(49, 'KisiNazarKoTera(Aitbar)', 'Udit_Narayan', '90s-Kumar-Sanu-Vs-Udit-Narayan-Hindi', '07:45', '90s-Kumar-Sanu-Vs-Udit-Narayan-Hindi.jpg', 'Udit_Narayan.jpg'),
(50, 'LAGI AAJ SAWAN KI', 'Udit_Narayan', '90s-Kumar-Sanu-Vs-Udit-Narayan-Hindi', '03:30', '90s-Kumar-Sanu-Vs-Udit-Narayan-Hindi.jpg', 'Udit_Narayan.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `songs_metadata`
--
ALTER TABLE `songs_metadata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `songs_metadata`
--
ALTER TABLE `songs_metadata`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
