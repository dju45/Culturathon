-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: cultarathon
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Artwork`
--

DROP TABLE IF EXISTS `Artwork`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Artwork` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `current_id` int(11) NOT NULL,
  `museum_id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creationDate` datetime NULL,
  `update_at` datetime  NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_47A2FCEAF58A7A5C` (`current_id`),
  KEY `IDX_47A2FCEA4B52E5B5` (`museum_id`),
  KEY `IDX_47A2FCEAB7970CF8` (`artist_id`),
  CONSTRAINT `FK_47A2FCEA4B52E5B5` FOREIGN KEY (`museum_id`) REFERENCES `museum` (`id`),
  CONSTRAINT `FK_47A2FCEAB7970CF8` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`id`),
  CONSTRAINT `FK_47A2FCEAF58A7A5C` FOREIGN KEY (`current_id`) REFERENCES `artistic_current` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Artwork`
--

LOCK TABLES `Artwork` WRITE;
/*!40000 ALTER TABLE `Artwork` DISABLE KEYS */;
INSERT INTO `Artwork` VALUES (1,3,6,2,'Guernica','huile sur toile','3,49 m x 7,77 m','Cette toile monumentale est une dénonciation engagée du bombardement de la ville de Guernica, qui venait de se produire le 26 avril 1937, lors de la guerre d\'Espagne, ordonné par les nationalistes espagnols et exécuté par des troupes allemandes nazies et fascistes italiennes. Le tableau de Picasso, qui fut exposé dans de nombreux pays entre 1937 et 1939, a joué un rôle important dans l\'intense propagande suscitée par ce bombardement et par la guerre d\'Espagne ; il a acquis ainsi rapidement une grande renommée et une portée politique internationale, devenant un symbole de la dénonciation de la violence franquiste et fasciste, puis de l\'horreur de la guerre en général.',NULL,NULL,NULL),(2,3,7,5,'Les Grandes Baigneuses','peinture à l\'huile.','127.2 x 196.1 cm','On s\'accorde aujourd\'hui à penser que la version des Grandes Baigneuses est la dernière version d\'un thème cher à Paul Cézanne (1839-1906). C\'était en tout cas celle qui restait à sa mort dans son atelier des Lauves à Aix-en-Provence.',NULL,NULL,NULL),(3,1,2,6,'Olympia','huile sur toile','130,5 × 191 cm','L\'œuvre représente au premier plan une jeune femme nue, le pied gauche encore chaussé d\'une mule, allongée sur un divan et un châle de cachemire blanc, dans un intérieur décoré de tentures vertes et de tapisseries. Posée sur deux oreillers satinés, elle est accoudée sur son bras droit, la main gauche sur la naissance de ses jambes, le regard porté vers le spectateur.\r\nAu second plan, derrière le lit, à droite, une femme noire lui présente un bouquet de fleurs devant un fond vert ; un chat noir se dresse sur l\'extrémité droite du lit, la queue levée.',NULL,NULL,NULL),(4,1,5,5,'Le Panier de Pommes','Peinture à l\'huile','65 cm x 80 cm','Le panier de pommes dû à ses parties déséquilibrées était considéré comme une composition équilibrée. Beaucoup de pièces déséquilibrées comprennent la bouteille titrée, biscuits lignes raccourcies, panier incliné et le côté droit de la peinture contenant la nappe ne correspond pas au même plan que le côté gauche donnant une vue qu\'il existe deux points de vue différents. Ce type de peinture a aidé à former un pont entre le cubisme et l\'impressionnisme. La toile en haut montre une bouteille de vin, une nappe, une assiette contenant des biscuits ou des petits pains et un panier incliné exposant les fruits à l\'intérieur. Tout semble satisfaisant à moins que quelqu\'un ne remarque l\'erreur dans le dessin comme étant visible à partir des lignes de la table qui représentent les bords proches et lointains.',NULL,NULL,NULL),(5,2,2,10,'La Desserte Rouge','huile sur toile','1,8 m x 2,2 m','Dans ce tableau de genre est représenté une salle à manger dont le même motif est utilisé sur la table et sur les murs (bleu, violet), donnant une impression de continuité. C\'est à peine si une ligne très fine permet de distinguer la nappe qui couvre la table du papier peint (ou de la tapisserie) du mur. La couleur d\'un rouge pur et vif est une caractéristique du fauvisme.',NULL,NULL,NULL),(6,2,1,13,'Prades, Le Village','Peinture à l\'huile','65 cm x 72 cm','Cette toile est le résultat de neuf mois d\'élaboration pendant lesquels le peintre peint tous les éléments de l\'environnement de la ferme : les animaux domestiques, les végétaux et les ustensiles. Il détaille les éléments du tableau dans les plus infimes détails, dans un procédé appelé « calligraphie mironienne » et qui sert de point de départ à son œuvre surréaliste des années suivantes.',NULL,NULL,NULL),(7,2,2,14,'Maisons à l\'Estaque','Huile sur toile','73 × 59,5 cm','Les formes géométriques prédominent dans chaque élément de la toile : les arbres qui forment des triangles avec les branches croisées, les maisons en succession de prismes. La palette de couleur de Braque dans cette œuvre est essentiellement réduite aux jaune, orangé, vert et brun. L\'artiste a encore épuré, simplifié sa peinture selon le style qu\'il a déjà expérimenté dans Le Viaduc de l\'Estaque (1908), huile sur toile, 72,5 × 59 cm réalisée la même année, conservée au Centre national d\'art et de culture Georges-Pompidou, Paris.\r\n\r\nComme tous les paysages de l\'Estaque, le motif varie peu et comprend deux ou trois éléments au maximum : des maisons, des arbres, parfois une route. « Il semble que la réduction des motifs suive celle de la gamme chromatique pour donner plus de force à la densité et à la frontalité du tableau. » Selon Bernard Zurcher, ce tableau est « plein à ras bord de plans articulés les uns autres en forme de polyèdre », empilés dans le sens de la hauteur, comme un chaos organisé en équilibre instable',NULL,NULL,NULL),(8,1,3,15,'Le Violoniste vert','peinture à l\'huile','1.98 m x 1.09 m','En premier plan il y a le violoniste vert qui joue du violon sur le toit des maisons. Cela donne un effet irréaliste au tableau. Sur son pantalon, on voit les fenêtres des immeubles comme si ça se reflétait dessus. Les couleurs du premier plan sont vives. En arrière-plan il y a un homme qui tape le violoniste vert avec son violon. Le tableau est constitué uniquement de formes géométriques.',NULL,NULL,NULL),(9,1,4,3,'Champ de blé aux corbeaux','huile sur toile','50,5 × 100,5 cm','Les critiques et historiens d\'art voient généralement dans ce tableau une représentation de l\'état d\'esprit préoccupé de Van Gogh, avec un ciel foncé et menaçant, l\'indécision de trois chemins allant dans différentes directions et les corbeaux noirs, signes de pressentiment ou même de mort. Van Gogh s\'est en effet suicidé quelques jours après avoir peint ce tableau.',NULL,NULL,NULL),(10,3,8,16,'Nu descendant un escalier','Huile sur toile','1,47 m x 90 cm','Le Nu descendant un escalier n°2 est exposé pour la première fois au Salon des indépendants à partir du 20 mars 1912 : le comité de placement, composé entre autres de Gleizes, Jean Metzinger, Henri Le Fauconnier et Fernand Léger, n\'apprécient pas cette toile, qui ne correspond pas selon eux aux canons esthétiques du cubisme, ils demandent aux frères de Duchamp, Villon et Duchamp-Villon, d\'aller voir ce dernier pour lui faire part de leurs remarques et de l\'inciter à au moins changer le titre. Duchamp refuse, et sans explications, il vint chercher son tableau et celui-ci ne fut jamais exposé au Salon des Indépendants. En France, le tableau fut exposé pour la dernière fois lors du salon de la Section d\'or en octobre.',NULL,NULL,NULL);
/*!40000 ALTER TABLE `Artwork` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artist`
--

DROP TABLE IF EXISTS `artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `placeOfBirth` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `birthDate` date NOT NULL,
  `deathDate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Biography` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist`
--

LOCK TABLES `artist` WRITE;
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;
INSERT INTO `artist` VALUES (2,'Pablo','Picasso','Malaga','1881-07-25','1973-04-08','Symbole du XXème siècle, immense artiste, Pablo Picasso est à la fois peintre, sculpteur, graveur et céramiste. Venu en France au début du siècle, il deviendra le chef de file du mouvement cubiste avec son ami Georges Braque. Doté d\'une exceptionnelle soif de créativité, il touche à tous les courants picturaux du XXème siècle, surréalisme, expressionnisme ou néo-classicisme, pour devenir un des maîtres incontestés de l\'art moderne.'),(3,'Vincent ','Van Gogh','Groot-Zundert','1853-03-30','1890-07-29','Artiste non reconnu et incompris de son vivant, Van Gogh est l’un des grands peintres du XIXème siècle. Hésitant un temps entre la vocation artistique et religieuse, il choisit de se consacrer à la peinture.'),(5,'Paul ','Cézanne','Aix-en-Provence','1839-01-19','1906-10-22','Au cours du XIXème siècle, dominé dans le domaine pictural par le romantisme et l’impressionniste, Paul Cézanne réussit à définir un genre nouveau. Incompris du public et d’une partie de la critique, il exercera cependant une influence incontestable sur ses confrères, et continuera à inspirer de nombreux artistes après sa mort.'),(6,'Edouard','Manet','Paris','1832-01-23','1883-04-30','Édouard Manet voit le jour au sein d\'une famille de la haute bourgeoisie. Ses premiers pas dans la vie sont marqués par l\'incertitude et l\'instabilité. Il étudie quelques temps dans l\'atelier de Couture puis effectue de nombreux voyages, qui inspireront son oeuvre'),(8,'Eugène','Delacroix','Charenton St Maurice','1798-04-26','1863-08-13','Eugène Delacroix est un peintre français de la première moitié du XIXe siècle, considéré comme l\'un des précurseurs du mouvement romantique.'),(10,'Henri','Matisse','Le Cateau-Cambrésis ','1869-12-31','1954-11-03','Figure majeure du XXe siècle, son influence sur l\'art de la seconde partie du siècle est considérable par l\'utilisation de la simplification, de la stylisation, de la synthèse et de la couleur comme seul sujet de la peinture, aussi bien pour les nombreux peintres figuratifs ou abstraits qui se réclameront de lui et de ses découvertes. Il fut le chef de file du fauvisme.'),(13,'Joan','Miro','Barcelone','1893-04-20','1983-12-25','Son œuvre reflète son attrait pour le subconscient, pour l\'« esprit enfantin » et pour son pays. À ses débuts, il montre de fortes influences fauvistes, cubistes et expressionnistes, avant d\'évoluer dans de la peinture plane avec un certain côté naïf. Le tableau intitulé La Ferme, peint en 1921, est l\'une des toiles les plus connues de cette époque.'),(14,'Georges','Braque','Argenteuil','1882-05-13','1963-08-31','D\'abord engagé dans le sillage des fauves, influencé par Henri Matisse, André Derain et Othon Friesz, il aboutit, à l\'été 1906 aux paysages de l\'Estaque avec des maisons en forme de cubes que Matisse qualifie de « cubistes », particulièrement typées dans le tableau Maisons à l\'Estaque. Cette simplification est censée être à l\'origine du cubisme qui reste controversée, selon Olivier Cena'),(15,'Marc','Chagall','Liozna','1887-07-07','1985-03-28','Chagall est l\'un des plus célèbres artistes installés en France au XXe siècle, avec Pablo Picasso. Son œuvre, sans se rattacher à aucune école, présente des caractéristiques du surréalisme et du néo-primitivisme. Inspirée par la tradition juive, la vie du shtetl (village juif en Europe de l\'Est) et le folklore russe, elle élabore sa propre symbolique, autour de la vie intime de l\'artiste. Chagall s\'est essayé, outre la peinture sur toile, à la gravure, à la sculpture, à la poésie, à la peinture sur vitrail, sur émail, etc'),(16,'Marcel','Duchamp','Blainville-Creuvon','1887-07-28','1968-10-02','Depuis les années 1960, il est considéré par de nombreux historiens de l\'art et de critiques comme l\'artiste le plus important du XXe siècle. Déjà, André Breton le qualifiait d\'« homme le plus intelligent du siècle ». Notamment grâce à son invention des ready-mades, son travail et son attitude artistique continuent d\'exercer une influence majeure sur les différents courants de l\'art contemporain. Rare artiste n\'appartenant à aucun courant artistique précis, Marcel Duchamp a un style unique. Cassant les codes artistiques et esthétiques alors en vigueur, il est vu comme le précurseur et l\'annonciateur de certains aspects les plus radicaux de l’évolution de l\'art depuis 1945. Les protagonistes de l\'art minimal, de l\'art conceptuel et de l\'art corporel (body art), dans leur inspiration, leur démarche artistique et idéologique, témoignent de l\'influence déterminante de l’œuvre de Duchamp. Il aurait également été, d\'après les nombreux essais qui lui sont consacrés, l\'inspirateur d\'autres courants artistiques dont le pop art, le néodadaïsme, l\'op art et le cinétisme');
/*!40000 ALTER TABLE `artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artistic_current`
--

DROP TABLE IF EXISTS `artistic_current`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artistic_current` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artistic_current`
--

LOCK TABLES `artistic_current` WRITE;
/*!40000 ALTER TABLE `artistic_current` DISABLE KEYS */;
INSERT INTO `artistic_current` VALUES (1,'L\'impressionnisme'),(2,'Le fauvisme'),(3,'Le cubisme');
/*!40000 ALTER TABLE `artistic_current` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artwork_user`
--

DROP TABLE IF EXISTS `artwork_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artwork_user` (
  `artwork_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`artwork_id`,`user_id`),
  KEY `IDX_3975B07DB8FFA4` (`artwork_id`),
  KEY `IDX_3975B07A76ED395` (`user_id`),
  CONSTRAINT `FK_3975B07A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_3975B07DB8FFA4` FOREIGN KEY (`artwork_id`) REFERENCES `Artwork` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artwork_user`
--

LOCK TABLES `artwork_user` WRITE;
/*!40000 ALTER TABLE `artwork_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `artwork_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `museum`
--

DROP TABLE IF EXISTS `museum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `museum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_at` datetime NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `museum`
--

LOCK TABLES `museum` WRITE;
/*!40000 ALTER TABLE `museum` DISABLE KEYS */;
INSERT INTO `museum` VALUES (1,'Musée Guggenheim','Bilbao','SP',NULL,NULL),(2,'Musée du Louvre','Paris','FR',NULL, NULL),(3,'British Museum','Londres','GB',NULL,NULL),(4,'RijksMuseum','Amsterdam','PB',NULL,NULL),(5,'Metropolitan Museum of Art','New York City','US',NULL,NULL),(6,'Musée du Prado','Madrid','SP',NULL,NULL),(7,'National Gallery','Londres','GB',NULL,NULL),(8,'Musée d\'Histoire et d\'Archéologie','Orléans','FR',NULL,NULL);
/*!40000 ALTER TABLE `museum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D64992FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_8D93D649A0D96FBF` (`email_canonical`),
  UNIQUE KEY `UNIQ_8D93D649C05FB297` (`confirmation_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;  

-- Dump completed on 2018-06-15  0:56:49
