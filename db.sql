-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2023 at 07:16 AM
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
-- Database: `jobportal_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblapplicants`
--

CREATE TABLE `tblapplicants` (
  `APPLICANTID` int(11) NOT NULL,
  `FNAME` varchar(90) NOT NULL,
  `LNAME` varchar(90) NOT NULL,
  `MNAME` varchar(90) NOT NULL,
  `ADDRESS` varchar(255) NOT NULL,
  `SEX` varchar(11) NOT NULL,
  `CIVILSTATUS` varchar(30) NOT NULL,
  `BIRTHDATE` date NOT NULL,
  `BIRTHPLACE` varchar(255) NOT NULL,
  `AGE` int(2) NOT NULL,
  `USERNAME` varchar(90) NOT NULL,
  `PASS` varchar(90) NOT NULL,
  `EMAILADDRESS` varchar(90) NOT NULL,
  `CONTACTNO` varchar(90) NOT NULL,
  `DEGREE` text NOT NULL,
  `APPLICANTPHOTO` varchar(255) NOT NULL,
  `NATIONALID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblapplicants`
--

INSERT INTO `tblapplicants` (`APPLICANTID`, `FNAME`, `LNAME`, `MNAME`, `ADDRESS`, `SEX`, `CIVILSTATUS`, `BIRTHDATE`, `BIRTHPLACE`, `AGE`, `USERNAME`, `PASS`, `EMAILADDRESS`, `CONTACTNO`, `DEGREE`, `APPLICANTPHOTO`, `NATIONALID`) VALUES
(2018013, 'Kim', 'Domingo', 'Enoe', 'Kab City', 'Female', 'none', '1991-01-01', 'Kab Citys', 27, 'kim', 'a6312121e15caec74845b7ba5af23330d52d4ac0', 'kim@y.com', '5415456', 'BSAC', 'photos/RobloxScreenShot20180406_203758793.png', ''),
(2018014, 'Jake', 'Zyrus', 'Ilmba', 'Kab City', 'Female', 'none', '1993-01-16', 'Kab City', 25, 'jake', 'c8d99c2f7cd5f432c163abcd422672b9f77550bb', 'jake@y.com', '14655623123123', 'BSIT', '', ''),
(2018015, 'Janry', 'Tan', 'Lim', 'brgy 1 Kab City', 'Female', 'Single', '1992-01-30', 'Kab City', 26, 'janry', '1dd4efc811372cd1efe855981a8863d10ddde1ca', 'jan@gmail.com', '0234234', 'BSIT', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblattachmentfile`
--

CREATE TABLE `tblattachmentfile` (
  `ID` int(11) NOT NULL,
  `FILEID` varchar(30) DEFAULT NULL,
  `JOBID` int(11) NOT NULL,
  `FILE_NAME` varchar(90) NOT NULL,
  `FILE_LOCATION` varchar(255) NOT NULL,
  `USERATTACHMENTID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblattachmentfile`
--

INSERT INTO `tblattachmentfile` (`ID`, `FILEID`, `JOBID`, `FILE_NAME`, `FILE_LOCATION`, `USERATTACHMENTID`) VALUES
(2, '2147483647', 2, 'Resume', 'photos/27052018124027PLATENO FE95483.docx', 2018013);

-- --------------------------------------------------------

--
-- Table structure for table `tblautonumbers`
--

CREATE TABLE `tblautonumbers` (
  `AUTOID` int(11) NOT NULL,
  `AUTOSTART` varchar(30) NOT NULL,
  `AUTOEND` int(11) NOT NULL,
  `AUTOINC` int(11) NOT NULL,
  `AUTOKEY` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblautonumbers`
--

INSERT INTO `tblautonumbers` (`AUTOID`, `AUTOSTART`, `AUTOEND`, `AUTOINC`, `AUTOKEY`) VALUES
(1, '02983', 9, 1, 'userid'),
(2, '000', 80, 1, 'employeeid'),
(3, '0', 16, 1, 'APPLICANT'),
(4, '69125', 29, 1, 'FILEID');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `CATEGORYID` int(11) NOT NULL,
  `CATEGORY` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`CATEGORYID`, `CATEGORY`) VALUES
(10, 'Technology'),
(11, 'Managerial'),
(12, 'Engineer'),
(13, 'IT'),
(14, 'Civil Engineer'),
(15, 'HR'),
(23, 'Sales'),
(24, 'Banking'),
(25, 'Finance'),
(26, 'BPO'),
(27, 'Degital Marketing'),
(28, 'Shipping'),
(29, 'Furniture/Beddings Customer Service');

-- --------------------------------------------------------

--
-- Table structure for table `tblcompany`
--

CREATE TABLE `tblcompany` (
  `COMPANYID` int(11) NOT NULL,
  `COMPANYNAME` varchar(90) NOT NULL,
  `COMPANYADDRESS` varchar(90) NOT NULL,
  `COMPANYCONTACTNO` varchar(30) NOT NULL,
  `COMPANYSTATUS` varchar(90) NOT NULL,
  `COMPANYMISSION` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcompany`
--

INSERT INTO `tblcompany` (`COMPANYID`, `COMPANYNAME`, `COMPANYADDRESS`, `COMPANYCONTACTNO`, `COMPANYSTATUS`, `COMPANYMISSION`) VALUES
(8, 'Manila Doctors Hospital', 'TEST', '09123456789', '', ''),
(9, 'Accenture', 'Cybergate 2', '(630) 123456789', '', ''),
(10, 'Alorica', '2310 Chino Roces Ave, Makati, 1231 Metro Manila', '+63 917 861 7940', '', ''),
(11, 'Concentrix', 'Two E-com Center, Harbor Dr, Pasay, 1300 Metro Manila', '0917 564 6269', '', ''),
(13, 'Everise', 'West, corner, 3030, 11th Floor, Bonifacio One Technology Tower, Rizal Drive, 1634 31st Str', '27750333', '', ''),
(14, 'Foundever', '2 Madrigal Ave, Ayala Alabang, Muntinlupa, Metro Manila', '+63 286320000 ', '', ''),
(15, 'Macy\\\'s', 'Three E-com,Seaside Blvd, Pasay, Metro Manila', ' 0977 602 9615', '', ''),
(16, 'Sonos', ' G/F Glorietta 1 Corporate Center Hotel Drive, Ayala Center Makati City', '(866)-957-4835', '', ''),
(17, 'Teletech', 'Tower A, Two E-Com Center, SM Mall of Asia Complex, Pasay, 1300 Metro Manila', '(02) 552-9707', '', ''),
(18, 'TaskUS', ' Cyber Omega, 14F-16F, Pearl Dr, Ortigas Center, Pasig, 1605 Metro Manila', '	(888) 400-8275', '', ''),
(19, 'Infosys', '30th Street, corner 11th Ave, Taguig, 1634 Metro Manila', '(02) 7729 1111', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployees`
--

CREATE TABLE `tblemployees` (
  `INCID` int(11) NOT NULL,
  `EMPLOYEEID` varchar(30) NOT NULL,
  `FNAME` varchar(50) NOT NULL,
  `LNAME` varchar(50) NOT NULL,
  `MNAME` varchar(50) NOT NULL,
  `ADDRESS` varchar(90) NOT NULL,
  `BIRTHDATE` date NOT NULL,
  `BIRTHPLACE` varchar(90) NOT NULL,
  `AGE` int(11) NOT NULL,
  `SEX` varchar(30) NOT NULL,
  `CIVILSTATUS` varchar(30) NOT NULL,
  `TELNO` varchar(40) NOT NULL,
  `EMP_EMAILADDRESS` varchar(90) NOT NULL,
  `CELLNO` varchar(30) NOT NULL,
  `POSITION` varchar(50) NOT NULL,
  `WORKSTATS` varchar(90) NOT NULL,
  `EMPPHOTO` varchar(255) NOT NULL,
  `EMPUSERNAME` varchar(90) NOT NULL,
  `EMPPASSWORD` varchar(125) NOT NULL,
  `DATEHIRED` date NOT NULL,
  `COMPANYID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblemployees`
--

INSERT INTO `tblemployees` (`INCID`, `EMPLOYEEID`, `FNAME`, `LNAME`, `MNAME`, `ADDRESS`, `BIRTHDATE`, `BIRTHPLACE`, `AGE`, `SEX`, `CIVILSTATUS`, `TELNO`, `EMP_EMAILADDRESS`, `CELLNO`, `POSITION`, `WORKSTATS`, `EMPPHOTO`, `EMPUSERNAME`, `EMPPASSWORD`, `DATEHIRED`, `COMPANYID`) VALUES
(76, '2018001', 'Chambe', 'Narciso', 'Captain', 'mabinay', '1992-01-23', 'Mabinay', 26, 'Male', 'Married', '032656', 'chambe@yahoo.com', '', 'Fuel Tender', '', '', '2018001', 'f3593fd40c55c33d1788309d4137e82f5eab0dea', '2018-05-23', 2),
(77, '123123', 'John Clarence', 'Bongas', 'Dano', 'Pasay', '1990-08-16', 'Pasay', 33, 'Male', 'Married', '09123456789', 'atolentino_07@mtc.edu.ph', '', 'Dogstyle', '', '', '123123', '601f1889667efaebb33b8c12572835da3f027f78', '2022-06-02', 9),
(78, '701994', 'Ma. Kassandra', 'Asuncion', 'Clamor', '233- C Lucban Street Pasay City ', '2001-08-15', 'Pasay General Hospital', 22, 'Female', 'Single', '09691694805', 'kcasuncion15@gmail.com', '', 'Tserman', '', '', '701994', '49c679a63c44b2086aa6c90f23b3beafbd8455c0', '2023-12-19', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tblfeedback`
--

CREATE TABLE `tblfeedback` (
  `FEEDBACKID` int(11) NOT NULL,
  `APPLICANTID` int(11) NOT NULL,
  `REGISTRATIONID` int(11) NOT NULL,
  `FEEDBACK` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbljob`
--

CREATE TABLE `tbljob` (
  `JOBID` int(11) NOT NULL,
  `COMPANYID` int(11) NOT NULL,
  `CATEGORY` varchar(250) NOT NULL,
  `OCCUPATIONTITLE` varchar(90) NOT NULL,
  `REQ_NO_EMPLOYEES` int(11) NOT NULL,
  `SALARIES` double NOT NULL,
  `DURATION_EMPLOYEMENT` varchar(90) NOT NULL,
  `QUALIFICATION_WORKEXPERIENCE` text NOT NULL,
  `JOBDESCRIPTION` text NOT NULL,
  `PREFEREDSEX` varchar(30) NOT NULL,
  `SECTOR_VACANCY` text NOT NULL,
  `JOBSTATUS` varchar(90) NOT NULL,
  `DATEPOSTED` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbljob`
--

INSERT INTO `tbljob` (`JOBID`, `COMPANYID`, `CATEGORY`, `OCCUPATIONTITLE`, `REQ_NO_EMPLOYEES`, `SALARIES`, `DURATION_EMPLOYEMENT`, `QUALIFICATION_WORKEXPERIENCE`, `JOBDESCRIPTION`, `PREFEREDSEX`, `SECTOR_VACANCY`, `JOBSTATUS`, `DATEPOSTED`) VALUES
(1, 2, 'Technology', 'ISD', 6, 15000, 'jan 30', 'Two year Experience', 'We are looking for bachelor of science in information technology.\r\nasdasdasd', 'Male/Female', 'yes', '', '2018-05-20 00:00:00'),
(2, 2, 'Technology', 'Accounting', 1, 15000, 'may 20', 'Two years Experience', 'We are looking for bachelor of science in Acountancy', 'Female', 'yes', '', '2018-05-20 02:33:00'),
(3, 8, 'HR', 'TEST', 100, 20000, 'TEST', 'TEST', 'TEST', 'Male/Female', 'TEST', '', '2023-12-11 06:59:00'),
(4, 9, 'IT', 'Full Stack Developer', 20, 25000, 'Full-Time', '2 years work experience', 'Back-end, Front-end Developer', 'Male/Female', 'Tech', '', '2023-12-11 08:34:00'),
(5, 10, 'Sales', 'Sales support representative', 20, 20000, 'Full-Time', '6 months work experience', 'A sales support representative provides support to the sales team of a business in a variety of ways. Some duties in this role include processing orders, entering data, providing price quotes and invoices, keeping records of interactions with clients and potential clients, engaging in training related to the products and services the company offers, responding to requests for proposals and scheduling meetings and product demonstrations between sales representatives and clients.', 'Male/Female', ' Accountancy, banking and finance', '', '2023-12-13 15:23:00'),
(6, 10, 'BPO', 'Customer Service Representative', 50, 17000, 'Full-Time', 'No work experience', 'Customer Service Representative must handle complaints, provide appropriate solutions for customers, and follow up to resolve any issues their customers experience.', 'Male/Female', 'Telecommunications', '', '2023-12-13 15:28:00'),
(7, 11, 'BPO', 'Customer Service Advisor', 10, 30000, 'Full-Time', 'College graduate with or without a background in the Customer Experience (CX) industry', 'As a Customer Experience (CX) Advisor, you hold a crucial position in ensuring that our clients\\\' customers receive exceptional experience. Your primary responsibility is to address their needs and concerns promptly and professionally, leaving a lasting positive impression.', 'Male/Female', 'Advisor', '', '2023-12-13 15:39:00'),
(8, 11, 'IT', 'Customer Specialist', 20, 23000, 'Full-Time', 'Have at least six (6) months of background in the Customer Experience (CX) industry', 'Active listening, empathy, and effective communication are key. Consistently delivering high-quality service and exceeding expectations are vital for success.', 'Male/Female', 'Tech', '', '2023-12-13 15:41:00'),
(9, 13, 'IT', 'Quality Assurance Manager', 20, 100000, 'Full-Time', '3-5 years QA experience in a call center environment', 'The Manager - Quality Assurance is responsible for the daily supervision and management of a team of Quality Assurance Representatives (QAR). The Manager\\\'s primary role is that of coach and teacher to ensure that the QAR\\\'s meet or exceed the standards set forth by Everise and the client.', 'Male/Female', 'Tech', '', '2023-12-13 15:44:00'),
(10, 13, 'Finance', 'Financial Planning & Analysis Manager ', 20, 50000, 'Full-Time', 'Direct & coordinate all aspects of financials planning, budgeting & forecasting across all accounts / geography assigned', 'FP&A will be responsible for the collection, modelling, analysis, and delivery of data to support management decision including the implementation, enhancements, and automation of financial models, including revenue forecasting, cost analysis, cash flows and call center profitability models.', 'Male/Female', 'Accountancy', '', '2023-12-13 15:47:00'),
(11, 13, 'BPO', 'Customer Service Representatives ', 100, 18000, 'Full-Time', 'At least 1-year BPO experience', 'You will provide outstanding service acting as the primary point of contact for customers regarding products and services related to client programs.', 'Male/Female', 'BPO', '', '2023-12-13 15:51:00'),
(12, 14, 'Managerial', 'Senior Training and Quality Manager', 10, 80000, 'Full-Time', 'At least three years experience in working with customers of varied technical knowledge and business needs, of which one to two years were spent in training and/or quality monitoring.', 'The  Senior Manager – Training and Quality is responsible for the provision of an efficient and effective support service to Kodak operations in accordance with the principles of performance management and to ensure that required standards of accuracy and quality set by the client are achieved and maintained.', 'Male/Female', 'Tech', '', '2023-12-13 15:53:00'),
(13, 14, 'BPO', 'Customer Service Representative', 100, 20000, 'Full-Time', 'At least 6 Months OR 1 year and above BPO experience is required if High School Graduate.', 'frontline employee who interacts with customers to address their questions, concerns, and complaints. They may do this using a variety of channels, including phone, chat, email and social media.', 'Male/Female', 'Banking & Financial Services', '', '2023-12-13 15:55:00'),
(14, 14, 'HR', 'Recruitment Sourcing Specialist ', 20, 28000, 'Full-Time', 'At least 2 years of experience in sourcing and or marketing experience in either BPO or non BPO market', 'Enable university and community partners by implementing meaningful initiatives that will benefit both Foundever and the partner organization', 'Male/Female', 'Human Resources & Recruitment', '', '2023-12-13 15:59:00'),
(15, 11, 'BPO', 'Customer Service Representative', 100, 18500, 'Full-Time', 'Have at least six (6) months of background in the Customer Experience (CX) industry', 'Active listening, empathy, and effective communication are key. Consistently delivering high-quality service and exceeding expectations are vital for success.', 'Male/Female', 'Accountant', '', '2023-12-14 13:33:00'),
(16, 10, 'HR', 'HR Service Delivery Analyst', 50, 30000, 'Full-Time', 'Minimum of two (2) years of related or equivalent experience, including in a Human Resources (HR) Shared Services environment. Three (3) to five (5) years of related or equivalent experience preferred. ', ' Establish and maintain assigned caseload of medical leaves and accommodation cases, analyse requests to determine eligibility and entitlement, evaluate submitted medical documents in compliance with federal, state, and provincial regulations, and track and code case information in accordance with internal workflow processes.', 'Male/Female', 'Human Resources', '', '2023-12-14 13:50:00'),
(17, 10, 'Engineer', 'Senior Network Engineer', 10, 55000, 'Full-Time', 'Knowledge of advanced networking/routing protocols and concepts.', 'Responsible for providing senior-level network engineering leadership to ensure the overall stability, integrity, and efficiency of assigned system(s) infrastructure including engineering, implementation and integration, and technical service and support.  Apply proven communication, analytical, and problem-solving skills to help identify, communicate, and resolve highly advanced complex issues in support of business processing requirements. Anticipates and mitigates potential attacks through network or other connections to ensure the security of the system.  Analyze business requirements to develop technical network solutions and their architecture framework. ', 'Male/Female', 'IT', '', '2023-12-14 13:52:00'),
(18, 10, 'Finance', 'Sr. Market & Competitive Intelligence Analyst', 10, 50000, 'Full-Time', 'Knowledge of customer experience and contact center outsourcing / business process outsourcing\\r\\nindustry', 'Monitor sources, conduct in-depth research and analysis on markets and competitors, and report', 'Male/Female', 'Intelligence Analyst', '', '2023-12-14 13:55:00'),
(19, 10, 'HR', 'Payroll Associate ', 50, 30000, 'Full-Time', 'Minimum of 2 years university and 2 years work experience or Bachelor’s Degree in Finance, Business Management or Accounting preferred. ', 'Conduct research and respond to Paid Time Off and/or vacation pay calculations as requested.', 'Male/Female', 'Finance, Business Management or Accounting ', '', '2023-12-14 13:56:00'),
(20, 10, 'BPO', 'Talent Acquisition Supervisor ', 10, 30000, 'Full-Time', 'Amenable to work onsite ', 'Recruiting Operations or Sourcing BPO experience', 'Male/Female', 'Supervisors/Team Leaders (', '', '2023-12-14 13:58:00'),
(22, 10, 'IT', 'IT Project Coordinator', 20, 60000, 'Full-Time', 'Minimum 3 years of experience managing client requirements, business process improvement, project management.', 'Assemble project teams and create project plans to detail the steps to implement initiatives including developing a project schedule to ensure a timely delivery and determining appropriate resources. ', 'Male/Female', 'Information & Communication Technology', '', '2023-12-14 14:18:00'),
(23, 9, 'BPO', 'Voice Support Representatives', 100, 20000, 'Full-Time', 'Must have at least 1 year of work experience in a BPO industry', 'You will create promised solutions or after call work and escalates unresolved issues outside of his/her scope.', 'Male/Female', 'Call Centre & Customer Service', '', '2023-12-14 14:36:00'),
(24, 9, 'BPO', 'CSR - Health and Insurance Account ', 50, 25000, 'Full-Time', 'You will be receiving inbound calls to provide customer service support to policy holders, agents, 3rd party callers and new customers.', 'Must have at least 1 year of work experience in banking, health, or insurance industry handling voice account', 'Male/Female', 'Insurance & Superannuation', '', '2023-12-14 14:37:00'),
(25, 9, 'Finance', 'General Accounting Analyst ', 100, 25000, 'Full-Time', 'Bachelor’s degree in Accounting related courses', 'Manage and execute general accounting processes, including management and/or execution of core financial processes such as billing, accounting, recordings, amortizations, monthly reporting, annual balance, bookkeeping, fiscal forms, tax declarations and half-year reports.', 'Male/Female', 'Accounting', '', '2023-12-14 14:38:00'),
(26, 9, 'Finance', 'Credit and Collections Analyst ', 50, 30000, 'Full-Time', 'Bachelor’s Degree in Business /Finance/Accounting-related courses', 'Collect and recover customer receivables and debt.', 'Male/Female', 'Banking & Financial Services', '', '2023-12-14 14:39:00'),
(27, 9, 'Engineer', 'HR Total Rewards Specialist', 20, 30000, 'Full-Time', 'Must have Bachelor’s Degree – Preferred Math background (graduate of any engineering, math, stat, etc)', 'Design, Build and Implement Total rewards processes, policies, programs in alignment with Business and HR strategy.', 'Male/Female', 'Human Resources & Recruitment', '', '2023-12-14 14:46:00'),
(28, 9, 'Finance', 'Credit and Collections Analyst', 20, 35000, 'Full-Time', 'At least 2 years solid Finance/Accounting experience Credit & Collections', 'Ensure cash collection activities meet the requirements of the client by reducing debt aging, maximizing cash collection and collecting high-quality dispute information, while maintaining a professional relationship with the client and their debtors.', 'Male/Female', 'Banking & Financial Services', '', '2023-12-14 14:47:00'),
(29, 9, 'IT', 'Service Desk Voice Support Associate ', 30, 70000, 'Full-Time', 'Preferably with at least 6 months relevant work experience (contact center and/or technical experience)', 'Provide technical support for resolution of customers’ IT problems, incidents, issues, requests and queries', 'Male/Female', 'Information & Communication Technology', '', '2023-12-14 14:48:00'),
(30, 9, 'BPO', 'BPO Trainer - Senior Analyst Role ', 20, 30000, 'Full-Time', 'Minimum 1-2 years training or supervisor experience ', 'Facilitates the assessment and analysis of employees’ performance and learning needs including all identified learning activities in collaboration with Operations Leads to meet the agreed upon program objectives. ', 'Male/Female', 'Call Centre & Customer Service', '', '2023-12-14 14:49:00'),
(31, 13, 'Managerial', 'MIS Assistant Manager', 20, 25000, 'Full-Time', ' Masters/Bachelor’s Degree in Computer Science or equivalent experience', 'MIS is responsible for the daily supervision and management of a team of specialists. The Assistant Manager’s primary role is to oversee the daily operations of the MIS Team and to ensure quality program and initiatives are carried out to meet and exceed the standards set forth by Everise and the client.', 'Male/Female', 'Call Centre & Customer Service', '', '2023-12-14 14:55:00'),
(32, 13, 'Technology', 'Reporting Analyst', 50, 30000, 'Full-Time', '3-5 years of technical and industry experience of working in a global company environment', 'Provide daily/weekly/monthly operations performance metrics in a timely manner with data integrity', 'Male/Female', 'Call Centre & Customer Service', '', '2023-12-14 14:57:00'),
(33, 13, 'IT', 'IT Desktop Support Specialist', 30, 80000, 'Full-Time', ' Bachelor’s degree in Computer Science from a four-year college or university with two to four years related experience in IT with a focus on desktop support and management or equivalent combination of education and experience', 'Administration of Windows based applications of basic principles, theories, and concepts', 'Male/Female', 'Information & Communication Technology', '', '2023-12-14 14:57:00'),
(34, 9, 'BPO', 'Japanese Speaking Analyst  ', 10, 25000, 'Part Time', 'Nihongo reading, writing, and speaking skills is a must', 'All employment decisions shall be made without regard to ag/e, race, creed, color, religion, se/x, national origin, ancestry, disability status, veteran status, sexual orientation, gender identity or expression, genetic information, marital status, citizenship status or any other basis as protected by federal, state, or local law.', 'Male/Female', 'Call Centre & Customer Service', '', '2023-12-14 15:04:00'),
(35, 9, 'Finance', 'Project Management & Finance ', 20, 45000, 'Part Time', 'Minimum of 3+ years of experience in Business & Finance or project management.', 'Work with multiple projects concurrently, ensuring effective project planning and execution.', 'Male/Female', 'Information & Communication Technology', '', '2023-12-14 15:05:00'),
(36, 11, 'BPO', 'Customer Service Representative ', 100, 20000, 'Part Time', 'Applicant is a high school graduate (old curriculum)/senior high school graduate (new curriculum)', 'The first point of contact for any customer who has a question or an issue with a product or service the company sells.', 'Male/Female', 'Call Centre & Customer Service', '', '2023-12-14 15:07:00'),
(37, 14, 'Degital Marketing', 'Digital Marketing', 20, 40000, 'Full-Time', 'Bachelor\\\'s or master\\\'s degree in marketing or a related field.', 'The promotion of products and services through a variety of digital channels, using the internet and mobile technology. ', 'Male/Female', 'Marketing', '', '2023-12-14 15:12:00'),
(38, 9, 'Degital Marketing', 'Digital Marketing ', 20, 45000, 'Full-Time', 'Bachelor\\\'s or master\\\'s degree in marketing or a related field.', 'The promotion of products and services through a variety of digital channels, using the internet and mobile technology.', 'Male/Female', 'Marketing', '', '2023-12-14 15:13:00'),
(39, 10, 'Degital Marketing', 'Digital Marketing', 50, 35000, 'Full-Time', 'Bachelor\\\'s or master\\\'s degree in marketing or a related field', 'The promotion of products and services through a variety of digital channels, using the internet and mobile technology.', 'Male/Female', 'Marketing', '', '2023-12-14 15:14:00'),
(40, 13, 'Civil Engineer', 'Civil Engineer', 10, 50000, 'Full-Time', 'Bachelor\\\'s degree in civil engineering or a related field.', 'Civil engineers design major transportation projects. Civil engineers plan, design, and supervise the construction and maintenance of building and infrastructure projects. These projects may include facilities, bridges, roads, tunnels, and water and sewage systems.', 'Male/Female', 'Civil Engineer', '', '2023-12-14 15:17:00'),
(41, 11, 'Civil Engineer', 'Civil Engineer', 50, 60000, 'Full-Time', 'Bachelor\\\'s degree in civil engineering or a related field.', 'Civil engineers design major transportation projects. Civil engineers plan, design, and supervise the construction and maintenance of building and infrastructure projects. These projects may include facilities, bridges, roads, tunnels, and water and sewage systems.', 'Male/Female', 'Civil Engineer', '', '2023-12-14 15:17:00'),
(42, 10, 'IT', 'IT technician', 20, 50000, 'Full-Time', 'Must earn an associate degree in IT or a bachelor\\\'s degree in computer science or networking. ', 'Collaborates with support specialists to analyze and diagnose computer issues. They also monitor processing functions, install relevant software and perform tests on computer equipment and applications when necessary.', 'Male/Female', 'Information Technology', '', '2023-12-14 15:20:00'),
(43, 11, 'IT', 'IT technician', 30, 55000, 'Full-Time', 'Must earn an associate degree in IT or a bachelor\\\'s degree in computer science or networking. ', 'Collaborates with support specialists to analyze and diagnose computer issues. They also monitor processing functions, install relevant software and perform tests on computer equipment and applications when necessary.', 'Male/Female', 'Information Technology', '', '2023-12-14 15:21:00'),
(44, 13, 'IT', 'IT technician', 25, 50000, 'Full-Time', 'Must earn an associate degree in IT or a bachelor\\\'s degree in computer science or networking. ', 'Collaborates with support specialists to analyze and diagnose computer issues. They also monitor processing functions, install relevant software and perform tests on computer equipment and applications when necessary.', 'Male/Female', 'Information Technology', '', '2023-12-14 15:22:00'),
(45, 14, 'IT', 'IT technician', 30, 45000, 'Full-Time', 'Must earn an associate degree in IT or a bachelor\\\'s degree in computer science or networking. ', 'Collaborates with support specialists to analyze and diagnose computer issues. They also monitor processing functions, install relevant software and perform tests on computer equipment and applications when necessary.', 'Male/Female', 'Information Technology', '', '2023-12-14 15:22:00'),
(46, 9, 'IT', 'IT technician', 20, 50000, 'Full-Time', 'Must earn an associate degree in IT or a bachelor\\\'s degree in computer science or networking. ', 'Collaborates with support specialists to analyze and diagnose computer issues. They also monitor processing functions, install relevant software and perform tests on computer equipment and applications when necessary.', 'Male/Female', 'Information Technology', '', '2023-12-14 15:22:00'),
(47, 10, 'Shipping', 'Shipper', 20, 18000, 'Full-Time', 'High school diploma or equivalent degree.', 'Supervise general physical activities in order to load, unload, sort and move shipments by hand or using material handling equipment. ', 'Male', 'Shipper', '', '2023-12-14 15:28:00'),
(48, 11, 'Shipping', 'Shipper', 30, 15000, 'Full-Time', 'High school diploma or equivalent degree.', 'Supervise general physical activities in order to load, unload, sort and move shipments by hand or using material handling equipment. ', 'Male', 'Shipper', '', '2023-12-14 15:28:00'),
(49, 13, 'Shipping', 'Shipper', 35, 17000, 'Full-Time', 'High school diploma or equivalent degree.', 'Supervise general physical activities in order to load, unload, sort and move shipments by hand or using material handling equipment. ', 'Male', 'Shipper', '', '2023-12-14 15:29:00'),
(50, 14, 'Shipping', 'Shipper', 30, 16000, 'Full-Time', 'High school diploma or equivalent degree.', 'Supervise general physical activities in order to load, unload, sort and move shipments by hand or using material handling equipment. ', 'Male', 'Shipper', '', '2023-12-14 15:30:00'),
(51, 9, 'Shipping', 'Shipper', 50, 20000, 'Full-Time', 'High school diploma or equivalent degree.', 'Supervise general physical activities in order to load, unload, sort and move shipments by hand or using material handling equipment. ', 'Male', 'Shipper', '', '2023-12-14 15:30:00'),
(52, 10, 'BPO', 'Japanese Speaking Analyst  ', 25, 30000, 'Part Time', 'Nihongo reading, writing, and speaking skills is a must', 'All employment decisions shall be made without regard to ag/e, race, creed, color, religion, se/x, national origin, ancestry, disability status, veteran status, sexual orientation, gender identity or expression, genetic information, marital status, citizenship status or any other basis as protected by federal, state, or local law.', 'Male/Female', 'Call Centre & Customer Service', '', '2023-12-14 15:34:00'),
(53, 11, 'BPO', 'Japanese Speaking Analyst  ', 15, 20000, 'Part Time', 'Nihongo reading, writing, and speaking skills is a must', 'All employment decisions shall be made without regard to ag/e, race, creed, color, religion, se/x, national origin, ancestry, disability status, veteran status, sexual orientation, gender identity or expression, genetic information, marital status, citizenship status or any other basis as protected by federal, state, or local law.', 'Male/Female', 'Call Centre & Customer Service', '', '2023-12-14 15:35:00'),
(54, 13, 'BPO', 'Japanese Speaking Analyst  ', 30, 23000, 'Part Time', 'Nihongo reading, writing, and speaking skills is a must', 'All employment decisions shall be made without regard to ag/e, race, creed, color, religion, se/x, national origin, ancestry, disability status, veteran status, sexual orientation, gender identity or expression, genetic information, marital status, citizenship status or any other basis as protected by federal, state, or local law.', 'Male/Female', 'Call Centre & Customer Service', '', '2023-12-14 15:35:00'),
(55, 14, 'BPO', 'Japanese Speaking Analyst  ', 30, 30000, 'Part Time', 'Nihongo reading, writing, and speaking skills is a must', 'All employment decisions shall be made without regard to ag/e, race, creed, color, religion, se/x, national origin, ancestry, disability status, veteran status, sexual orientation, gender identity or expression, genetic information, marital status, citizenship status or any other basis as protected by federal, state, or local law.', 'Male/Female', 'Call Centre & Customer Service', '', '2023-12-14 15:38:00'),
(56, 15, 'Sales', 'Digital Customer Service', 60, 17, '6 months', 'Highschool GraduaternOpen to all newbies, 6 months - 1 year experience', 'Macy\\\'s is a company of retail in international of Non-voice/Voice International.', 'Male/Female', 'Order/Sales  Department', '', '2023-12-17 06:32:00'),
(57, 15, 'BPO', 'Technical Support Representative', 60, 20, '6months', 'High School GraduaternNewbies, 6months- 1 year experiencernOpen to all the people who are willing to learn use computer.', 'Technical Support Representative is a job that requires to help clients to troubleshoot their systems.', 'Male/Female', 'Technical Support Specialist', '', '2023-12-17 06:36:00'),
(58, 15, 'Finance', 'Credit Customer Representative', 60, 20, '6 months', 'Highschool Graduate\\r\\nOpen for Accounting and Newbies\\r\\nNo work experience needed', 'Macy\\\'s Credit Services is a job for a credit card in retail. ', 'Male/Female', 'Credit Customer Service Specialist', '', '2023-12-17 06:39:00'),
(59, 15, 'Furniture/Beddings Customer Service', 'FBCS Specialist', 60, 25, '6 months= 1 year', 'Open for Digital Customer Representative work experience for a months\\r\\nNot open for newbies.', 'Furniture/Beddings Customer Service is a job that can help clients in their order for furniture and beddings sales.', 'Male/Female', 'Furniture/Beddings Associate ', '', '2023-12-17 06:45:00'),
(60, 18, 'BPO', 'Social Media Content Moderator', 40, 30, '6 months - 1 year', 'Has knowledge about social mediarnopen for all new bies', 'Content Moderation is the practice of monitoring and applying a pre-determined set of rules and guidelines to user-generated submissions to determine best if the communication (a post, in particular) is permissible or not.', 'Male/Female', 'Content Moderator Specialist', '', '2023-12-17 06:50:00'),
(61, 17, 'Sales', 'Client Service Associate', 40, 30, '6 months = 1 years ', 'Open to all Newbies.', 'TDCX Philippines formerly Teledirect \\r\\nNEW INTERNATIONAL AIRLINE ACCOUNT ( Chat- Email Support Backoffice)\\r\\nE- COMMERCE ACCOUNT ( Back Office Email Support)\\r\\nE- PAYMENT GATEWAY ( Financial- Back Office Non- Voice)\\r\\nLARGEST SOCIAL MEDIA ACCOUNT (Omni Channel -Blended)', 'Male/Female', 'Client Associate ', '', '2023-12-17 06:53:00'),
(62, 16, 'Technology', 'Technical Support Representative', 70, 20, '6 months - 1 year ', 'Knows to troubleshoot through computer\\r\\nBasic english\\r\\nAmmenable to work under pressure\\r\\nNo work Experience needed. ', 'Sonos is a speaker company that has many configurations when it comes to systems. ', 'Male/Female', 'Technical Support Associate', '', '2023-12-17 06:57:00'),
(63, 19, 'HR', 'Human Resources Management', 20, 40, '6 monts - 1 year ', 'Can handle direct administrative functions in a company ', 'Human resources managers plan, coordinate, and direct the administrative functions of an organization. They oversee the recruiting, interviewing, and hiring of new staff; consult with top executives on strategic planning; and serve as a link between an organization\\\'s management and its employees.', 'Male/Female', 'HR Associate ', '', '2023-12-17 07:01:00'),
(65, 16, 'BPO', 'Quality Assurance Management', 30, 20, '6 months - 1 year ', 'College Graduate \\r\\nBachelors of Information in Technology Degree ', 'Quality assurance analysts are responsible for testing, analyzing, and ensuring the quality of software, products, and systems. They confirm that products or services meet the standards set by the company or the industry in which you’re working. QA has become synonymous with the software development process and technology products. However, jobs in quality assurance are available in various sectors in and out of the tech industry, including manufacturing, food and beverage, and health care.', 'Male/Female', 'Quality Assurance Analyst', '', '2023-12-17 07:04:00'),
(66, 15, 'BPO', 'Team Leader', 15, 40, '6 months - 1 year', '6 Months working in a same company of BPO', 'Overall, the roles and responsibilities of a team leader in BPO include guiding and assisting the team in achieving operational excellence, completing sales outsourcing needs, meeting objectives, and providing exceptional client experiences.', 'Male/Female', 'Team Manager ', '', '2023-12-17 07:09:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbljobregistration`
--

CREATE TABLE `tbljobregistration` (
  `REGISTRATIONID` int(11) NOT NULL,
  `COMPANYID` int(11) NOT NULL,
  `JOBID` int(11) NOT NULL,
  `APPLICANTID` int(11) NOT NULL,
  `APPLICANT` varchar(90) NOT NULL,
  `REGISTRATIONDATE` date NOT NULL,
  `REMARKS` varchar(255) NOT NULL DEFAULT 'Pending',
  `FILEID` varchar(30) DEFAULT NULL,
  `PENDINGAPPLICATION` tinyint(1) NOT NULL DEFAULT 1,
  `HVIEW` tinyint(1) NOT NULL DEFAULT 1,
  `DATETIMEAPPROVED` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbljobregistration`
--

INSERT INTO `tbljobregistration` (`REGISTRATIONID`, `COMPANYID`, `JOBID`, `APPLICANTID`, `APPLICANT`, `REGISTRATIONDATE`, `REMARKS`, `FILEID`, `PENDINGAPPLICATION`, `HVIEW`, `DATETIMEAPPROVED`) VALUES
(1, 2, 2, 2018013, 'Kim Domingo', '2018-05-27', 'Ive seen your work and its really interesting', '2147483647', 0, 1, '2018-05-26 16:13:01'),
(2, 2, 2, 2018015, 'Janry Tan', '2018-05-26', 'aasd', '2147483647', 0, 0, '2018-05-28 14:14:45');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `USERID` varchar(30) NOT NULL,
  `FULLNAME` varchar(40) NOT NULL,
  `USERNAME` varchar(90) NOT NULL,
  `PASS` varchar(90) NOT NULL,
  `ROLE` varchar(30) NOT NULL,
  `PICLOCATION` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`USERID`, `FULLNAME`, `USERNAME`, `PASS`, `ROLE`, `PICLOCATION`) VALUES
('00018', 'Campcodes', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator', 'photos/Koala.jpg'),
('029837', 'Manila Tytana Colleges', 'mtc', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator', ''),
('029838', 'test', 'testing', 'dc724af18fbdd4e59189f5fe768a5f8311527050', 'Administrator', ''),
('123123', 'John Clarence Bongas', 'Bongas', '601f1889667efaebb33b8c12572835da3f027f78', 'Employee', ''),
('2018001', 'Chambe Narciso', 'Narciso', 'f3593fd40c55c33d1788309d4137e82f5eab0dea', 'Employee', ''),
('701994', 'Ma. Kassandra Asuncion', 'Asuncion', '49c679a63c44b2086aa6c90f23b3beafbd8455c0', 'Employee', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblapplicants`
--
ALTER TABLE `tblapplicants`
  ADD PRIMARY KEY (`APPLICANTID`);

--
-- Indexes for table `tblattachmentfile`
--
ALTER TABLE `tblattachmentfile`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblautonumbers`
--
ALTER TABLE `tblautonumbers`
  ADD PRIMARY KEY (`AUTOID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`CATEGORYID`);

--
-- Indexes for table `tblcompany`
--
ALTER TABLE `tblcompany`
  ADD PRIMARY KEY (`COMPANYID`);

--
-- Indexes for table `tblemployees`
--
ALTER TABLE `tblemployees`
  ADD PRIMARY KEY (`INCID`),
  ADD UNIQUE KEY `EMPLOYEEID` (`EMPLOYEEID`);

--
-- Indexes for table `tblfeedback`
--
ALTER TABLE `tblfeedback`
  ADD PRIMARY KEY (`FEEDBACKID`);

--
-- Indexes for table `tbljob`
--
ALTER TABLE `tbljob`
  ADD PRIMARY KEY (`JOBID`);

--
-- Indexes for table `tbljobregistration`
--
ALTER TABLE `tbljobregistration`
  ADD PRIMARY KEY (`REGISTRATIONID`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`USERID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblapplicants`
--
ALTER TABLE `tblapplicants`
  MODIFY `APPLICANTID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2018016;

--
-- AUTO_INCREMENT for table `tblattachmentfile`
--
ALTER TABLE `tblattachmentfile`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblautonumbers`
--
ALTER TABLE `tblautonumbers`
  MODIFY `AUTOID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `CATEGORYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tblcompany`
--
ALTER TABLE `tblcompany`
  MODIFY `COMPANYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblemployees`
--
ALTER TABLE `tblemployees`
  MODIFY `INCID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `tblfeedback`
--
ALTER TABLE `tblfeedback`
  MODIFY `FEEDBACKID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbljob`
--
ALTER TABLE `tbljob`
  MODIFY `JOBID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `tbljobregistration`
--
ALTER TABLE `tbljobregistration`
  MODIFY `REGISTRATIONID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
