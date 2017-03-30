-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2017 at 12:00 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cura`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_type`) VALUES
(1, 'Skin Care'),
(2, 'Hair & Body'),
(3, 'Scents'),
(4, 'Grooming Essentials');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `shipping_address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zip_code` int(11) NOT NULL,
  `mobile_number` varchar(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `shipping_address`, `city`, `zip_code`, `mobile_number`, `user_id`) VALUES
(1, 'Vincent', 'Pleyto', '14-A 3rd Street Saint Ignatius Village', 'Quezon City', 1110, '09178988888', 1),
(3, 'peejay', 'saracho', 'Q.C', 'Q.C', 1101, '0905', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `total` decimal(11,2) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_description` varchar(1000) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `product_price` int(11) NOT NULL,
  `product_volume` varchar(255) NOT NULL,
  `product_brand` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `product_quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_description`, `product_image`, `product_price`, `product_volume`, `product_brand`, `category_id`, `subcategory_id`, `product_quantity`) VALUES
(100001, 'Day Cream Broad Spectrum Sunscreen SPF 30', 'A quick-drying daily moisturizer with broad-spectrum sun protection that visibly improves skin''s elasticity and appearance.', 'anthony_daycreamsunblock.jpg', 1700, '3oz', 'Anthony', 1, 2, 100),
(100002, 'Astringent Toner Pads', 'Convenient, toner-soaked facial pads formulated with alcohol and witch hazel to help eliminate impurities, tighten pores, and control shine.', 'anthony_tonerpads.jpg', 1300, '60 pads', 'Anthony', 1, 3, 100),
(100003, 'All Purpose Facial Moisturizer', 'A lightweight, non-greasy formula that absorbs quickly to moisturize and nourish skin.', 'anthony_facialmoisturizer.jpg', 1500, '75ml', 'Anthony', 1, 3, 100),
(100004, 'High Performance Continuous Moisture Eye Cream', 'An advanced, time-released, cream formula that helps prevent premature aging around the delicate eye area.', 'anthony_moistureeyecream.jpg', 1900, '22ml', 'Anthony', 1, 4, 100),
(100005, 'Blue Sea Kelp Body Scrub', 'An exfoliating body scrub to deep clean while removing impurities and dead skin cells for a smooth finish.', 'anthony_seakelpscrub.jpg', 1400, '355ml', 'Anthony', 2, 6, 100),
(100006, 'Ingrown Hair Treatment', 'A gel complex of glycolic, salicylic, and phytic acids to treat ingrown hairs, gently remove dead skin, and help fight bacteria.', 'anthony_ingrownhairtreatment.jpg', 1600, '74ml', 'Anthony', 4, 0, 100),
(100007, 'Clear Complexion Cleanser', 'An antioxidant-rich gel face cleanser that combats blemish-causing impurities, balances oil, and improves the appearance of pores, firmness, and elasticity.', 'boscia_complexioncleanser.jpg', 1400, '150ml', 'Boscia', 1, 1, 100),
(100008, 'Revitalizing Black Hydration Gel', 'A cooling gel moisturizer that provides ultralight hydration as it exfoliates, detoxifies, refines skin texture, brightens clarity, and minimizes the look of pores.', 'boscia_blackmoisturizer.jpg', 1900, '30ml', 'Boscia', 1, 3, 100),
(100009, 'Grooming Creme', 'A combination of natural oils makes this a magnificent styling moisturizer for those who love to look polished, elegant, and smooth without extra effort.', 'bumbleandbumble_groomingcreme.jpg', 1550, '6oz', 'Bumble and bumble', 4, 0, 100),
(100010, 'Mr. Burberry Deodorant Stick', 'Shop Mr. Burberry Deodorant Stick by BURBERRY at Sephora. This deodorant stick infused with the iconic Mr. Burberry scent.', 'burberry_deostick.jpg', 1150, '2.5oz', 'Burberry', 2, 8, 100),
(100011, 'Anti-Age Eye Cream', 'An oil-free multifunctional treatment for the delicate eye area.', 'clinique_eyecream.jpg', 1500, '15ml', 'Clinique', 1, 4, 100),
(100012, 'Face Wash', 'A gentle but thorough cleanser for normal to dry skin.', 'clinique_facewash.jpg', 850, '200ml', 'Clinique', 1, 1, 100),
(100013, 'UV Defense Broad Spectrum SPF 50', 'An ultra-lightweight, high-level UVA/UVB protecting formula for men.', 'clinique_uvdefensesunblock.jpg', 1500, '1oz', 'Clinique', 1, 2, 100),
(100014, 'Aloe Shave Gel', 'A highly concentrated oil-free shaving gel.', 'clinique_aloeshavegel.jpg', 850, '125ml', 'Clinique', 4, 0, 100),
(100015, 'SAUVAGE', 'Natural ingredients prevail as radiant top notes burst with the juicy freshness of Reggio di Calabria bergamot. Ambroxan, derived from precious ambergris, unleashes a powerfully woody trail.', 'dior_sauvagecologne.jpg', 3700, '60ml', 'Dior', 3, 0, 100),
(100016, 'Light Blue Pour Homme', 'A refreshing blend of citrus notes with masculine woods and subtle spice creates a distinctive fragrance that epitomizes relaxed sophistication, the sensuality of the Mediterranean.', 'dolceandgabbana_lightbluecologne.jpg', 3350, '75ml', 'Dolce & Gabbana', 3, 0, 100),
(100017, 'Probably the Most Amazing Shave Set (ever)', 'A four-piece shave set that has everything you need for an amazingly close and delightful shave.', 'dollarshaveclub_amazingshave.jpg', 1750, 'null', 'Dollar Shave Club', 4, 0, 100),
(100018, 'So Fine Toner', 'A hypoallergenic oxygenated water-based toner to soothe men''s irritated skin and relieve razor burn.', 'dtrt_toner.jpg', 1400, '4.73oz', 'DTRT', 1, 3, 100),
(100019, 'Seaberry Revitalizing Conditioner', 'A daily rinse for all hair types that softens, smooths, and revitalizes the hair from root to tip while improving manageability and adding amazing body.', 'fresh_seaberryconditioner.jpg', 1350, '8oz', 'Fresh', 2, 5, 100),
(100020, 'Continuous Mist Sunscreen SPF 55', 'A powerful-yet-luxurious water-resistant sunscreen that delivers broad-spectrum UVA/UVB protection in a smooth, oil-free, continuous-mist format.', 'hamptonsun_mistsunscreen.jpg', 1600, '5oz', 'Hampton Sun', 1, 2, 100),
(100021, 'Protein Booster Eye Rescue', 'Jack Black Protein Booster Eye Rescue is an intensive, multi-action eye treatment that delivers clinically proven antiaging technology. The high-performance complex is power-packed with peptides, antioxidants, and Omega-3 fatty acids that work to reduce the appearance of fine lines and wrinkles, firm the skin, and minimize puffiness and dark circles.', 'jackblack_eyerescue.jpg', 2000, '0.5oz', 'Jack Black', 1, 4, 100),
(100022, 'Deep Dive™ Glycolic Facial Cleanser', 'A powerful, multifunctional cleanser that washes away dead skin cells, pore-clogging oil, and build-up while smoothing and firming skin.', 'jackblack_glycoliccleanser.jpg', 1000, '147ml', 'Jack Black', 1, 1, 100),
(100023, 'Double-Duty Face Moisturizer Broad Spectrum SPF 20', 'A lightweight, multitasking daily moisturizer that acts as a broad-spectrum sunscreen and an advanced facial treatment.', 'jackblack_doubledutysunblock.jpg', 1400, '3.30z', 'Jack Black', 1, 2, 100),
(100024, 'Dry Erase® Ultra-Calming Face Cream', 'A non-greasy cream that provides immediate and lasting moisturization for dry skin, calms sensitive skin, and helps reduce redness and irritation.', 'jackblack_dryerasecream.jpg', 1900, '2.5oz', 'Jack Black', 1, 3, 100),
(100025, 'Eye Balm De-Puffing & Cooling Gel', 'An antiaging rollerball that cools and massages the delicate eye area.', 'jackblack_eyebalm.jpg', 1250, '16g', 'Jack Black', 1, 4, 100),
(100026, 'Epic Moisture™ Extra Rich Body Hydrator', 'A rich body lotion that offers intensive hydration with a lightweight texture.', 'jackblack_epichydrator.jpg', 1600, '12oz', 'Jack Black', 2, 7, 100),
(100027, 'Epic Moisture™ MP10™ Nourishing Oil', 'A sheer, multitasking oil that provides immediate benefits to skin and hair.', 'jackblack_epicnourishingoil.jpg', 1600, '2oz', 'Jack Black', 2, 7, 100),
(100028, 'Beard Lube® Conditioning Shave', 'This all-in-one, revolutionary shave formula is a pre-shave oil, shave cream, and skin conditioner.', 'jackblack_beardlube.jpg', 850, '6oz', 'Jack Black', 4, 0, 100),
(100029, 'Clay Pomade', 'A clay pomade that delivers buildable control and a lasting yet pliable hold for perfectly textured hair.', 'jackblack_claypomade.jpg', 1100, '2.75oz', 'Jack Black', 4, 0, 100),
(100030, 'Soap on a Rope Turbo Body Bar® Scrubbing Soap', 'An energizing, deep-cleansing bar that scrubs away dirt and exfoliates the body for clean, smooth, healthy skin.', 'jackblack_soaponrope.jpg', 750, '3oz', 'Jack Black', 2, 6, 100),
(100031, 'Shampoo with Papyrus Milk', 'A shampoo infused with papyrus milk to gently cleanse and tame unruly hair.', 'klorane_papyrusshampoo.jpg', 1000, '200ml', 'Klorane', 2, 5, 100),
(100032, 'Maple Anti-Ageing Cream for Men Face and Eyes', 'A light textured and non-greasy antiaging cream with energizing and nourishing maple extract.', 'korres_eyecream.jpg', 1750, '1.69oz', 'Korres', 1, 4, 100),
(100033, 'Vetiver Root Shower Gel', 'An ultra-moisturizing and warmly scented shower gel.', 'korres_vetivershowergel.jpg', 950, '8.45oz', 'Korres', 2, 6, 100),
(100034, 'Cedrat Deodorant', 'An alcohol- and aluminum-free deodorant for men with the energizing scent of organic cedrat extract from Corsica.', 'loccitane_cedratdeo.jpg', 1000, '2.6oz', 'L’Occitane', 2, 8, 100),
(100035, 'Power K Eye Rescue', 'A powerful eye treatment that visibly brightens eyes and reduces the appearance of dark circles and fine lines.', 'peterthomasroth_eyerescue.jpg', 5000, '0.5oz', 'Peter Thomas Roth', 1, 4, 100),
(100036, 'Cucumber De-tox™ Foaming Cleanser', 'A gentle foaming cleanser that purifies and detoxifies skin of impurities and environmental pollutants.', 'peterthomasroth_cucumbercleanser.jpg', 1750, '6.7oz', 'Peter Thomas Roth', 1, 1, 100),
(100037, 'Mega-Rich™ Shampoo', 'A vitamin-infused shampoo for clean, shiny, nourished, healthy-looking hair.', 'peterthomasroth_megarichshampoo.jpg', 900, '8.5oz', 'Peter Thomas Roth', 2, 5, 100),
(100038, 'Un-Wrinkle Eye', 'An advanced deep wrinkle and eye expression line concentrate that leaves eyes appearing firmer.', 'peterthomasroth_unwrinkleeyecream.jpg', 5000, '0.5oz', 'Peter Thomas Roth', 1, 4, 100),
(100039, 'Mega-Rich™ Body Lotion', 'A mega-effective body lotion enriched with vitamins C, E, and pro vitamin B5.', 'peterthomasroth_megarichlotion.jpg', 900, '8oz', 'Peter Thomas Roth', 2, 7, 100),
(100040, 'Phytocyane Densifying Treatment Shampoo', 'A revitalizing shampoo formulated to address temporary thinning caused by stress, fatigue, pregnancy, medication, or seasonal changes.', 'phyto_densifyingshampoo.jpg', 1300, '6.7oz', 'Phyto', 2, 5, 100),
(100041, 'Moustache Wax', 'A mustache wax that shapes and styles mustaches, from a natural style to a handlebar.', 'proraso_moustachewax.jpg', 600, '0.5oz', 'Proraso', 4, 0, 100),
(100042, 'Polo Black', 'This modern, daring fragrance is a bold fusion of iced mango, silver armoise, and patchouli noir. Modern. Daring. Bold.', 'ralphlauren_poloblackcologne.jpg', 3400, '2.5oz', 'Ralph Lauren', 3, 0, 100),
(100043, 'Polo Blue Body Spray Deodorant', 'Polo Blue evokes a feeling of the freedom of the big, blue sky and the energy of the open waters, combined with an invigorating blast of fresh air.', 'ralphlauren_bluespraydeo.jpg', 1150, '6oz', 'Ralph Lauren', 2, 8, 100),
(100044, 'Scalp Shampoo', 'A clarifying shampoo formulated to maintain balance of the hair and scalp and to counteract the effects of dry skin.', 'sachajuan_scalpshampoo.jpg', 1400, '8.4oz', 'Sachajuan', 2, 5, 100),
(100045, 'Urban Environment UV Protection Cream Broad Spectrum SPF 40 For Face/Body', 'A feather-light daily cream sunscreen that shields the skin to fight unavoidable environmental aggressors.', 'shiseido_urbansunblock.jpg', 1650, '56ml', 'Shiseido', 1, 2, 100),
(100046, 'Shaving Cream - Sandalwood', 'An advanced shaving cream for normal-to-dry skin with a rich, protective lather that prevents irritation and leaves skin with a delicate sandalwood scent.', 'theartofshaving_shavingcream.jpg', 1250, '5oz', 'The Art of Shaving', 4, 0, 100),
(100047, 'Exfoliating Energy Scrub', 'A face scrub that removes dead skin cells and unclogs pores for clean and energized skin.', 'tomford_energyscrub.jpg', 2400, '100ml', 'Tom Ford', 1, 1, 100),
(100048, 'Ombré Leather', 'A voluptuous fragrance of contrasts inspired by the 2016 fashion season runway.', 'tomford_ombrecologne.jpg', 11250, '50ml', 'Tom Ford', 3, 0, 100),
(100049, 'Tobacco Vanille', 'This reinvention of a classic fragrance genre fuses creamy tonka bean, vanilla, cocoa, dry fruit accords, and sweet wood sap.', 'tomford_tobaccocologne.jpg', 11250, '50ml', 'Tom Ford', 3, 0, 100),
(100050, 'Neroli Portofino Shower Gel', 'Vibrant. Sparkling. Transportive. To Tom Ford, this scent perfectly captures the cool breezes, sparkling clear water, and lush foliage of the Italian Riviera.', 'tomford_portofinoshowergel.jpg', 3350, '250ml', 'Tom Ford', 2, 6, 100),
(100051, 'Neroli Portofino Body Moisturizer', 'Vibrant. Sparkling. Transportive. To Tom Ford, this scent perfectly captures the cool breezes, sparkling clear water, and lush foliage of the Italian Riviera.', 'tomford_portofinobodymoisturizer.jpg', 3350, '150ml', 'Tom Ford', 2, 7, 100),
(100052, 'Dylan Blue', 'A new and exquisite fragrance that evokes the Mediterranean with citrus, aquatic notes, violet leaves, and modern hints of fig leaves.', 'versace_dylanbluecologne.jpg', 3250, '50ml', 'Versace', 3, 0, 100);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `id_number` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `first_name`, `id_number`, `user_id`) VALUES
(1, 'George', 1234, 2);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(11) NOT NULL,
  `subcategory_type` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `subcategory_type`, `category_id`) VALUES
(1, 'Facial Cleanser & Scrub', 1),
(2, 'Sun Care', 1),
(3, 'Toner/Moisturizer', 1),
(4, 'Eye Care', 1),
(5, 'Shampoo and Conditioner', 2),
(6, 'Body Wash', 2),
(7, 'Moisturizers', 2),
(8, 'Deodorants', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email_ad` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email_ad`, `password`, `role`) VALUES
(1, 'vince.pleyto@gmail.com', '9b50d1f90e62bf2b07ce4a2c12ae735ccb4c3d05', 'customer'),
(2, 'staff@gmail.com', '6ccb4b7c39a6e77f76ecfa935a855c6c46ad5611', 'staff'),
(5, 'pj@email.com', 'ec2be217533eb16cce466e77a591a62af2c9b569', 'customer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`email_ad`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100053;
--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `order_item_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `order_item_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
