# ************************************************************
# Sequel Pro SQL dump
# Version 4135
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.5.34)
# Database: laravel
# Generation Time: 2014-07-29 07:15:05 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`)
VALUES
	(1,'Cat 1','0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(2,'Cat 2','0000-00-00 00:00:00','0000-00-00 00:00:00');

/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table category_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `category_user`;

CREATE TABLE `category_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `category_user_category_id_index` (`category_id`),
  KEY `category_user_user_id_index` (`user_id`),
  CONSTRAINT `category_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `category_user_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `category_user` WRITE;
/*!40000 ALTER TABLE `category_user` DISABLE KEYS */;

INSERT INTO `category_user` (`id`, `category_id`, `user_id`, `created_at`, `updated_at`)
VALUES
	(3,1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(4,2,1,'0000-00-00 00:00:00','0000-00-00 00:00:00');

/*!40000 ALTER TABLE `category_user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`migration`, `batch`)
VALUES
	('2014_07_23_081818_create_users_table',1),
	('2014_07_23_082855_add_permission_column_to_users_table',1),
	('2014_07_25_100940_create_posts_table',1),
	('2014_07_28_153457_create_categories_table',1),
	('2014_07_28_153849_create_category_user_table',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;

INSERT INTO `posts` (`id`, `user_id`, `title`, `body`, `created_at`, `updated_at`)
VALUES
	(1,2,'Provident iste aliquid earum aut sit id sapiente.','She hastily put down the hall. After a time there were a Duck and a fan! Quick, now!\' And Alice was so full of soup. \'There\'s certainly too much frightened to say whether the pleasure of making a daisy-chain would be grand, certainly,\' said Alice, \'a great girl like you,\' (she might well say that \"I see what was on the spot.\' This did not like to see that queer little toss of her little sister\'s dream. The long grass rustled at her feet in a ring, and begged the Mouse in the last few minutes,.','2014-07-28 16:13:22','2014-07-28 16:13:22'),
	(2,2,'Non natus tempora voluptates doloremque iste rerum et.','When they take us up and said, without even looking round. \'I\'ll fetch the executioner myself,\' said the Gryphon, \'that they WOULD go with the name again!\' \'I won\'t interrupt again. I dare say there may be ONE.\' \'One, indeed!\' said the King and Queen of Hearts, who only bowed and smiled in reply. \'That\'s right!\' shouted the Queen to play croquet.\' The Frog-Footman repeated, in the after-time, be herself a grown woman; and how she was coming back to the baby, it was growing, and she at once.','2014-07-28 16:13:23','2014-07-28 16:13:23'),
	(3,1,'Tenetur nisi adipisci quia provident architecto.','I only wish people knew that: then they both bowed low, and their slates and pencils had been all the rats and--oh dear!\' cried Alice, quite forgetting that she had read several nice little dog near our house I should think you might do something better with the Dormouse. \'Don\'t talk nonsense,\' said Alice hastily; \'but I\'m not myself, you see.\' \'I don\'t know what \"it\" means well enough, when I find a thing,\' said the Caterpillar. \'Is that the way down one side and then she had to stoop to save.','2014-07-28 16:13:23','2014-07-28 16:13:23'),
	(4,2,'Hic quam aut sunt et ab quo.','So Alice got up and repeat \"\'TIS THE VOICE OF THE SLUGGARD,\"\' said the Hatter; \'so I can\'t tell you his history,\' As they walked off together. Alice laughed so much already, that it had come back in a moment: she looked up, and reduced the answer to it?\' said the Cat, and vanished again. Alice waited till she had to run back into the Dormouse\'s place, and Alice guessed in a low curtain she had never had to do next, when suddenly a White Rabbit read out, at the number of executions the Queen.','2014-07-28 16:13:23','2014-07-28 16:13:23'),
	(5,1,'Earum est ut quia eligendi illum ipsam eos.','Alice looked all round her head. \'If I eat or drink anything; so I\'ll just see what was the first verse,\' said the Rabbit whispered in reply, \'for fear they should forget them before the officer could get away without being seen, when she was terribly frightened all the while, till at last the Mock Turtle: \'nine the next, and so on.\' \'What a curious dream, dear, certainly: but now run in to your places!\' shouted the Queen, pointing to Alice to herself, \'after such a noise inside, no one else.','2014-07-28 16:13:23','2014-07-28 16:13:23'),
	(6,2,'Qui labore in sunt ipsam.','Even the Duchess sneezed occasionally; and as he spoke. \'UNimportant, of course, I meant,\' the King said to Alice, very earnestly. \'I\'ve had nothing yet,\' Alice replied very readily: \'but that\'s because it stays the same words as before, \'It\'s all his fancy, that: they never executes nobody, you know. So you see, as they came nearer, Alice could see her after the rest were quite dry again, the cook was busily stirring the soup, and seemed to think about stopping herself before she got to grow.','2014-07-28 16:13:23','2014-07-28 16:13:23'),
	(7,1,'Earum ex maxime doloribus aperiam optio.','And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then she walked off, leaving Alice alone with the bread-knife.\' The March Hare took the hookah into its face in her pocket, and was just in time to be two people! Why, there\'s hardly room for her. \'Yes!\' shouted Alice. \'Come on, then,\' said the Queen was to twist it up into the court, \'Bring me the list of the court. (As that is rather a hard.','2014-07-28 16:13:23','2014-07-28 16:13:23'),
	(8,1,'Sed ad mollitia suscipit quidem quas facere deleniti eligendi.','Number One,\' said Alice. \'I don\'t see any wine,\' she remarked. \'It tells the day of the suppressed guinea-pigs, filled the air, mixed up with the lobsters to the table to measure herself by it, and then unrolled the parchment scroll, and read out from his book, \'Rule Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at her rather inquisitively, and seemed not to lie down on one knee. \'I\'m a poor man, your Majesty,\' the Hatter was out of it, and behind them a.','2014-07-28 16:13:23','2014-07-28 16:13:23'),
	(9,2,'Et accusantium nisi enim blanditiis nemo.','ME\' were beautifully marked in currants. \'Well, I\'ll eat it,\' said the Caterpillar. Alice said very politely, \'if I had our Dinah here, I know I have done just as she spoke. Alice did not come the same side of the officers: but the Rabbit came near her, she began, rather timidly, saying to herself how she was in March.\' As she said to herself, \'whenever I eat one of the birds and animals that had made the whole pack rose up into the roof was thatched with fur. It was so long since she had.','2014-07-28 16:13:23','2014-07-28 16:13:23'),
	(10,1,'Praesentium deleniti magni ut voluptatem optio aliquam.','Alice joined the procession, wondering very much confused, \'I don\'t know where Dinn may be,\' said the Mock Turtle in a very poor speaker,\' said the youth, \'and your jaws are too weak For anything tougher than suet; Yet you finished the goose, with the Duchess, as she could see, as they lay on the song, perhaps?\' \'I\'ve heard something splashing about in the middle, wondering how she would gather about her any more if you\'d like it very nice, (it had, in fact, I didn\'t know that you\'re mad?\' \'To.','2014-07-28 16:13:23','2014-07-28 16:13:23');

/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `permission` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `email`, `password`, `created_at`, `updated_at`, `permission`)
VALUES
	(1,'joost@joostvanveen.com','sad','0000-00-00 00:00:00','0000-00-00 00:00:00',3),
	(2,'jim@tutsplus.com','khjgAS','0000-00-00 00:00:00','0000-00-00 00:00:00',2);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
