-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 28, 2024 at 09:34 PM
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
-- Database: `Insurance_company`
--

-- --------------------------------------------------------

--
-- Table structure for table `CHECK_UP_VISIT`
--

CREATE TABLE `CHECK_UP_VISIT` (
  `VISIT_ID` int(11) NOT NULL,
  `HEIGHT` float DEFAULT NULL,
  `WEIGHT` float DEFAULT NULL,
  `BLOOD_PRESSURE` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `CHECK_UP_VISIT`
--

INSERT INTO `CHECK_UP_VISIT` (`VISIT_ID`, `HEIGHT`, `WEIGHT`, `BLOOD_PRESSURE`) VALUES
(1, 160, 65, 125),
(2, 161, 66, 128),
(3, 162, 67, 130),
(4, 170, 75, 130),
(5, 171, 76, 132),
(6, 165, 70, 135),
(7, 166, 71, 138),
(8, 167, 72, 140),
(9, 168, 73, 142),
(10, 175, 80, 130),
(11, 170.5, 65.2, 120),
(12, 171.3, 64.8, 122),
(13, 165.2, 55.8, 110),
(14, 166, 56.5, 112),
(15, 167.1, 57, 114),
(16, 178.3, 72.6, 125),
(17, 179, 73.1, 128),
(18, 179.5, 73.5, 130),
(19, 180, 74, 132),
(20, 165, 60, 118),
(21, 165.5, 61, 120),
(22, 166, 62, 122),
(23, 170, 70, 130),
(24, 171, 71, 132),
(25, 175, 80, 135),
(26, 176, 81, 138),
(27, 177, 82, 140),
(28, 178, 83, 142),
(29, 180, 85, 135),
(30, 160, 70, 125),
(31, 165, 75, 130),
(82, 179, 74, 12);

-- --------------------------------------------------------

--
-- Table structure for table `COLLABS_WITH`
--

CREATE TABLE `COLLABS_WITH` (
  `DOCTOR_ID` int(11) NOT NULL,
  `HOSPITAL_CLINIC_ID` int(11) NOT NULL,
  `HEADQUARTERS` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `COLLABS_WITH`
--

INSERT INTO `COLLABS_WITH` (`DOCTOR_ID`, `HOSPITAL_CLINIC_ID`, `HEADQUARTERS`) VALUES
(1, 1, 'Central Hospital'),
(1, 2, 'Central Hospital'),
(2, 3, 'Westside Clinic'),
(2, 4, 'Westside Clinic'),
(2, 5, 'Westside Clinic'),
(3, 6, 'North Hospital'),
(3, 7, 'North Hospital'),
(4, 8, 'Eastside Clinic'),
(5, 1, 'Central Hospital'),
(5, 3, 'Central Hospital'),
(6, 2, 'Downtown Clinic'),
(7, 4, 'City Hospital'),
(7, 6, 'City Hospital'),
(8, 5, 'Suburban Clinic'),
(8, 7, 'Suburban Clinic'),
(8, 8, 'Suburban Clinic'),
(9, 1, 'Central Hospital'),
(10, 3, 'Westside Clinic'),
(10, 8, 'Westside Clinic');

-- --------------------------------------------------------

--
-- Table structure for table `DOCTOR`
--

CREATE TABLE `DOCTOR` (
  `DOCTOR_ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `TEL` varchar(15) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `SPECIALTY` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `DOCTOR`
--

INSERT INTO `DOCTOR` (`DOCTOR_ID`, `FIRST_NAME`, `LAST_NAME`, `TEL`, `EMAIL`, `ADDRESS`, `SPECIALTY`) VALUES
(1, 'John', 'Smith', '1111111111', 'john.smith@example.com', '123 Elm St, Cityville', 'Cardiology'),
(2, 'Emily', 'Brown', '2222222222', 'emily.brown@example.com', '456 Oak St, Townsville', 'Neurology'),
(3, 'Michael', 'Johnson', '3333333333', 'michael.johnson@example.com', '789 Pine St, Villagetown', 'Pediatrics'),
(4, 'Sarah', 'Davis', '4444444444', 'sarah.davis@example.com', '101 Maple St, Hamlet', 'Dermatology'),
(5, 'David', 'Wilson', '5555555555', 'david.wilson@example.com', '202 Birch St, Metropolis', 'Orthopedics'),
(6, 'Laura', 'Miller', '6666666666', 'laura.miller@example.com', '303 Cedar St, Suburbia', 'Gynecology'),
(7, 'James', 'Taylor', '7777777777', 'james.taylor@example.com', '404 Spruce St, Countryside', 'Ophthalmology'),
(8, 'Jessica', 'Anderson', '8888888888', 'jessica.anderson@example.com', '505 Walnut St, Urbania', 'Oncology'),
(9, 'Robert', 'Thomas', '9999999999', 'robert.thomas@example.com', '606 Chestnut St, Downtown', 'Psychiatry'),
(10, 'Mary', 'Moore', '1010101010', 'mary.moore@example.com', '707 Redwood St, Uptown', 'Endocrinology');

-- --------------------------------------------------------

--
-- Table structure for table `FOLLOW_UP_VISIT`
--

CREATE TABLE `FOLLOW_UP_VISIT` (
  `VISIT_ID` int(11) NOT NULL,
  `CURRENT_CONDITION` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `FOLLOW_UP_VISIT`
--

INSERT INTO `FOLLOW_UP_VISIT` (`VISIT_ID`, `CURRENT_CONDITION`) VALUES
(49, 'Patient\'s chest pain has subsided, but shortness of breath persists.'),
(50, 'Patient\'s fever has resolved, but cough persists.'),
(51, 'Patient\'s rash has improved, but itching remains.'),
(52, 'Patient\'s blurry vision has resolved, but eye pain persists.'),
(53, 'Patient\'s joint pain has decreased, but swelling remains.'),
(54, 'Patient\'s mood swings have improved, but sleep disturbances persist.'),
(55, 'Patient\'s anxiety symptoms have decreased, but occasional panic attacks persist.'),
(56, 'Patient\'s chest tightness has improved, but occasional difficulty breathing remains.'),
(81, 'Still mentally down ,dealing with anxiety');

-- --------------------------------------------------------

--
-- Table structure for table `HOSPITAL_CLINIC`
--

CREATE TABLE `HOSPITAL_CLINIC` (
  `HOSPITAL_CLINIC_ID` int(11) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `TEL` varchar(10) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `HOSPITAL_CLINIC`
--

INSERT INTO `HOSPITAL_CLINIC` (`HOSPITAL_CLINIC_ID`, `NAME`, `TEL`, `EMAIL`, `ADDRESS`) VALUES
(1, 'City Hospital', '1234567890', 'info@cityhospital.com', '123 Healthcare Ave, Cityville'),
(2, 'Town Clinic', '2345678901', 'contact@townclinic.com', '456 Medical Blvd, Townsville'),
(3, 'Village Health Center', '3456789012', 'support@villagehealth.com', '789 Wellness St, Villagetown'),
(4, 'Hamlet Medical Group', '4567890123', 'help@hamletmedical.com', '101 Clinic Dr, Hamlet'),
(5, 'Metropolis General', '5678901234', 'service@metropolisgeneral.com', '202 Health Ln, Metropolis'),
(6, 'Suburbia Clinic', '6789012345', 'info@suburbiaclinic.com', '303 Care Rd, Suburbia'),
(7, 'Countryside Health', '7890123456', 'contact@countrysidehealth.com', '404 Medicine St, Countryside'),
(8, 'Urbania Medical Center', '8901234567', 'support@urbaniamedical.com', '505 Health Blvd, Urbania');

-- --------------------------------------------------------

--
-- Table structure for table `INCLUDES`
--

CREATE TABLE `INCLUDES` (
  `DOSAGE` int(11) DEFAULT NULL,
  `PRESCRIPTION_ID` int(11) NOT NULL,
  `MEDICINE_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `INCLUDES`
--

INSERT INTO `INCLUDES` (`DOSAGE`, `PRESCRIPTION_ID`, `MEDICINE_ID`) VALUES
(1, 1, 1),
(1, 1, 5),
(1, 2, 2),
(1, 2, 6),
(1, 3, 3),
(1, 4, 4),
(1, 5, 7),
(1, 6, 8),
(1, 7, 9),
(1, 8, 10),
(1, 9, 11),
(1, 10, 12),
(1, 11, 13),
(1, 12, 14),
(1, 13, 16),
(1, 15, 5),
(1, 15, 15),
(1, 17, 1),
(1, 18, 2),
(1, 19, 3),
(1, 20, 4),
(1, 21, 5),
(1, 22, 6),
(1, 23, 7),
(1, 24, 8);

-- --------------------------------------------------------

--
-- Table structure for table `INITIAL_VISIT`
--

CREATE TABLE `INITIAL_VISIT` (
  `VISIT_ID` int(11) NOT NULL,
  `INITIAL_DIAGNOSIS` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `INITIAL_VISIT`
--

INSERT INTO `INITIAL_VISIT` (`VISIT_ID`, `INITIAL_DIAGNOSIS`) VALUES
(34, 'Patient presented with mild chest pain and shortness of breath. Suspected cardiac issue.'),
(35, 'Patient complained of persistent headaches and dizziness. Suspected neurological condition.'),
(36, 'Patient came in with flu-like symptoms and fever. Suspected viral infection.'),
(37, 'Patient presented with a rash and itching. Suspected allergic reaction.'),
(38, 'Patient reported blurry vision and eye pain. Suspected eye infection.'),
(39, 'Patient complained of abdominal pain and irregular menstruation. Suspected gynecological issue.'),
(40, 'Patient came in with joint pain and swelling. Suspected arthritis.'),
(41, 'Patient reported shortness of breath and fatigue. Suspected heart condition.'),
(42, 'Patient presented with mood swings and sleep disturbances. Suspected psychiatric issue.'),
(43, 'Patient complained of fatigue and weight gain. Suspected endocrine disorder.'),
(44, 'Patient presented with severe anxiety and panic attacks. Suspected anxiety disorder.'),
(45, 'Patient came in with back pain and numbness in legs. Suspected nerve issue.'),
(46, 'Patient complained of chest tightness and difficulty breathing. Suspected respiratory issue.'),
(47, 'Patient presented with joint stiffness and swelling. Suspected rheumatoid arthritis.'),
(48, 'Patient reported chest pain and palpitations. Suspected cardiac issue.'),
(80, 'Mentally down');

-- --------------------------------------------------------

--
-- Table structure for table `INSURANCE_COMPANY`
--

CREATE TABLE `INSURANCE_COMPANY` (
  `COMPANY_ID` int(11) NOT NULL,
  `COMPANY_NAME` varchar(50) DEFAULT NULL,
  `TEL` varchar(10) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `INSURANCE_COMPANY`
--

INSERT INTO `INSURANCE_COMPANY` (`COMPANY_ID`, `COMPANY_NAME`, `TEL`, `EMAIL`) VALUES
(1, 'HealthyLife Insurance', '1234567890', 'contact@healthylife.com'),
(2, 'SecureHealth', '2345678901', 'support@securehealth.com'),
(3, 'FamilyCare Insurance', '3456789012', 'info@familycare.com'),
(4, 'Global Health', '4567890123', 'help@globalhealth.com'),
(5, 'WellBeing Insurance', '5678901234', 'service@wellbeing.com');

-- --------------------------------------------------------

--
-- Table structure for table `MEDICINE`
--

CREATE TABLE `MEDICINE` (
  `MEDICINE_ID` int(11) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `MEDICINE_USAGE` text DEFAULT NULL,
  `SIDE_EFFECTS` text DEFAULT NULL,
  `PRESCRIPTION_NEEDED` tinyint(1) DEFAULT NULL,
  `COVERED` tinyint(1) DEFAULT NULL,
  `DOCTOR_INDICATION` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `MEDICINE`
--

INSERT INTO `MEDICINE` (`MEDICINE_ID`, `NAME`, `MEDICINE_USAGE`, `SIDE_EFFECTS`, `PRESCRIPTION_NEEDED`, `COVERED`, `DOCTOR_INDICATION`) VALUES
(1, 'Aspirin', 'Pain relief', 'Nausea', 1, 1, 'For mild pain'),
(2, 'Paracetamol', 'Fever reducer', 'Liver damage', 1, 1, 'For fever'),
(3, 'Ibuprofen', 'Anti-inflammatory', 'Stomach pain', 1, 1, 'For inflammation'),
(4, 'Amoxicillin', 'Antibiotic', 'Allergic reactions', 1, 1, 'For bacterial infections'),
(5, 'Lisinopril', 'Blood pressure', 'Cough', 1, 1, 'For hypertension'),
(6, 'Metformin', 'Diabetes', 'Diarrhea', 1, 1, 'For type 2 diabetes'),
(7, 'Omeprazole', 'Acid reflux', 'Headache', 1, 1, 'For GERD'),
(8, 'Simvastatin', 'Cholesterol', 'Muscle pain', 1, 1, 'For high cholesterol'),
(9, 'Cetirizine', 'Allergies', 'Drowsiness', 1, 1, 'For allergy relief'),
(10, 'Albuterol', 'Asthma', 'Tremor', 1, 1, 'For asthma relief'),
(11, 'Gabapentin', 'Nerve pain', 'Dizziness', 1, 1, 'For nerve pain'),
(12, 'Prednisone', 'Anti-inflammatory', 'Weight gain', 1, 1, 'For inflammation'),
(13, 'Warfarin', 'Blood thinner', 'Bleeding', 1, 1, 'For blood clots'),
(14, 'Atorvastatin', 'Cholesterol', 'Liver damage', 1, 1, 'For high cholesterol'),
(15, 'Amlodipine', 'Blood pressure', 'Swelling', 1, 1, 'For hypertension'),
(16, 'Levothyroxine', 'Thyroid', 'Heart palpitations', 1, 1, 'For hypothyroidism'),
(17, 'Hydrochlorothiazide', 'Diuretic', 'Dehydration', 1, 1, 'For hypertension'),
(18, 'Zolpidem', 'Insomnia', 'Drowsiness', 1, 1, 'For insomnia'),
(19, 'Sertraline', 'Depression', 'Nausea', 1, 1, 'For depression'),
(20, 'Metoprolol', 'Blood pressure', 'Fatigue', 1, 1, 'For hypertension'),
(23, 'Propranolol', 'Propranolol is used alone or in combination with other medications to treat high blood pressure.', 'Fatigue, depression, weight gain ...', 1, 0, 'so i want my patient to use it until the next visit'),
(32, 'Matin', 'kissing', 'Too much Matin can cause you diabet', 0, 1, 'It is not recomended from doctors'),
(33, 'Matin', 'kissing', 'Too much Matin can cause you diabet', 0, 1, 'It is not recomended from doctors'),
(35, '‪Matin Marzie‬‏', 'dwesdf', 'asdf', 0, 0, 'asdf'),
(36, 'MOHAMMAD MATIN', 'd', 'd', 0, 0, 'd');

-- --------------------------------------------------------

--
-- Table structure for table `MONITORS`
--

CREATE TABLE `MONITORS` (
  `START_DATE` date DEFAULT curdate(),
  `END_DATE` date DEFAULT NULL,
  `PATIENT_ID` int(11) NOT NULL,
  `DOCTOR_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `MONITORS`
--

INSERT INTO `MONITORS` (`START_DATE`, `END_DATE`, `PATIENT_ID`, `DOCTOR_ID`) VALUES
('2022-01-01', '2022-06-01', 1, 4),
('2022-07-01', NULL, 1, 5),
('2021-05-01', '2021-11-01', 2, 1),
('2021-12-01', '2022-03-01', 2, 2),
('2022-04-01', NULL, 2, 8),
('2023-02-01', NULL, 3, 5),
('2020-01-01', '2021-01-01', 4, 3),
('2021-02-01', NULL, 4, 4),
('2022-02-01', '2022-08-01', 5, 3),
('2021-06-01', '2022-01-01', 5, 6),
('2022-09-01', NULL, 5, 7),
('2019-04-01', '2020-04-01', 6, 8),
('2020-05-01', NULL, 6, 9),
('2018-01-01', '2018-12-01', 7, 2),
('2019-01-01', '2019-12-01', 7, 3),
('2020-01-01', '2020-12-01', 7, 6),
('2021-01-01', NULL, 7, 10),
('2019-07-01', NULL, 8, 2),
('2017-05-01', '2018-05-01', 8, 4),
('2018-06-01', '2019-06-01', 8, 7),
('2022-10-01', NULL, 9, 1),
('2022-03-01', '2022-09-01', 9, 5),
('2021-02-01', '2021-08-01', 10, 4),
('2021-09-01', NULL, 10, 6),
('2020-10-01', NULL, 11, 3),
('2018-08-01', '2019-08-01', 11, 7),
('2019-09-01', '2020-09-01', 11, 8),
('2023-01-01', NULL, 12, 2),
('2019-10-01', NULL, 13, 7),
('2019-03-01', '2019-09-01', 13, 9),
('2017-01-01', '2017-12-01', 14, 1),
('2020-01-01', NULL, 14, 3),
('2018-01-01', '2018-12-01', 14, 4),
('2019-01-01', '2019-12-01', 14, 6),
('2021-04-01', '2021-10-01', 15, 10);

-- --------------------------------------------------------

--
-- Table structure for table `PATIENT`
--

CREATE TABLE `PATIENT` (
  `PATIENT_ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `TEL` varchar(10) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `AGE` int(11) DEFAULT NULL,
  `AMKA` varchar(11) DEFAULT NULL,
  `FAMILY_INSURANCE_PROVIDER` int(11) DEFAULT NULL,
  `COMPANY_ID` int(11) DEFAULT NULL,
  `DOCTOR_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `PATIENT`
--

INSERT INTO `PATIENT` (`PATIENT_ID`, `FIRST_NAME`, `LAST_NAME`, `TEL`, `EMAIL`, `ADDRESS`, `AGE`, `AMKA`, `FAMILY_INSURANCE_PROVIDER`, `COMPANY_ID`, `DOCTOR_ID`) VALUES
(1, 'Alice', 'Johnson', '1234567890', 'alice.johnson@example.com', '100 Main St', 30, '11111111111', NULL, 3, 5),
(2, 'Bob', 'Smith', '2345678901', 'bob.smith@example.com', '200 Main St', 40, '22222222222', 1, 4, 8),
(3, 'Carol', 'Williams', '3456789012', 'carol.williams@example.com', '300 Main St', 25, '33333333333', NULL, 2, 5),
(4, 'David', 'Brown', '4567890123', 'david.brown@example.com', '400 Main St', 35, '44444444444', NULL, 1, 4),
(5, 'Eve', 'Jones', '5678901234', 'eve.jones@example.com', '500 Main St', 28, '55555555555', 3, 5, 7),
(6, 'Frank', 'Garcia', '6789012345', 'frank.garcia@example.com', '600 Main St', 32, '66666666666', 5, 1, 9),
(7, 'Grace', 'Martinez', '7890123456', 'grace.martinez@example.com', '700 Main St', 45, '77777777777', NULL, 4, 10),
(8, 'Hank', 'Davis', '8901234567', 'hank.davis@example.com', '800 Main St', 50, '88888888888', NULL, 5, 2),
(9, 'Ivy', 'Rodriguez', '9012345678', 'ivy.rodriguez@example.com', '900 Main St', 27, '99999999999', NULL, 1, 1),
(10, 'Jack', 'Lopez', '1122334455', 'jack.lopez@example.com', '1000 Main St', 38, '10101010101', NULL, 2, 6),
(11, 'Karen', 'Harris', '2233445566', 'karen.harris@example.com', '1100 Main St', 34, '12121212121', 9, 3, 3),
(12, 'Leo', 'Clark', '3344556677', 'leo.clark@example.com', '1200 Main St', 29, '13131313131', NULL, 1, 2),
(13, 'Mona', 'Lewis', '4455667788', 'mona.lewis@example.com', '1300 Main St', 42, '14141414141', 12, 3, 7),
(14, 'Nathan', 'Young', '5566778899', 'nathan.young@example.com', '1400 Main St', 37, '15151515151', 8, 4, 3),
(15, 'Olivia', 'Walker', '6677889900', 'olivia.walker@example.com', '1500 Main St', 31, '16161616161', 10, 5, 10),
(38, 'MOHAMMAD MATIN', 'MARZIE‬‏', '6989855518', 'matin.marzie5148@gmail.com', 'ΤΑΥΡΟΣ ΚΑΝΑΡΗ 2', 21, '09020321114', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `PRESCRIPTION`
--

CREATE TABLE `PRESCRIPTION` (
  `PRESCRIPTION_ID` int(11) NOT NULL,
  `ISSUE_DATE` date DEFAULT curdate(),
  `VALID_DURATION` int(11) DEFAULT NULL,
  `REPEATS_NO` int(11) DEFAULT 1,
  `PATIENT_ID` int(11) DEFAULT NULL,
  `DOCTOR_ID` int(11) DEFAULT NULL,
  `VISIT_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `PRESCRIPTION`
--

INSERT INTO `PRESCRIPTION` (`PRESCRIPTION_ID`, `ISSUE_DATE`, `VALID_DURATION`, `REPEATS_NO`, `PATIENT_ID`, `DOCTOR_ID`, `VISIT_ID`) VALUES
(1, '2024-07-16', 30, 1, 1, 5, 34),
(2, '2024-07-17', 30, 1, 2, 8, 35),
(3, '2024-07-18', 30, 1, 3, 5, 36),
(4, '2024-07-19', 30, 1, 4, 4, 37),
(5, '2024-07-20', 30, 1, 5, 5, 38),
(6, '2024-07-21', 30, 1, 6, 1, 39),
(7, '2024-07-22', 30, 1, 7, 10, 40),
(8, '2024-07-23', 30, 1, 8, 2, 41),
(9, '2024-07-24', 30, 1, 9, 1, 42),
(10, '2024-07-25', 30, 1, 10, 6, 43),
(11, '2024-07-26', 30, 1, 11, 3, 44),
(12, '2024-07-27', 30, 1, 12, 2, 45),
(13, '2024-07-28', 30, 1, 13, 7, 46),
(15, '2024-07-30', 30, 1, 15, 5, 48),
(17, '2024-08-15', 30, 2, 1, 5, 49),
(18, '2024-08-16', 30, 1, 3, 5, 50),
(19, '2024-08-17', 30, 1, 4, 4, 51),
(20, '2024-08-18', 30, 1, 5, 7, 52),
(21, '2024-08-19', 30, 1, 7, 10, 53),
(22, '2024-08-20', 30, 1, 9, 1, 54),
(23, '2024-08-21', 30, 1, 11, 3, 55),
(24, '2024-08-22', 30, 1, 13, 3, 56);

-- --------------------------------------------------------

--
-- Table structure for table `VISIT`
--

CREATE TABLE `VISIT` (
  `VISIT_ID` int(11) NOT NULL,
  `VISIT_DATE` date DEFAULT curdate(),
  `PATIENT_ID` int(11) DEFAULT NULL,
  `DOCTOR_ID` int(11) DEFAULT NULL,
  `TYPE` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `VISIT`
--

INSERT INTO `VISIT` (`VISIT_ID`, `VISIT_DATE`, `PATIENT_ID`, `DOCTOR_ID`, `TYPE`) VALUES
(1, '2024-06-07', 7, 10, 'Checkup'),
(2, '2024-06-21', 7, 10, 'Checkup'),
(3, '2024-07-05', 7, 10, 'Checkup'),
(4, '2024-06-08', 8, 2, 'Checkup'),
(5, '2024-06-22', 8, 2, 'Checkup'),
(6, '2024-06-09', 9, 1, 'Checkup'),
(7, '2024-06-23', 9, 1, 'Checkup'),
(8, '2024-07-06', 9, 1, 'Checkup'),
(9, '2024-07-20', 9, 1, 'Checkup'),
(10, '2024-06-10', 10, 6, 'Checkup'),
(11, '2024-06-01', 3, 5, 'Checkup'),
(12, '2024-06-15', 3, 5, 'Checkup'),
(13, '2024-06-02', 5, 7, 'Checkup'),
(14, '2024-06-16', 5, 7, 'Checkup'),
(15, '2024-06-30', 5, 7, 'Checkup'),
(16, '2024-06-03', 6, 9, 'Checkup'),
(17, '2024-06-17', 6, 9, 'Checkup'),
(18, '2024-07-01', 6, 9, 'Checkup'),
(19, '2024-07-15', 6, 9, 'Checkup'),
(20, '2024-06-04', 1, 5, 'Checkup'),
(21, '2024-06-18', 1, 5, 'Checkup'),
(22, '2024-07-02', 1, 5, 'Checkup'),
(23, '2024-06-05', 2, 8, 'Checkup'),
(24, '2024-06-19', 2, 8, 'Checkup'),
(25, '2024-06-06', 4, 4, 'Checkup'),
(26, '2024-06-20', 4, 4, 'Checkup'),
(27, '2024-07-03', 4, 4, 'Checkup'),
(28, '2024-07-17', 4, 4, 'Checkup'),
(29, '2024-07-11', 11, 3, 'Checkup'),
(30, '2024-07-12', 12, 2, 'Checkup'),
(31, '2024-07-13', 13, 3, 'Checkup'),
(32, '2024-07-14', 14, 4, 'Checkup'),
(33, '2024-07-15', 15, 5, 'Checkup'),
(34, '2024-07-16', 1, 5, 'Initial'),
(35, '2024-07-17', 2, 8, 'Initial'),
(36, '2024-07-18', 3, 5, 'Initial'),
(37, '2024-07-19', 4, 4, 'Initial'),
(38, '2024-07-20', 5, 7, 'Initial'),
(39, '2024-07-21', 6, 9, 'Initial'),
(40, '2024-07-22', 7, 10, 'Initial'),
(41, '2024-07-23', 8, 2, 'Initial'),
(42, '2024-07-24', 9, 1, 'Initial'),
(43, '2024-07-25', 10, 6, 'Initial'),
(44, '2024-07-26', 11, 3, 'Initial'),
(45, '2024-07-27', 12, 2, 'Initial'),
(46, '2024-07-28', 13, 3, 'Initial'),
(47, '2024-07-29', 14, 4, 'Initial'),
(48, '2024-07-30', 15, 5, 'Initial'),
(49, '2024-08-15', 1, 5, 'Follow-Up'),
(50, '2024-08-16', 3, 5, 'Follow-Up'),
(51, '2024-08-17', 4, 4, 'Follow-Up'),
(52, '2024-08-18', 5, 7, 'Follow-Up'),
(53, '2024-08-19', 7, 10, 'Follow-Up'),
(54, '2024-08-20', 9, 1, 'Follow-Up'),
(55, '2024-08-21', 11, 3, 'Follow-Up'),
(56, '2024-08-22', 13, 3, 'Follow-Up'),
(80, '2024-05-28', 38, 1, 'INITIAL_VISIT'),
(81, '2024-05-29', 38, 1, 'FOLLOW_UP_VISIT'),
(82, '2024-05-29', 38, 1, 'CHECKUP_VISIT');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CHECK_UP_VISIT`
--
ALTER TABLE `CHECK_UP_VISIT`
  ADD PRIMARY KEY (`VISIT_ID`);

--
-- Indexes for table `COLLABS_WITH`
--
ALTER TABLE `COLLABS_WITH`
  ADD PRIMARY KEY (`DOCTOR_ID`,`HOSPITAL_CLINIC_ID`),
  ADD KEY `HOSPITAL_CLINIC_ID` (`HOSPITAL_CLINIC_ID`);

--
-- Indexes for table `DOCTOR`
--
ALTER TABLE `DOCTOR`
  ADD PRIMARY KEY (`DOCTOR_ID`);

--
-- Indexes for table `FOLLOW_UP_VISIT`
--
ALTER TABLE `FOLLOW_UP_VISIT`
  ADD PRIMARY KEY (`VISIT_ID`);

--
-- Indexes for table `HOSPITAL_CLINIC`
--
ALTER TABLE `HOSPITAL_CLINIC`
  ADD PRIMARY KEY (`HOSPITAL_CLINIC_ID`);

--
-- Indexes for table `INCLUDES`
--
ALTER TABLE `INCLUDES`
  ADD PRIMARY KEY (`PRESCRIPTION_ID`,`MEDICINE_ID`),
  ADD KEY `MEDICINE_ID` (`MEDICINE_ID`);

--
-- Indexes for table `INITIAL_VISIT`
--
ALTER TABLE `INITIAL_VISIT`
  ADD PRIMARY KEY (`VISIT_ID`);

--
-- Indexes for table `INSURANCE_COMPANY`
--
ALTER TABLE `INSURANCE_COMPANY`
  ADD PRIMARY KEY (`COMPANY_ID`);

--
-- Indexes for table `MEDICINE`
--
ALTER TABLE `MEDICINE`
  ADD PRIMARY KEY (`MEDICINE_ID`);

--
-- Indexes for table `MONITORS`
--
ALTER TABLE `MONITORS`
  ADD PRIMARY KEY (`PATIENT_ID`,`DOCTOR_ID`),
  ADD KEY `DOCTOR_ID` (`DOCTOR_ID`);

--
-- Indexes for table `PATIENT`
--
ALTER TABLE `PATIENT`
  ADD PRIMARY KEY (`PATIENT_ID`),
  ADD KEY `COMPANY_ID` (`COMPANY_ID`),
  ADD KEY `DOCTOR_ID` (`DOCTOR_ID`),
  ADD KEY `FAMILY_INSURANCE_PROVIDER` (`FAMILY_INSURANCE_PROVIDER`);

--
-- Indexes for table `PRESCRIPTION`
--
ALTER TABLE `PRESCRIPTION`
  ADD PRIMARY KEY (`PRESCRIPTION_ID`),
  ADD KEY `PATIENT_ID` (`PATIENT_ID`),
  ADD KEY `DOCTOR_ID` (`DOCTOR_ID`),
  ADD KEY `VISIT_ID` (`VISIT_ID`);

--
-- Indexes for table `VISIT`
--
ALTER TABLE `VISIT`
  ADD PRIMARY KEY (`VISIT_ID`),
  ADD KEY `PATIENT_ID` (`PATIENT_ID`),
  ADD KEY `DOCTOR_ID` (`DOCTOR_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `DOCTOR`
--
ALTER TABLE `DOCTOR`
  MODIFY `DOCTOR_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `HOSPITAL_CLINIC`
--
ALTER TABLE `HOSPITAL_CLINIC`
  MODIFY `HOSPITAL_CLINIC_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `INSURANCE_COMPANY`
--
ALTER TABLE `INSURANCE_COMPANY`
  MODIFY `COMPANY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `MEDICINE`
--
ALTER TABLE `MEDICINE`
  MODIFY `MEDICINE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `PATIENT`
--
ALTER TABLE `PATIENT`
  MODIFY `PATIENT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `PRESCRIPTION`
--
ALTER TABLE `PRESCRIPTION`
  MODIFY `PRESCRIPTION_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `VISIT`
--
ALTER TABLE `VISIT`
  MODIFY `VISIT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `CHECK_UP_VISIT`
--
ALTER TABLE `CHECK_UP_VISIT`
  ADD CONSTRAINT `CHECK_UP_VISIT_ibfk_1` FOREIGN KEY (`VISIT_ID`) REFERENCES `VISIT` (`VISIT_ID`);

--
-- Constraints for table `COLLABS_WITH`
--
ALTER TABLE `COLLABS_WITH`
  ADD CONSTRAINT `COLLABS_WITH_ibfk_1` FOREIGN KEY (`DOCTOR_ID`) REFERENCES `DOCTOR` (`DOCTOR_ID`),
  ADD CONSTRAINT `COLLABS_WITH_ibfk_2` FOREIGN KEY (`HOSPITAL_CLINIC_ID`) REFERENCES `HOSPITAL_CLINIC` (`HOSPITAL_CLINIC_ID`);

--
-- Constraints for table `FOLLOW_UP_VISIT`
--
ALTER TABLE `FOLLOW_UP_VISIT`
  ADD CONSTRAINT `FOLLOW_UP_VISIT_ibfk_1` FOREIGN KEY (`VISIT_ID`) REFERENCES `VISIT` (`VISIT_ID`);

--
-- Constraints for table `INCLUDES`
--
ALTER TABLE `INCLUDES`
  ADD CONSTRAINT `INCLUDES_ibfk_1` FOREIGN KEY (`PRESCRIPTION_ID`) REFERENCES `PRESCRIPTION` (`PRESCRIPTION_ID`),
  ADD CONSTRAINT `INCLUDES_ibfk_2` FOREIGN KEY (`MEDICINE_ID`) REFERENCES `MEDICINE` (`MEDICINE_ID`);

--
-- Constraints for table `INITIAL_VISIT`
--
ALTER TABLE `INITIAL_VISIT`
  ADD CONSTRAINT `INITIAL_VISIT_ibfk_1` FOREIGN KEY (`VISIT_ID`) REFERENCES `VISIT` (`VISIT_ID`);

--
-- Constraints for table `MONITORS`
--
ALTER TABLE `MONITORS`
  ADD CONSTRAINT `MONITORS_ibfk_1` FOREIGN KEY (`PATIENT_ID`) REFERENCES `PATIENT` (`PATIENT_ID`),
  ADD CONSTRAINT `MONITORS_ibfk_2` FOREIGN KEY (`DOCTOR_ID`) REFERENCES `DOCTOR` (`DOCTOR_ID`);

--
-- Constraints for table `PATIENT`
--
ALTER TABLE `PATIENT`
  ADD CONSTRAINT `PATIENT_ibfk_1` FOREIGN KEY (`COMPANY_ID`) REFERENCES `INSURANCE_COMPANY` (`COMPANY_ID`),
  ADD CONSTRAINT `PATIENT_ibfk_2` FOREIGN KEY (`DOCTOR_ID`) REFERENCES `DOCTOR` (`DOCTOR_ID`),
  ADD CONSTRAINT `PATIENT_ibfk_3` FOREIGN KEY (`FAMILY_INSURANCE_PROVIDER`) REFERENCES `PATIENT` (`PATIENT_ID`);

--
-- Constraints for table `PRESCRIPTION`
--
ALTER TABLE `PRESCRIPTION`
  ADD CONSTRAINT `PRESCRIPTION_ibfk_1` FOREIGN KEY (`PATIENT_ID`) REFERENCES `PATIENT` (`PATIENT_ID`),
  ADD CONSTRAINT `PRESCRIPTION_ibfk_2` FOREIGN KEY (`DOCTOR_ID`) REFERENCES `DOCTOR` (`DOCTOR_ID`),
  ADD CONSTRAINT `PRESCRIPTION_ibfk_3` FOREIGN KEY (`VISIT_ID`) REFERENCES `VISIT` (`VISIT_ID`);

--
-- Constraints for table `VISIT`
--
ALTER TABLE `VISIT`
  ADD CONSTRAINT `VISIT_ibfk_1` FOREIGN KEY (`PATIENT_ID`) REFERENCES `PATIENT` (`PATIENT_ID`),
  ADD CONSTRAINT `VISIT_ibfk_2` FOREIGN KEY (`DOCTOR_ID`) REFERENCES `DOCTOR` (`DOCTOR_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
