/*
SQLyog Ultimate v12.5.0 (64 bit)
MySQL - 10.4.17-MariaDB : Database - posts
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`posts` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `posts`;

/*Table structure for table `post` */

DROP TABLE IF EXISTS `post`;

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_title` varchar(100) NOT NULL,
  `post_summary` longtext NOT NULL,
  `post_description` longtext DEFAULT NULL,
  `post_added` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;

/*Data for the table `post` */

insert  into `post`(`post_id`,`post_title`,`post_summary`,`post_description`,`post_added`) values 
(1,'Doctor shot dead in North Waziristan','BANNU:\r\nA doctor was killed by unidentified assailants in a firing incident in North Waziristan on Saturday.\r\n\r\nThe doctor, who was also a professor at Bannu Medical College, Dr Waliullah Dawar was killed on Mir Ali Bypass Road. The accused, however, managed to escape.','BANNU:\r\nA doctor was killed by unidentified assailants in a firing incident in North Waziristan on Saturday.\r\n\r\nThe doctor, who was also a professor at Bannu Medical College, Dr Waliullah Dawar was killed on Mir Ali Bypass Road. The accused, however, managed to escape.\r\n\r\nPolice officials said Dr Waliullah belonged to Hormuz village of Mir Ali and was on his way home at 10pm when he was targeted. He used to travel to Mir Ali every Saturday and Sunday to treat patients.\r\n\r\nHis body was shifted to Mir Ali THQ Hospital for autopsy.\r\n\r\nEarlier this week, the police booked a government officer who had killed his wife and minor daughter in the Naseerabad area last week.\r\n\r\nThe grade 17 federal government employee, Mujahid Ali, confessed to strangulating his wife and 18-month old daughter during the investigation.\r\n\r\nA senior police official told The Express Tribune that Mujahid Ali probably killed his wife and daughter so that he could marry another woman.\r\n\r\nThe suspect confessed that he killed his wife and continued sleeping beside the dead body with her daughter for two-three days. Later, he killed the child too.','2021-01-16 19:13:53'),
(2,'Govt jacks up POL prices for second time in a month','ISLAMABAD:\r\nFollowing approval from Prime Minister Imran Khan, the government on Friday increased the price of petrol by Rs3.20 effective from January 16, 2021.\r\n\r\nThe Finance Division announced a hike of Rs3.20 per litre in the price of petrol and an increase of Rs2.95 per litre for highspeed diesel.','Meanwhile, the price of kerosene oil went up by Rs3 per litre and light diesel oil became costlier by Rs4.42 per litre.\r\n\r\nDespite the increase, the government claimed that it did not pass on the full impact of global oil prices and the exchange rate to the general public as recommended by the Oil and Gas Regulatory Authority (Ogra).\r\n\r\nThe regulator had worked out a massive increase in prices of petroleum products, which was based on the standard 17% general sales tax (GST) and applicable petroleum levy of Rs30 per litre with effect from January 16.\r\n\r\nFollowing the hike in prices, the new rate for petrol now stands at Rs109.20 per litre while the price for high-speed diesel is Rs113.19 per litre with effect from January 16.\r\n\r\nPrices of kerosene oil and light diesel oil were raised by Rs3 and Rs4.42 respectively to Rs76.65 per litre and Rs76.23 per litre for the second half of January.\r\n\r\nThe regulator had proposed a hefty Rs13.07-per litre increase in the petrol price.','2021-01-16 19:14:58'),
(3,'Kate Winslet reveals she was harassed by British media after Titanic','Kate Winslet may have a lot of hits in her career, but nothing could come close to the success of Titanic. The 1997 hit has been one of the highlights of the Hollywood star’s life. However, she has now revealed how it quickly turned into a nightmare. The Oscar-winner blames the UK media for turning on her the moment she became an international superstar, which resulted in her going “into self-protective mode right away.”','At the age of 22, Winslet became a household name, thanks to the Leonardo DiCaprio-starrer becoming a mega-hit immediately at the box office. That’s when she noticed her press coverage shift, and the bullying began almost instantaneously. “It was like night and day from one day to the next,” she shared on the WTF with Marc Maron podcast. “Also, I was subject to quite a lot of also personal physical scrutiny, and criticised quite a lot — the British press were actually quite unkind to me.”\r\n\r\nAs a result, she says, she began to associate fame with the constant nitpicking of her body and harassment from the media. “I felt quite bullied, if I’m honest,” Winslet said. “I remember just thinking, ‘Okay, well, this is horrible and I hope it passes.’ And it did definitely pass, but it also made me realize that if that’s what being famous was, I was not ready to be famous, thank you. No, definitely not.”\r\n\r\nBecause she was thrust into the spotlight, it took time for Winslet to gain some perspective on what happened to her. She formulated a plan to stay away from making big Hollywood movies and “strategically try and find smaller things, just so I could understand the craft a bit better and understand myself a bit better, and maintain some degree of privacy and dignity,” she explained. It was her way of preserving her sanity when the British press was relentless.\r\n\r\nFor Winslet, it took about three years for the white-hot glare of the media to move on. The birth of her daughter, Mia, in 2000, also shifted her worries away from the bullying to enjoying time with her newborn. “My focus was my child, and that was all that mattered,” she said.','2021-01-16 21:09:06'),
(11,'Facebook bans ads for gun accessories in run-up to inauguration','The move comes as the US braces for the possibility of more violence ahead of the Jan. 20 swearing in of President-elect Joe Biden.','sadFacebook is temporarily prohibiting ads for military gear and gun accessories in the US until after the Jan. 20 presidential inauguration, the company said Saturday.\n\n\"We are banning ads that promote weapon accessories and protective equipment in the US at least through January 22, out of an abundance of caution,\" the company said in an update to a Monday blog post about the social network&#039;s preparations leading up to the inauguration of President-elect Joe Biden.','2021-01-17 23:41:32'),
(17,'WhatsApp delays privacy update following concerns over Facebook data sharing','WhatsApp delays privacy update following concerns over Facebook data sharing','CEarlier this week, WhatsApp published an FAQ clarifying the terms of its updated privacy policy and responding to concerns that it shares personal information with parent company Facebook. The firm noted the update doesn&#039;t affect the privacy of messages with friends and family, and instead relates to messaging businesses through the platform. WhatsApp also said the update \"provides further transparency about how we collect and use data.','2021-01-17 23:44:59');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
