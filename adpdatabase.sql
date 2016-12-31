-- phpMyAdmin SQL Dump
-- version 2.8.0.1
-- http://www.phpmyadmin.net
--
-- Host: custsql-glo02.eigbox.net
-- Generation Time: Dec 31, 2016 at 12:34 AM
-- Server version: 5.6.32
-- PHP Version: 4.4.9
--
-- Database: `adpmembership`
--

-- --------------------------------------------------------

--
-- Table structure for table `fulladd`
--

CREATE TABLE `fulladd` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `stateoforigin` varchar(244) DEFAULT NULL,
  `lgarea` varchar(244) DEFAULT NULL,
  `wardarea` varchar(244) DEFAULT NULL,
  `countryofres` varchar(244) DEFAULT NULL,
  `addressOfRes` varchar(244) DEFAULT NULL,
  `hashUser` varchar(244) DEFAULT NULL,
  `timecreated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 AUTO_INCREMENT=88 ;

--
-- Dumping data for table `fulladd`
--

INSERT INTO `fulladd` VALUES (1, 'abia', '', 'Masaga B', 'Nigeria', 'No 8 Roselyn Ukeji Close, Off Kyari Muhammed, Asokoro Abuja', '733df6b6c3be7ba9d1f9008271c7456a', '2016-12-24 09:04:39');
INSERT INTO `fulladd` VALUES (2, 'niger', 'Bida', 'Bariki Ward ', 'Nigeria', 'sabongida area, Emi sarkin kudu raban NUPE , bida Niger state ', 'New', '2016-12-24 09:32:18');
INSERT INTO `fulladd` VALUES (3, 'niger', 'Bida', 'Masaga B Ward', 'Nigeria', '', '571c853eeb694bae5650e12e6c1c3ee9', '2016-12-24 11:22:48');
INSERT INTO `fulladd` VALUES (4, 'delta', 'Ughelli North', 'Orogun', 'Nigeria', '22a sokoto road crystal estate Amuwo odofin Lagos ', 'e5a24db90627d24aa9c8f7a5d6860801', '2016-12-24 11:49:32');
INSERT INTO `fulladd` VALUES (5, 'delta', 'Ughelli North', 'Orogun', 'Nigeria', '22a sokoto road crystal estate Amuwo odofin Lagos ', 'e5a24db90627d24aa9c8f7a5d6860801', '2016-12-24 11:49:32');
INSERT INTO `fulladd` VALUES (6, 'kogi', 'Yagba East', '2', 'Nigeria', 'No 6,ayedayo street, olorunsogo, Gaa Akanbi, ilorin, kwara State. ', '7d154df80c0e524b018fb6d80b187946', '2016-12-24 11:58:25');
INSERT INTO `fulladd` VALUES (7, 'abia', '', '2', 'Nigeria', 'No 6,ayedayo street, olorunsogo, Gaa Akanbi, ilorin, kwara State. ', '7d154df80c0e524b018fb6d80b187946', '2016-12-24 12:00:27');
INSERT INTO `fulladd` VALUES (8, 'kano', 'Fagge', 'Sabon Gari', 'Nigeria', 'No 4 Hanwa Road,G R A,Zaria', '27de62331f40fbd956c9b68a71538225', '2016-12-24 12:08:36');
INSERT INTO `fulladd` VALUES (9, 'rivers', 'Okrika', 'Ibaka', 'Nigeria', '39 Siwari Bone Compound Ibaka Okrika', '4232ce066ab4069ba02e9d9ea1a8d272', '2016-12-24 12:28:08');
INSERT INTO `fulladd` VALUES (10, 'kogi', 'Okene', 'Bariki Ward', 'Nigeria', 'GP 507 Flat2,Workers &#039;Village, Hassan Katsina Road, Beside Confluence Stadium, Lokoja. Kogi State.  ', '47ce3256cfd59539bbf1e2a49b2649a4', '2016-12-24 12:33:35');
INSERT INTO `fulladd` VALUES (11, 'niger', 'Bida', 'Kyari ward', 'Nigeria', 'Emi ALikali musa Tako juma&#039;a usman Zaki  street Bida', 'New', '2016-12-24 12:34:33');
INSERT INTO `fulladd` VALUES (12, 'plateau', 'Barikin Ladi', 'Rafan', 'Nigeria', 'No. 3b, Nunku road, Jos', 'New', '2016-12-24 12:40:59');
INSERT INTO `fulladd` VALUES (13, 'abia', '', 'Rafan', 'Nigeria', 'No. 3b, Nunku road, Jos', 'New', '2016-12-24 12:42:59');
INSERT INTO `fulladd` VALUES (14, 'niger', 'Kontagora', 'Gabas ', 'Nigeria', 'Gidan Fodio ', 'ef3cfca3e7850a88be80a0593286d597', '2016-12-24 13:00:18');
INSERT INTO `fulladd` VALUES (15, 'plateau', 'Bokkos', 'Tangur ward', 'Nigeria', 'COCIN LCC mom Bokkos', '2693dbe3af70d04c913bde77b4076412', '2016-12-24 13:09:21');
INSERT INTO `fulladd` VALUES (16, 'plateau', 'Bokkos', 'Tangur ward', 'Nigeria', 'COCIN LCC mom Bokkos', '2693dbe3af70d04c913bde77b4076412', '2016-12-24 13:12:16');
INSERT INTO `fulladd` VALUES (17, 'plateau', 'Bokkos', 'Tangur ward', 'Nigeria', 'COCIN LCC mom Bokkos', '2693dbe3af70d04c913bde77b4076412', '2016-12-24 13:13:05');
INSERT INTO `fulladd` VALUES (18, 'niger', 'Kontagora', 'Gabas ', 'Nigeria', 'Gidan Fodio ', 'ef3cfca3e7850a88be80a0593286d597', '2016-12-24 13:13:47');
INSERT INTO `fulladd` VALUES (19, 'plateau', 'Bokkos', 'Tangur ward', 'Nigeria', 'COCIN LCC mom Bokkos', '2693dbe3af70d04c913bde77b4076412', '2016-12-24 13:14:04');
INSERT INTO `fulladd` VALUES (20, 'plateau', 'Bokkos', 'Tangur ward', 'Nigeria', 'COCIN LCC mom Bokkos', '2693dbe3af70d04c913bde77b4076412', '2016-12-24 13:14:05');
INSERT INTO `fulladd` VALUES (21, 'plateau', 'Bokkos', 'Tangur ward', 'Nigeria', 'COCIN LCC mom Bokkos', '2693dbe3af70d04c913bde77b4076412', '2016-12-24 13:14:05');
INSERT INTO `fulladd` VALUES (22, 'plateau', 'Bokkos', 'Tangur ward', 'Nigeria', 'COCIN LCC mom Bokkos', '2693dbe3af70d04c913bde77b4076412', '2016-12-24 13:14:15');
INSERT INTO `fulladd` VALUES (23, 'abia', '', 'Tangur ward', 'Nigeria', 'COCIN LCC mom Bokkos', '2693dbe3af70d04c913bde77b4076412', '2016-12-24 13:15:57');
INSERT INTO `fulladd` VALUES (24, 'abia', '', 'Tangur ward', 'Nigeria', 'COCIN LCC mom Bokkos', '2693dbe3af70d04c913bde77b4076412', '2016-12-24 13:16:07');
INSERT INTO `fulladd` VALUES (25, 'niger', 'Suleja', 'hashimi B', 'Nigeria', 'House no.2 opposite shiroro hotel minna, Niger state nigeria', '8058af86aa062d701a026dd5d78f5e7a', '2016-12-24 13:19:51');
INSERT INTO `fulladd` VALUES (26, 'abuja', 'Abuja Municipal', 'Garki ', 'Nigeria', 'Plot 56 nsukka  street garki Village Abuja ', 'New', '2016-12-24 13:20:55');
INSERT INTO `fulladd` VALUES (27, 'edo', '', '09', 'Nigeria', 'Ekpedo, Akoko Edo LGA', 'a39f32c58645df65fcca72be5577e880', '2016-12-24 13:21:41');
INSERT INTO `fulladd` VALUES (28, 'plateau', 'Barikin Ladi', 'SHOU', 'Nigeria', 'Bukuru lowcost', '4389869b0106eca877e01da13ac362d5', '2016-12-24 13:26:31');
INSERT INTO `fulladd` VALUES (29, 'plateau', 'Barikin Ladi', 'SHOU', 'Nigeria', 'Bukuru lowcost', '4389869b0106eca877e01da13ac362d5', '2016-12-24 13:26:32');
INSERT INTO `fulladd` VALUES (30, 'plateau', 'Barikin Ladi', 'SHOU', 'Nigeria', 'Bukuru lowcost', '4389869b0106eca877e01da13ac362d5', '2016-12-24 13:26:35');
INSERT INTO `fulladd` VALUES (31, 'niger', 'Bida', 'dokozah work', 'Nigeria', '', 'New', '2016-12-24 13:36:24');
INSERT INTO `fulladd` VALUES (32, 'plateau', 'Kanam', 'Gwamlar', 'Nigeria', 'House 1, Godline Close,\nOff Chibiak Avenue\nEliopranwo Mile 4 \nPort Harcourt\nRivers State', '5c7500ed358393e7020a7fe5d9968600', '2016-12-24 13:40:32');
INSERT INTO `fulladd` VALUES (33, 'niger', 'Edati', 'Gazhe', 'Nigeria', '', 'New', '2016-12-24 14:15:14');
INSERT INTO `fulladd` VALUES (34, 'niger', 'Chanchaga', '', 'Nigeria', 'Neteco Road, Tunga Minna.', 'a1c59f0c554d1fbfc5739cfb0c1f42e9', '2016-12-24 14:18:50');
INSERT INTO `fulladd` VALUES (35, 'kwara', 'Asa', 'Ogbondoroko/Reke ', 'Nigeria', 'Gembu Close off Gimbiya Street, Area 11, Garki, Abuja ', '4caeee4dd258149d309852fc367d26aa', '2016-12-24 14:24:50');
INSERT INTO `fulladd` VALUES (36, 'edo', 'Ovia SouthWest', '12', 'Nigeria', '111erhunmwunsee street off ehaekpen street Benin citt', 'New', '2016-12-24 14:24:55');
INSERT INTO `fulladd` VALUES (37, 'niger', 'Bida', 'wadata ward ', 'Nigeria', 'Dangi pharmacy ', 'd1c977fb812b38115aec0423babbe334', '2016-12-24 14:41:10');
INSERT INTO `fulladd` VALUES (38, 'niger', 'Suleja', 'Kurmin Sarki ', 'Nigeria', 'No. 9 Danlami Sani Street K/Dutse off Hasssan Dallatu Road, Suleja Niger State. ', 'b119a37d1c7282b6bb9ec9d52aa5d741', '2016-12-24 15:02:43');
INSERT INTO `fulladd` VALUES (39, 'lagos', 'Shomolu', 'Ward K', 'Nigeria', '35, Adeleke Adegboyega Street, Bariga', 'b26804922ff05b28e0a01854c277a817', '2016-12-24 15:18:04');
INSERT INTO `fulladd` VALUES (40, 'niger', 'Suleja', 'Hashimi B', 'Nigeria', 'No. 17 Islamic street behind Ecobank suleja Niger State', 'adad74cb04b8aba93d09e21daa6297f1', '2016-12-24 15:54:44');
INSERT INTO `fulladd` VALUES (41, 'abia', '', 'Hashimi B', 'Nigeria', 'No. 17 Islamic street behind Ecobank suleja Niger State', 'adad74cb04b8aba93d09e21daa6297f1', '2016-12-24 15:56:27');
INSERT INTO `fulladd` VALUES (42, 'niger', 'Suleja', 'Hashimi B', 'Nigeria', 'No. 17 Islamic street behind Ecobank suleja Niger State', 'adad74cb04b8aba93d09e21daa6297f1', '2016-12-24 15:57:09');
INSERT INTO `fulladd` VALUES (43, 'niger', 'Bida', 'Masaga A ward', 'Nigeria', 'Sarkin Hausawa residence, Fogun Area, Bida, Niger State. ', 'New', '2016-12-24 16:55:46');
INSERT INTO `fulladd` VALUES (44, 'niger', 'Bida', 'efu madami', 'Nigeria', 'Emi sardauna nupe, efu madami, bida, Niger state.', 'New', '2016-12-24 16:56:11');
INSERT INTO `fulladd` VALUES (45, 'niger', 'Bida', 'efu madami', 'Nigeria', 'Emi sardauna nupe, efu madami, bida, Niger state.', 'New', '2016-12-24 16:56:12');
INSERT INTO `fulladd` VALUES (46, 'niger', 'Arochukwu', 'efu madami', 'Nigeria', 'Emi sardauna nupe, efu madami, bida, Niger state.', 'New', '2016-12-24 16:57:16');
INSERT INTO `fulladd` VALUES (47, 'niger', 'Bida', 'mayaki ndajiya', 'Nigeria', 'Emi sardauna nupe, efu madami, bida, Niger state.', 'New', '2016-12-24 17:00:35');
INSERT INTO `fulladd` VALUES (48, 'niger', 'Bida', 'mayaki ndajiya', 'Nigeria', 'Emi sardauna nupe, efu madami, bida, Niger state.', 'New', '2016-12-24 17:01:53');
INSERT INTO `fulladd` VALUES (49, 'niger', 'Suleja', 'Bagama', 'Nigeria', 'House 2 behind unity bank ibb market branch Suleja', '29bbbe5d761613c6e1b80541aff79dca', '2016-12-24 17:22:24');
INSERT INTO `fulladd` VALUES (50, 'niger', 'Chanchaga', 'Minna Central', 'Nigeria', 'SW329 Kwangila road, Minna. ', '9687f10991377eee13cbe2e8aa08ce3d', '2016-12-24 17:27:49');
INSERT INTO `fulladd` VALUES (51, 'yobe', 'Nguru Potiskum', 'REST HOUSE LAI- LAI', 'Nigeria', 'Federal government girls college pptiskum', '1c2cbece87978e3fb4fa0dd95104dee5', '2016-12-24 17:51:18');
INSERT INTO `fulladd` VALUES (52, 'abia', '', 'Mashegu ward', 'Nigeria', '67E London str Dutsen Kira minna ', '89b0ca10e467c952f88d16010d9eece8', '2016-12-24 18:05:05');
INSERT INTO `fulladd` VALUES (53, 'lagos', 'Epe', 'Imokun', 'Nigeria', 'No 8 Pastor Alahi Close kosofe, Lagos.', 'b70a9ad674e2e62cc683e2c04cb5807c', '2016-12-25 02:09:02');
INSERT INTO `fulladd` VALUES (54, 'plateau', 'Jos East', 'Zandi', 'Nigeria', 'No 3b Kashim Ibrahim Street jos ', 'd755002b1d3e749142dba288ab250074', '2016-12-25 09:31:38');
INSERT INTO `fulladd` VALUES (55, 'plateau', 'Jos East', 'Zandi', 'Nigeria', 'No 3b Kashim Ibrahim Street jos ', 'd755002b1d3e749142dba288ab250074', '2016-12-25 09:32:06');
INSERT INTO `fulladd` VALUES (56, 'abia', 'Arochukwu', 'Ohafor ward 2', 'Nigeria', 'No 2 wokoma street, mile 3, Diobu\nPort Harcourt\nRivers State', '33962bfe6525630c4822ff88b0128d8d', '2016-12-25 09:54:25');
INSERT INTO `fulladd` VALUES (57, 'abia', 'Arochukwu', 'Ohafor ward 2', 'Nigeria', 'No 2 wokoma street, mile 3, Diobu\nPort Harcourt\nRivers State', '33962bfe6525630c4822ff88b0128d8d', '2016-12-25 09:56:13');
INSERT INTO `fulladd` VALUES (58, 'abia', 'Arochukwu', 'Ohafor ward 2', 'Nigeria', 'No 2 wokoma street, mile 3, Diobu\nPort Harcourt\nRivers State', '33962bfe6525630c4822ff88b0128d8d', '2016-12-25 09:56:13');
INSERT INTO `fulladd` VALUES (59, 'plateau', 'Shendam', 'WARD A', 'Nigeria', 'No. 3 Poediel Road Total Shendam, Plateau State, Nigeria. ', 'New', '2016-12-25 13:52:09');
INSERT INTO `fulladd` VALUES (60, 'niger', 'Suleja', 'Hashimi B', 'Nigeria', 'AH-7 anguwar Aho Suleja', 'New', '2016-12-25 14:36:54');
INSERT INTO `fulladd` VALUES (61, 'delta', 'Udu', 'Owvian', 'Nigeria', 'Plot 189:190 RD 2 Phase 4 Behind Loving Faith Church\nOppsite AMAC Development Control Office -Gwgwalape Road\nNyanya Abuja\nFCT', 'New', '2016-12-26 14:09:14');
INSERT INTO `fulladd` VALUES (62, 'niger', 'Agaie', 'Baro', 'Nigeria', '', 'New', '2016-12-27 08:39:47');
INSERT INTO `fulladd` VALUES (63, 'niger', 'Agaie', 'Baro', 'Nigeria', '2, Murtala Mohammed Drive  (Bank Road )\nIkoyi \nLagos ', 'a495ee8e41700200d61163a2a8570645', '2016-12-27 10:17:19');
INSERT INTO `fulladd` VALUES (64, 'crossRiver', 'Odubra', 'Ababene', 'Nigeria', 'No 4 aliade street garki abija', 'c7650b2e537b04c2a31460a9d5f90f92', '2016-12-27 12:56:24');
INSERT INTO `fulladd` VALUES (65, 'lagos', 'Ibeju/Lekki', '', 'Nigeria', '2, Creek Road,\nColonel&#039;s Estate\nBogije Town \nKm 35. Lekki-Epe \nExpressway. \nLagos', '3311c11229e978dbcc74540e114f8346', '2016-12-27 14:01:31');
INSERT INTO `fulladd` VALUES (66, 'anambra', 'Ihiala', 'Uzoakwa', 'Nigeria', '6th Avenue , plot 7A, Festac Town , Lagos stste . near early life boarding school, ', '95f7de943cb4cdf375a6bf7da3226b7a', '2016-12-27 14:35:40');
INSERT INTO `fulladd` VALUES (67, 'anambra', 'Ihiala', 'Uzoakwa', 'Nigeria', '6th Avenue , plot 7A, Festac Town , Lagos stste . near early life boarding school, ', '95f7de943cb4cdf375a6bf7da3226b7a', '2016-12-27 14:35:42');
INSERT INTO `fulladd` VALUES (68, 'kwara', 'Offa', 'Sawo', 'Nigeria', 'Osunte toad, Idi ogun', 'New', '2016-12-27 15:23:27');
INSERT INTO `fulladd` VALUES (69, 'niger', 'Bida', 'I don&#039;t know', 'Nigeria', 'Asokoro no 8 justice Roseline Ikea road', '2c6998864bb7884cd1882cd0cddf49ee', '2016-12-27 16:27:31');
INSERT INTO `fulladd` VALUES (70, 'niger', 'Bida', 'Masaga &quot;B&quot; ward', 'Nigeria', 'Liman Fogun&#039;s compound, Fogun area, Bida Local Government area, Bida, Niger state. ', '568bc25f48e064881e273d7d05555efc', '2016-12-27 16:50:48');
INSERT INTO `fulladd` VALUES (71, 'imo', 'Orlu', 'ihioma', 'Nigeria', '', '2d6328e22b4a33db03d91c6a6a318ec4', '2016-12-28 01:15:03');
INSERT INTO `fulladd` VALUES (72, 'kogi', 'Ankpa', 'Awo-Ojokwu ', 'Nigeria', 'Jimgbe, by Salem University,  Ajaokuta-Lokoja Road\nLokoja, Kogi state', '5be14e12f9c1f9bb53eec94cc705df87', '2016-12-28 05:36:14');
INSERT INTO `fulladd` VALUES (73, 'abia', '', 'Awo-Ojokwu ', 'Nigeria', 'Jimgbe, by Salem University,  Ajaokuta-Lokoja Road\nLokoja, Kogi state', '5be14e12f9c1f9bb53eec94cc705df87', '2016-12-28 05:40:07');
INSERT INTO `fulladd` VALUES (74, 'borno', 'Gwoza', 'Gwoza Wakane/Bulabulin.', 'Nigeria', 'NO58 Boma road old GRA Maiduguri beside former governor Muhammed Goni residence.', 'New', '2016-12-28 15:07:05');
INSERT INTO `fulladd` VALUES (75, 'niger', 'Bida', 'Mayaki Ndajiya Word', 'Nigeria', 'KATAMBAKO area behind state library BIDA Niger state', 'c2ed69226e8f8baafcc78a1067767e1f', '2016-12-29 02:41:03');
INSERT INTO `fulladd` VALUES (76, 'abia', '', 'Mayaki Ndajiya Word', 'Nigeria', 'KATAMBAKO area behind state library BIDA Niger state', 'c2ed69226e8f8baafcc78a1067767e1f', '2016-12-29 02:41:31');
INSERT INTO `fulladd` VALUES (77, 'niger', 'Lapai', 'AREWA/YAMMA WARD', 'Nigeria', 'A205 DINDIGA ROAD LAPAI, NIGER STATE, ', 'New', '2016-12-29 06:00:37');
INSERT INTO `fulladd` VALUES (78, 'plateau', 'Bassa', 'Tahu', 'Nigeria', 'A058 Antwan Nunvu Rukuba road, jos', 'New', '2016-12-30 06:39:08');
INSERT INTO `fulladd` VALUES (79, 'niger', 'Lapai', 'Arewa/Yamma', 'Nigeria', 'Y114 Mohammed ALIYU Gana Road Lapai', 'New', '2016-12-30 10:10:04');
INSERT INTO `fulladd` VALUES (80, 'niger', 'Bida', 'Kwali', 'Nigeria', 'Back of Adex Investment Nig LTD, Maitumbi western bye pass, Minna Niger State.', 'New', '2016-12-30 14:22:37');
INSERT INTO `fulladd` VALUES (81, 'niger', 'Lapai', 'Gupa', 'Nigeria', 'Opposite izala mosque alladey junction chanchaga minna', '2957daa504bc3785fc18e13e7f8d88e6', '2016-12-30 15:40:50');
INSERT INTO `fulladd` VALUES (82, 'niger', 'Lapai', 'Gupa', 'Nigeria', 'Opposite izala mosque alladey junction chanchaga minna', '2957daa504bc3785fc18e13e7f8d88e6', '2016-12-30 15:41:47');
INSERT INTO `fulladd` VALUES (83, 'crossRiver', 'Ogoja', 'EKAJUK WARD ONE', 'Nigeria', '14 AMIKA UTUK STREET, CALABAR SOUTH,  CALABAR, CROSS RIVER STATE.', 'New', '2016-12-30 19:18:37');
INSERT INTO `fulladd` VALUES (84, 'crossRiver', 'Ogoja', 'EKAJUK WARD ONE', 'Nigeria', '14 AMIKA UTUK STREET, CALABAR SOUTH,  CALABAR, CROSS RIVER STATE.', 'New', '2016-12-30 19:32:15');
INSERT INTO `fulladd` VALUES (85, 'crossRiver', 'Ogoja', 'EKAJUK WARD ONE', 'Nigeria', '14 AMIKA UTUK STREET, CALABAR SOUTH,  CALABAR, CROSS RIVER STATE.', 'New', '2016-12-30 19:34:49');
INSERT INTO `fulladd` VALUES (86, 'crossRiver', 'Ogoja', 'EKAJUK WARD ONE', 'Nigeria', '14 AMIKA UTUK STREET, CALABAR SOUTH,  CALABAR, CROSS RIVER STATE.', 'New', '2016-12-30 19:37:24');
INSERT INTO `fulladd` VALUES (87, 'crossRiver', 'Ogoja', 'EKAJUK WARD ONE', 'Nigeria', '14 AMIKA UTUK STREET, CALABAR SOUTH,  CALABAR, CROSS RIVER STATE.', 'New', '2016-12-30 19:38:02');

-- --------------------------------------------------------

--
-- Table structure for table `fullpro`
--

CREATE TABLE `fullpro` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(244) DEFAULT NULL,
  `lastname` varchar(244) DEFAULT NULL,
  `picture` varchar(244) DEFAULT NULL,
  `gender` varchar(244) DEFAULT NULL,
  `dateofbirth` varchar(244) DEFAULT NULL,
  `hashUser` varchar(244) DEFAULT NULL,
  `email` varchar(244) DEFAULT NULL,
  `phone` varchar(244) DEFAULT NULL,
  `whatsapp` varchar(244) DEFAULT NULL,
  `timecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 AUTO_INCREMENT=63 ;

--
-- Dumping data for table `fullpro`
--

INSERT INTO `fullpro` VALUES (1, 'Hassan', 'Yabagi Sani', '901a4ce7e9de8e9d555c82da9947530c.jpg', 'Male', '24/06/1984', '733df6b6c3be7ba9d1f9008271c7456a', 'saniyhassan@gmail.com', '08035938903', '08062348715', '2016-12-24 09:03:54');
INSERT INTO `fullpro` VALUES (2, 'Yahaya', 'Ahmed ', '', 'Male', '20/09/1987', '2c98867dad51ff4a759e2ec2fe551fe2', 'mbyahaya20@yahoo.com', '07068814528', '07068814528', '2016-12-24 09:30:27');
INSERT INTO `fullpro` VALUES (3, 'Yabagi', 'Yusuf', '8dc44404149891711fb86b63682203cd.jpeg', 'Male', '', '571c853eeb694bae5650e12e6c1c3ee9', 'yysani@yahoo.com', '08033001274', '08033001274', '2016-12-24 11:19:36');
INSERT INTO `fullpro` VALUES (4, 'Vincent', 'Okumagba', 'b44f543c20cec9bb9c49a45f4f0b8f42.jpeg', '', '16 /11/1964', 'e5a24db90627d24aa9c8f7a5d6860801', 'vinokumagba@yahoo.com', '08123183177', '08123183177', '2016-12-24 11:47:53');
INSERT INTO `fullpro` VALUES (5, 'Abdullahi', 'Segun', '1a77035c652b111ed7c6a4c171d3beaa.jpg', 'Male', '02/10/1984', '7d154df80c0e524b018fb6d80b187946', 'segzyruud@gmail.com', '07069128177', '07069128177', '2016-12-24 11:57:27');
INSERT INTO `fullpro` VALUES (6, 'Abdallah', 'JM Baikie', '', 'Male', '18/06/62', '27de62331f40fbd956c9b68a71538225', 'baikie179@gmail.com', '08063666102', '08029488149', '2016-12-24 12:07:36');
INSERT INTO `fullpro` VALUES (7, 'Musa', 'Muhammad', 'b2a439087308ace3114f39209592a7b0.jpg', 'Male', '12/04/1991', '81baf629ca60c5269adff35177da07f9', 'mmusa0040@gmail.com', '2347060788623', '07060788623', '2016-12-24 12:16:42');
INSERT INTO `fullpro` VALUES (8, 'Saturday', 'Tamunotonye', 'f975a6e547f2c78e6f4ba7404726ce85.jpg', 'Male', '28/12/1977', '4232ce066ab4069ba02e9d9ea1a8d272', 'tonye.satyrday@yahoo.com', '08037358309', '08037358309', '2016-12-24 12:23:40');
INSERT INTO `fullpro` VALUES (9, 'Haroun', 'Opotu Yussuff ', '', 'Male', '26th July, 1957', '47ce3256cfd59539bbf1e2a49b2649a4', 'hoyussuff10@yahoo.com', 'GP 507 Flat 2, Workers&amp;#039; Village, Lokoja, Kogi State. lat', '07058442957...08031550919', '2016-12-24 12:27:17');
INSERT INTO `fullpro` VALUES (10, 'Ibrahim', 'Pam', '', 'Male', '18/09/1970', '99c162cfa74eddd57c681dfc515efb06', 'ibrahimpam@yahoo.com', '08025700471', '08025700471', '2016-12-24 12:39:34');
INSERT INTO `fullpro` VALUES (11, 'Pam', 'Ibrahim', '', '', '', '567b4d16147465b7955613081707834e', '', 'No. 3b, Nunku road, Jos', '', '2016-12-24 12:44:34');
INSERT INTO `fullpro` VALUES (12, 'Shehu', 'Musa', '', 'Male', '9 March 1956', 'ef3cfca3e7850a88be80a0593286d597', 'musatankoshehu@yahoo.com', 'Fodio Compound Kontagora ', '08037882152', '2016-12-24 12:58:05');
INSERT INTO `fullpro` VALUES (13, 'Christiana', 'Gideon', '', 'Female', '25-12-1980', '2693dbe3af70d04c913bde77b4076412', 'makopgideon@yahoo.com', 'COCIN Garki Abuja', '08037611544', '2016-12-24 13:07:03');
INSERT INTO `fullpro` VALUES (14, 'Ndasaba', 'Ibrahim ', '', '', '28th March, 1954', '49f7f50860bec1cac4f0d9114e2540ff', 'sabaibrahim15@hotmail.co.uk', 'Emi Kagbochi, Dzukogi Abu Tsado, Esso Area, Bida ', '+2348034754875', '2016-12-24 13:17:45');
INSERT INTO `fullpro` VALUES (15, 'Bashir', 'Shuaibu', 'a69301fdf6932d513c6e0f8cc78cc774.jpg', 'Male', '02/07/1983', '8058af86aa062d701a026dd5d78f5e7a', 'elbash112@gmail.com', '08065302572', '08065302572', '2016-12-24 13:17:59');
INSERT INTO `fullpro` VALUES (16, 'Darius ', 'Diji', '', 'Male', '15 11 1982', '2b5c3a6abf76e8cfbc8cc070c064be75', 'dijidarius@yahoo.com', '08036311266', '09073839783', '2016-12-24 13:18:33');
INSERT INTO `fullpro` VALUES (17, 'Oloruntobi', 'Gabriel', '', '', '', 'a39f32c58645df65fcca72be5577e880', 'hontobigab@yahoo.com', 'Oloruntobi&amp;#039;s Compound, Ekpedo Akoko Edo LGA( ward 9) Edo State.', '08033546467', '2016-12-24 13:18:59');
INSERT INTO `fullpro` VALUES (18, 'Christopher', 'Chumang', '', 'Male', '1978-12-25', '4389869b0106eca877e01da13ac362d5', 'xtomang2016@gmail.com', '07034231240', '07034231240', '2016-12-24 13:23:49');
INSERT INTO `fullpro` VALUES (19, 'Yahaya', 'Isyaku Katamba', '', 'Male', '20/11/1983', '324b02449799490dea68ef5a6aea7710', 'katamba2005@yahoo.co.uk', '08068121424', '08068121424', '2016-12-24 13:35:30');
INSERT INTO `fullpro` VALUES (20, 'Gagman', 'Cleopas', '', 'Male', '02/10/1969', '5c7500ed358393e7020a7fe5d9968600', 'cleorad88@gmail.com', '08098884220', '08098884220', '2016-12-24 13:38:59');
INSERT INTO `fullpro` VALUES (21, 'Abubakar', 'Shehu', '0b34aa9b4f5b5475ce1d921ccbebb139.jpg', 'Male', '06 July, 1971', '0a5048a98116f6bd85867b2c0381eee9', 'abukshehu@gmail.com', 'Ekowuna Ward, Agaie Local Government Area, Niger State', '08036064018', '2016-12-24 13:58:15');
INSERT INTO `fullpro` VALUES (22, 'Isaac Likali', 'Tsowa', '', 'Male', '08/11/1984', '6ec6b985ca13986ae1aa527773218315', 'seeco84@yahoo.com', '08082832029', '08082832029', '2016-12-24 14:14:41');
INSERT INTO `fullpro` VALUES (23, 'Umar', 'Haliru', '', 'Male', '05/05/1985', 'a1c59f0c554d1fbfc5739cfb0c1f42e9', 'halirundanusah@gmail.com', '08022132329', '08022132329 ', '2016-12-24 14:17:01');
INSERT INTO `fullpro` VALUES (24, '', '', '', 'Female', '15/12/1984', '8942351284f06dc74510168a32a2c6d2', 'sweetorons@gmail.com', '09091350089', '09091350089', '2016-12-24 14:23:32');
INSERT INTO `fullpro` VALUES (25, 'Qazeem', 'Abdulganiyu', 'dfebb269950cd02554c0e33eadef5076.jpg', 'Male', '15/01/1984', '4caeee4dd258149d309852fc367d26aa', 'pharmsero@gmail.com', '+2348066975287 ', '08066975287 ', '2016-12-24 14:23:34');
INSERT INTO `fullpro` VALUES (26, 'Abdullahi', 'Nasiru', '', 'Male', '3 May 1990', 'd1c977fb812b38115aec0423babbe334', 'bkkmajeonk@yahoo.com', 'Ap Poly Road Bida Niger State', '08065623681', '2016-12-24 14:40:09');
INSERT INTO `fullpro` VALUES (27, 'Abubakar', 'Suleman', '09acf689fe7db2860093a455553a4cb8.jpg', 'Male', '24/11/79', 'b119a37d1c7282b6bb9ec9d52aa5d741', 'abubakarsulemandanladi@yahoo.com', 'Suleja, Niger State ', '08063669028', '2016-12-24 15:00:44');
INSERT INTO `fullpro` VALUES (28, 'Adedoyin', 'Adeniyi', '', 'Male', '1/7/72', 'b26804922ff05b28e0a01854c277a817', 'firstmolonet@gmail.com', 'CA8 Club Arcade Annex, Tafawa Balewa Square, Lagos', '08023391214', '2016-12-24 15:16:14');
INSERT INTO `fullpro` VALUES (29, 'Maruf', 'Salisu', '', 'Male', '17/06/1987', 'adad74cb04b8aba93d09e21daa6297f1', 'salis4rever@gmail.com', '07039113921', '07039113921', '2016-12-24 15:53:38');
INSERT INTO `fullpro` VALUES (30, 'Daniel ', 'Kura', '', 'Male', '24/04/1985', 'd8257f20389a277cf5100d5c8f8ba6f1', 'ddkura85@gmail.com', '08036415334', '08036415334', '2016-12-24 16:29:41');
INSERT INTO `fullpro` VALUES (31, 'Buhari', 'Etsu', 'efd6d393dcddcc01f17d6125129ef758.jpg', 'Male', '010987', '90b2bbc4c3b1572f8b4459b9a38442e8', 'buharietsu@yahoo.com', '08075424155', '07061848395', '2016-12-24 16:53:59');
INSERT INTO `fullpro` VALUES (32, 'MOHAMMED', 'ABDULLAHI', '28bc731df9d82d9c46096a2e6efdc3f5.jpg', 'Male', '10/01/1989', '2cdf0ae9f44f537df05551913e518edf', 'gmanone077@gmail.com', '+2347066471247', '+2347066471247', '2016-12-24 16:54:21');
INSERT INTO `fullpro` VALUES (33, 'Muhammad', 'Muhammad', '', 'Male', '15/08/1992', '29bbbe5d761613c6e1b80541aff79dca', 'talk2mkolo100@gmail.com', 'House 2 behind unity bank ibb market branch suleja', '08128578587', '2016-12-24 17:21:30');
INSERT INTO `fullpro` VALUES (34, 'Deborah', 'Salawu', '', 'Female', '27th October 1956', '4130ddcc962859d35f76250e3d968d93', '08030685400dd@gmail.com', '08030685400', '08030685400', '2016-12-24 17:23:12');
INSERT INTO `fullpro` VALUES (35, 'Usman', 'Yahaya', '', 'Male', '11/11/77', '9687f10991377eee13cbe2e8aa08ce3d', 'usman.yahaya59@yahoo.co.uk', '08035703520', '08035703520', '2016-12-24 17:26:35');
INSERT INTO `fullpro` VALUES (36, 'ABDULKADIR', 'UKASHA', '', 'Male', '18/8/1988', '1c2cbece87978e3fb4fa0dd95104dee5', 'dr.ukashaabdulkadir@yahoo.com', 'FEDERAL GOVERNMENT GIRLS COLLEGES POTISKUM ', '07033410292', '2016-12-24 17:50:07');
INSERT INTO `fullpro` VALUES (37, 'Haruna', 'Usman', '', '', '05 09 1959', '89b0ca10e467c952f88d16010d9eece8', 'dangajere2015@gmail.com', 'Mashegu Gidan liman', '08037333332', '2016-12-24 18:02:14');
INSERT INTO `fullpro` VALUES (38, 'Eleojo', 'Negedu', 'e8fd816576f4f26f9fc87e3a406f26b2.JPG', 'Male', '15/05/1958', '30ab3d5e2baac18e9bbabdfbf33bb8a1', 'calusmila1000@gmail.com', '9 Ndagi Mamudu Close, Jabi. Abuja', '+2348033212034', '2016-12-24 18:04:26');
INSERT INTO `fullpro` VALUES (39, 'Peters', 'Kazeem', 'ad37db13950b8d1a8d4c79b42b3ed142.jpg', '', '10/10/1980', 'b70a9ad674e2e62cc683e2c04cb5807c', 'peters2k22002@ymail.com', 'No 8 Pastor Alahi Close Kosofe Ketu, Lagos. ', '08054345324', '2016-12-25 02:07:58');
INSERT INTO `fullpro` VALUES (40, 'Hon', 'Ashoms', '922ee59d31c29ca4d2ddf92ebad5eea2.jpg', 'Male', '08 08 1954 ', 'd755002b1d3e749142dba288ab250074', 'ashoms65@gmail.com', 'No 3b Kashim Ibrahim Street jos. Phone. no 08037022915 ', ' 08037022915', '2016-12-25 09:29:53');
INSERT INTO `fullpro` VALUES (41, 'Sunny', 'Agbara', '9f9fecbd2a118e5b791ce51fff19dea7.jpg', 'Male', '01 October 1964081', '33962bfe6525630c4822ff88b0128d8d', 'sunnyagbara@hotmail.com', '08033124266', '08177599296', '2016-12-25 09:50:21');
INSERT INTO `fullpro` VALUES (42, 'NIAGWAN', 'TOBIAS SUNDAY', '0566b5a43b4b7751227f99a833afa5eb.jpeg', 'Male', '13/10', 'f7ad1f7734c22805f33693ef5529593b', 'tobiasniagwan@yahoo.com', '08065340294', '08065340294', '2016-12-25 13:50:06');
INSERT INTO `fullpro` VALUES (43, 'Hamza', 'Jibrin', '', 'Male', '27/02/1985', 'c4632fab9233420b5c4b3637f869d78c', 'elhamz5565@gmail.com', '08064306413', '08064306413', '2016-12-25 14:35:54');
INSERT INTO `fullpro` VALUES (44, 'Emmanuel', 'Couson', '601ca76509a9e183be785385cc9c18d8.jpeg', 'Male', '08/11/1964', 'fd8d17cf1f31485b9ecf7040e421e81b', 'emmaabi@yahoo.com', '08035882742', '08035882742', '2016-12-26 14:06:03');
INSERT INTO `fullpro` VALUES (45, 'Andrew', 'Gana', '', 'Male', '06/06/1971', '85a867fec5444a69296d54a29a0bc5e2', 'gbandrew71@gmail.com', '08089825640', '08089825640', '2016-12-27 08:38:36');
INSERT INTO `fullpro` VALUES (46, 'Abdallah', 'Ahmad ', '', 'Male', '03/10/1054', 'a495ee8e41700200d61163a2a8570645', 'abdullahmad@gmail.com', '08055233166', '08112002040', '2016-12-27 10:15:08');
INSERT INTO `fullpro` VALUES (47, 'Oden', 'mbang', '', 'Male', '7/11/1988', 'c7650b2e537b04c2a31460a9d5f90f92', 'odenfedy@gmail.com', 'Garki abuja', '08098059954', '2016-12-27 12:55:05');
INSERT INTO `fullpro` VALUES (48, 'Abidemi', 'Dawodu', '', 'Male', '25/06/1955', '3311c11229e978dbcc74540e114f8346', 'bidemi.dawodu@yahoo.com', 'bidemidawodu@gmail.com ', '8034011797', '2016-12-27 13:59:06');
INSERT INTO `fullpro` VALUES (49, 'Charles', 'Ifebuzo', '', 'Male', '05/04/1952', '95f7de943cb4cdf375a6bf7da3226b7a', 'Ifebuzo@yahoo.com', '08033006272', '08033006272', '2016-12-27 14:32:56');
INSERT INTO `fullpro` VALUES (50, 'Olatunbosun', 'Olaniyi', '33e1407585e5d427895cd0f8f423e760.jpg', 'Male', '23/08/1985', 'e215428c0113d61dac957a73ceea365d', 'olaniyiolatunbosun@gmail.com', '08060260130', '08060260130', '2016-12-27 15:21:59');
INSERT INTO `fullpro` VALUES (51, 'Asmau', 'yy', '', 'Female', '19/4/1998', '2c6998864bb7884cd1882cd0cddf49ee', 'asmauyysani07@gmail.com', '09029031538', '09029031538', '2016-12-27 16:24:40');
INSERT INTO `fullpro` VALUES (52, 'Abdullahi', 'Tauheed', 'ae6e7c4c36ef9899a482190bdbb3924a.jpg', 'Male', '3/3/1979 ', '568bc25f48e064881e273d7d05555efc', 'ndatauheed@yahoo.com', 'Liman Fogun&amp;#039;s compound, Fogun area, Bida Local Government area, Bida, Niger state.  ', '08033484528 ', '2016-12-27 16:48:55');
INSERT INTO `fullpro` VALUES (53, 'chidima', 'Nwaonuma', 'b8913a2a439b256e57c8d778d52a374c.jpg', 'Male', '25-11-1986', '2d6328e22b4a33db03d91c6a6a318ec4', 'conelwhite@yahoo.com', 'jos south LGA plateau state nigeria', '08034995490', '2016-12-28 01:12:59');
INSERT INTO `fullpro` VALUES (54, 'Don John', 'Omale PhD', '2840583e76f8ed5220c8368d19b67c26.jpg', 'Male', '04/05/1966', '5be14e12f9c1f9bb53eec94cc705df87', 'djomale@yahoo.co.uk', '08138307761', '08138307761', '2016-12-28 05:28:57');
INSERT INTO `fullpro` VALUES (55, 'Mustapha Ali', 'Musa', '', 'Male', '10-12-1985', 'd031b3ed17cf1795ba6f5adf3ecb3370', 'mustaphaalimusa@gmail.com', '08036193466', '08036193466', '2016-12-28 15:03:35');
INSERT INTO `fullpro` VALUES (56, 'Mustapha', 'Usman', '', 'Male', '01/04/1984', 'c2ed69226e8f8baafcc78a1067767e1f', 'abdul4luv51@yahoo.com', 'Mayaki Ndajiya Word. Katambako Area Behind State Library, Bida Niger State. 08062688380', '08062688380', '2016-12-29 02:39:00');
INSERT INTO `fullpro` VALUES (57, 'ISAH', 'UMAR', 'fd22ea1e6b040b2c292e631ef7b6fbf5.jpg', 'Male', '07/05/1986', '0bb248551ca9cca6075ac4304275e9a7', 'isahsoje@gmail.com', '08106709696', '08106709696', '2016-12-29 05:57:30');
INSERT INTO `fullpro` VALUES (58, 'Dilas', 'Yusuph', '', 'Male', '7/7/2016', '822558edaa563a4dbf9a5a59ace8984f', 'dilasm@gmail.com', '08037139542', '08037139542', '2016-12-30 06:37:29');
INSERT INTO `fullpro` VALUES (59, 'Umar', 'Mohammed', '0747ba8f71ee1c270ebc5fe3801815b4.jpg', 'Male', '14/02/1982', '499543c395ff7f2683fccce5abd3ffd3', 'gmohammedu@yahoo.com', '08060162696', '08150223866', '2016-12-30 10:08:31');
INSERT INTO `fullpro` VALUES (60, 'Abdullahi', 'Mustapha BK', '', 'Male', '26/03/1989', '1b87597f682afcc81ceeae74512dd2f6', 'amustaphabk@gmail.com', '07032552498', '07032552498', '2016-12-30 14:18:57');
INSERT INTO `fullpro` VALUES (61, 'Gimba', 'Abubakar sadiq', '', 'Male', '20 08 1991', '2957daa504bc3785fc18e13e7f8d88e6', 'gimson01@gmail.com', '08138733722', '08138733722', '2016-12-30 15:38:42');
INSERT INTO `fullpro` VALUES (62, 'MOPTA', 'SAMUEL', '', 'Male', '18/11/1984', '799437bded987545da300422c2b07543', 'eyehmoptasamuel@yahoo.com', '07031516394', '07031516394', '2016-12-30 19:12:46');

-- --------------------------------------------------------

--
-- Table structure for table `randomCode`
--

CREATE TABLE `randomCode` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hashUser` varchar(244) DEFAULT NULL,
  `randomCode` varchar(15) DEFAULT NULL,
  `dateCreated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `randomCode`
--

INSERT INTO `randomCode` VALUES (1, 'New', 'ADP20952848', '2016-12-24 09:32:19');
INSERT INTO `randomCode` VALUES (2, '571c853eeb694bae5650e12e6c1c3ee9', 'ADP36906642', '2016-12-24 11:22:51');
INSERT INTO `randomCode` VALUES (3, 'e5a24db90627d24aa9c8f7a5d6860801', 'ADP13365738', '2016-12-24 11:49:35');
INSERT INTO `randomCode` VALUES (4, '7d154df80c0e524b018fb6d80b187946', 'ADP15369345', '2016-12-24 11:58:28');
INSERT INTO `randomCode` VALUES (5, '27de62331f40fbd956c9b68a71538225', 'ADP53915018', '2016-12-24 12:08:39');
INSERT INTO `randomCode` VALUES (6, '4232ce066ab4069ba02e9d9ea1a8d272', 'ADP49576226', '2016-12-24 12:28:12');
INSERT INTO `randomCode` VALUES (7, '47ce3256cfd59539bbf1e2a49b2649a4', 'ADP79440893', '2016-12-24 12:34:29');
INSERT INTO `randomCode` VALUES (8, 'ef3cfca3e7850a88be80a0593286d597', 'ADP76754497', '2016-12-24 13:00:21');
INSERT INTO `randomCode` VALUES (9, '2693dbe3af70d04c913bde77b4076412', 'ADP35103964', '2016-12-24 13:09:31');
INSERT INTO `randomCode` VALUES (10, '8058af86aa062d701a026dd5d78f5e7a', 'ADP45040642', '2016-12-24 13:19:57');
INSERT INTO `randomCode` VALUES (11, 'a39f32c58645df65fcca72be5577e880', 'ADP57698008', '2016-12-24 13:21:54');
INSERT INTO `randomCode` VALUES (12, '4389869b0106eca877e01da13ac362d5', 'ADP18677037', '2016-12-24 13:26:56');
INSERT INTO `randomCode` VALUES (13, '5c7500ed358393e7020a7fe5d9968600', 'ADP67053353', '2016-12-24 13:40:34');
INSERT INTO `randomCode` VALUES (14, 'a1c59f0c554d1fbfc5739cfb0c1f42e9', 'ADP04805446', '2016-12-24 14:18:52');
INSERT INTO `randomCode` VALUES (15, '4caeee4dd258149d309852fc367d26aa', 'ADP71031195', '2016-12-24 14:24:52');
INSERT INTO `randomCode` VALUES (16, 'd1c977fb812b38115aec0423babbe334', 'ADP61092879', '2016-12-24 14:41:12');
INSERT INTO `randomCode` VALUES (17, 'b119a37d1c7282b6bb9ec9d52aa5d741', 'ADP87529939', '2016-12-24 15:02:46');
INSERT INTO `randomCode` VALUES (18, 'b26804922ff05b28e0a01854c277a817', 'ADP72855235', '2016-12-24 15:18:05');
INSERT INTO `randomCode` VALUES (19, 'adad74cb04b8aba93d09e21daa6297f1', 'ADP84245000', '2016-12-24 15:54:52');
INSERT INTO `randomCode` VALUES (20, '29bbbe5d761613c6e1b80541aff79dca', 'ADP31719116', '2016-12-24 17:22:26');
INSERT INTO `randomCode` VALUES (21, '9687f10991377eee13cbe2e8aa08ce3d', 'ADP31456360', '2016-12-24 17:27:52');
INSERT INTO `randomCode` VALUES (22, '1c2cbece87978e3fb4fa0dd95104dee5', 'ADP04901787', '2016-12-24 17:51:38');
INSERT INTO `randomCode` VALUES (23, '89b0ca10e467c952f88d16010d9eece8', 'ADP03067306', '2016-12-24 18:05:08');
INSERT INTO `randomCode` VALUES (24, 'b70a9ad674e2e62cc683e2c04cb5807c', 'ADP72911210', '2016-12-25 02:09:04');
INSERT INTO `randomCode` VALUES (25, 'd755002b1d3e749142dba288ab250074', 'ADP61500574', '2016-12-25 09:31:41');
INSERT INTO `randomCode` VALUES (26, '33962bfe6525630c4822ff88b0128d8d', 'ADP77954165', '2016-12-25 09:54:29');
INSERT INTO `randomCode` VALUES (27, 'a495ee8e41700200d61163a2a8570645', 'ADP87015190', '2016-12-27 10:17:23');
INSERT INTO `randomCode` VALUES (28, 'c7650b2e537b04c2a31460a9d5f90f92', 'ADP22499882', '2016-12-27 12:56:37');
INSERT INTO `randomCode` VALUES (29, '3311c11229e978dbcc74540e114f8346', 'ADP58061661', '2016-12-27 14:01:32');
INSERT INTO `randomCode` VALUES (30, '95f7de943cb4cdf375a6bf7da3226b7a', 'ADP30476305', '2016-12-27 14:35:51');
INSERT INTO `randomCode` VALUES (31, '2c6998864bb7884cd1882cd0cddf49ee', 'ADP41157752', '2016-12-27 16:27:37');
INSERT INTO `randomCode` VALUES (32, '568bc25f48e064881e273d7d05555efc', 'ADP16835332', '2016-12-27 16:50:54');
INSERT INTO `randomCode` VALUES (33, '2d6328e22b4a33db03d91c6a6a318ec4', 'ADP97801172', '2016-12-28 01:15:20');
INSERT INTO `randomCode` VALUES (34, '5be14e12f9c1f9bb53eec94cc705df87', 'ADP37246551', '2016-12-28 05:36:33');
INSERT INTO `randomCode` VALUES (35, 'c2ed69226e8f8baafcc78a1067767e1f', 'ADP74664122', '2016-12-29 02:41:07');
INSERT INTO `randomCode` VALUES (36, '2957daa504bc3785fc18e13e7f8d88e6', 'ADP76832728', '2016-12-30 15:40:55');

-- --------------------------------------------------------

--
-- Table structure for table `visituser`
--

CREATE TABLE `visituser` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fullname` varchar(244) DEFAULT NULL,
  `contactDetail` varchar(244) DEFAULT NULL,
  `contactType` varchar(244) DEFAULT NULL,
  `hashUser` varchar(244) DEFAULT NULL,
  `timecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8 AUTO_INCREMENT=96 ;

--
-- Dumping data for table `visituser`
--

INSERT INTO `visituser` VALUES (1, 'Hassan Yabagi Sani', 'saniyhassan@gmail.com', 'Email', '733df6b6c3be7ba9d1f9008271c7456a', '2016-12-24 09:03:22');
INSERT INTO `visituser` VALUES (2, 'yahaya Ahmed mohammed ', '07068814528', 'Phone', 'c230900fa9b6d99433b8b137ad72e4ae', '2016-12-24 09:26:38');
INSERT INTO `visituser` VALUES (3, '', '', 'Phone', '7691ee5a2d939e1abb4ac12810ec43f9', '2016-12-24 09:28:23');
INSERT INTO `visituser` VALUES (4, 'Hassan Yabagi Sani', 'Yysani@hotmail.com', 'Email', '5c41a49551fb0cecadcb1aaa76cd2101', '2016-12-24 09:34:55');
INSERT INTO `visituser` VALUES (5, 'Yabagi Yusuf Sani', '08033001274', 'Phone', '571c853eeb694bae5650e12e6c1c3ee9', '2016-12-24 11:18:08');
INSERT INTO `visituser` VALUES (6, 'Prince Vincent okumagba', '08123183177', 'Phone', 'e5a24db90627d24aa9c8f7a5d6860801', '2016-12-24 11:44:19');
INSERT INTO `visituser` VALUES (7, 'Emmanuel Couson', 'Nyanya Phase 4 Behind Living Faith Church Rd2 Plot 189/190 Abuja', 'Phone', 'af81c25e0a3265f9b65a9b90e12bad0d', '2016-12-24 11:45:03');
INSERT INTO `visituser` VALUES (8, 'Abdullahi Segun Shuaib ', 'Kogi State Local government Civil Service commission. 07069128177', 'Phone', '27457c856f73fd28e8cb218df7864f6e', '2016-12-24 11:55:27');
INSERT INTO `visituser` VALUES (9, 'Abdullahi Segun Shuaib ', '07069128177', 'Phone', '7d154df80c0e524b018fb6d80b187946', '2016-12-24 11:56:16');
INSERT INTO `visituser` VALUES (10, 'Saturday Tamunotonye Salon', '08037358309', 'Phone', '4232ce066ab4069ba02e9d9ea1a8d272', '2016-12-24 12:02:28');
INSERT INTO `visituser` VALUES (11, 'Abdallah JM Baikiie', 'baikie179@gmail.com', 'Email', '27de62331f40fbd956c9b68a71538225', '2016-12-24 12:06:28');
INSERT INTO `visituser` VALUES (12, 'Buhari Hajj Etsu', 'Emi Sardauna nupe, efu madami, Bida, Niger state.', 'Phone', 'e2ad093b79c0e20f479f6a8a511eba05', '2016-12-24 12:06:39');
INSERT INTO `visituser` VALUES (13, 'Haroun Opotu Yussuff ', 'GP 507 Flat 2, Workers&#039; Village, Lokoja, Kogi State. lat', 'Phone', '47ce3256cfd59539bbf1e2a49b2649a4', '2016-12-24 12:22:02');
INSERT INTO `visituser` VALUES (14, 'Osahon', 'Igiebor ', 'Phone', 'c74812c73dab085917ff6d7f0407c016', '2016-12-24 12:38:48');
INSERT INTO `visituser` VALUES (15, 'Sani Abu Minista ', 'sminists@yahoo.com', 'Email', '48f2ed34e50afabf6cc30fa2152e0c2b', '2016-12-24 12:42:31');
INSERT INTO `visituser` VALUES (16, 'Pam Ibrahim', 'No. 3b, Nunku road, Jos', 'Phone', '567b4d16147465b7955613081707834e', '2016-12-24 12:43:58');
INSERT INTO `visituser` VALUES (17, 'YAHAYA AHMED ALHAJI ', '08035295953', 'Phone', 'ee8318570ce2e133b4a5ab5bb1fc40f1', '2016-12-24 12:49:12');
INSERT INTO `visituser` VALUES (18, 'Shehu Musa Tanko ', 'Fodio Compound Kontagora ', 'Phone', 'ef3cfca3e7850a88be80a0593286d597', '2016-12-24 12:55:23');
INSERT INTO `visituser` VALUES (19, 'Efe Erimwoghae Anthony', '12 Udon Uzegbo Quarter,  Ologbo N&#039;Ugu, Ugu Ward, Orhiomwon LGA. Edo State. And D3 F4  Lekki Gardens, Horizon 2, Lekki Eleguishi Beach, Lekki, Lagos.', 'Phone', 'b87a31eebb7ffb743a6fa4226e459dc9', '2016-12-24 12:58:27');
INSERT INTO `visituser` VALUES (20, 'Efe Erimwoghae Anthony', '12 Udon Uzegbo Quarter,  Ologbo N&#039;Ugu, Ugu Ward, Orhiomwon LGA. Edo State. And D3 F4  Lekki Gardens, Horizon 2, Lekki Eleguishi Beach, Lekki, Lagos.', 'Phone', '7dda8c5fce52734b0bcd2bff066b98bd', '2016-12-24 12:58:27');
INSERT INTO `visituser` VALUES (21, 'Christiana Gideon', 'COCIN Garki Abuja', 'Phone', '0a2cf9cbd1d418ba9624d059b8799825', '2016-12-24 13:03:24');
INSERT INTO `visituser` VALUES (22, 'Christiana Gideon', 'COCIN Garki Abuja', 'Phone', '2693dbe3af70d04c913bde77b4076412', '2016-12-24 13:03:24');
INSERT INTO `visituser` VALUES (23, 'Christopher Chumang', 'Plateau State ', 'Phone', 'd79f76e62d1489e08d6965310938bcce', '2016-12-24 13:10:21');
INSERT INTO `visituser` VALUES (24, 'Bashir Shuaibu', '08065302572', 'Phone', '8058af86aa062d701a026dd5d78f5e7a', '2016-12-24 13:12:09');
INSERT INTO `visituser` VALUES (25, 'Ndasaba Mohammed Ibrahim ', 'Emi Kagbochi, Dzukogi Abu Tsado, Esso Area, Bida ', 'Phone', '49f7f50860bec1cac4f0d9114e2540ff', '2016-12-24 13:15:42');
INSERT INTO `visituser` VALUES (26, 'Oloruntobi Gabriel', 'Oloruntobi&#039;s Compound, Ekpedo Akoko Edo LGA( ward 9) Edo State.', 'Phone', 'a39f32c58645df65fcca72be5577e880', '2016-12-24 13:16:40');
INSERT INTO `visituser` VALUES (27, 'Christopher Chumang', '07034231240', 'Phone', '4389869b0106eca877e01da13ac362d5', '2016-12-24 13:20:20');
INSERT INTO `visituser` VALUES (28, 'DR DENJA SALIU ABDUL', '11 Agbaja Avenue Lokongoma-Lokoja Kogi State 08035879752', 'Phone', '169173b51a90368b6f0e9dbcc7d42163', '2016-12-24 13:29:56');
INSERT INTO `visituser` VALUES (29, 'Gagman Cleopas', 'cleorad88@gmail.com', 'Email', '5c7500ed358393e7020a7fe5d9968600', '2016-12-24 13:37:38');
INSERT INTO `visituser` VALUES (30, 'Yahaya isyaku katamba', 'gimba katako house', 'Phone', '0e31c452e41c701e7c479427b9dac07f', '2016-12-24 13:39:47');
INSERT INTO `visituser` VALUES (31, 'Abubakar Shehu Alhaji', 'Ekowuna Ward, Agaie Local Government Area, Niger State', 'Phone', '0a5048a98116f6bd85867b2c0381eee9', '2016-12-24 13:46:36');
INSERT INTO `visituser` VALUES (32, 'Abubakar Sani', '08182553782', 'Phone', '49ed09e36ed755e58a756494467c1430', '2016-12-24 13:50:49');
INSERT INTO `visituser` VALUES (33, 'Umar Haliru Ndanusah ', '08022132329', 'Phone', 'a1c59f0c554d1fbfc5739cfb0c1f42e9', '2016-12-24 14:14:48');
INSERT INTO `visituser` VALUES (34, 'Qazeem Abdulganiyu ', '+2348066975287 ', 'Phone', '4caeee4dd258149d309852fc367d26aa', '2016-12-24 14:22:32');
INSERT INTO `visituser` VALUES (35, 'alhaji aliyu abdulkadir', 'gbazhi ,dokodza ward bida local government, niger state', 'Phone', '645032e9f68b736deeaf906b26d0123c', '2016-12-24 14:27:40');
INSERT INTO `visituser` VALUES (36, 'alhaji aliyu abdulkadir', 'gbazhi , dokodza ward, bida,niger state', 'Phone', '67d6cf30184c2e5086abdaacce715d33', '2016-12-24 14:30:23');
INSERT INTO `visituser` VALUES (37, 'Abdullahi Nasiru Mohammed', 'Ap Poly Road Bida Niger State', 'Phone', 'd1c977fb812b38115aec0423babbe334', '2016-12-24 14:39:13');
INSERT INTO `visituser` VALUES (38, 'Abubakar Suleman ', 'Suleja, Niger State ', 'Phone', 'b119a37d1c7282b6bb9ec9d52aa5d741', '2016-12-24 14:57:15');
INSERT INTO `visituser` VALUES (39, 'Adedoyin Adeniyi', 'CA8 Club Arcade Annex, Tafawa Balewa Square, Lagos', 'Phone', 'b26804922ff05b28e0a01854c277a817', '2016-12-24 15:13:23');
INSERT INTO `visituser` VALUES (40, 'Wasiu Adedoyin Adeniyi', '08923391214', 'Phone', 'c7b3f24e7d40f3a6ff8608d53cea82e0', '2016-12-24 15:19:23');
INSERT INTO `visituser` VALUES (41, 'Maruf Salisu', '07039113921', 'Phone', 'adad74cb04b8aba93d09e21daa6297f1', '2016-12-24 15:52:00');
INSERT INTO `visituser` VALUES (42, 'Ukechi Smith Akor', '08063968976', 'Phone', '74ed54925c197e3dba700df3f6ba944c', '2016-12-24 16:14:32');
INSERT INTO `visituser` VALUES (43, 'Daniel Kura', '08036415334', 'Phone', 'c5e134dedbe3ada83c609bc6c236ce24', '2016-12-24 16:18:16');
INSERT INTO `visituser` VALUES (44, 'MOHAMMED ABDULLAHI ALHAJI ', '07066471247', 'Phone', '83c88c70b4067c81c8851ce4f1235a90', '2016-12-24 16:56:59');
INSERT INTO `visituser` VALUES (45, 'Muhammad Muhammad kolo', 'House 2 behind unity bank ibb market branch suleja', 'Phone', '29bbbe5d761613c6e1b80541aff79dca', '2016-12-24 17:16:58');
INSERT INTO `visituser` VALUES (46, 'Usman Yahaya', '08035703520', 'Phone', '9687f10991377eee13cbe2e8aa08ce3d', '2016-12-24 17:25:09');
INSERT INTO `visituser` VALUES (47, 'ABDULKADIR UKASHA', 'FEDERAL GOVERNMENT GIRLS COLLEGES POTISKUM ', 'Phone', '1c2cbece87978e3fb4fa0dd95104dee5', '2016-12-24 17:48:41');
INSERT INTO `visituser` VALUES (48, 'Eleojo Lucas Negedu', '9 Ndagi Mamudu Close, Jabi. Abuja', 'Phone', '30ab3d5e2baac18e9bbabdfbf33bb8a1', '2016-12-24 17:57:04');
INSERT INTO `visituser` VALUES (49, 'Haruna Usman Dangajere', 'Mashegu Gidan liman', 'Phone', '89b0ca10e467c952f88d16010d9eece8', '2016-12-24 17:59:00');
INSERT INTO `visituser` VALUES (50, 'Eleojo Lucas Negedu', '08033212034', 'Phone', '1c93557b9c95ee33ef72da28ab9d3f33', '2016-12-24 18:05:17');
INSERT INTO `visituser` VALUES (51, 'Abdulsalam Kabir ', 'Phone number 08035943182', 'Phone', '50c15d5a63eb2536fceb78ecd8f44bb8', '2016-12-24 19:13:11');
INSERT INTO `visituser` VALUES (52, 'Peters Kazeem Olawale ', 'No 8 Pastor Alahi Close Kosofe Ketu, Lagos. ', 'Phone', 'b70a9ad674e2e62cc683e2c04cb5807c', '2016-12-25 01:09:40');
INSERT INTO `visituser` VALUES (53, 'Abubakar Shehu', 'Ekowuna ward,Agaie local government Niger State', 'Phone', '1dfa1ec8cb89d6d82c5d91996f83eaee', '2016-12-25 01:50:59');
INSERT INTO `visituser` VALUES (54, 'Hon. Usman A. Mohammed', '08163580887', 'Phone', '0d5ef1a863985a4387c9127a95c5a105', '2016-12-25 02:15:52');
INSERT INTO `visituser` VALUES (55, 'Sotayo oladimeji', 'abeokuta,nigeria', 'Phone', 'e5a0dc21fc76b776339d4d4b2a90a4cb', '2016-12-25 05:17:39');
INSERT INTO `visituser` VALUES (56, 'Abiodun Oladipo', 'No 1 olaoluwa street,ojodu berger,Lagos', 'Phone', '17dce793214385256ecd8cc8ab85ab7d', '2016-12-25 05:19:25');
INSERT INTO `visituser` VALUES (57, 'Abiodun olamide', '07037990803', 'Phone', '569ec6ec7ef59635075d09a2d5410bae', '2016-12-25 05:20:16');
INSERT INTO `visituser` VALUES (58, 'Ibrahim adebambo adewole', '08035436233', 'Phone', 'a8d37eefc40377eda6ee02c636575d45', '2016-12-25 05:21:23');
INSERT INTO `visituser` VALUES (59, 'Yusuph M. Dilas', 'Rukuba road Jos plateau state', 'Phone', 'cd37f10ea26de3a9a8fd80a899f53268', '2016-12-25 06:36:12');
INSERT INTO `visituser` VALUES (60, 'Yusuph M.Dilas', '08037139542', 'Phone', '4490c254ed239b199e9d15f661001315', '2016-12-25 06:46:35');
INSERT INTO `visituser` VALUES (61, 'Hon Ashoms Andrew I ', 'No 3b Kashim Ibrahim Street jos. Phone. no 08037022915 ', 'Phone', 'd755002b1d3e749142dba288ab250074', '2016-12-25 09:22:45');
INSERT INTO `visituser` VALUES (62, 'Chief  Sunny Agbara', 'sunnyagbara@hotmail.com', 'Email', '1d7e4da48342d518afd067de0229ee39', '2016-12-25 09:42:22');
INSERT INTO `visituser` VALUES (63, 'Sunny Agbara', '08033124266', 'Phone', '33962bfe6525630c4822ff88b0128d8d', '2016-12-25 09:47:29');
INSERT INTO `visituser` VALUES (64, 'Chief Sunny Agbara', '8033124266', 'Phone', '19f2d87594e5659f134efe13ee5b6dbc', '2016-12-25 10:02:24');
INSERT INTO `visituser` VALUES (65, 'Isama ENE Victoria ', '07031389074', 'Phone', '85081bf9b1bfd2c58b65424653af88aa', '2016-12-26 01:25:55');
INSERT INTO `visituser` VALUES (66, 'Abubakar yahaya', 'estu jabago road madalla,suleja, niger state, 07030123878', 'Phone', 'ee515b48756deae90bbee3e6345369ab', '2016-12-27 06:58:05');
INSERT INTO `visituser` VALUES (67, 'Ozems Chijioke Williams Ndubuisi', 'Umunna Nsulu Ward 2 Isiala Ngwa North L G A Abia State', 'Phone', 'fdb691f9952a85a9f88de35aafb138f6', '2016-12-27 08:01:42');
INSERT INTO `visituser` VALUES (68, 'Kabir Muhd ', 'Hashimi B', 'Phone', '721b9705405cf9437aa35d93cd1cefbf', '2016-12-27 09:18:00');
INSERT INTO `visituser` VALUES (69, 'Abdallah A AHMAD ', '08055233166', 'Phone', 'a495ee8e41700200d61163a2a8570645', '2016-12-27 10:13:18');
INSERT INTO `visituser` VALUES (70, 'Ahmed Jibril Na&#039;Allah', 'Behind maigari filling Station, shabu-Lafia Nasarawa state. ', 'Phone', 'dc9e14378c44b3106e7e3f95ab9afbf3', '2016-12-27 11:45:07');
INSERT INTO `visituser` VALUES (71, 'Oden mbang Emmanuel', 'Garki abuja', 'Phone', 'c7650b2e537b04c2a31460a9d5f90f92', '2016-12-27 12:53:27');
INSERT INTO `visituser` VALUES (72, 'Oden mbang Emmanuel', 'No 4 aliade street garki Abuja ', 'Phone', '08c71d910406c6e15b89390eaa925fba', '2016-12-27 13:03:02');
INSERT INTO `visituser` VALUES (73, 'Abidemi Oladapo Dawodu ', 'bidemidawodu@gmail.com ', 'Phone', '3311c11229e978dbcc74540e114f8346', '2016-12-27 13:57:48');
INSERT INTO `visituser` VALUES (74, 'Bulus Sanda', '24A Turaki Street, Dengi Kanam, Plateau State', 'Phone', 'caa842f986328608b805acbedfd63d63', '2016-12-27 14:08:36');
INSERT INTO `visituser` VALUES (75, 'Charles Okechukwu Ifebuzo ,commodore Rtd.', 'Ifebuzo@yahoo.com', 'Email', '95f7de943cb4cdf375a6bf7da3226b7a', '2016-12-27 14:29:33');
INSERT INTO `visituser` VALUES (76, 'Asmau yy sani ', '09029031538', 'Phone', '2c6998864bb7884cd1882cd0cddf49ee', '2016-12-27 16:22:55');
INSERT INTO `visituser` VALUES (77, 'Abdullahi Tauheed Munacat ', 'Liman Fogun&#039;s compound, Fogun area, Bida, niger state. ', 'Phone', '513184ab6b5bad5e1e251e3da793edf7', '2016-12-27 16:38:11');
INSERT INTO `visituser` VALUES (78, 'Abdullahi Tauheed Munacat ', 'Liman Fogun&#039;s compound, Fogun area, Bida Local Government area, Bida, Niger state.  ', 'Phone', '568bc25f48e064881e273d7d05555efc', '2016-12-27 16:39:43');
INSERT INTO `visituser` VALUES (79, 'chidima kasmiya nwaonuma', 'jos south LGA plateau state nigeria', 'Phone', '2d6328e22b4a33db03d91c6a6a318ec4', '2016-12-28 00:47:25');
INSERT INTO `visituser` VALUES (80, 'Don John O. Omale PhD', 'djomale@yahoo.co.uk', 'Email', '5be14e12f9c1f9bb53eec94cc705df87', '2016-12-28 05:23:08');
INSERT INTO `visituser` VALUES (81, 'Abubakar sani', 'Daura', 'Phone', '92e82548ed09c33b36fe8a8f914d3480', '2016-12-28 11:28:08');
INSERT INTO `visituser` VALUES (82, 'abu s hamisu', '07066551599', 'Phone', '517e1c8044318d0cc5a7fe8e979e0f72', '2016-12-28 11:29:41');
INSERT INTO `visituser` VALUES (83, 'Mustapha Ali Musa', 'No58 Boma road old GRA Maiduguri beside Gov Gonis residence', 'Phone', '61026346c568f0b54c33027fe5d9e455', '2016-12-28 15:10:26');
INSERT INTO `visituser` VALUES (84, 'Mustapha Usman', 'Mayaki Ndajiya Word. Katambako Area Behind State Library, Bida Niger State. 08062688380', 'Phone', 'c2ed69226e8f8baafcc78a1067767e1f', '2016-12-29 02:35:00');
INSERT INTO `visituser` VALUES (85, 'SOFOLUWE AYODEJI EMMANUEL', '+234 803 046 6904', 'Phone', '31d28f1476f2a2636db3aca47ffd05e8', '2016-12-29 08:08:40');
INSERT INTO `visituser` VALUES (86, 'JEREMIAH UCHU AKU', 'BEHIND NEMOACHY SUPERMARKET, RANTYA JOS.', 'Phone', '965ae4ec3a68994b056dee4131635043', '2016-12-30 06:27:15');
INSERT INTO `visituser` VALUES (87, 'JEREMIAH UCHU AKU', 'BEHIND NEMOACHY SUPERMARKET, RANTYA JOS, PLATEAU STATE.', 'Phone', '3bf57ee359dd467dadf082c22fc956da', '2016-12-30 06:33:17');
INSERT INTO `visituser` VALUES (88, 'Umar Mohammed', 'y114', 'Phone', '6a67b12d59a4a5ec2a8c6dde376e2b64', '2016-12-30 10:13:32');
INSERT INTO `visituser` VALUES (89, 'Abdullahi Mustapha BK', '07032552498. Mokwalla area in Bida, Takodzuko area in Lemu, Back of Adex Investment Nig LTD, Maitumbi Minna', 'Phone', 'a500dbb33b200f3734ad3d9c17eb9365', '2016-12-30 14:03:05');
INSERT INTO `visituser` VALUES (90, 'Abdullahi Mustapha BK', '07032552498', 'Phone', '45e68450bf21e7cfed3e38fb10f75fcc', '2016-12-30 14:07:58');
INSERT INTO `visituser` VALUES (91, 'Abubakar yahaya ', '07067787380 ', 'Phone', 'd509cc9dea0f72d6ada4f4d120c3d760', '2016-12-30 14:39:14');
INSERT INTO `visituser` VALUES (92, 'Abdullahi', 'Mustapha BK', 'Phone', '36367497c3a06534531934253fb14feb', '2016-12-30 15:28:16');
INSERT INTO `visituser` VALUES (93, 'Gimba Abubakar sadiq', '08138733722', 'Phone', '2957daa504bc3785fc18e13e7f8d88e6', '2016-12-30 15:36:48');
INSERT INTO `visituser` VALUES (94, 'MOPTA SAMUEL', 'CALABA, CROSS RIVER STATE', 'Phone', '3c27a3208d381d91ee0d6c062ea16eff', '2016-12-30 18:54:34');
INSERT INTO `visituser` VALUES (95, 'MOPTA SAMUEL', '07031516394', 'Phone', 'a5d693a167a3f523814cc529657b98c2', '2016-12-30 18:58:38');
