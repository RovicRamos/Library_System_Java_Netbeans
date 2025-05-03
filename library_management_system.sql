-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2025 at 05:16 AM
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
-- Database: `library_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_details`
--

CREATE TABLE `book_details` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `quantity` int(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `book_details`
--

INSERT INTO `book_details` (`book_id`, `book_name`, `author`, `quantity`) VALUES
(2, 'Java for everyone', 'Jack', 44),
(3, 'Learn Python', 'John', 15),
(4, 'PHP', 'Rose', 15),
(5, 'HTML', 'Bruce', 49),
(6, 'CSS', 'Daniel', 0),
(7, 'Golang programming', 'Jack', 45),
(8, 'Css Tricks ', 'Jack', 50);

-- --------------------------------------------------------

--
-- Table structure for table `issue_book_details`
--

CREATE TABLE `issue_book_details` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `book_name` varchar(255) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `issue_date` date NOT NULL,
  `due_date` date NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `issue_book_details`
--

INSERT INTO `issue_book_details` (`id`, `book_id`, `book_name`, `student_id`, `student_name`, `issue_date`, `due_date`, `status`) VALUES
(11, 3, 'Learn Python', 1, 'Naveen', '2022-08-24', '2022-09-24', 'pending'),
(9, 2, 'Java for everyone', 2, 'Praveen', '2022-08-23', '2022-09-23', 'returned'),
(10, 6, 'CSS', 3, 'Jack', '2022-08-23', '2022-09-23', 'pending'),
(12, 3, 'Learn Python', 4, 'Rose', '2022-09-24', '2022-09-24', 'pending'),
(13, 2, 'Java for everyone', 4, 'Rose', '2022-07-01', '2022-08-01', 'pending'),
(14, 3, 'Learn Python', 2, 'Praveen', '2022-08-25', '2022-09-25', 'pending'),
(15, 4, 'PHP', 2, 'Praveen', '2022-08-25', '2022-09-25', 'pending'),
(16, 4, 'PHP', 3, 'Jack', '2022-08-25', '2022-09-25', 'pending'),
(17, 4, 'PHP', 4, 'Rose', '2022-08-25', '2022-09-25', 'pending'),
(18, 2, 'Java for everyone', 5, 'Mary', '2022-07-20', '2022-08-20', 'pending'),
(19, 4, 'PHP', 6, 'Iron Man', '2022-07-20', '2022-08-20', 'pending'),
(20, 2, 'Java for everyone', 6, 'Iron Man', '2022-07-20', '2022-08-20', 'pending'),
(21, 3, 'Learn Python', 6, 'Iron Man', '2022-07-20', '2022-08-20', 'returned'),
(22, 5, 'HTML', 6, 'Iron Man', '2022-07-20', '2022-08-20', 'pending'),
(23, 3, 'Learn Python', 7, 'Captain America', '2022-08-27', '2022-09-27', 'returned'),
(24, 4, 'PHP', 7, 'Captain America', '2022-08-27', '2022-09-27', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE `student_details` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`student_id`, `student_name`, `course`, `branch`) VALUES
(1, 'Naveen', 'M.Sc', 'Computer Science'),
(2, 'Praveen', 'M.Sc', 'Chemistry'),
(3, 'Jack', 'M.Sc', 'Physics'),
(4, 'Rose', 'PHD', 'Computer Science'),
(5, 'Mary', 'PHD', 'Computer Science'),
(6, 'Iron Man', 'M.Sc', 'Chemistry'),
(7, 'Captain America', 'PHD', 'Computer Science');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `contact`, `usertype`) VALUES
(12, 'rovic', '12345', 'rovicramos@gmail.com', '9xxxxxxxx5', 'Admin'),
(13, 'guest', 'guest', 'guest@gmail.com', '9xxxxxxxx7', 'Guest'),
(14, 'student1', '1234', 'student1@gmail.com', '9xxxxxxxx6', 'Student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_details`
--
ALTER TABLE `book_details`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `issue_book_details`
--
ALTER TABLE `issue_book_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_details`
--
ALTER TABLE `student_details`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_details`
--
ALTER TABLE `book_details`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `issue_book_details`
--
ALTER TABLE `issue_book_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `student_details`
--
ALTER TABLE `student_details`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
