-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2025 at 10:19 PM
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
-- Database: `sebas_reviews`
--
CREATE DATABASE IF NOT EXISTS `sebas_reviews` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sebas_reviews`;

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `ID` int(11) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Rating` float DEFAULT NULL,
  `Genre` varchar(100) DEFAULT NULL,
  `ReleaseDate` date NOT NULL,
  `Studio` varchar(100) NOT NULL,
  `Description` text NOT NULL,
  `Trailer` varchar(255) NOT NULL,
  `Opinion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`ID`, `Title`, `Rating`, `Genre`, `ReleaseDate`, `Studio`, `Description`, `Trailer`, `Opinion`) VALUES
(1, 'Elden Ring', 8.5, 'Soulslike, RPG, Openworld', '2022-02-25', 'FromSoftware', 'Elden Ring is an expansive action RPG set in the Lands Between, where players journey as the Tarnished to reclaim the shattered Elden Ring. With vast open-world exploration, challenging combat, deep lore, and freedom of play, it delivers an epic, dark fantasy adventure.', 'https://www.youtube.com/watch?v=K_03kFqWfqs', 'Elden Ring is a great game, its my first introduction into the souls like genre and i loved it. The moment i stepped into Limgrave i was blown away by the beautiful graphics. The combat was very dificult but it was lovely. It took me quite some time before i beat the game and achieved the Platinum trophy but i enjoyed it alot. I definetly reccomend this game to other people who enjoy challenging combat.'),
(2, 'Minecraft', 8, 'Sandbox, Adventure, Simulator', '2011-11-18', 'Mojang', 'Minecraft is a sandbox game where players explore blocky worlds, mine resources, craft tools, and build anything they imagine. With survival challenges, creative freedom, and endless adventures, it’s a game of exploration, creativity, and limitless possibilities.', 'https://youtu.be/MmB9b5njVbA?si=jSGF9nlCYNu99rU6', 'Minecraft is a game everyone my age has played and many still play it. Minecraft is one of the biggest games of all time and it shows. Exploring the 3 dimensions, Building all that your heart desires and many online servers to play different kinds of gamemodes. Its a game that will always remain in the hearts of the players.'),
(3, 'Lies Of P', 8, 'Soulslike, RPG, Adventure', '2023-07-19', 'Neowiz', 'Lies Of P is a dark action RPG inspired by Pinocchio, set in the ruined city of Krat. Players fight deadly puppets with brutal, stylish combat, craft weapons, and shape their journey through choices that blur the line between truth and lies.', 'https://www.youtube.com/watch?v=kXZoKdr-xeo', 'Lies Of P is a great game the story is interesting and the combat is quite stylish and difficult but it can feel a little slow at times. Most of the game had me really excited and engulfed into to the game but towards the end of the game it felt more like they didn\'t know how to make it harder so they just placed down a bunch of annoying enemies to make it hard. Other than that i really enjoyed the game'),
(4, 'Stellar Blade', 9, 'RPG, Adventure, Action', '2024-04-26', 'Shift Up', 'Stellar Blade is a fast-paced action RPG where Eve battles mysterious creatures to reclaim Earth. Featuring stylish combat, fluid exploration, and a rich sci-fi world, it blends cinematic storytelling with challenging encounters in a fight for humanity’s future.', 'https://youtu.be/_VyeH5uteVk?si=yuetBcfTFB_9ahgL', 'Stellar Blade was a game i was really excited for, i played the Demo and on the day of release i ran to the store to buy it. The combat was on the slower side if you dont chain combo\'s and special moves together but its such a great game, The area design was beautifull, the enemies looked amazing and the characters looked very realistic. The story was really interesting and the dystopian vibe made the game feel quite special. The bosses were very exciting and alot of fun, the quests weren\'t boring either so it doesnt feel like a chore when doing them. The Nier Automata and Nikke DLC were nice too, especially the Nikke DLC since it added new quests, skins and a hard but excellent bossfight'),
(5, 'NieR Replicant', 8.5, 'RPG, Action', '2021-04-22', 'Square Enix', 'NieR Replicant ver.1.22474487139… is a remastered action RPG set in a crumbling world where a young hero seeks to cure his sister’s illness. With fluid combat, haunting music, and layered storytelling, it delivers an emotional, reimagined journey of sacrifice.', 'https://www.youtube.com/watch?v=sPcf4pfTqfY', 'NieR Replicant is an amazing game, i really loved it. The story was interresting, the art was amazing and the combat was exciting and the music was on another level. Its a heart warming - action filled story of a brother fighting to save his little sister. The story written by Yoko Taro has quite some deep/philosophical sides to it. What it means to be human for example, which is a topic used in both his games NieR Automata & Replicant. At first sight the game would seem to be about Humanity versus the monsters called Shades but its actually about how far someone would go for a person they love. These deep/philosophical sides to the game make it even more enjoyable and makes it have a lasting impact on the players heart.'),
(6, 'Ender Lilies', 10, 'MetroidVania, 2D Platformer, Action', '2021-06-22', 'Binary Haze', 'Ender Lilies: Quietus of the Knights is a dark, atmospheric 2D action RPG where Lily explores a ruined kingdom cursed by a deadly blight. With challenging combat, haunting music, and sorrowful storytelling, players uncover the tragic fate of the land and its fallen knights.', 'https://www.youtube.com/watch?v=i2O6YbhDVsQ', 'Ender Lilies is a great game with an amazing dark atmosphere, the art is amazing and the bosses look awesome. The combat is fun and can be challenging and the music is a blessing to the ears. Its definitely one of my favorite games.'),
(7, 'Ghost Of Tsushima', 8, 'Openworld, Action, Adventure', '2020-07-17', 'Sucker Punch', 'Ghost of Tsushima is an open-world samurai adventure set in feudal Japan. As Jin Sakai, players fight to protect Tsushima from Mongol invaders, balancing honor and survival with cinematic combat, stealth, and breathtaking landscapes inspired by samurai cinema.', 'https://www.youtube.com/watch?v=iqysmS4lxwQ', 'Ghost Of Tsushima was very fun to play, to run arround the island of tsushima as a samurai to take back the land from the mongol invaders was a unqiue experience. With the beautifull design of the land and the exciting combat it was like i was there myself. And the DLC was alot of fun too to explore Iki island and fight a weird tribe was cool.'),
(8, 'Undertale', 8, 'RPG, BulletHell, Indie', '2015-09-19', 'Toby Fox', 'Undertale is a unique RPG where every choice matters. Players explore a quirky underground world of monsters, deciding whether to fight or show mercy. With witty dialogue, memorable characters, and multiple endings, it’s a heartfelt journey about choice and consequence.', 'https://www.youtube.com/watch?v=1Hojv0m3TqA', 'Undertale is a short but fun game with 3 different routes. Whether you kill every enemy or spare them all, every decision matters. The combat can be a bit challenging but its alot of fun and the music is nice too. The character designs and game art are all nice too and make the game feel a bit more cartoony.'),
(9, 'NieR Automata', 7, 'Action RPG', '2017-02-23', 'Square Enix', 'NieR: Automata is an action RPG set in a post-apocalyptic world where androids 2B, 9S, and A2 battle alien machines. Blending fast combat, deep storytelling, and philosophical themes, it explores humanity, identity, and the search for meaning in a ruined future.', 'https://www.youtube.com/watch?v=wJxNhJ8fjFk', 'Instead of fighting Shades the enemies are robots. NieR Automata is the sequel to NieR <a href=\'http://localhost/backend-eindproject/Almost-there-9ee2dd70b71a-c7e7bcf364c7/php/reviewpage.php?type=Games&id=5\'> Replicant </a>continuing hundres of years after Replicant. Its alot like <a href=\'http://localhost/backend-eindproject/Almost-there-9ee2dd70b71a-c7e7bcf364c7/php/reviewpage.php?type=Games&id=5\'> Replicant</a> in combat, meaning behind story and exploration. The art has a slight grayish tint over it fitting the dystopian vibe the story provides. Even though i think its not as good as NieR Replicant i still think its a fun game with awesome fights.'),
(10, 'Code Vein', 8.5, 'Soulslike, RPG, Action', '2019-09-27', 'Bandai Namco', 'Code Vein is an action RPG set in a post-apocalyptic world overrun by the Lost. As a Revenant, players explore labyrinthine dungeons, battle challenging foes, and harness powerful Blood Veil abilities in a dark, anime-inspired tale of survival and sacrifice.', 'https://www.youtube.com/watch?v=tXvKDyuObbQ', 'Code Vein was a great game and i really enjoyed playing it. The combat was hard but definetly enjoying. The story and characters were very interesting. The character creation was in my opinion perfect. Instead of the wide design like in FromSoftware\'s games it was more template based. The art of the game was really beautifull and the enemy design was great.');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `ID` int(11) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Rating` float DEFAULT NULL,
  `Genre` varchar(50) NOT NULL,
  `Length` varchar(5) NOT NULL,
  `ReleaseDate` date NOT NULL,
  `Studio` varchar(100) NOT NULL,
  `Description` text NOT NULL,
  `Trailer` varchar(255) NOT NULL,
  `Opinion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`ID`, `Title`, `Rating`, `Genre`, `Length`, `ReleaseDate`, `Studio`, `Description`, `Trailer`, `Opinion`) VALUES
(1, 'Kizumonogatari I Iron Blooded', 8.5, 'Fantasy', '64', '2016-01-08', 'Shaft', 'In his 2nd year, Araragi befriends top student Hanekawa, who mentions a rumor of a blonde vampire. That night, he follows blood into a subway and finds the vampire dismembered. When she begs for help, he faces a choice that could change his life forever.', 'https://www.youtube.com/watch?v=LYPJoA9udJo', 'The Kizumonogatari movies were the first things i watched from the <a href=\'reviewpage.php?type=Series&id=1\'>Monogatari series</a>. It explains how Arararagi became the thrall of the Vampire Kisshot Acelora Orion Heart Underblade. It was a thrilling movie trilogy with Epic fights, amazing art and a beautifull story.'),
(2, 'Kizumonogatari II Hot Blooded', 8.5, 'Fantasy', '68', '2016-08-19', 'Shaft', 'No longer human, Araragi seeks Kiss-shot’s stolen limbs from three hunters: Dramaturgie, a vampire; Episode, a half-vampire; and Guillotinecutter, a deadly priest. But each battle pulls him closer to vampirism—can he still return to being human?', 'https://www.youtube.com/watch?v=nOiEjQy-J7U', 'The Kizumonogatari movies were the first things i watched from the <a href=\'reviewpage.php?type=Series&id=1\'>Monogatari series</a>. It explains how Arararagi became the thrall of the Vampire Kisshot Acelora Orion Heart Underblade. It was a thrilling movie trilogy with Epic fights, amazing art and a beautifull story.'),
(3, 'Kizumonogatari III Cold Blooded', 8.5, 'Fantasy', '83', '2017-01-06', 'Shaft', 'After reviving the vampire Kiss-shot, Araragi becomes her servant. To regain humanity, he must restore her full power by returning her limbs. But doubts grow—can he trust her, or even stop her, once revived? At his limit, Araragi must choose, risking deep regret.', 'https://www.youtube.com/watch?v=4nTLr6Uf9Ug', 'The Kizumonogatari movies were the first things i watched from the <a href=\'reviewpage.php?type=Series&id=1\'>Monogatari series</a>. It explains how Arararagi became the thrall of the Vampire Kisshot Acelora Orion Heart Underblade. It was a thrilling movie trilogy with Epic fights, amazing art and a beautifull story.'),
(4, 'Bleach Memories Of Nobody', 9, 'Action, Supernatural', '93', '2006-12-16', 'Studio Pierrot', 'Ichigo and Rukia, Soul Reapers of Karakura Town, face mysterious \'Blanks\'—souls immune to burial. Rescued by the enigmatic Senna, they uncover a human-world mirage over Soul Society, hinting at secrets tied to Senna’s hidden identity.', 'https://www.youtube.com/watch?v=DUyEuGL2vT0', 'Memories Of Nobody is a great movie and in my opinion the best. The great art, character design and story really make for a great movie especially the emotional impact it has.'),
(5, 'Bleach DiamondDust Rebellion', 8.5, 'Action, Supernatural', '92', '2007-12-22', 'Studio Pierrot', 'Squad 10 escorts the \'Ouin\' when attackers steal it, and Hitsugaya pursues them, leaving his squad behind. Branded a traitor, he flees, while Ichigo, Rukia, Renji, and Matsumoto set out to prove his innocence and uncover the artifact’s true thief.', 'https://www.youtube.com/watch?v=tTCUvbdlpI8', 'Diamond Dust Rebellion is a great movie, Everyone that likes Toshiro will love this movie as it provides more information about his past and his zanpakuto Hyorinmaru. Its art story and fights are really good and makes for a really fun movie.'),
(6, 'Bleach Fade To Black', 8, 'Action, Supernatural', '94', '2008-12-13', 'studio pierrot', 'After Rukia’s memories are erased, Ichigo forgets her too until Kon reminds him. With Kisuke’s help, they enter Seireitei, only to find the Shinigami have forgotten Ichigo. Together, they fight former allies to find Rukia and stop her mysterious attackers.', 'https://www.youtube.com/watch?v=HVNLo3ciIpk', 'Fade To Black is quite interesting. The story is about some of Rukia\'s old friends and everyone forgetting Rukia and Ichigo. Its an interesting movie with some amazing fights.'),
(7, 'Bleach Hell Verse', 7.5, 'Action, Supernatural', '94', '2010-12-04', 'Studio Pierrot', 'When prisoners from Hell revolt and escape to Karakura, Ichigo and friends are overwhelmed. A mysterious man intervenes, and with Kokutou leading, Ichigo, Rukia, Uryuu, and Renji enter Hell to stop the threat and save the world.', 'https://www.youtube.com/watch?v=keAZvYawTGU', 'I liked Hell Verse it was interesting to see the Hell dimension in the Bleach world. but the world building of Hell was a bit dissapointing. Ichigo\'s Hell armor and powers were cool but it sadly wasn\'t ever used after. The fights were good, and the story was nice.'),
(8, 'Your Name', 9, 'Drama, Romance, Supernatural', '106', '2016-08-26', 'CoMix Wave Films', 'Mitsuha and Taki mysteriously swap bodies, experiencing each other’s lives and struggles. As they seek answers, their actions intertwine, shaping each other’s fates. Kimi no Na wa. is a beautifully crafted tale of connection, love, and destiny.', 'https://www.youtube.com/watch?v=xU47nhruN-Q', 'Your Name is truly a beautiful story. Its amazing story, art and character design are on another level it looks better than most animated series / movies made now even though it was made 10 years ago. The concept of having two people switch bodies and try to meet each other is unique too. especially with the 3 year time difference, and the problem of remembering the other person. It really makes you wonder how you would act in those circumstances. I really love this movie its just so beautiful.'),
(9, 'Weathering With You', 8.5, 'Romance, Fantasy, Slice Of Life', '114', '2019-07-19', 'CoMix Wave Films', 'Runaway Hodaka meets Hina, an orphan with the miraculous power to summon the sun. Together, they become a \'sunshine girl\' team, brightening Tokyo’s rainy skies—but their gift comes with unforeseen costs, testing love, hope, and sacrifice.', 'https://www.youtube.com/watch?v=Q6iK6DjV_iE', 'Weathering With You is a beautiful story like <a href=\'reviewpage.php?type=Movies&id=8\'>Your Name</a>its more lighthearted but still a great story. I really liked the few references too some of the charcters from <a href=\'reviewpage.php?type=Movies&id=8\'>Your Name</a>. Taki, Mitsuha, Sayaka & Teshii. The art and character design of Weathering With You are great too and its just a really beautiful movie with a touching story.'),
(10, 'Bubble', 8.5, 'Romance, Adventure', '100', '2022-04-28', 'Wit Studio', 'In a Tokyo warped by gravity-defying bubbles, parkour prodigy Hibiki meets Uta, a mysterious girl who saves him. Drawn together by a sound only they can hear, their bond sparks a journey that uncovers secrets destined to reshape the world.', 'https://www.youtube.com/watch?v=mk0H4_F_1Zs', 'Bubble.. A simple name for a beautiful movie, with story writing, art, animation, worldbuilding and character design as beautiful as <a href=\'reviewpage.php?type=Movies&id=8\'>Your Name</a> and <a href=\'reviewpage.php?type=Movies&id=9\'>Weatering With You.</a> Bubble has less romance than the other two but the amazing parkour scenes still make it a great movie.');

-- --------------------------------------------------------

--
-- Table structure for table `series`
--

CREATE TABLE `series` (
  `ID` int(11) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Rating` float DEFAULT NULL,
  `Genre` varchar(50) NOT NULL,
  `Seasons` varchar(5) NOT NULL,
  `Episodes` varchar(5) NOT NULL,
  `ReleaseDate` date NOT NULL,
  `Status` varchar(20) NOT NULL,
  `Studio` varchar(100) NOT NULL,
  `Description` text NOT NULL,
  `Trailer` varchar(255) NOT NULL,
  `Opinion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `series`
--

INSERT INTO `series` (`ID`, `Title`, `Rating`, `Genre`, `Seasons`, `Episodes`, `ReleaseDate`, `Status`, `Studio`, `Description`, `Trailer`, `Opinion`) VALUES
(1, 'Monogatari Series', 9, 'Fantasy & Mystery', '10', '102', '2009-07-03', 'Not Finished', 'Shaft', 'Koyomi Araragi, saved from vampirism by Meme Oshino, retains odd abilities like healing and sharp vision. When he discovers classmate Hitagi Senjougahara is mysteriously weightless, he seeks Oshino’s aid. Bakemonogatari follows Araragi helping others with supernatural afflictions.', 'https://www.youtube.com/watch?v=PugZi9QKL64', 'The Monogatari series is a great collection of small stories about solving mysterious apparition related problems. Its a fun series with quite alot of comedy. Its a fun watch with amazing art and interesting characters.'),
(2, 'Bocchi The Rock', 8, 'Comedy, Music', '1', '12', '2022-10-09', 'Not Finished', 'CloverWorks', 'Lonely and anxious guitarist Hitori \'Bocchi\' Gotou dreams of playing in a band. After meeting drummer Nijika, she joins Kessoku Band with bassist Ryou and later runaway guitarist Kita. Despite a rocky start, they bond through music, grow as musicians, and cherish their high school days.', 'https://www.youtube.com/watch?v=SyMMZF5zNW4', 'Bocchi The Rock is a fun serie about some highschoolers who make music. Its a simple carefree serie which is quite fun to watch.'),
(3, 'Attack On Titan', 8.5, 'Action, Fantasy', '4', '98', '2013-04-07', 'Finished', 'Wit Studio', 'Humans live behind massive walls after titans nearly wiped them out. When a colossal titan breaches the barrier, Eren Yeager joins the Survey Corps with Mikasa and Armin, vowing to destroy the man-eating giants and uncover their secrets.', 'https://www.youtube.com/watch?v=LV-nazLVmgo', 'Attack On Titan is a great series. It has an impactful story, great art and intense battles. Its about Eren Yaeger that fights back against the Titans so that they can live in peace. I was sitting on the edge of my seat the entire time. I definitely recommend it.'),
(4, 'Bleach', 10, 'action, Supernatural', '20', '406', '2004-10-05', 'Not Finished', 'Studio Pierrot', 'Ichigo Kurosaki becomes a Soul Reaper after gaining powers from Rukia Kuchiki to save his family from Hollows. With friends Orihime, Chad, and Uryuu, he battles evil spirits and soon learns threats far greater than Hollows endanger the human world.', 'https://www.youtube.com/watch?v=78WIYzX_m98', 'Bleach\'s fights were amazing, every fights was exciting and Ichigo\'s enemies all had amazing designs. It was a very enjoyable serie and i definetly recmomend it.'),
(5, 'Angel Beats', 10, 'Action, Comedy, Drama', '1', '13', '2010-04-03', 'Finished', 'P.A. Works', 'Otonashi awakens in the afterlife with no memories but his name. Yuri, leader of the SSS, battles a girl called Tenshi, whom Otonashi doubts is evil. Joining the SSS, he seeks his past while being drawn to Tenshi, uncovering the secrets of life after death.', 'https://www.youtube.com/watch?v=1dkoSUS588g', 'Angel Beats is one of the best series i\'ve seen. Its a very emotional serie and the band Girls Dead Monsters is super good. I really reccomend this one for people who like comedies, emotional drama\'s and a bit of action.'),
(6, 'JoJo\'s Bizarre Adventures', 9, 'Action, Adventure, Fantasy', '6', '190', '2012-10-06', 'Not Finished', 'David Production', 'JoJo’s Bizarre Adventure follows the Joestar bloodline across generations, each hero facing supernatural foes with unique powers. From vampires to Stands, the saga blends action, style, and eccentric battles in a wild, ever-evolving adventure.', 'https://www.youtube.com/watch?v=akrEeCatKg4', 'JoJo\'s Bizarre adventures is great. Its all about descendents of the Joestar bloodline fighting their enemies, Especially Dio Brando. From the comedic moments to the amazing fights JJBA is truly a great series that all should watch'),
(7, 'Love, Chuunibyou And Other Delusions', 9.5, 'Comedy, Drama, Romance', '2', '24', '2012-10-04', 'Finished', 'Kyoto Animations', 'Yuuta, once a self-styled \'Dark Flame Master,\' wants to escape his embarrassing Delusional past and live normally in high school. But his eccentric classmate Rikka, the “Wicked Eye,” drags him back into a world of delusions, chaos, and heartwarming comedy.', 'https://www.youtube.com/watch?v=USgrD2Dqsa0', 'Chuunibyou is a heartwarming story between a delusional girl and a boy who used to be like her. It has quite alot of comedic parts which makes you connect more to the characters. To summarize it a bit, the story, art, character design and animations are all really great and the ties you make with the characters and the comedic moments make it feel closer to home.'),
(8, 'Konosuba, Gods Blessing On This Wonderful World', 8, 'Comedy Fantasy', '4', '43', '2016-01-14', 'Not Finished', 'Studio Deen', 'After dying a pathetic death, Kazuma is offered a new life in a fantasy world. He drags goddess Aqua along, but she proves useless. Faced with debt, danger, and absurd allies, their \'epic quest\' quickly spirals into comedy and nonstop misfortune.', 'https://www.youtube.com/watch?v=EpAVv0cLhzA', 'Konosuba\'s comedy is great its alot of fun and is really silly. Its art is nice, the story is silly and characters are too. The Crimson Demon Megumin is my favorite character and has in my opinion the best character design in all of fiction.'),
(9, 'Seraph Of The End', 8.5, 'Supernatural, Action', '2', '24', '2015-04-04', 'Discontinued', 'Wit Studio', 'A virus wipes out everyone over 13, leaving children enslaved by vampires. Yuuichirou survives a failed escape that kills his orphan family and joins the Demon Army to fight back. Driven by revenge, he battles vampires while torn between loyalty and vengeance.', 'https://www.youtube.com/watch?v=NtzDAmRhD9s', 'Seraph Of The End is really good. It has great fights, art and characters but sadly they never finished the series after season 2. the comics are still being made but they probably wont ever adapt it into a serie again.'),
(10, 'Fairy Gone', 8, 'Action, Fantasy, Supernatural', '2', '24', '2019-10-07', 'Finished', 'P.A. Works', 'In a world where fairies were once weapons of war, humans called Fairy Soldiers now struggle to find purpose. Nine years later, Mariya joins Dorothea, a unit fighting fairy-related crimes, as ex-soldiers, terrorists, and mafias clash in a chaotic postwar era.', 'https://www.youtube.com/watch?v=VUX5l3uAqLI', 'Fairy Gone is a cool show with amazing battles and great visuals. Its a bit like <a href=\'reviewpage.php?type=Series&id=3\'>Attack On Titan</a> in its seriousness and fights. But overall its a fun watch.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `series`
--
ALTER TABLE `series`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
