-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2026 at 02:11 PM
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
-- Database: `zypp`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_prices`
--

CREATE TABLE `book_prices` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `platform` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `purchase_url` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_prices`
--

INSERT INTO `book_prices` (`id`, `product_id`, `platform`, `price`, `purchase_url`) VALUES
(12, 1, 'Amazon', 149.00, 'https://www.amazon.in/Inspirational-Self-Discovery-Motivational-Unreadgems-Collection/dp/B0H5TBTNX7/ref=asc_df_B0H5TBTNX7?mcid=37f99d54e89f310cbc9cd095b0610afc&tag=googleshopdes-21&linkCode=df0&hvadid=709963367264&hvpos=&hvnetw=g&hvrand=2996702696300999916&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9062135&hvtargid=pla-2489770821023&psc=1&hvocijid=2996702696300999916-B0H5TBTNX7-&hvexpln=0&gad_source=1'),
(13, 1, 'Flipkart', 301.00, 'https://www.flipkart.com/the-alchemist/p/itmfc9jxsc7dckfm'),
(14, 1, 'Bookswagon', 371.00, 'https://www.bookswagon.com/book/alchemist-paulo-coelho/9780008144227?utm_source=google&utm_medium=cpc&utm_campaign={campaignname}&gad_source=1&gad_campaignid=23558482925&gbraid=0AAAAAoKv8538DI_z9QJK5UhY7AU3Kjutu&gclid=CjwKCAjwu53SBhAhEiwAJzSLNnuP91-fhnEc1jRKN5eAGPOV_y0X6FkpPeFyFITQMrgqci6Gazhd8RoC7U4QAvD_BwE'),
(72, 3, 'Amazon', 179.00, 'https://www.amazon.in/Dont-Believe-Everything-You-Think/dp/935543135X?s=bazaar'),
(73, 3, 'Flipkart', 247.00, 'https://www.flipkart.com/don-t-believe-everything-you-think/p/itm6dfd64646cf55'),
(74, 3, 'Bookswagon', 215.00, 'https://www.bookswagon.com/book/dont-believe-everything-you-think/9789355431356?srsltid=AfmBOopLnXSZjRQrMPFiCj6cjdqS3UwYtA-QTWv_Gha2m87mQZpqoNQS'),
(75, 4, 'Amazon', 274.00, 'https://www.amazon.in/Finish-What-You-Start-Self-Discipline-ebook/dp/B07BJ88DCW'),
(76, 4, 'Flipkart', 123.00, 'https://www.flipkart.com/finish-you-start-art-following-through-taking-action-executing-self-discipline/p/itmbb4ac646296de'),
(77, 4, 'Bookswagon', 219.00, 'https://bookstech.in/products/finish-what-you-start-paperback-by-ollins?variant=40868162142252&country=IN&currency=INR&utm_medium=product_sync&utm_source=google&utm_content=sag_organic&utm_campaign=sag_organic&gad_source=1&gad_campaignid=22367193331&gbraid=0AAAAAoWagaierDjGl5n0mKPxFycsDpF0N&gclid=Cj0KCQjwguLSBhDLARIsAH-yPrHkqQ6wqc8tmVHk53ev_T4JrDq-ED0aKwn_-7VOJodV_zmMk6PokAwaAtAREALw_wcB'),
(78, 5, 'Amazon', 270.00, 'https://www.amazon.in/s?k=books+how+to+talk+to+anyone&adgrpid=65749941784&gad_source=1&hvadid=590449361252&hvdev=c&hvexpln=0&hvlocphy=9302490&hvnetw=g&hvocijid=3772473921083216682--&hvqmt=b&hvrand=3772473921083216682&hvtargid=kwd-427293533252&hydadcr=8211_2244706&mcid=d7f9059478ee3870b1905d23357ac142&tag=googinhydr1-21&ref=pd_sl_793hlxs3j0_b'),
(79, 5, 'Flipkart', 247.00, 'https://www.flipkart.com/how-to-talk-to-anyone/p/itmf4mdepcjzgsvj'),
(80, 5, 'Bookswagon', 284.00, 'https://www.bookswagon.com/search-books/how-to-talk-to-anyone?srsltid=AfmBOooKpT-6sLIuSwx1hslR2A9oNc6zwzL2xCou1EG00BvCHL8UmTAW'),
(81, 6, 'Amazon', 217.00, 'https://www.amazon.in/s?k=i+don%27t+love+you+anymore&adgrpid=59411144535&gad_source=1&hvadid=590261157528&hvdev=c&hvexpln=0&hvlocphy=9302490&hvnetw=g&hvocijid=3835627021095765692--&hvqmt=e&hvrand=3835627021095765692&hvtargid=kwd-300509967800&hydadcr=20314_2209447&mcid=91054abe15e33d0fa9f911846209cc75&tag=googinhydr1-21&ref=pd_sl_ezemc88ww_e'),
(82, 6, 'Flipkart', 217.00, 'https://www.flipkart.com/don-t-love-you-anymore-soul-stirring-tale-love-loss-healing/p/itm6a51b5d2a72c4'),
(83, 6, 'Bookswagon', 206.00, 'https://www.bookswagon.com/book/i-dont-love-you-anymore/9780143469131?utm_source=google&utm_medium=cpc&utm_campaign={campaignname}&gad_source=1&gad_campaignid=23056568600&gbraid=0AAAAAoKv852le5R2DNpCv-IbEqkSqmr5R&gclid=Cj0KCQjwguLSBhDLARIsAH-yPrFJO5aFVSYImq4s5RZB3TNYoytzCye3dB4mQENR_-zG0Bre2DrjySwaAu6VEALw_wcB'),
(84, 7, 'Amazon', 394.00, 'https://www.amazon.in/Meet-Me-Lake-Carley-Fortune/dp/0349433119/ref=asc_df_0349433119?mcid=81e144670a7c3a0bba5016a549d00395&tag=googleshopdes-21&linkCode=df0&hvadid=709963366958&hvpos=&hvnetw=g&hvrand=8274912633814040798&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9302490&hvtargid=pla-1880243286123&psc=1&hvocijid=8274912633814040798-0349433119-&hvexpln=0&gad_source=1'),
(85, 7, 'Flipkart', 255.00, 'https://www.flipkart.com/meet-me-lake-breathtaking-new-novel-author-every-summer-after/p/itmcda6ff1fba53a'),
(86, 7, 'Bookswagon', 1083.00, 'https://www.bookswagon.com/book/meet-me-at-lake-carley/9780593438558?utm_source=google&utm_medium=cpc&utm_campaign={campaignname}&gad_source=1&gad_campaignid=23056568600&gbraid=0AAAAAoKv852le5R2DNpCv-IbEqkSqmr5R&gclid=Cj0KCQjwguLSBhDLARIsAH-yPrESg5lzAAoA4Y9baEnUdIihQ7juPaIdrRHDue9IC0rw1SuKYcQ5Nu8aAksSEALw_wcB'),
(87, 8, 'Amazon', 690.00, 'https://www.amazon.in/Diary-CEO-Laws-Business-Life/dp/1529146518/ref=asc_df_1529146518?mcid=064cc3189a5e379a9ec02cf3b08ce4de&tag=googleshopdes-21&linkCode=df0&hvadid=709881838927&hvpos=&hvnetw=g&hvrand=4807975879091699674&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9302490&hvtargid=pla-2196113048076&psc=1&hvocijid=4807975879091699674-1529146518-&hvexpln=0&gad_source=1'),
(88, 8, 'Flipkart', 203.00, 'https://www.flipkart.com/the-diary-of-a-ceo/p/itme18de8bd45ae'),
(89, 8, 'Bookswagon', 482.00, 'https://www.bookswagon.com/book/diary-a-ceo-steven-bartlett/9781529146523?utm_source=google&utm_medium=cpc&utm_campaign={campaignname}&gad_source=1&gad_campaignid=23558482925&gbraid=0AAAAAoKv853I3vp4rbdWdrorgASbY0QSF&gclid=Cj0KCQjwguLSBhDLARIsAH-yPrF0rrmxHF2TzlrNt6fklGMMi9Eu_8p6dsDtNwTZVn24mt7t3fmXnHMaAjWaEALw_wcB'),
(90, 9, 'Amazon', 319.00, 'https://www.amazon.in/Fault-our-Stars-John-Green/dp/0141345659?s=bazaar'),
(91, 9, 'Flipkart', 276.00, 'https://www.flipkart.com/fault-our-stars/p/itmfc3vjrhncy9ub'),
(92, 9, 'Bookswagon', 329.00, 'https://www.bookswagon.com/book/fault-in-our-stars-john/9780141345659?utm_source=google&utm_medium=cpc&utm_campaign={campaignname}&gad_source=1&gad_campaignid=23558380997&gbraid=0AAAAAoKv852jT63OZxeZWtw4EBLu1X6nC&gclid=Cj0KCQjwguLSBhDLARIsAH-yPrHUNP4MITDE_PN3G3CYn7JOa0k2unGELiih23tCHCTIHx_utooYP9YaAgM7EALw_wcB'),
(93, 10, 'Amazon', 399.00, 'hhttps://www.amazon.in/Lean-Startuppppp-Business-Book-Startup/dp/B0H58WJCYN/ref=asc_df_B0H58WJCYN?mcid=32a74b0f75ce347fa42d2fba116ed33a&tag=googleshopdes-21&linkCode=df0&hvadid=714203142852&hvpos=&hvnetw=g&hvrand=16226356988108908459&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9302490&hvtargid=pla-2487640092430&psc=1&hvocijid=16226356988108908459-B0H58WJCYN-&hvexpln=0&gad_source=1r'),
(94, 10, 'Flipkart', 156.00, 'https://www.flipkart.com/lean-startup-paperback-ries-eric-paperback-eric/p/itm0448f1545ac4e?pid=RBKFYYC5WMUZCAJP&lid=LSTRBKFYYC5WMUZCAJPMKZXBL&hl_lid=&marketplace=FLIPKART&fm=eyJ3dHAiOiJyZWNvIiwicHJwdCI6InBwIiwibWlkIjoicHJvZHVjdFJlY29tbWVuZGF0aW9uL3NpbWlsYXIifQ%3D%3D&pageUID=1784268238148'),
(95, 10, 'Bookswagon', 699.00, 'https://www.bookswagon.com/book/lean-startup-eric-ries/9780670921607?utm_source=google&utm_medium=cpc&utm_campaign={campaignname}&gad_source=1&gad_campaignid=23558482925&gbraid=0AAAAAoKv853I3vp4rbdWdrorgASbY0QSF&gclid=Cj0KCQjwguLSBhDLARIsAH-yPrHhjAHgQfvw0mYR2hY7BD-8K2QTXQLzadxyiLdoEmSyKhPRrpvMj-kaAs8qEALw_wcB'),
(96, 11, 'Amazon', 499.00, 'https://www.amazon.in/Let-Them-Theory-Life-Changing-Millions/dp/9366117864/ref=asc_df_9366117864?mcid=fb82d55b1e013355888754c102959de0&tag=googleshopdes-21&linkCode=df0&hvadid=709994847726&hvpos=&hvnetw=g&hvrand=13757654910750186844&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9302490&hvtargid=pla-2388368311082&psc=1&hvocijid=13757654910750186844-9366117864-&hvexpln=0&gad_source=1'),
(97, 11, 'Flipkart', 495.00, 'https://www.flipkart.com/let-them-theory-life-changing-tool-millions-people-can-t-stop-talking/p/itmf2d7b95d50ad5'),
(98, 11, 'Bookswagon', 559.00, 'https://www.bookswagon.com/book/let-them-theory-mel-robbins/9789366117867?utm_source=google&utm_medium=cpc&utm_campaign={campaignname}&gad_source=1&gad_campaignid=23558380997&gbraid=0AAAAAoKv852jT63OZxeZWtw4EBLu1X6nC&gclid=Cj0KCQjwguLSBhDLARIsAH-yPrF5TXiapiF6efgDD8SotLjl5YJDFI9LinhvrhX-XkK_UFB-THcYEL8aAiLlEALw_wcB'),
(99, 12, 'Amazon', 285.00, 'https://www.amazon.in/Psychology-Money-Happiness-International-Bestseller/dp/B0GM8X2W7N/ref=asc_df_B0GM8X2W7N?mcid=c32a2b21daf935e282900573d67dce2e&tag=googleshopdes-21&linkCode=df0&hvadid=784625371384&hvpos=&hvnetw=g&hvrand=3332208508828269913&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9302490&hvtargid=pla-2480208293485&psc=1&hvocijid=3332208508828269913-B0GM8X2W7N-&hvexpln=0&gad_source=1'),
(100, 12, 'Flipkart', 287.00, 'https://www.flipkart.com/the-psychology-of-money/p/itm9399e3b814533'),
(101, 12, 'Bookswagon', 275.00, 'https://www.bookswagon.com/book/psychology-money-morgan-housel/9789390166268?utm_source=google&utm_medium=cpc&utm_campaign={campaignname}&gad_source=1&gad_campaignid=23558482925&gbraid=0AAAAAoKv853I3vp4rbdWdrorgASbY0QSF&gclid=Cj0KCQjwguLSBhDLARIsAH-yPrHugsiES30BbjDBT_Dbud7PvFpzHfAk7ZwqeRdQwYhB0oUSrjRbniUaAg_HEALw_wcB'),
(102, 13, 'Amazon', 212.00, 'https://www.amazon.in/Can-We-Strangers-Again-bittersweet/dp/0143475924/ref=asc_df_0143475924?mcid=0a7b41e840183008973086115685adfc&tag=googleshopdes-21&linkCode=df0&hvadid=709963366958&hvpos=&hvnetw=g&hvrand=5606169100374134164&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9302490&hvtargid=pla-2404041943339&psc=1&hvocijid=5606169100374134164-0143475924-&hvexpln=0&gad_source=1'),
(103, 13, 'Flipkart', 216.00, 'https://www.flipkart.com/can-strangers-again-national-bestseller/p/itm60e757cf19bea'),
(104, 13, 'Bookswagon', 206.00, 'https://www.bookswagon.com/book/can-we-strangers-again-shrijeet/9780143475927?utm_source=google&utm_medium=cpc&utm_campaign={campaignname}&gad_source=1&gad_campaignid=23558380997&gbraid=0AAAAAoKv852jT63OZxeZWtw4EBLu1X6nC&gclid=Cj0KCQjwguLSBhDLARIsAH-yPrG0W_5oqhJhmG_Bv93rnGnK2bqiy45vzcwrFzdzfq-WjpJWBVi4HpkaAnu6EALw_wcB'),
(105, 14, 'Amazon', 99.00, 'https://www.amazon.in/Self-Belief-Self-Help-Motivation-Personal-Paperback/dp/9389931843'),
(106, 14, 'Flipkart', 108.00, 'https://www.google.com/search?q=you+can+by+george+matthew+adams&sca_esv=11e9ec88c1770927&sxsrf=APpeQntQIriMW7dbwVUHGyA9leC-pV6r0A%3A1784268608198&ei=QMdZap_UC5CVg8UP4ou2oAU&oq=you+can+by+geo&gs_lp=Egxnd3Mtd2l6LXNlcnAiDnlvdSBjYW4gYnkgZ2VvKgIIADIFEAAYgAQyBRAAGIAEMgUQABiABDIKEAAYgAQYFBiHAjIFEAAYgAQyBRAAGIAEMgUQABiABDIFEAAYgAQyBRAAGIAEMgUQABiABEiXH1DxA1jWFXACeACQAQCYAfcBoAH_CaoBBTAuNi4xuAEDyAEA-AEBmAIIoALtCMICChAAGEcY1gQYsAPCAg0QABiABBiKBRhDGLADwgIOEAAY5AIY1gQYsAPYAQHCAhcQLhjcBhi4BhjaBhjYAhjIAxiwA9g'),
(107, 14, 'Bookswagon', 247.00, 'https://www.bookswagon.com/book/you-can-george-matthew-adams/9788195954308?srsltid=AfmBOood2xnaRyUQ43vo3v5zSHn7nHVwdE5XhqFyTZ9OL_xiVzQ6g7uF'),
(108, 15, 'Amazon', 424.00, 'https://www.amazon.in/Our-Missing-Hearts-courage-Sunday/dp/0349145164?s=bazaar'),
(109, 15, 'Flipkart', 2240.00, 'https://www.flipkart.com/our-missing-hearts/p/itmf1d862f9be144'),
(110, 15, 'Bookswagon', 909.00, 'https://www.bookswagon.com/book/our-missing-hearts-celeste-ng/9780349145167?srsltid=AfmBOoos1hrPrxGJ1lCP1GTQ6YGty9dzkC53Qk0WyMtTlrb27GEwwEXf'),
(147, 17, 'Amazon', 349.00, 'https://www.amazon.in/Everything-ucked-Book-about-Hope/dp/B0DZNGF3YZ/ref=tmm_pap_swatch_0'),
(148, 17, 'Flipkart', 157.00, 'https://www.flipkart.com/everything-is-fucked/p/itm3f195cff9d32a?pid=RBKHHSMFXPCYRU4W&lid=LSTRBKHHSMFXPCYRU4WIYWHGX&hl_lid=&marketplace=FLIPKART&fm=eyJ3dHAiOiJyZWNvIiwicHJwdCI6InBwIiwibWlkIjoicHJvZHVjdFJlY29tbWVuZGF0aW9uL3NpbWlsYXIifQ%3D%3D&pageUID=1784270295365'),
(149, 17, 'Bookswagon', 341.00, 'https://www.bookswagon.com/book/everything-fucked-marc-manson/9780062955951?srsltid=AfmBOoqmGhZ0tW_Vm8eRizkek0wKeYHT9Y2Wp9ABhT4ICPCa4zI0e_xu'),
(150, 18, 'Amazon', 270.00, 'https://www.amazon.in/Overthinking-Mindset-Healing-Motivation-Psychology/dp/B0H631CSHN/ref=asc_df_B0H631CSHN?mcid=dc19f937b9d0353690e76f7efd73f07b&tag=googleshopdes-21&linkCode=df0&hvadid=709881838789&hvpos=&hvnetw=g&hvrand=16134977676184496508&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9302490&hvtargid=pla-2491051438728&psc=1&hvocijid=16134977676184496508-B0H631CSHN-&hvexpln=0&gad_source=1'),
(151, 18, 'Flipkart', 182.00, 'https://www.flipkart.com/art-being-alone-book/p/itme39bb6f7a9b80'),
(152, 18, 'Bookswagon', 221.00, 'https://www.bookswagon.com/book/art-being-alone-renuka-gavrani/9789355434029?utm_source=google&utm_medium=cpc&utm_campaign={campaignname}&gad_source=1&gad_campaignid=23558380997&gbraid=0AAAAAoKv852jT63OZxeZWtw4EBLu1X6nC&gclid=Cj0KCQjwguLSBhDLARIsAH-yPrE4vJ1HYzl5DAHnawCZGvjr9NIfyD7ZOxwYtkPOBSi47lDMKP1FZEIaAtO3EALw_wcB'),
(153, 19, 'Amazon', 1018.00, 'https://www.amazon.com/Help-Kathryn-Stockett/dp/0425232204/ref=tmm_pap_swatch_0'),
(154, 19, 'Flipkart', 3720.00, 'https://www.flipkart.com/the-help/p/itmfcy45jzmzmhp5'),
(155, 19, 'Bookswagon', 1451.00, 'https://www.bookswagon.com/book/help-kathryn-stockett/9781594133886?utm_source=google&utm_medium=cpc&utm_campaign={campaignname}&gad_source=1&gad_campaignid=23056568600&gbraid=0AAAAAoKv852le5R2DNpCv-IbEqkSqmr5R&gclid=Cj0KCQjwguLSBhDLARIsAH-yPrGKpJgPMqtJKpdd3P__iBlB34Bwk5IVjH7Vda8JkQfamhs8nltdy08aAnlHEALw_wcB'),
(156, 20, 'Amazon', 330.00, 'https://www.amazon.in/Subtle-Art-Not-Giving/dp/0062641549'),
(157, 20, 'Flipkart', 453.00, 'https://www.flipkart.com/subtle-art-not-giving-f-ck/p/itmepqjjcmduyzew?pid=9780063019720&lid=LSTBOK9780063019720EBN9RW&hl_lid=&marketplace=FLIPKART&fm=eyJ3dHAiOiJyZWNvIiwicHJwdCI6InBwIiwibWlkIjoiZmFjdEJhc2VkUmVjb21tZW5kYXRpb24vcmVjZW50bHlWaWV3ZWQifQ%3D%3D&pageUID=1784270834149'),
(158, 20, 'Bookswagon', 275.00, 'https://www.bookswagon.com/book/subtle-art-not-giving-a/9780062641540?srsltid=AfmBOoogc4sJI1MS6_fW_se5EWf5AoTplyUxWIbY-WXRMldo9PK4LX2q');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `description`, `image`, `created_at`) VALUES
(1, 'The Alchemist', 300.00, 'Inspirational novel', 'The Alchemist.jpeg', '2026-05-11 11:36:20'),
(3, 'Don\'t Believe Everything You Think', 450.00, 'Mindfulness and self-awareness book.', 'Don\'t Believe Everything You Think.jpeg', '2026-05-11 11:45:10'),
(4, 'Finish What You Start', 399.00, 'Guide to discipline and consistency.', 'Finish what you start.jpeg', '2026-05-11 11:45:57'),
(5, 'How To Talk To Anyone', 350.00, 'Communication and people skills book', 'How To Talk To Anyone.jpeg', '2026-05-11 11:46:23'),
(6, 'I Don\'t Love You Anymore', 299.00, 'Emotional healing and moving on.', 'I Don\'t Love You Anymore.jpeg', '2026-05-11 11:47:05'),
(7, 'Meet Me at the Lake', 499.00, 'Romantic fiction novel.', 'Meet me at the lake.jpeg', '2026-05-11 11:48:56'),
(8, 'The Diary of a CEO', 599.00, 'Business and life lessons.', 'The Diary of a CEO.jpeg', '2026-05-11 11:49:19'),
(9, 'The Fault In Our Stars', 399.00, 'Romantic novel by John Green.', 'The Fault In Our Stars.jpeg\r\n', '2026-05-11 11:50:04'),
(10, 'The Lean Startup', 550.00, 'Entrepreneurship and startup guide.', 'The Lean Startup.jpeg\r\n', '2026-05-11 11:50:34'),
(11, 'The Let Them Theory', 499.00, 'Self-growth and mindset book.', 'The let them theory.jpeg', '2026-05-11 11:51:02'),
(12, 'The Psychology of Money', 450.00, 'Personal finance and money psychology.', 'The Psychology of money.jpeg', '2026-05-11 11:51:25'),
(13, 'We Be Strangers Again', 349.00, 'Emotional romance novel.', 'We be Strangers Again.jpeg', '2026-05-11 11:52:07'),
(14, 'You Can', 299.00, 'Motivational self-help book.', 'You Can.jpeg', '2026-05-11 11:52:39'),
(15, 'Our Missing Hearts', 420.00, 'Novel about family and society.', 'Our Missing Hearts.jpeg', '2026-05-11 11:54:33'),
(17, 'Everything is F*cked', 450.00, 'A book about hope by Mark Manson.', 'Every thing is fucked.jpeg', '2026-05-11 12:07:20'),
(18, 'The Art Of Being Alone', 399.00, 'Book about solitude and self-growth.', 'The Art Of Being Alone.jpeg', '2026-05-11 12:07:57'),
(19, 'The Help', 420.00, 'Famous novel by Kathryn Stockett.', 'The help.jpeg', '2026-05-11 12:08:24'),
(20, 'The Subtle Art of Not Giving a F*ck', 499.00, 'Self-help book by Mark Manson.', 'The Subtle Art of Not Giving a Fuck.jpeg', '2026-05-11 12:08:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` enum('user','admin') DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `created_at`, `role`) VALUES
(1, '', 'pranavikantegari@gmail.com', '$2y$10$xhfbO2/LngAh1Y6JjOojUOms/GeTdDfKgYVn7GJxstLHjuIQVnoCO', '2026-05-05 20:02:46', 'user'),
(2, '', 'sumalathakantegari@gmail.com', '$2y$10$NClk0ZAsPLNs5GemqOwfA.Bgo9GQFfdwLVmnQZ7GA0Oh117iilx1a', '2026-05-27 16:32:42', 'user'),
(3, '', '22r21a66f6@mlrit.ac.in', '$2y$10$M/1bIJlTk0qNWNq6X/zdOe/GywyIjaOj/I9518BDndZ4KHViX75Nu', '2026-05-30 14:31:13', 'user'),
(4, '', 'srinivasrao@gmail.com', '$2y$10$7rUeXfQdjHwiQigzJviJuuntTSV7rHJAIPDhy2Htcxxf70quFtYT6', '2026-07-17 06:57:45', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_prices`
--
ALTER TABLE `book_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_prices`
--
ALTER TABLE `book_prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book_prices`
--
ALTER TABLE `book_prices`
  ADD CONSTRAINT `book_prices_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
