-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2021 at 05:28 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `published` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `user_id`, `topic_id`, `title`, `image`, `body`, `published`, `created_at`) VALUES
(52, 58, 10, 'Virtual  Titans Present - VALORANT TOURNAMENT', '1633917743_Desktop Screenshot 2021.10.11 - 09.52.25.88 (3).png', '&lt;h2&gt;Tournaments are open for BRUNEIANS only&lt;/h2&gt;&lt;h2&gt;Registration Date :&lt;/h2&gt;&lt;p&gt;&lt;strong&gt;10/10/2021 - 24/10/2021&lt;/strong&gt;&lt;/p&gt;&lt;h2&gt;Registration payment is :&lt;/h2&gt;&lt;p&gt;&lt;strong&gt;10$ per team&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;16 teams maximum&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Registration will be FIRST COME FIRST SERVE basis&lt;/strong&gt;&lt;/p&gt;&lt;h2&gt;Tournament Date :&lt;/h2&gt;&lt;p&gt;&lt;strong&gt;25/10/2021&lt;/strong&gt;&lt;/p&gt;&lt;h2&gt;Prize Pool :&amp;nbsp;&lt;/h2&gt;&lt;p&gt;&lt;strong&gt;$200 BND&lt;/strong&gt;&lt;/p&gt;', 1, '2021-10-11 10:02:23');

-- --------------------------------------------------------

--
-- Table structure for table `game_list`
--

CREATE TABLE `game_list` (
  `id` varchar(100) NOT NULL,
  `game_list` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `game_list`
--

INSERT INTO `game_list` (`id`, `game_list`) VALUES
('1', 'DOTA'),
('2', 'CS:GO'),
('3', 'League of Legends');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(6) NOT NULL,
  `txnid` varchar(20) NOT NULL,
  `payment_amount` decimal(7,2) NOT NULL,
  `payment_status` varchar(25) NOT NULL,
  `itemid` varchar(25) NOT NULL,
  `createdtime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `published` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `topic_id`, `title`, `image`, `body`, `published`, `created_at`) VALUES
(55, 58, 11, 'Effectively using smokes in VALORANT', '1633868454_post1.PNG', '&lt;h2&gt;In competitive VALORANT, smokes can be the difference maker. But who has the best smokes and where should you be placing them?&lt;/h2&gt;&lt;p&gt;&lt;strong&gt;VALORANT Agents are divided into four main categories: duelists, controllers, sentinels, and initiators. The ability to drop &lsquo;smokes&rsquo; stretches across almost all of these different roles but primarily falls to the controllers and sentinels. These agents may not have flashy abilities, but their contributions give their team map control and space. In competitive VALORANT, a well placed smoke can be the difference maker between a round win or loss. With some many smoke Agents, as well as places to smoke, using smokes effectively can be difficult.&lt;/strong&gt;&lt;/p&gt;&lt;h2&gt;Which Agents are the best smokers?&lt;/h2&gt;&lt;p&gt;&lt;strong&gt;Every smoke Agent has their own unique take on the ability. Whether it be range, duration, or even color there is some distinction between all playable smokers.&lt;/strong&gt;&lt;/p&gt;&lt;ol&gt;&lt;li&gt;&lt;strong&gt;Brimstone&amp;nbsp;is one of the best smokers in VALORANT and a great place to start for players looking to master controller Agents. Brimstone&rsquo;s has three, fairly high ranged smokes that you can drop from above. The benefit of Brimstone is that his&amp;nbsp;Sky Smoke gives an overhead perspective of the map, making his smokes some of the most precise in VALORANT.&lt;/strong&gt;&lt;/li&gt;&lt;li&gt;&lt;strong&gt;Omen&amp;nbsp;is another viable smoke Agent. Also a controller, Omen allows for a little more play-making ability. His teleport and blinding ability make him more self-sufficient though come at the cost of his smokes.&amp;nbsp;Dark Cover&amp;nbsp;has only two charges and has a slightly below average duration. Omen&rsquo;s other abilities are useful in supplementing his smokes, making him more flexible in gaining ground.&lt;/strong&gt;&lt;/li&gt;&lt;li&gt;&lt;strong&gt;&amp;nbsp;Perhaps the most &lsquo;complex&rsquo; smoker Agent is&amp;nbsp;Astra. Astra&rsquo;s star system may appear daunting at first, but after mastery can be the most effective among other smoker. The five star charges can guarantee a max of five smokes on the map, however her other two abilities are just as effective in gaining map control. Similar to Brimstone, her astral projection gives her a bird&rsquo;s eye view of the map, but she has no range limits. Her incredible range and ability to lock down points on her own makes Astra the single best smoker in VALORANT.&lt;/strong&gt;&lt;/li&gt;&lt;li&gt;&amp;nbsp;&lt;strong&gt;Viper and Jett are also Agents outside the controller role with viable smokes. Jett&rsquo;s Cloudburst has the lowest duration, as they are primarily meant to facilitate her personal play making ability. Viper&rsquo;s&amp;nbsp;Poison Cloud is an interesting alternative, as it has a range of 2-15 second duration. Viper alone is a poor mimic of a controller however, as her gas management is the sole decider of her effectiveness.&lt;/strong&gt;&lt;/li&gt;&lt;/ol&gt;&lt;h2&gt;&lt;strong&gt;Where to place smokes ?&lt;/strong&gt;&lt;/h2&gt;&lt;p&gt;&lt;strong&gt;Knowing who is the best smoker is completely separate from knowing how to use smokes.&amp;nbsp; Every map is obviously different and have their own guides for smokers, however there are some generally applicable tips.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Chokepoints and entrances are the two best spots to smoke when on the defense. This will force attackers to make the first move with little information, leaving them more likely to misplay. Attackers should focus smokes on known defense points. This includes &lsquo;heaven&rsquo; areas that overlook the bombsites, corners, and areas behind cover. Well-placed attacker smokes may even force defenders off the point as you move in, forcing them to play for the re-take.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;There plenty of other specific smoke scenarios. Using a smoke to cloud your spike plant or deplant is a common strategy. Knowledge of your map is ultimately what makes a great smoker, but these tips can get you started.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&amp;nbsp;&lt;/p&gt;', 1, '2021-10-10 20:20:54'),
(56, 58, 15, 'Former veteran NA CS:GO player MAiNLiNE passes away at 26', '1633868565_post2.PNG', '&lt;h2&gt;Veteran CS:GO player Michael &ldquo;MAiNLiNE&rdquo; Jaber has passed away at 26 years old, according to reports from his teammates.&lt;/h2&gt;&lt;p&gt;&lt;strong&gt;The news became clear through one of his former teammates and current VALORANT player at Complexity, Joel &ldquo;jcrueL&rdquo; Cruel. He shared an update on his Twitter. &ldquo;I wish I checked up with you more often, Rest In Peace brother. Those CS:GO teams and times we spent at lan will always be some of the best memories for me.&rdquo;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;His former coach Steve &ldquo;Ryu&rdquo; Rattacasa, who had MAiNLiNE under his wing also shared his thoughts on his passing. &ldquo;He was the most humble, hilarious teammate I&rsquo;ve ever had the pleasure of competing with. I have never laughed harder or more consistently than I did with him on the team. He carried such contagious enthusiasm and his catchphrases still put a smile on my face.&rdquo;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;MAiNLiNE was a mainstay in competitive CS:GO in North America and he became a regular sight. During his time as an active player he played for multiple teams, including eUnited, Method, enemy and Selfless Gaming, winning Fragadelphia 10 back in January 2017. After his active player career he turned to coaching, with many of his former teammates or players under his wing as a coach becoming big names in the CS:GO scene.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 1, '2021-10-10 20:22:45'),
(57, 58, 9, 'VALORANT: Patch 3.0 brings big changes to all Agents and weapons', '1633868783_post 3.PNG', '&lt;h2&gt;&lt;strong&gt;The patch notes for patch 3.0 are here and we&rsquo;re getting changes to all Agents and weapons, alongside some competitive tuning.&lt;/strong&gt;&lt;/h2&gt;&lt;p&gt;&lt;strong&gt;Agents&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;The biggest changes come to the Agents, as they will all be adjusted with the upcoming patch. &ldquo;We have adjusted ability pricing, cooldown rates, and ultimate costs on every Agent. Generally, we noticed that certain agents were able to have too much impact with their abilities without making any significant tradeoffs.&ldquo;&lt;/strong&gt;&lt;/p&gt;&lt;h2&gt;&lt;strong&gt;These changes have been made to all agents&lt;/strong&gt;&lt;/h2&gt;&lt;ul&gt;&lt;li&gt;&lt;strong&gt;Signature abilities now only provide a minimum of one charge per round instead of accumulating a charge every round.&lt;/strong&gt;&lt;/li&gt;&lt;li&gt;&lt;strong&gt;Charges gained from cooldowns are now always temporary&lt;/strong&gt;&lt;/li&gt;&lt;li&gt;&lt;strong&gt;Visibility returns faster during the fadeout period of all flashes&lt;/strong&gt;&lt;/li&gt;&lt;/ul&gt;&lt;h2&gt;&lt;strong&gt;Weapons&lt;/strong&gt;&lt;/h2&gt;&lt;p&gt;&lt;strong&gt;When it came to the weapons, the developers targeted run-and-gun, which is too powerful in some situations. &ldquo;It is currently more potent than we&rsquo;d like. This patch targets a piece of the puzzle that we haven&rsquo;t touched before which is what we call &lsquo;tag into accuracy.&rsquo; [&hellip;] We&rsquo;ve also reduced the running accuracy of Sidearms and SMGs in an attempt to tighten up engagements with those weapons while maintaining some of their identity in terms of mobility by being able to to move and shoot somewhat accurately at shorter ranges.&rdquo;&lt;/strong&gt;&lt;/p&gt;&lt;h2&gt;&lt;strong&gt;changes to all weapons&lt;/strong&gt;&lt;/h2&gt;&lt;ul&gt;&lt;li&gt;&lt;strong&gt;Bullet tagging changed from 75% slow to 72.5% slow&lt;/strong&gt;&lt;/li&gt;&lt;li&gt;&lt;strong&gt;Weapon Deadzones changed from 30 to 27.5%&lt;/strong&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 1, '2021-10-10 20:26:23'),
(58, 58, 15, 'These are the teams in the Worlds 2021 Group Stage', '1633868936_post4.PNG', '&lt;h2&gt;&lt;strong&gt;After a historic and eventful play-ins stage, the groups for Worlds 2021 have been determined.&lt;/strong&gt;&lt;/h2&gt;&lt;p&gt;&lt;strong&gt;Play-Ins for Worlds 2021 was just as historic as it was dramatic. For the first time, an LJL team, DetonatioN FocusMe, escaped Play-Ins and made it to Groups. LNG swept through Play-Ins without dropping a game while Cloud9 almost bowed out early. Beyond Gaming was engulfed in controversy just hours before the final series that sent Hanwha Life Esports to the main event.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;After the dust has settled, the final groups of Worlds 2021 have been cemented. With the main event looming and only one day of rest between, these are the groups.&lt;/strong&gt;&lt;/p&gt;&lt;h2&gt;&lt;strong&gt;Group A &ndash; The Group of death&lt;/strong&gt;&lt;/h2&gt;&lt;p&gt;&lt;strong&gt;Every year has one, a group with two unimaginably strong teams paired together seemingly destined to at least make quarter finals. Cloud9 will join the fray against FPX and Damwon Kia. After a shaky play-ins, Cloud9 are clear underdogs along with Rogue. The chances of escaping groups seems slim for Cloud9, and their weaker players will have to step up to show that the team is not simply prolonging the inevitable.&lt;/strong&gt;&lt;/p&gt;&lt;h2&gt;&lt;strong&gt;Group B &ndash; Will DFM defy expectations?&lt;/strong&gt;&lt;/h2&gt;&lt;p&gt;&lt;strong&gt;Group B has one clear leader, Edward Gaming, and a team expected to end last with the addition of DFM. Despite having a historic Play-Ins with their star shining like never before, DFM are still expected to be outclassed. With heavy hitters like EDG, T1, and 100T between them, it seems unlike that the DFM Cinderella story will go any farther.&lt;/strong&gt;&lt;/p&gt;&lt;h2&gt;&lt;strong&gt;Group C &ndash; Hanwha Life poised to shake up groups&lt;/strong&gt;&lt;/h2&gt;&lt;p&gt;&lt;br&gt;&lt;strong&gt;Group C is one of the more &lsquo;open&rsquo; groups in Worlds 2021. RNG have emerged as clear favorites with the race between Fnatic and PSG Talon being split down the middle. Hanwha Life&rsquo;s presence complicates this group significantly, as the team has one of the strongest midlanes and bottom lane duos in Worlds. Hanwha Life could claim one of the two available spots, though they are almost just as likely to crash and burn.&lt;/strong&gt;&lt;/p&gt;&lt;h2&gt;&lt;strong&gt;Group D &ndash; LNG, the Worlds sleeper pick&lt;/strong&gt;&lt;/h2&gt;&lt;p&gt;&lt;strong&gt;LNG may be the best team to ever compete in Play-Ins. The LPL fourth seed did not drop a single game and were the first squad to advance on to groups. Play-Ins have given the team time to learn the meta before continuing their journey into the most competitive group at Worlds. Though competition is stiff in Group D, as Team Liquid, Gen.G, and MAD Lions stand in their way, LNG could be a sleeper pick to win the entire tournament.&lt;/strong&gt;&lt;/p&gt;', 1, '2021-10-10 20:28:56');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `comment_id` int(11) NOT NULL,
  `parent_comment_id` int(11) DEFAULT NULL,
  `comment` varchar(200) NOT NULL,
  `comment_sender_name` varchar(40) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`comment_id`, `parent_comment_id`, `comment`, `comment_sender_name`, `date`, `user_id`, `post_id`) VALUES
(51, 52, 'COULDN\'T AGREE MORE SIS!!!', 'organiser', '2021-10-08 00:42:58', 0, 55),
(52, 0, 'woah this is actually a helpful tip!!', 'NydiaWesdi', '2021-10-08 00:43:58', 0, 55),
(53, 0, 'Thanks for this amazing tip !', 'Amir Sabrin', '2021-10-08 00:44:51', 0, 55),
(72, 0, 'Fly high bro ! you\'ll be missed </3 ', 'Danial Kamsur', '2021-10-08 00:47:21', 0, 56),
(73, 74, 'rip :((', 'User', '2021-10-08 00:47:26', 0, 56),
(74, 0, 'RIP bruh </3', 'izzat', '2021-10-08 00:47:31', 0, 56),
(75, 0, 'this update patch sucks >:(', 'moderator', '2021-10-08 00:48:07', 0, 57),
(76, 0, 'WHAT?!?! BAD PATCH UPDATE !!!!', 'admin', '2021-10-08 00:48:12', 0, 57),
(78, 76, 'haloo pls give me admin pls I can manage  users I have a degree', 'izzat', '2021-10-08 00:48:19', 0, 57),
(79, 0, 'SENTINELS BEST VALORANT TEAM NA !!!', 'organiser', '2021-10-08 00:49:04', 0, 58),
(80, 79, 'Nahhh G2 best team from EU bro', 'Normal User 1', '2021-10-08 00:49:22', 0, 58),
(81, 0, '100T is the best team !!!!', 'normal user 2', '2021-10-08 00:49:32', 0, 58);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_like_unlike`
--

CREATE TABLE `tbl_like_unlike` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `like_unlike` int(2) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_like_unlike`
--

INSERT INTO `tbl_like_unlike` (`id`, `member_id`, `comment_id`, `like_unlike`, `date`) VALUES
(56, 1, 38, 29, '2021-10-08 06:51:01'),
(57, 1, 40, 7, '2021-10-08 06:50:54'),
(58, 1, 45, 11, '2021-10-08 06:50:52'),
(59, 1, 46, 14, '2021-10-08 06:50:50'),
(60, 1, 51, 20, '2021-10-08 06:50:48'),
(61, 1, 52, 100, '2021-10-08 06:51:16'),
(62, 1, 53, 50, '2021-10-08 06:50:29'),
(63, 1, 69, 5, '2021-10-08 06:50:45'),
(64, 1, 79, 50, '2021-10-10 12:37:34'),
(65, 1, 80, 121, '2021-10-10 12:37:37'),
(66, 1, 81, 23, '2021-10-10 12:37:42'),
(67, 1, 72, 1000, '2021-10-10 12:37:54'),
(68, 1, 74, 120, '2021-10-10 12:37:59'),
(69, 1, 73, 10, '2021-10-10 12:38:01'),
(70, 1, 75, 420, '2021-10-10 12:38:21'),
(71, 1, 76, 300, '2021-10-10 12:38:29'),
(72, 1, 78, 666, '2021-10-10 12:38:34');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(255) NOT NULL,
  `team_name` varchar(1000) NOT NULL,
  `team_coach` varchar(1000) NOT NULL,
  `team_creator` int(255) NOT NULL,
  `team_captain` int(255) NOT NULL,
  `team_logo` blob NOT NULL,
  `limit_members` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `team_name`, `team_coach`, `team_creator`, `team_captain`, `team_logo`, `limit_members`) VALUES
(19, 'one', 'some', 54, 54, '', 2),
(26, 'stop', 'it', 54, 54, '', 8),
(27, 'AyamJago', 'Bota Wila Samba', 58, 58, '', 8);

-- --------------------------------------------------------

--
-- Table structure for table `team_members`
--

CREATE TABLE `team_members` (
  `id` int(255) NOT NULL,
  `team_id` int(255) NOT NULL,
  `member_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `team_members`
--

INSERT INTO `team_members` (`id`, `team_id`, `member_id`) VALUES
(8, 19, 54),
(17, 26, 54),
(18, 27, 58);

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `name`, `description`) VALUES
(9, 'Gaming', '<p>game related stuff</p>'),
(10, 'Tournaments', '<p>upcoming or past Tournaments/events information will be here</p>'),
(11, 'Tips', '<p>gaming tips will be here</p>'),
(15, 'news', '<p>Any sort of news</p>');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `admin` tinyint(4) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `code` mediumint(50) NOT NULL,
  `status` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `bio` text NOT NULL,
  `pic` varchar(255) NOT NULL,
  `blocked` tinyint(4) NOT NULL,
  `proof` varchar(255) NOT NULL,
  `organiser_status` int(11) NOT NULL,
  `phone_number` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `admin`, `username`, `email`, `password`, `code`, `status`, `created_at`, `bio`, `pic`, `blocked`, `proof`, `organiser_status`, `phone_number`) VALUES
(39, 2, 'moderator', 'moderator@account.com', '$2y$10$vchXFR6v9ACXk5K0IqthOeSuFZtHQATgjXijZuJRU8oahsHYP4ygq', 0, 'verified', '2021-10-04 05:40:32', 'test saja', '1633613077_profile.png', 0, '1633611742_Desktop Screenshot 2021.10.07 - 20.21.52.15.png', 0, 0),
(49, 1, 'Admin', 'Admin@account.com', '$2y$10$IaNcXYmpQc8AEU0adOGY2.zh5syuROoi.zsGXSjYlakgNl76dPSM.', 174631, 'verified', '2021-10-05 12:02:29', 'Hello', '1633768397_961279.png', 0, '1633612832_961279.png', 0, 7258975),
(53, 3, 'organiser', 'organiser@account.com', '$2y$10$beRMPZP9OPrHPQewe4IOaOPmCyrtOVXTgOzKqngllBJJcBkjInlZ2', 904720, 'verified', '2021-10-08 03:21:09', 'This is the organiser\'s bio take a peek at my profile tehee', '1633674352_Siesta (2).jpg', 0, '1633696357_Siesta (2).jpg', 2, 0),
(58, 1, 'Izzat', 'izzat.latif4@gmail.com', '$2y$10$qN40u9KsqrqBv.40E1gZUui.wzkB1JzK4gR68ugE4kSrXgPgAwPty', 259092, 'verified', '2021-10-10 11:58:50', 'Hi ! my name is Izzat . Im the co-creator of Esports Brunei FYP !', '1634371178_thumbnail_IMG_20190303_0001.jpg', 0, '1633955682_orange-top-gradient-background.jpg', 0, 7258975),
(59, 1, 'Amir Sabrin', 'AmirSabrin@gmail.com', '$2y$10$18fDHj43WFWTUCs0ULsB2OnhHbGr8sgXtaUmguZELiuQvBCvd3Dwi', 196742, 'verified', '2021-10-10 11:59:23', '', '', 0, '', 0, 0),
(60, 1, 'Danial Kamsur', 'DanialKamsur@gmail.com', '$2y$10$N3.Oxc4gU057BeLAWG0ObO/JCH0n0L3lOAIbI6aQrMcoGF6cy7Kmq', 699403, 'verified', '2021-10-10 11:59:56', '', '', 0, '', 0, 0),
(61, 1, 'NydiaWesdi', 'NydiaWesdi@gmail.com', '$2y$10$Np/5tD9xWEJ7BlSuxR3gz.tThLH4YXIH0KyUf.UFBhqUmkk9kSbn2', 917176, 'verified', '2021-10-10 12:00:25', '', '', 0, '', 0, 0),
(69, 0, 'User', 'User@account', '$2y$10$..68p8O3oGQb.INmlbGO2e7/Yk8k9a2BYdVTQORTDvw.Y5.mpEW8.', 0, 'verified', '2021-10-14 13:27:59', '', '', 0, '1634375274_Capture.PNG', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `events_ibfk_1` (`topic_id`);

--
-- Indexes for table `game_list`
--
ALTER TABLE `game_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `tbl_like_unlike`
--
ALTER TABLE `tbl_like_unlike`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_members`
--
ALTER TABLE `team_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

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
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `tbl_like_unlike`
--
ALTER TABLE `tbl_like_unlike`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `team_members`
--
ALTER TABLE `team_members`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
