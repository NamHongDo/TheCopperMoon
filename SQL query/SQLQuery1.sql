CREATE TABLE masterdrinks (
  DName varchar(35) NOT NULL,
  DCategory varchar(15) NOT NULL,
  DType varchar(10) NOT NULL,
  DKey VARCHAR(4) NOT NULL,
  PRIMARY KEY (DKey)
);

--
-- Dumping data for table `masterdrinks`
--

INSERT INTO masterdrinks (DName, DCategory, DType, DKey) VALUES
('Dark Chocolate', 'coffee', 'staple', 0),
('Cinamon Dolce', 'coffee', 'staple', 1),
('Vanilla', 'coffee', 'staple', 2),
('Pumpkin', 'coffee ', 'staple', 3),
('White Chocolate', 'coffee', 'staple', 4),
('Hazelnut', 'coffee', 'staple', 5),
('Copper Moon', 'coffee', 'staple', 6),
('Blackberry', 'coffee', 'seasonal', 7),
('Latte Machiato', 'coffee', 'seasonal', 8),
('Salted Caramel', 'coffee', 'staple', 31),
('Hazelnut', 'coffee', 'staple', 32),
('Dark Chocolate', 'coffee', 'staple', 33),
('Caffe', ' coffee', 'staple', 34),
('Iced Skinny', 'coffee', 'staple', 35),
('White Chocolate', 'coffee', 'staple', 36),
('Salted Caramel', 'coffee', 'staple', 37),
('White Chocolate', ' coffee', 'staple', 38),
('Dillon', ' coffee', 'staple', 39),
('German Dark Chocolate', 'coffee', 'seasonal', 40),
('Salted Caramel', 'coffee', 'staple', 61),
('Hazelnut', 'coffee', 'staple', 62),
('Old Fashion', ' coffee', 'staple', 63),
('Banana Peanut', 'coffee', 'staple', 64),
('Copper Moon', 'coffee', 'staple', 65),
('Mint', 'coffee', 'staple', 66),
('Brown Sugar', 'coffee', 'staple', 67),
('Trump', 'coffee', 'seasonal', 68),
('Strawberry', 'smoothie', 'staple', 91),
('Kiwi', 'smoothie', 'staple', 92),
('Blueberry', 'smoothie', 'staple', 93),
('Mango', 'smoothie', 'staple', 94),
('Pineapple', 'smoothie', 'staple', 95),
('Banana', 'smoothie', 'staple', 96),
('Blackberry', 'tea', 'staple', 121),
('Sweet and Sour', 'tea', 'staple', 122),
('Chai', 'tea', 'staple', 123),
('Black', 'tea', 'staple', 124),
('Green', 'tea', 'staple', 125),
('Vanilla', 'icecream', 'staple', 151),
('Dark Chocolate', 'icecream', 'staple', 152);

CREATE TABLE Ddescription (
  MKey VARCHAR(4) NOT NULL,
  Description varchar(256) NOT NULL
);

--
-- Dumping data for table `description`
--

INSERT INTO Ddescription (MKey, Description) VALUES
(0, ' Latte with delicious Dark Chocolate and cream'),
(1, ' Showered in unique tase of Cinamon and love'),
(2, ' Classic choice of Latte'),
(3, ' Perfect drinks for cold day'),
(4, ' Want to impress your colleague with style? This is your pick'),
(5, ' Simple but balanced'),
(6, ' Our signature drink'),
(7, ' Submerge yourself in the nature'),
(8, ' a good way to become an Italian'),
(31, ' Love is in the air'),
(32, ' Classic choice'),
(33, ' Never fail to impress'),
(34, ' Wild and untammed'),
(35, ' What you seek in a mocha is here'),
(36, ' Perfect blend between passion and love'),
(37, ' Soothing to the very last sip'),
(38, ' Overflowing with passion '),
(39, ' Straight from the future'),
(40, ' One Two Three and you will never forget it'),
(61, ' Love is in the air'),
(62, ' Classic choice'),
(63, ' Never fail to impress'),
(64, ' Wild and untammed'),
(65, ' What you seek in a mocha is here'),
(66, ' Perfect blend between passion and love'),
(67, ' Soothing to the very last sip'),
(68, ' Overflowing with passion '),
(91, 'Made with Strawberry'),
(92, 'Made with Kiwi'),
(93, 'Made with Blueberry'),
(94, 'Made with Mango'),
(95, 'Made with Pineapple'),
(96, 'Made with Banana'),
(121, 'Straight out from Moon'),
(122, 'Straight out from Jupiter'),
(123, 'Straight out from Mars'),
(124, 'Straight out from Nepture'),
(125, 'Straight out from Mercury'),
(151, 'The taste you will never forget'),
(152, 'The taste you will hate to forget');

ALTER TABLE Ddescription
  ADD CONSTRAINT  DK_MK
  FOREIGN KEY(MKey)
   REFERENCES masterdrinks(DKey);

-- --------------------------------------------------------

--
-- Table structure for table `masterdrinks`
--



-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE price (
  PKey VARCHAR(4) NOT NULL,
  PSmall DECIMAL(4,2) NOT NULL,
  Pmedium DECIMAL(4,2) NOT NULL,
  PLarge DECIMAL(4,2) NOT NULL
);

--
-- Dumping data for table `price`
--

INSERT INTO price (PKey, PSmall, PMedium, PLarge) VALUES
('0', 3.50, 3.75, 4.00),
('1', 3.25, 3.50, 3.75),
('2', 3.25, 3.50, 3.75),
('3', 3.50, 3.75, 4.00),
('4', 3.50, 3.75, 4.00),
('5', 3.75, 4.00, 4.25),
('6', 3.25, 3.50, 3.75),
('7', 3.75, 4.00, 4.25),
('8', 3.25, 3.50, 3.75),
('31', 3.25, 3.50, 3.75),
('32', 3.25, 3.50, 3.75),
('33', 3.50, 3.75, 4.00),
('34', 3.50, 3.75, 4.00),
('35', 3.25, 3.50, 3.75),
('36', 3.25, 3.50, 3.75),
('37', 3.50, 3.75, 4.00),
('38', 3.50, 3.75, 4.00),
('39', 3.50, 3.75, 4.00),
('40', 3.50, 3.75, 4.00),
('61', 2.25, 2.50, 2.75),
('62', 2.25, 2.50, 2.75),
('63', 2.25, 2.50, 2.75),
('64', 2.00, 2.25, 2.50),
('65', 2.00, 2.25, 2.50),
('66', 2.25, 2.50, 2.75),
('67', 2.25, 2.50, 2.75),
('68', 2.25, 2.50, 2.75),
('91', 3.00, 3.50, 3.95),
('92', 3.00, 3.50, 3.95),
('93', 3.00, 3.50, 3.95),
('94', 3.00, 3.50, 3.95),
('95', 3.00, 3.50, 3.95),
('96', 3.00, 3.50, 3.95),
('121', 2.25, 2.50, 3.00),
('122', 2.25, 2.50, 3.00),
('123', 2.25, 2.50, 3.00),
('124', 2.25, 2.50, 3.00),
('125', 2.25, 2.50, 3.00),
('151', 2.50, 3.25, 3.75),
('152', 2.50, 3.25, 3.75);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `price`
--
ALTER TABLE price
  ADD CONSTRAINT DK_PK
  FOREIGN KEY(PKey)
   REFERENCES masterdrinks(DKey);