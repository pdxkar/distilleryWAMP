-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2016 at 10:08 PM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `distillerydemo`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categoryId` int(11) NOT NULL,
  `categoryName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `categoryDescription` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `essays`
--

CREATE TABLE `essays` (
  `essayId` int(11) NOT NULL,
  `essayDate` date NOT NULL,
  `essayTitle` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `essayText` text COLLATE utf8_unicode_ci NOT NULL,
  `resourceId` int(11) NOT NULL,
  `featureId` int(11) NOT NULL,
  `essayImageUrl` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `essays`
--

INSERT INTO `essays` (`essayId`, `essayDate`, `essayTitle`, `essayText`, `resourceId`, `featureId`, `essayImageUrl`) VALUES
(5, '2016-10-08', 'Coyote', 'I saw coyote today, this morning, on my way across town on the pretense of dropping cat supplies and a menu template at Dadâ€™s house, but in truth on another run on The Bins to pour over the trinkets and tools and trash that others have donated or discarded for me to touch and wonder and in some cases bring home.  It is a guilty pleasure that irritates and offends my husbandâ€™s values and sense of dignity.  I have only seen a coyote one other time in my life.  That time I was driving through a quiet neighborhood just a couple of blocks off of Barbur and a few miles south of the city.  The animal trotted across my carâ€™s path about a hundred yards ahead, and for a few moments the only thing that my mind managed to formulate in answer to what I was seeing was â€œNot Dogâ€.  Its slow trot was just barely more than an amble but was purposeful and focused and eerie in the otherwise domestic surroundings.  He didnâ€™t look at me or anything else around him as he traveled to the other side of the road and then he was out of sight, maybe on his way back to his den.  Maybe on his way to or from hunting cats.The coyote that I saw today was standing at the side of Murray Boulevard.  His need to cross the busy four lane road was clear in his darting eyes and agitated pacing.  The jumble of cars steadily rolling between him and the opposite curb seemed to confuse and intimidate him, but his need to get to the other side held him a just a few feet from the street staring past the flow of traffic.  As I slowly passed, he was still pacing and staring, clearly committed to forging the rolling onslaught of rubber, metal, and plastic that did not know or care about his urgent need to cross.  My mind again churned and struggled to process what I was seeing as it did the last time I was startled by the unexpected sight of a large wild animal barely outside of the city.  Was he going to make it across?  Where was he going?  Was he going to be okay?  Would the traffic stop to let him pass, or would he finally bolt into its path and be crushed and killed?  Much later as I always do when I take no action in a difficult situation, I wondered, guiltily, about what I should have done to help him.  Should I have stopped my car?  Maybe gotten out and held up traffic until he was safely on the other side?  Would people have cooperated, maybe even appreciated that someone was taking action?  Or would they have honked or even purposely run him over, out of hate or anger or evil?  I finally told myself that one way or another, he made his way across without me.  I have not gone back to affirm my story.His appearance did prompt me to refer back to the book Dancing Otters and Clever Coyotes: Using Animal Energies the Native American Way.  I picked it up a little while ago with some hesitation, feeling conflicted about reading a couple of white peopleâ€™s interpretation and appropriation of the beliefs of a culture that they were neither born nor raised in.  Like the Kanji tattoos decorating the biceps of people who have never even visited Japan let alone speak the language.  Tall words from someone who neither reads German nor philosophy and who has a quote of Friedrich Nietzsche boldly tattooed in German on her back.  Poser-ish or not, the authors seem deeply sincere in their desire to share what they have learned about Native American peopleâ€™s beliefs about the mythology and significance of each of the animals that they describe.  And reading Dancing Otters at bedtime is soothing.  Each short chapter begins with a description of a different animalâ€™s habitat and family life, goes on to describe its â€œmedicine giftsâ€, and then concludes with how that animal can warn us of danger.  I took my encounter with the coyote to be of some sort of significance and went to the book for the authorâ€™s insight as to what the encounter might have meant.  About Coyote, the authors wrote:In some legends Coyote is portrayed as a trickster, meaning that he likes to put obstacles in our way as we walk along our sacred paths.  As such, he is often viewed with hostility or fear.  Other stories acknowledge that Coyote is here to teach us about ourselves, like a spiritual mirror, but many imply that he does so in an insensitive, disruptive way.  The fact is that often the lessons we most need to learn are the hardest ones and we try to avoid themâ€”this is what makes Coyoteâ€™s persistence so annoying.  Many times we are distracted and donâ€™t get the message; or we hear, but push the message from our minds because it is something we donâ€™t want to deal with, a lesson we donâ€™t want to learn.  Often it is Coyote who is sent as the emissary to remind us that while our well-being is of concern to Creator, our unfolding into who we are meant to be is the real purpose of our Earthwalk.    ', 4, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `featureId` int(11) NOT NULL,
  `resourceId` int(11) NOT NULL,
  `featureTitle` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `featureSubtext` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featureDesc` text COLLATE utf8_unicode_ci NOT NULL,
  `featureImageUrl` text COLLATE utf8_unicode_ci,
  `featureUrl` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`featureId`, `resourceId`, `featureTitle`, `featureSubtext`, `featureDesc`, `featureImageUrl`, `featureUrl`) VALUES
(2, 12, 'Standing on the Shoulders of Giants   ', 'with guest Ed Keohane   ', 'Chase mice runs in circles yet mark territory sleep on keyboard. Claw drapes. Intently sniff hand burrow under covers for behind the couch but inspect anything brought into the house. Intently stare at the same spot flop over or give attitude or hide when guests come over yet hide when guests come over mark territory.   ', 'http://www.soberpodcasts.com/wp-content/uploads/2016/09/edSocial.png', 'http://theshairpodcast.com/tsp-084-standing-on-the-shoulders-of-giants-with-ed-keohane-a-gripping-story-of-drug-addiction/   '),
(13, 3, 'screech', NULL, 'dgagsdfgsdfg', 'upload_pic/cropped-screech.jpg', 'dfgdfgdsfgdf'),
(14, 3, 'Bear Face', NULL, 'Prow scuttle parrel provost Sail ho shrouds spirits boom mizzenmast yardarm. Pinnace holystone mizzenmast quarter crow\'s nest nipperkin grog yardarm hempen halter furl. Swab barque interloper chantey doubloon starboard grog black jack gangway rutters.\r\nDeadlights jack lad schooner scallywag dance the hempen jig carouser broadside cable strike colors. Bring a spring upon her cable holystone blow the man down spanker Shiver me timbers to go on account lookout wherry doubloon chase. Belay yo-ho-ho keelhaul squiffy black spot yardarm spyglass sheet transom heave to.\r\nTrysail Sail ho Corsair red ensign hulk smartly boom jib rum gangway. Case shot Shiver me timbers gangplank crack Jennys tea cup ballast Blimey lee snow crow\'s nest rutters. Fluke jib scourge of the seven seas boatswain schooner gaff booty Jack Tar transom spirits.', 'featureImageUrl', 'dfgsdfg'),
(4, 8, 'Zombies Feature', 'Zombie subtext', 'Zombie ipsum reversus ab viral inferno, nam rick grimes malum cerebro. De carne lumbering animata corpora quaeritis. Summus brains sit​​, morbo vel maleficia? De apocalypsi gorger omero undead survivor dictum mauris. Hi mindless mortuis soulless creaturas, imo evil stalking monstra adventus resi dentevil vultus comedat cerebella viventium. Qui animated corpse, cricket bat max brucks terribilem incessu zomby. The voodoo sacerdos flesh eater, suscitat mortuos comedere carnem virus. Zonbi tattered for solum oculi eorum defunctis go lum cerebro. Nescio brains an Undead zombies. Sicut malus putrid voodoo horror. Nigh tofth eliv ingdead.Nowadays, zombies are big business. But outside of the horror films and video games, is there any truth to the zombie legends?\r\n\r\n', 'https://i.ytimg.com/vi/H73c5qjCvj4/hqdefault.jpg', 'http://www.stufftheydontwantyoutoknow.com/videos/zombies-1-video.htm'),
(5, 9, '5 Tips to Build Your Online Business', 'with guest Bob Heilig', 'In 6 months time, Bob Heilig went from being a self-professed failure to a someone who was able to build a 6 figure business.  In this podcast, Bob shares how to build a strong personal brand for yourself online and on social media, why it is so important to out-teach your competition, why you should be consistent and put out content DAILY, how to start leveraging the power of live video to build your brand and grow your business online, and that the only way to attract the people who you want is to repel the people who you do not want.', 'https://yt3.ggpht.com/-mxGcy3MhFZU/AAAAAAAAAAI/AAAAAAAAAAA/_gYJGULaf1Y/s900-c-k-no-mo-rj-c0xffffff/photo.jpg', 'http://www.chalenejohnson.com/podcasts/5-tips-to-build-your-online-business-with-guest-bob-heilig/'),
(6, 12, 'Making Strangers Smile', 'with guest Amanda Nelson', 'Just bodies. I need your clothes, your boots, and your motorcycle. Grant me revenge! And if you do not listen, then to HELL with you. Make it quick because my horse is getting tired. Come on don\'t bullshit me. Into the tunnel. Bring your toy back to the carpet.', 'http://theshairpodcast.com/wp-content/uploads/2016/03/AmandaSocial.png', 'http://theshairpodcast.com/tsp-058-making-strangers-smile-with-amanda-nelson-from-methamphetamine-addiction-to-a-vision-of-hope/'),
(7, 1, 'Thomas Day\'s Quest for the Perfect Wife', NULL, 'Eighteenth-century Englishman Thomas Day decided that the only way to have a perfect wife was to create one.  So he adopted two orphans and attempted to train them, sometimes in incredibly abusive ways.  The best part of the podcast is the hosts indignation at Days entitlement to treat these women as lab rats.  Also, they were very amused by his social awkwardness and gleefully pointed out the many examples of his hypocrisy.', 'http://s.hswstatic.com/gif/thomas_day-p-1200x800.jpg', 'http://www.missedinhistory.com/podcasts/thomas-day-wife.htm'),
(8, 24, 'How to Deal from the bottom of the Deck', NULL, 'Multiple people have died from Chuck Norris giving them the finger. Chuck Norris doesn’t need to swallow when eating food. Crop circles are Chuck Norris\' way of telling the world that sometimes corn needs to lie the f*ck down. Chuck Norris ordered a Big Mac at Burger King, and got one.  \r\n\r\nZombie ipsum reversus ab viral inferno, nam rick grimes malum cerebro. De carne lumbering animata corpora quaeritis. Summus brains sit​​, morbo vel maleficia? De apocalypsi gorger omero undead survivor dictum mauris.', 'http://franklove.net/wp-content/themes/Frank_Theme_980/images/HappyCouple_211.png', 'http://franklove.net/2010/11/30/how-to-deal-with-an-%E2%80%9Cuntrustworthy%E2%80%9D-mate/');

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE `resources` (
  `resourceId` int(11) NOT NULL,
  `resourceTypeId` int(11) NOT NULL,
  `resourceTitle` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `subtext` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resourceDesc` text COLLATE utf8_unicode_ci,
  `resourceImageUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resourceUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `resources`
--

INSERT INTO `resources` (`resourceId`, `resourceTypeId`, `resourceTitle`, `subtext`, `resourceDesc`, `resourceImageUrl`, `resourceUrl`) VALUES
(1, 1, 'Stuff You Missed in History Class', 'with hosts Tracy V. Wilson and Holly Frey', 'Stuff You Missed in History Class is a podcast shows that brings to light lesser publicized historical facts and figures.', 'http://s.hswstatic.com/gif/symhc-new-logo-1600x1600.png', 'http://www.missedinhistory.com/podcasts'),
(3, 2, 'Write Modern Web Apps with the MEAN Stack', 'by Jeff Dickey', 'This book will explain a new way to write web applications by treating the front-end as if it were a third-party (such as a mobile client). This book, written by a practicing MEAN developer, will take a holistic approach to using the MEAN JavaScript platform for creating modern web applications and lay out how to use the MEAN (Mongo, Express, AngularJS, and Node.js) set of tools.', 'http://n2.sdlcdn.com/imgs/b/l/f/Write-Modern-Web-Apps-with-SDL352023177-1-6863f.jpg', 'https://www.amazon.com/Write-Modern-Apps-MEAN-Stack/dp/0133930157'),
(4, 2, 'Dancing Otters and Clever Coyotes: Using Animal Energies, the Native American Way', 'Gary Buffalo Horn Man and Sherry Firedancer', 'Authors Gary and Sherry share what they\'ve learned from Native American elders and from their own personal journeys to remind readers of the inherent bond that humans have with all things in nature. We may soar with the eagle and run with the wolves, yet even the earthworm has something to teach us.', 'http://www.indiansoulart.com/media/catalog/product/cache/3/image/9df78eab33525d08d6e5fb8d27136e95/d/a/dancing_otters_and_clever_coyotes.jpg', 'https://www.amazon.com/dp/B004OA63KS/ref=dp-kindle-redirect?_encoding=UTF8&btkr=1'),
(8, 1, 'Stuff They Don\'t Want You to Know  ', 'with hosts Ben Bowlin and Matt Frederick  ', 'Stuff They Don\'t Want You to Know is a video and audio podcast that focuses on conspiracy theories and lesser known urban legends  a video and audio podcast that focuses on conspiracy theories and the evidence and arguments for or against them.  ', 'https://yt3.ggpht.com/-b_dYhC2SG5I/AAAAAAAAAAI/AAAAAAAAAAA/nf_GmfPp7r8/s900-c-k-no-mo-rj-c0xffffff/photo.jpg', 'http://www.stufftheydontwantyoutoknow.com/  '),
(9, 1, 'The Chalene Show', 'with host Chalene Johnson', 'The Chalene Show is a motivational podcast featuring topics including achieving a happier life, making smarter business decisions, steps for stronger online business growth, email list building, social media strategies', 'http://www.chalenejohnson.com/wp-content/uploads/2014/09/IMG_27601-1024x1024-1024x1024.png', 'http://www.chalenejohnson.com/podcast/'),
(10, 6, 'SugarPost Gallery', 'Artist Fred Conlon', 'The SugarPost Gallery is a gallery featuring metal sculptures from salvaged military supplies. ', 'http://www.uncommongoods.com/images/items/16700/16750_1_1200px.jpg', 'http://www.sugarpost.com/'),
(11, 6, 'Knot Just a Bear Woodcarving', 'Robert Tidwell', 'Knot Just a Bear features a wide variety of Wood carvings of Pacific Northwest wildlife, benches, tables, and custom carvings at your home or business or any other site of your choice. Bert has traveled to sites in Nevada and Hawaii, has work standing in front of the shoe company downtown, and regularly participates in and wins wood and ice carving competitions.', 'http://knotjustabear.com/sitebuilder/images/intro_image_1-435x363.jpg', 'https://radiant-caverns-12125.herokuapp.com/testGallery.inc.php?'),
(12, 1, 'The SHAIR Podcast', 'with Host O', 'The SHAIR podcast is where you share your great stuff!  Anything you\'ve got, you can share it here.  You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I don\'t know exactly when we turned on each other, but I know that seven of us did.', 'https://i1.sndcdn.com/avatars-000240145885-mqnxxt-t500x500.jpg', 'https://theshairpodcast.com/collection/'),
(24, 3, 'Frank Love', 'Honest advice that cuts through social norms of relationship issues', 'Frank loveÂ is the honest advice that you may appreciate when struggling with simple issues that appear complicated. Frank love reminds you that these complexities are illusions laden with human emotion and long-held societal beliefs about how romantic love â€œshouldâ€ look. Â Frank loveÂ informs you that these â€œshouldsâ€ will likely land you in unhealthy relationships. Â Frank love liberates your mind and heart to think creatively about romance. Â Frank loveÂ is the pull you can use when you are stuck in an unsatisfying relationship dynamic; and the push that can motivate you to release your attachments to the perceived security of relationships, one which often results in self-deception and pain.\r\n\r\nFrank loveÂ is hard-hitting advice that may only feel friendly in retrospect, and then turns out to be the best advice you ever received. Â It may be hard to digest, but its no-holds-barred honesty enables you to question your existing beliefs and to create relationships that work forÂ you, even if they break all the norms and look nothing like those of your friends and family. Â Frank loveÂ is well, frank advice, but it is given in the spirit of love.\r\n\r\nAfter implementingÂ frank love, readers will experience relationships that are honest, fun, unique and tailored to their own quirks, weirdness and dynamics. Please enjoy our bestÂ frank love; itâ€™s the un-romanticized romantic advice that may revolutionize your life.', 'http://b.vimeocdn.com/ps/235/195/2351950_300.jpg', 'http://franklove.net/category/blog/'),
(107, 2, 'Leaves', 'sfdadf', 'asdfsd', 'upload_pic/cropped-1478295432-20160713_204529.jpg', 'asdfdf');

-- --------------------------------------------------------

--
-- Table structure for table `resourcetypes`
--

CREATE TABLE `resourcetypes` (
  `resourceTypeId` int(11) NOT NULL,
  `resourceTypeName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `resourceTypeDescription` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `resourcetypes`
--

INSERT INTO `resourcetypes` (`resourceTypeId`, `resourceTypeName`, `resourceTypeDescription`) VALUES
(1, 'podcast', 'A digital audio file made available on the Internet for downloading to a computer or portable media player, typically available as a series, new installments of which can be received by subscribers automatically.'),
(2, 'book', 'A written or printed work consisting of pages glued or sewn together along one side and bound in covers.'),
(3, 'article', 'A written composition in prose, usually nonfiction, on a specific topic, forming an independent part of a book or other publication, as a newspaper or magazine.'),
(4, 'blog', 'A regularly updated website or web page, typically one run by an individual or small group, that is written in an informal or conversational style.\r\n'),
(5, 'videocast', 'A podcast with video content.'),
(6, 'shopping', 'Of, for, or pertaining to examining and buying merchandise.');

-- --------------------------------------------------------

--
-- Table structure for table `resource_category`
--

CREATE TABLE `resource_category` (
  `resource_category_id` int(11) NOT NULL,
  `resourceId` int(11) NOT NULL,
  `categoryId` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `password`, `fullname`, `email`) VALUES
('OtherMe', '$2y$10$P4NAl7pWJguzst1ULQ1QSe2Sp.xy8Wxqr2lJjpHxwrqBHOYbUmQmK', 'Other Me', 'katherineroot@yahoo.com'),
('Pentagon', '$2y$10$8hdqqQNU6SoDnREepu1ayugEnNwolYv/vD6Ze0j/KuwEIywR9br3m', 'Pentagon Columbia', 'katherineroot@yahoo.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryId`);

--
-- Indexes for table `essays`
--
ALTER TABLE `essays`
  ADD PRIMARY KEY (`essayId`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`featureId`);

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`resourceId`);

--
-- Indexes for table `resourcetypes`
--
ALTER TABLE `resourcetypes`
  ADD PRIMARY KEY (`resourceTypeId`);

--
-- Indexes for table `resource_category`
--
ALTER TABLE `resource_category`
  ADD PRIMARY KEY (`resource_category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categoryId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `essays`
--
ALTER TABLE `essays`
  MODIFY `essayId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `featureId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `resources`
--
ALTER TABLE `resources`
  MODIFY `resourceId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT for table `resourcetypes`
--
ALTER TABLE `resourcetypes`
  MODIFY `resourceTypeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `resource_category`
--
ALTER TABLE `resource_category`
  MODIFY `resource_category_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
