-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2022 at 03:49 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce_systemdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `line1` varchar(255) DEFAULT NULL,
  `line2` varchar(255) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(1, 'TWICE MERCH'),
(2, 'BLACKPINK MERCH'),
(3, 'SEVENTEEN MERCH');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`) VALUES
(0, 2),
(0, 2),
(0, 2),
(0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders_details`
--

CREATE TABLE `orders_details` (
  `id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(10) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders_details`
--

INSERT INTO `orders_details` (`id`, `order_id`, `product_id`, `quantity`) VALUES
(0, 0, 2, 1),
(0, 0, 1, 1),
(0, 0, 2, 2),
(0, 0, 26, 1),
(0, 0, 5, 1000),
(0, 0, 54, 5),
(0, 0, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `images` text DEFAULT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL,
  `quantity` int(10) NOT NULL,
  `short_desc` varchar(255) NOT NULL,
  `cat_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `image`, `images`, `description`, `price`, `quantity`, `short_desc`, `cat_id`) VALUES
(1, 'TWICE CANDY BONG LIGHTSTICK', 'http://cdn.shopify.com/s/files/1/0327/2418/9322/products/H8dbbd6695e2842bfbc2388cdbd245d89T_1200x1200.jpg?v=1599724183', 'http://cdn.shopify.com/s/files/1/0327/2418/9322/products/H8dbbd6695e2842bfbc2388cdbd245d89T_1200x1200.jpg?v=1599724183', 'Candy Bong is Twice\'s official light stick. The idea of the \"Candy Bong\" was inspired from one of Twice\'s tracks \"Candy Boy\" from their debut mini-album \"The Story Begins\".', 2340, 46, 'TWICE OFFICIAL LIGHTSTICK', 1),
(2, 'SEVENTEEN ATTACCA ALBUM', 'https://d3i908zd4kzakt.cloudfront.net/data/item/1657264959/009001013440.jpg                                ', 'https://d3i908zd4kzakt.cloudfront.net/data/item/1657264959/009001013440.jpg                           ', 'It\'s a description that \'Attacca\' mostly lives up to, a record largely defined by the group\'s venture into a pop-punk sound as a representation of their growth as artists.', 989, 10, 'SEVENTEEN ALBUM', 3),
(3, 'TWICE FORMULA OF LOVE ALBUM', 'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1636554227-31c2J0fFccL._SL500_.jpg', 'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1636554227-31c2J0fFccL._SL500_.jpg', 'Formula of Love: O+T=<3 is a fifteen-track album that features genres such as city pop, dance-pop, deep house, disco, hip hop, Latin pop, nu-disco, reggaeton, and R&B. Twice members Nayeon, Jihyo, Dahyun, and Chaeyoung took part in writing some songs from the album.', 980, 50, 'TWICE ALBUM', 1),
(4, 'TWICE MORE & MORE HOODIE', 'https://m.media-amazon.com/images/I/41mHxiGNy2L._AC_SY1000_.jpg', 'https://m.media-amazon.com/images/I/41mHxiGNy2L._AC_SY1000_.jpg', 'Twice Hoodie More & More version', 500, 10, 'TWICE HOODIE', 1),
(5, 'TWICE - DAHYUN PHOTOBOOK', 'https://i.ebayimg.com/images/g/B1sAAOSwbEFiD2lB/s-l500.jpg', 'https://i.ebayimg.com/images/g/B1sAAOSwbEFiD2lB/s-l500.jpg', 'Official and Authentic.Korean Press. Limited Edition and Out of Production. TWICE Dahyun\'s Photobook.', 1099.99, 50, 'TWICE PHOTOBOOK', NULL),
(6, 'TWICE ID LACE LANYARD', 'https://cf.shopee.ph/file/0ba774e41dd847dced955661d1beb5ac', 'https://cf.shopee.ph/file/0ba774e41dd847dced955661d1beb5ac', 'TWICE lanyard (Unofficial) | Kpop ID lace | ID Holder', 100, 20, 'TWICE ID LACE', 1),
(7, 'BLACKPINK SQUARE UP ALBUM', 'https://http2.mlstatic.com/D_NQ_NP_727297-MLM50331745858_062022-O.webp', 'https://http2.mlstatic.com/D_NQ_NP_727297-MLM50331745858_062022-O.webp', 'Square Up is the first Korean extended play by South Korean girl group Blackpink, released on June 15, 2018 by YG Entertainment. It is available in two versions and contains four tracks, with \"Ddu-Du Ddu-Du\" released as the lead single.', 900, 20, 'BLACKPINK OFFICIAL ALBUM', 2),
(8, 'BLACKPINK BACKPACK', 'https://i.ebayimg.com/images/g/4CYAAOSw53VhJMPa/s-l500.jpg', 'https://i.ebayimg.com/images/g/4CYAAOSw53VhJMPa/s-l500.jpg', 'KPOP Blackpink Backpack | School Bag | Shoulder Bag |  Lisa | Jisoo | Jennie | Rose', 550, 10, 'BLACKPINK BAG', 2),
(9, 'BLACKPINK OFFICIAL HAMMER BONG', 'https://ph-live-01.slatic.net/p/97ceaa2b9392d218c71c34c1494c3ed4.jpg', 'https://ph-live-01.slatic.net/p/97ceaa2b9392d218c71c34c1494c3ed4.jpg', 'BLACKPINK OFFICIAL HAMMER BONG LIGHTSTICK', 1000, 50, 'BLACKPINK LIGHTSTICK', 2),
(10, 'BLACKPINK SHIRT', 'https://cf.shopee.ph/file/aab3a0d802d24f3feec5fdee4bf38c85', 'https://cf.shopee.ph/file/aab3a0d802d24f3feec5fdee4bf38c85', 'Blackpink T-shirt | Tee | Unofficial', 250, 10, 'BLACKPINK SHIRT', 2),
(11, 'BLACKPINK HAT', 'https://i.etsystatic.com/30964081/r/il/32fa3d/3963135252/il_500x500.3963135252_ifjh.jpg', 'https://i.etsystatic.com/30964081/r/il/32fa3d/3963135252/il_500x500.3963135252_ifjh.jpg', 'Blackpink Unofficial Hat | Bucket Hat', 300, 20, 'BLACKPINK HAT', 2),
(12, 'SEVENTEEN CARAT BONG', 'https://cf.shopee.ph/file/40bb1976889c3ef9ac0c35954daf5fb1', 'https://cf.shopee.ph/file/40bb1976889c3ef9ac0c35954daf5fb1', 'The lightsticks, also known as \'Carat Bongs\', have been altered via the large clear dome at the top, which lights up via an app.', 900, 50, 'SEVENTEEN LIGHTSTICK', 3),
(13, 'SEVENTEEN PHONE CASE', 'https://media.karousell.com/media/photos/products/2020/6/26/seventeen_phone_case_1593194732_3f390ff6_progressive', 'https://media.karousell.com/media/photos/products/2020/6/26/seventeen_phone_case_1593194732_3f390ff6_progressive', 'Seventeen Phone Case | Unofficial', 150, 20, 'SEVENTEEN PHONE CASE', 3),
(14, 'SEVENTEEN SOCIAL CLUB : CARAT PHOTOBOOK', 'https://oppastore.ph/web/product/big/202109/cdf638708636a1c1182bbbb7f7e84625.jpg', 'https://oppastore.ph/web/product/big/202109/cdf638708636a1c1182bbbb7f7e84625.jpg', 'Seventeen Photobook Social Club : Carat Version', 900, 50, 'SEVENTEEN PHOTOBOOK', 3),
(15, 'SEVENTEEN BONGBONG FLUSHIE', 'https://images.tokopedia.net/img/cache/500-square/product-1/2020/8/1/109471888/109471888_b072a591-c21e-4904-a469-9c837edce9de_612_452.jpg', 'https://images.tokopedia.net/img/cache/500-square/product-1/2020/8/1/109471888/109471888_b072a591-c21e-4904-a469-9c837edce9de_612_452.jpg', 'Seventeen Bongbong Flushie Unofficial', 99.99, 5, 'SEVENTEEN FLUSHIE', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `full_name` varchar(255) DEFAULT 'not set',
  `age` int(10) DEFAULT 18,
  `role` int(10) DEFAULT 555,
  `photoUrl` text DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'local'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`, `full_name`, `age`, `role`, `photoUrl`, `type`) VALUES
(2, '', 'dabdd3c1a28bd7a31632079ac839872f', 'loysaaaqt@gmail.com', 'Eloisa Senga', 18, 555, NULL, 'local'),
(3, '', 'e10adc3949ba59abbe56e057f20f883e', 'leelo@gmail.com', 'Lee Rica Marie Antonette Rhod Malapoks Bilat', 18, 555, NULL, 'local');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
