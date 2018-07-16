-- MySQL dump 10.13  Distrib 5.7.14, for Win64 (x86_64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	5.7.14

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
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `webname` varchar(50) NOT NULL,
  `keywords` varchar(100) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `copy` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'支子花 / 个人简历','程序员','images/logo711.png','IvanZhi 2018',1);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intro`
--

DROP TABLE IF EXISTS `intro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `intro` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `job` varchar(255) NOT NULL,
  `age` int(10) NOT NULL,
  `hometown` char(50) DEFAULT NULL,
  `intro` text NOT NULL,
  `school` varchar(255) NOT NULL,
  `major` varchar(255) NOT NULL,
  `schooltime` varchar(255) DEFAULT NULL,
  `workintro` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intro`
--

LOCK TABLES `intro` WRITE;
/*!40000 ALTER TABLE `intro` DISABLE KEYS */;
INSERT INTO `intro` VALUES (1,'支子花','程序员',18,'河南，漯河','学校的主要课程包括：3Dmax、AE、Edius、Photoshop、web前端、php等课程。我在校期间担任学校话剧社表演部部长，性格开朗，抗压能力强。','中原工学院','数字媒体方向','2010.9-2014.7','1.5年web全栈工作经验，能够熟练搭建HTML+CSS页面，熟悉CSS3和HTML5，可熟练运用JavaScript、jQuery制作网页动效。能够运用VUE和React搭建网站。熟悉PHP，能够熟练运用thinkPHP和laravel。曾在网站连载小说，在该网站同类文学作品中阅读量长时间内高居第一名。后因学业和工作，停更。曾短期内做过产品企划，独立完成过一个珠宝品牌的全部方案。也曾在某女装品牌担任品牌策划，负责全国1800家门店的活动方案。');
/*!40000 ALTER TABLE `intro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `jobname` varchar(100) NOT NULL,
  `intro` text NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
INSERT INTO `job` VALUES (1,'前端web+全栈工程师','1年半工作经验，能够熟练搭建HTML+CSS页面，熟悉CSS3和HTML5，可熟练运用JavaScript、jQuery制作网页动效。能够运用VUE和React搭建网站。熟悉PHP，能够熟练运用thinkPHP和laravel。','icon-basic-keyboard'),(2,'网络小说作家','曾在网站连载小说，在该网站同类文学作品中阅读量长时间内高居第一名。后因学业和工作，停更。','icon-basic-book'),(3,'产品企划','曾做过产品企划，独立完成过一个珠宝品牌的全部方案。也曾在某女装品牌担任品牌策划，负责全国1800家门店的活动方案。','ion-social-wordpress-outline');
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `ctime` datetime DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,'zhizihua','942663098@qq.com','哈哈哈哈','dddddd','2018-07-08 11:04:12',NULL),(2,'支子花','942663098@qq.com','1111','11111','2018-07-15 16:03:59','13733989390');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (5,'2014_10_12_000000_create_users_table',2),(6,'2014_10_12_100000_create_password_resets_table',2),(3,'2018_07_12_021325_create_article_table',1),(7,'2018_07_13_092642_create_types_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(255) NOT NULL,
  `content` text NOT NULL,
  `ctime` datetime DEFAULT NULL,
  `count` int(11) DEFAULT '0',
  `tid` varchar(255) DEFAULT NULL,
  `pic` varchar(255) DEFAULT 'pic.jpg',
  `created_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,'河南鼎冠汽车服务','<p><img src=\"/star_max/images/ueditor/20180713/1531490538963653.jpg\" title=\"1531490538963653.jpg\" alt=\"1-1G009145051519.jpg\"/></p>','2018-07-13 22:03:46',1,'1','images/659.jpeg','2018-07-13 14:23:31','2018-07-13 14:23:31'),(2,'内衣商城demo，Vue实现','<p style=\"text-align: center;\"><img src=\"/star_max/images/ueditor/20180715/1531634228905944.png\" title=\"1531634228905944.png\" alt=\"微信截图_20180715135433.png\"/></p><p style=\"text-align: center;\"><img src=\"/star_max/images/ueditor/20180715/1531634233153930.png\" title=\"1531634233153930.png\" alt=\"微信截图_20180715135512.png\"/></p><p style=\"text-align: center;\"><img src=\"/star_max/images/ueditor/20180715/1531634239268676.png\" title=\"1531634239268676.png\" alt=\"微信截图_20180715135530.png\"/></p><p style=\"text-align: center;\"><img src=\"/star_max/images/ueditor/20180715/1531634246900939.png\" title=\"1531634246900939.png\" alt=\"微信截图_20180715135548.png\"/></p>','2018-07-13 22:24:28',0,'1','images/432.jpeg','2018-07-15 05:58:31','2018-07-15 05:58:31'),(5,'郑州八角信息科技有限公司','<p style=\"text-align: center;\"><img src=\"/star_max/images/ueditor/20180715/1531635975654815.png\" title=\"1531635975654815.png\" alt=\"火狐截图_2018-07-15T06-25-41.115Z.png\"/></p>','2018-07-15 14:29:32',1,'1','images/446.png','2018-07-15 06:29:32','2018-07-15 06:29:32'),(4,'HTTP请求过程原理','<p style=\"margin-top: 15px; margin-bottom: 0px; color: rgb(85, 85, 85); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px; letter-spacing: 0.5px; white-space: normal;\">在浏览器输入网址后，按回车键，要浏览的内容就会显示出来。那么在开发者眼中，这个过程是如何实现的呢？</p><p style=\"margin-top: 15px; margin-bottom: 0px; color: rgb(85, 85, 85); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px; letter-spacing: 0.5px; white-space: normal;\"><strong>其实，从输入 URL 到页面显示，大致可以分为三步：</strong></p><ul class=\" list-paddingleft-2\" style=\"list-style-type: none;\"><li><p style=\"margin-top: 15px; margin-bottom: 0px; display: inline;\">第一步：通过 DNS 进行域名解析，得到 IP 地址；</p></li><li><p style=\"margin-top: 15px; margin-bottom: 0px; display: inline;\">第二步：找到 IP 地址对应的服务器，通过三次握手建立 TCP 连接，向服务器发送 HTTP Request 请求，并得到服务器的 Response 响应；</p></li><li><p style=\"margin-top: 15px; margin-bottom: 0px; display: inline;\">第三步：浏览器根据响应结果渲染输出页面</p></li></ul><h2 style=\"margin: 20px -20px 20px -24px; line-height: 18px; color: rgb(85, 85, 85); text-rendering: optimizeLegibility; font-size: 18px; padding: 10px 20px 9px 10px; border-left: 4px solid rgb(0, 166, 124); background-color: rgb(251, 251, 251); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.5px; white-space: normal;\">第一步：DNS 解析过程</h2><ul class=\" list-paddingleft-2\" style=\"list-style-type: none;\"><li><p style=\"margin-top: 15px; margin-bottom: 0px; display: inline;\">在浏览器输入网址后，以 www.baidu.com 为例，系统会先检查本地hosts文件是否存在域名映射，若存在，则域名解析完成；</p></li><li><p style=\"margin-top: 15px; margin-bottom: 0px; display: inline;\">若不存在，则会去查询本地DNS缓存，若存在，则域名解析完成；</p></li><li><p style=\"margin-top: 15px; margin-bottom: 0px; display: inline;\">若不存在，则进一步查找本地DNS服务器，若存在，则解析完成；</p></li><li><p style=\"margin-top: 15px; margin-bottom: 0px; display: inline;\">若不存在，本地 DNS 服务器会把请求发送至根DNS服务器，根DNS服务器收到请求后会返回一个负责该顶级域名服务器的IP。本地DNS服务器收到IP后，将会请求这个IP对应的服务器，逐层查找，直到找到网址baidu.com 主机及对应的 IP</p></li></ul><h2 style=\"margin: 20px -20px 20px -24px; line-height: 18px; color: rgb(85, 85, 85); text-rendering: optimizeLegibility; font-size: 18px; padding: 10px 20px 9px 10px; border-left: 4px solid rgb(0, 166, 124); background-color: rgb(251, 251, 251); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.5px; white-space: normal;\">第二步：TCP(传输控制协议)报文结构及三次握手</h2><p style=\"margin-top: 15px; margin-bottom: 0px; color: rgb(85, 85, 85); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px; letter-spacing: 0.5px; white-space: normal;\"><img src=\"/ueditor/php/upload/image/20180715/1531634526594848.gif\" alt=\"TCP.gif\"/><br/></p><h3 style=\"margin: 0.5rem 0px; line-height: 35px; color: rgb(85, 85, 85); text-rendering: optimizeLegibility; font-size: 16px; font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.5px; white-space: normal; box-sizing: border-box; position: relative; width: inherit;\">TCP数据报文结构</h3><ul class=\" list-paddingleft-2\" style=\"list-style-type: none;\"><li><p style=\"margin-top: 15px; margin-bottom: 0px; display: inline;\">Seq：序号，用来标识数据包；</p></li><li><p style=\"margin-top: 15px; margin-bottom: 0px; display: inline;\">Ack：确认序号，表示确认；</p></li><li><p style=\"margin-top: 15px; margin-bottom: 0px; display: inline;\">SYN：建立新连接的标识；</p></li><li><p style=\"margin-top: 15px; margin-bottom: 0px; display: inline;\">FIN：断开连接的标识。</p></li></ul><h3 style=\"margin: 15px 0px -15px; line-height: 35px; color: rgb(85, 85, 85); text-rendering: optimizeLegibility; font-size: 16px; font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.5px; white-space: normal;\">三次握手</h3><p style=\"margin-top: 15px; margin-bottom: 0px; color: rgb(85, 85, 85); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px; letter-spacing: 0.5px; white-space: normal;\"><img src=\"/ueditor/php/upload/image/20180715/1531634526947326.jpg\" alt=\"三次握手.jpg\"/><br/></p><ul class=\" list-paddingleft-2\" style=\"list-style-type: none;\"><li><p style=\"margin-top: 15px; margin-bottom: 0px; display: inline;\">当客户端请求建立连接时，TCP 协议会设置 SYN 标志位和 Seq 序号。随后向服务器端发送数据包，然后进入 SYN-SEND 状态。</p></li><li><p style=\"margin-top: 15px; margin-bottom: 0px; display: inline;\">服务器端收到该数据包后，检测到 SYN 标志位，同时设置 SYN 和 ACK 标志位，返回数据包给客户端，之后进入 SYN-RECV 状态。</p></li><li><p style=\"margin-top: 15px; margin-bottom: 0px; display: inline;\">客户端收到确认包后，检测 ACK 标志位的值，如果正确，客户端进入 ESTABLISED 状态，连接建立成功。</p></li><li><p style=\"margin-top: 15px; margin-bottom: 0px; display: inline;\">服务器端收到确认包后，检测 ACK 标志位，如果正确，服务器也进入 ESTABLISED 状态，至此双方连接建立成功。</p></li><li><p style=\"margin-top: 15px; margin-bottom: 0px; display: inline;\">提示：为了确保数据的准确性，Seq 和 Ack 需要约定好：</p></li></ul><blockquote style=\"margin: 15px auto; border-width: 1px 1px 1px 3px; border-style: solid; border-color: rgb(214, 233, 198); border-image: initial; padding: 5px 15px 10px; background-color: rgb(250, 252, 249); font-size: 14px; color: rgb(85, 85, 85); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.5px; white-space: normal;\"><p style=\"margin-top: 6px; padding: 0px; text-indent: 30px; letter-spacing: 1px;\">第一次消息发送时 Seq 为系统生成：Ack 号 = Seq 号 + 传递的字节数 + 1；而之后发送的 Seq 号与接收到的 Ack 数值相同。</p></blockquote><h3 style=\"margin: 15px 0px -15px; line-height: 35px; color: rgb(85, 85, 85); text-rendering: optimizeLegibility; font-size: 16px; font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.5px; white-space: normal;\">为什么需要三次握手？</h3><p><br/></p><ul class=\" list-paddingleft-2\" style=\"list-style-type: none;\"><li><p style=\"margin-top: 15px; margin-bottom: 0px; display: inline;\">假如服务器端最后没有收到Ack确认包，就无法知道客户端是否建立连接成功，这样服务端将拒收任何来自客户端的消息。将不会发送数据给客户端。</p></li></ul><h3 style=\"margin: 15px 0px -15px; line-height: 35px; color: rgb(85, 85, 85); text-rendering: optimizeLegibility; font-size: 16px; font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.5px; white-space: normal;\">超时重传</h3><p><br/></p><ul class=\" list-paddingleft-2\" style=\"list-style-type: none;\"><li><p style=\"margin-top: 15px; margin-bottom: 0px; display: inline;\">假如在一定时间内发送方没有收到目标机器传回的确认包，那么就会启动超时重传机制，重传次数一般为3次，也可自定义。</p></li></ul><h2 style=\"margin: 20px -20px 20px -24px; line-height: 18px; color: rgb(85, 85, 85); text-rendering: optimizeLegibility; font-size: 18px; padding: 10px 20px 9px 10px; border-left: 4px solid rgb(0, 166, 124); background-color: rgb(251, 251, 251); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.5px; white-space: normal;\">第三步 TCP四次挥手断开连接及异常处理</h2><p style=\"margin-top: 15px; margin-bottom: 0px; color: rgb(85, 85, 85); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px; letter-spacing: 0.5px; white-space: normal;\">三次握手建立连接后，双方就可以进行数据的发送和接收了。假如之后的客户端发起了断开连接的情况，那么正常情况下的过程如下图所示：</p><p style=\"margin-top: 15px; margin-bottom: 0px; color: rgb(85, 85, 85); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px; letter-spacing: 0.5px; white-space: normal;\"><img src=\"/ueditor/php/upload/image/20180715/1531634527512695.jpg\" alt=\"四次挥手.jpg\"/><br/></p><p style=\"margin-top: 15px; margin-bottom: 0px; color: rgb(85, 85, 85); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px; letter-spacing: 0.5px; white-space: normal;\"><br/></p><ul class=\" list-paddingleft-2\" style=\"list-style-type: disc;\"><li><p style=\"margin-top: 15px; margin-bottom: 0px; display: inline;\">客户端向服务器发送FIN数据包，告知服务器需要断开，之后进入FIN_WAIT_1状态</p></li><li><p style=\"margin-top: 15px; margin-bottom: 0px; display: inline;\">服务端收到FIN数据包后，会向客户端发送Ack包，并继续处理未处理完的数据，然后进入CLOSE_WAIT状态</p></li><li><p style=\"margin-top: 15px; margin-bottom: 0px; display: inline;\">客户端收到Ack包后进入FIN)WAIT_2状态</p></li><li><p style=\"margin-top: 15px; margin-bottom: 0px; display: inline;\">服务端数据处理完毕后向客户端发送FIN包，告知可以准备断开连接了，然后进入LAST_ACK状态</p></li><li><p style=\"margin-top: 15px; margin-bottom: 0px; display: inline;\">客户端收到来自服务端的FIN包后，发出Ack确认包，然后进入TIME_WAIT状态</p></li><li><p style=\"margin-top: 15px; margin-bottom: 0px; display: inline;\">服务端收到客户端的Ack确认包后，关闭socket套接字，进入CLOSED状态。</p></li></ul><h3 style=\"margin: 15px 0px -15px; line-height: 35px; color: rgb(85, 85, 85); text-rendering: optimizeLegibility; font-size: 16px; font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.5px; white-space: normal;\"><strong>为什么是四次挥手？</strong></h3><p style=\"margin-top: 15px; margin-bottom: 0px; color: rgb(85, 85, 85); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px; letter-spacing: 0.5px; white-space: normal;\">客户端发送FIN并不意味着TCP连接立即关闭，因为服务器端数据可能还没有发送完毕，为了保证可以继续发送数据，服务端的FIN包并不会立即发给客户端，所以就多出一次报文发送。</p><p><br/></p>','2018-07-15 14:04:06',1,'2','images/488.jpeg','2018-07-15 06:04:06','2018-07-15 06:04:06'),(6,'个人网站','<p><img src=\"/star_max/images/ueditor/20180715/1531636731699279.png\" title=\"1531636731699279.png\" alt=\"火狐截图_2018-07-15T06-30-40.076Z.png\"/></p><p><img src=\"/star_max/images/ueditor/20180715/1531636743819122.png\" title=\"1531636743819122.png\" alt=\"火狐截图_2018-07-15T06-31-23.852Z.png\"/></p><p><img src=\"/star_max/images/ueditor/20180715/1531636760261688.png\" title=\"1531636760261688.png\" alt=\"火狐截图_2018-07-15T06-31-55.434Z.png\"/></p><p><img src=\"/star_max/images/ueditor/20180715/1531636915809020.png\" title=\"1531636915809020.png\" alt=\"火狐截图_2018-07-15T06-40-54.750Z.png\"/></p><p><img src=\"/star_max/images/ueditor/20180715/1531636926300842.png\" title=\"1531636926300842.png\" alt=\"火狐截图_2018-07-15T06-41-31.965Z.png\"/></p><p><br/></p>','2018-07-15 14:42:14',1,'3','images/970.png','2018-07-15 06:42:14','2018-07-15 06:42:14'),(7,'关于作用域链和原型链','<p style=\"margin-top: 15px; margin-bottom: 0px; color: rgb(85, 85, 85); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px; letter-spacing: 0.5px; white-space: normal; text-align: center;\"><img src=\"/ueditor/php/upload/image/20180715/1531640339922241.jpg\" title=\"什么是作用域链，什么是原型链，怎么理解？\" alt=\"什么是作用域链，什么是原型链，怎么理解？\"/></p><h2 style=\"margin: 20px -20px 20px -24px; line-height: 18px; color: rgb(85, 85, 85); text-rendering: optimizeLegibility; font-size: 18px; padding: 10px 20px 9px 10px; border-left: 4px solid rgb(0, 166, 124); background-color: rgb(251, 251, 251); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.5px; white-space: normal;\">什么是作用域链？</h2><p style=\"margin-top: 15px; margin-bottom: 0px; color: rgb(85, 85, 85); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px; letter-spacing: 0.5px; white-space: normal;\">作用域是针对变量的，比如我们创建了一个函数，函数里面又包含了一个函数，那么现在就有三个作用域。</p><p style=\"margin-top: 15px; margin-bottom: 0px; color: rgb(85, 85, 85); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px; letter-spacing: 0.5px; white-space: normal;\"><strong>全局作用域==&gt;函数1作用域==&gt;函数2作用域</strong></p><p style=\"margin-top: 15px; margin-bottom: 0px; color: rgb(85, 85, 85); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px; letter-spacing: 0.5px; white-space: normal;\">作用域的特点就是，先在自己的变量范围中查找，如果找不到，就会沿着作用域往上找。</p><p style=\"margin-top: 15px; margin-bottom: 0px; color: rgb(85, 85, 85); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px; letter-spacing: 0.5px; white-space: normal;\">如下：</p><table class=\"syntaxhighlighter js\" width=\"816\"><tbody style=\"vertical-align: bottom; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; padding: 0px !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important;\"><tr style=\"vertical-align: bottom; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; padding: 0px !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important;\" class=\"firstRow\"><td class=\"gutter\" style=\"vertical-align: bottom; text-align: center; border-radius: 4px 0px 0px 4px !important; background: none rgb(247, 247, 249) !important; border-top: 0px !important; border-right-color: rgb(225, 225, 232) !important; border-left: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; padding: 9.5px 0px 9.5px 9.5px !important; position: static !important; right: auto !important; top: auto !important; box-sizing: content-box !important; min-height: auto !important; color: rgb(175, 175, 175) !important; user-select: none !important;\" width=\"NaN\"><div class=\"line number1 index0 alt2\" style=\"vertical-align: bottom; word-wrap: normal; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; padding: 0px 0.5em 0px 1em !important; position: static !important; right: auto !important; text-align: right !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important; white-space: pre !important;\">1</div><div class=\"line number2 index1 alt1\" style=\"vertical-align: bottom; word-wrap: normal; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; padding: 0px 0.5em 0px 1em !important; position: static !important; right: auto !important; text-align: right !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important; white-space: pre !important;\">2</div><div class=\"line number3 index2 alt2\" style=\"vertical-align: bottom; word-wrap: normal; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; padding: 0px 0.5em 0px 1em !important; position: static !important; right: auto !important; text-align: right !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important; white-space: pre !important;\">3</div><div class=\"line number4 index3 alt1\" style=\"vertical-align: bottom; word-wrap: normal; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; padding: 0px 0.5em 0px 1em !important; position: static !important; right: auto !important; text-align: right !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important; white-space: pre !important;\">4</div><div class=\"line number5 index4 alt2\" style=\"vertical-align: bottom; word-wrap: normal; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; padding: 0px 0.5em 0px 1em !important; position: static !important; right: auto !important; text-align: right !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important; white-space: pre !important;\">5</div><div class=\"line number6 index5 alt1\" style=\"vertical-align: bottom; word-wrap: normal; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; padding: 0px 0.5em 0px 1em !important; position: static !important; right: auto !important; text-align: right !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important; white-space: pre !important;\">6</div><div class=\"line number7 index6 alt2\" style=\"vertical-align: bottom; word-wrap: normal; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; padding: 0px 0.5em 0px 1em !important; position: static !important; right: auto !important; text-align: right !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important; white-space: pre !important;\">7</div><div class=\"line number8 index7 alt1\" style=\"vertical-align: bottom; word-wrap: normal; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; padding: 0px 0.5em 0px 1em !important; position: static !important; right: auto !important; text-align: right !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important; white-space: pre !important;\">8</div><div class=\"line number9 index8 alt2\" style=\"vertical-align: bottom; word-wrap: normal; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; padding: 0px 0.5em 0px 1em !important; position: static !important; right: auto !important; text-align: right !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important; white-space: pre !important;\">9</div><div class=\"line number10 index9 alt1\" style=\"vertical-align: bottom; word-wrap: normal; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; padding: 0px 0.5em 0px 1em !important; position: static !important; right: auto !important; text-align: right !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important; white-space: pre !important;\">10</div></td><td class=\"code\" style=\"vertical-align: bottom; text-align: center; border-radius: 0px !important; background: none !important; border-top: 0px !important; border-left: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; position: static !important; right: auto !important; top: auto !important; box-sizing: content-box !important; min-height: auto !important;\" width=\"770\"><div class=\"line number1 index0 alt2\" style=\"vertical-align: bottom; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; padding: 0px 1em !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important;\"><code class=\"js keyword\" style=\"font-family: Monaco, Menlo, Consolas, &quot;Courier New&quot;, monospace; white-space: nowrap; vertical-align: bottom; padding: 0px !important; color: rgb(255, 120, 0) !important; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; font-weight: bold !important; min-height: auto !important;\">var</code>&nbsp;<code class=\"js plain\" style=\"font-family: Monaco, Menlo, Consolas, &quot;Courier New&quot;, monospace; white-space: nowrap; vertical-align: bottom; padding: 0px !important; color: black !important; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important;\">a&nbsp;=&nbsp;1;</code></div><div class=\"line number2 index1 alt1\" style=\"vertical-align: bottom; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; padding: 0px 1em !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important;\"><code class=\"js keyword\" style=\"font-family: Monaco, Menlo, Consolas, &quot;Courier New&quot;, monospace; white-space: nowrap; vertical-align: bottom; padding: 0px !important; color: rgb(255, 120, 0) !important; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; font-weight: bold !important; min-height: auto !important;\">function</code>&nbsp;<code class=\"js plain\" style=\"font-family: Monaco, Menlo, Consolas, &quot;Courier New&quot;, monospace; white-space: nowrap; vertical-align: bottom; padding: 0px !important; color: black !important; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important;\">b(){&nbsp;&nbsp;&nbsp;&nbsp;</code></div><div class=\"line number3 index2 alt2\" style=\"vertical-align: bottom; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; padding: 0px 1em !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important;\"><code class=\"js spaces\" style=\"color: rgb(221, 17, 68); font-family: Monaco, Menlo, Consolas, &quot;Courier New&quot;, monospace; white-space: nowrap; vertical-align: bottom; padding: 0px !important; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important;\">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"js keyword\" style=\"font-family: Monaco, Menlo, Consolas, &quot;Courier New&quot;, monospace; white-space: nowrap; vertical-align: bottom; padding: 0px !important; color: rgb(255, 120, 0) !important; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; font-weight: bold !important; min-height: auto !important;\">var</code>&nbsp;<code class=\"js plain\" style=\"font-family: Monaco, Menlo, Consolas, &quot;Courier New&quot;, monospace; white-space: nowrap; vertical-align: bottom; padding: 0px !important; color: black !important; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important;\">a&nbsp;=&nbsp;2;&nbsp;&nbsp;&nbsp;&nbsp;</code></div><div class=\"line number4 index3 alt1\" style=\"vertical-align: bottom; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; padding: 0px 1em !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important;\"><code class=\"js spaces\" style=\"color: rgb(221, 17, 68); font-family: Monaco, Menlo, Consolas, &quot;Courier New&quot;, monospace; white-space: nowrap; vertical-align: bottom; padding: 0px !important; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important;\">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"js keyword\" style=\"font-family: Monaco, Menlo, Consolas, &quot;Courier New&quot;, monospace; white-space: nowrap; vertical-align: bottom; padding: 0px !important; color: rgb(255, 120, 0) !important; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; font-weight: bold !important; min-height: auto !important;\">function</code>&nbsp;<code class=\"js plain\" style=\"font-family: Monaco, Menlo, Consolas, &quot;Courier New&quot;, monospace; white-space: nowrap; vertical-align: bottom; padding: 0px !important; color: black !important; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important;\">c(){&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code></div><div class=\"line number5 index4 alt2\" style=\"vertical-align: bottom; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; padding: 0px 1em !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important;\"><code class=\"js spaces\" style=\"color: rgb(221, 17, 68); font-family: Monaco, Menlo, Consolas, &quot;Courier New&quot;, monospace; white-space: nowrap; vertical-align: bottom; padding: 0px !important; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"js keyword\" style=\"font-family: Monaco, Menlo, Consolas, &quot;Courier New&quot;, monospace; white-space: nowrap; vertical-align: bottom; padding: 0px !important; color: rgb(255, 120, 0) !important; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; font-weight: bold !important; min-height: auto !important;\">var</code>&nbsp;<code class=\"js plain\" style=\"font-family: Monaco, Menlo, Consolas, &quot;Courier New&quot;, monospace; white-space: nowrap; vertical-align: bottom; padding: 0px !important; color: black !important; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important;\">a&nbsp;=&nbsp;3;</code></div><div class=\"line number6 index5 alt1\" style=\"vertical-align: bottom; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; padding: 0px 1em !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important;\"><code class=\"js spaces\" style=\"color: rgb(221, 17, 68); font-family: Monaco, Menlo, Consolas, &quot;Courier New&quot;, monospace; white-space: nowrap; vertical-align: bottom; padding: 0px !important; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"js plain\" style=\"font-family: Monaco, Menlo, Consolas, &quot;Courier New&quot;, monospace; white-space: nowrap; vertical-align: bottom; padding: 0px !important; color: black !important; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important;\">console.log(a);</code></div><div class=\"line number7 index6 alt2\" style=\"vertical-align: bottom; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; padding: 0px 1em !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important;\"><code class=\"js spaces\" style=\"color: rgb(221, 17, 68); font-family: Monaco, Menlo, Consolas, &quot;Courier New&quot;, monospace; white-space: nowrap; vertical-align: bottom; padding: 0px !important; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important;\">&nbsp;&nbsp;&nbsp;</code><code class=\"js plain\" style=\"font-family: Monaco, Menlo, Consolas, &quot;Courier New&quot;, monospace; white-space: nowrap; vertical-align: bottom; padding: 0px !important; color: black !important; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important;\">}</code></div><div class=\"line number8 index7 alt1\" style=\"vertical-align: bottom; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; padding: 0px 1em !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important;\"><code class=\"js spaces\" style=\"color: rgb(221, 17, 68); font-family: Monaco, Menlo, Consolas, &quot;Courier New&quot;, monospace; white-space: nowrap; vertical-align: bottom; padding: 0px !important; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important;\">&nbsp;&nbsp;&nbsp;</code><code class=\"js plain\" style=\"font-family: Monaco, Menlo, Consolas, &quot;Courier New&quot;, monospace; white-space: nowrap; vertical-align: bottom; padding: 0px !important; color: black !important; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important;\">c();</code></div><div class=\"line number9 index8 alt2\" style=\"vertical-align: bottom; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; padding: 0px 1em !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important;\"><code class=\"js plain\" style=\"font-family: Monaco, Menlo, Consolas, &quot;Courier New&quot;, monospace; white-space: nowrap; vertical-align: bottom; padding: 0px !important; color: black !important; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important;\">}</code></div><div class=\"line number10 index9 alt1\" style=\"vertical-align: bottom; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; padding: 0px 1em !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important;\"><code class=\"js plain\" style=\"font-family: Monaco, Menlo, Consolas, &quot;Courier New&quot;, monospace; white-space: nowrap; vertical-align: bottom; padding: 0px !important; color: black !important; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important;\">b();</code></div></td></tr></tbody></table><p style=\"margin-top: 15px; margin-bottom: 0px; color: rgb(85, 85, 85); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px; letter-spacing: 0.5px; white-space: normal;\">最后打印出来的是3，因为执行函数c（）的时候它在自己的范围内找到了变量 a 所以就不会越上继续查找；如果在函数c()中没有找到则会继续向上找，一直会找到全局变量a，这个查找的过程就叫作用域链。</p><p style=\"margin-top: 15px; margin-bottom: 0px; color: rgb(85, 85, 85); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px; letter-spacing: 0.5px; white-space: normal;\">不知道你有没有疑问，函数c为什么可以在函数b中查找变量 a，因为函数c是在函数 b 中创建的，也就是说函数 c 的作用域包括了函数 b 的作用域，当然也包括了全局作用域，但是函数 b 不能向函数 c 中查找变量，因为作用域只会向上查找。</p><h2 style=\"margin: 20px -20px 20px -24px; line-height: 18px; color: rgb(85, 85, 85); text-rendering: optimizeLegibility; font-size: 18px; padding: 10px 20px 9px 10px; border-left: 4px solid rgb(0, 166, 124); background-color: rgb(251, 251, 251); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.5px; white-space: normal;\">什么是原型链？</h2><p style=\"margin-top: 15px; margin-bottom: 0px; color: rgb(85, 85, 85); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px; letter-spacing: 0.5px; white-space: normal;\">原型链是针对构造函数的，比如我先创建了一个函数，然后通过一个变量 new 了这个函数，那么这个被 new 出来的函数就会继承创建出来的那个函数的属性，然后如果我访问 new 出来的这个函数的某个属性，但是我并没有在这个 new 出来的函数中定义这个变量，那么它就会往上（向创建出它的函数中）查找，这个查找的过程就叫做<strong>原型链</strong>。</p><p style=\"margin-top: 15px; margin-bottom: 0px; color: rgb(85, 85, 85); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px; letter-spacing: 0.5px; white-space: normal;\"><strong>Object ==&gt; 构造函数1 ==&gt; 构造函数2</strong></p><p style=\"margin-top: 15px; margin-bottom: 0px; color: rgb(85, 85, 85); font-family: &quot;Microsoft Yahei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px; letter-spacing: 0.5px; white-space: normal;\">就和css中的继承一样，如果自身没有定义就会继承父元素的样式。</p><table class=\"syntaxhighlighter js\" width=\"816\"><tbody style=\"vertical-align: bottom; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; padding: 0px !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important;\"><tr style=\"vertical-align: bottom; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; padding: 0px !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important;\" class=\"firstRow\"><td class=\"gutter\" style=\"vertical-align: bottom; text-align: center; border-radius: 4px 0px 0px 4px !important; background: none rgb(247, 247, 249) !important; border-top: 0px !important; border-right-color: rgb(225, 225, 232) !important; border-left: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; padding: 9.5px 0px 9.5px 9.5px !important; position: static !important; right: auto !important; top: auto !important; box-sizing: content-box !important; min-height: auto !important; color: rgb(175, 175, 175) !important; user-select: none !important;\" width=\"NaN\"><div class=\"line number1 index0 alt2\" style=\"vertical-align: bottom; word-wrap: normal; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; padding: 0px 0.5em 0px 1em !important; position: static !important; right: auto !important; text-align: right !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important; white-space: pre !important;\">1</div><div class=\"line number2 index1 alt1\" style=\"vertical-align: bottom; word-wrap: normal; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; padding: 0px 0.5em 0px 1em !important; position: static !important; right: auto !important; text-align: right !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important; white-space: pre !important;\">2</div><div class=\"line number3 index2 alt2\" style=\"vertical-align: bottom; word-wrap: normal; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; padding: 0px 0.5em 0px 1em !important; position: static !important; right: auto !important; text-align: right !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important; white-space: pre !important;\">3</div><div class=\"line number4 index3 alt1\" style=\"vertical-align: bottom; word-wrap: normal; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; padding: 0px 0.5em 0px 1em !important; position: static !important; right: auto !important; text-align: right !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important; white-space: pre !important;\">4</div></td><td class=\"code\" style=\"vertical-align: bottom; text-align: center; border-radius: 0px !important; background: none !important; border-top: 0px !important; border-left: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; position: static !important; right: auto !important; top: auto !important; box-sizing: content-box !important; min-height: auto !important;\" width=\"778\"><div class=\"line number1 index0 alt2\" style=\"vertical-align: bottom; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; padding: 0px 1em !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important;\"><code class=\"js keyword\" style=\"font-family: Monaco, Menlo, Consolas, &quot;Courier New&quot;, monospace; white-space: nowrap; vertical-align: bottom; padding: 0px !important; color: rgb(255, 120, 0) !important; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; font-weight: bold !important; min-height: auto !important;\">function</code>&nbsp;<code class=\"js plain\" style=\"font-family: Monaco, Menlo, Consolas, &quot;Courier New&quot;, monospace; white-space: nowrap; vertical-align: bottom; padding: 0px !important; color: black !important; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important;\">a(){};</code></div><div class=\"line number2 index1 alt1\" style=\"vertical-align: bottom; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; padding: 0px 1em !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important;\"><code class=\"js plain\" style=\"font-family: Monaco, Menlo, Consolas, &quot;Courier New&quot;, monospace; white-space: nowrap; vertical-align: bottom; padding: 0px !important; color: black !important; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important;\">a.prototype.name&nbsp;=&nbsp;</code><code class=\"js string\" style=\"font-family: Monaco, Menlo, Consolas, &quot;Courier New&quot;, monospace; white-space: nowrap; vertical-align: bottom; padding: 0px !important; color: blue !important; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important;\">&quot;追梦子&quot;</code><code class=\"js plain\" style=\"font-family: Monaco, Menlo, Consolas, &quot;Courier New&quot;, monospace; white-space: nowrap; vertical-align: bottom; padding: 0px !important; color: black !important; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important;\">;</code></div><div class=\"line number3 index2 alt2\" style=\"vertical-align: bottom; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; padding: 0px 1em !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important;\"><code class=\"js keyword\" style=\"font-family: Monaco, Menlo, Consolas, &quot;Courier New&quot;, monospace; white-space: nowrap; vertical-align: bottom; padding: 0px !important; color: rgb(255, 120, 0) !important; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; font-weight: bold !important; min-height: auto !important;\">var</code>&nbsp;<code class=\"js plain\" style=\"font-family: Monaco, Menlo, Consolas, &quot;Courier New&quot;, monospace; white-space: nowrap; vertical-align: bottom; padding: 0px !important; color: black !important; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important;\">b&nbsp;=&nbsp;</code><code class=\"js keyword\" style=\"font-family: Monaco, Menlo, Consolas, &quot;Courier New&quot;, monospace; white-space: nowrap; vertical-align: bottom; padding: 0px !important; color: rgb(255, 120, 0) !important; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; font-weight: bold !important; min-height: auto !important;\">new</code>&nbsp;<code class=\"js plain\" style=\"font-family: Monaco, Menlo, Consolas, &quot;Courier New&quot;, monospace; white-space: nowrap; vertical-align: bottom; padding: 0px !important; color: black !important; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important;\">a();</code></div><div class=\"line number4 index3 alt1\" style=\"vertical-align: bottom; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; padding: 0px 1em !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important;\"><code class=\"js plain\" style=\"font-family: Monaco, Menlo, Consolas, &quot;Courier New&quot;, monospace; white-space: nowrap; vertical-align: bottom; padding: 0px !important; color: black !important; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important;\">console.log(b.name);&nbsp;</code><code class=\"js comments\" style=\"font-family: Monaco, Menlo, Consolas, &quot;Courier New&quot;, monospace; white-space: nowrap; vertical-align: bottom; padding: 0px !important; color: rgb(0, 130, 0) !important; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important;\">//追梦子</code></div><p><code class=\"js comments\" style=\"font-family: Monaco, Menlo, Consolas, &quot;Courier New&quot;, monospace; white-space: nowrap; vertical-align: bottom; padding: 0px !important; color: rgb(0, 130, 0) !important; border-radius: 0px !important; background: none !important; border: 0px !important; bottom: auto !important; float: none !important; left: auto !important; outline: 0px !important; overflow: visible !important; position: static !important; right: auto !important; top: auto !important; width: auto !important; box-sizing: content-box !important; min-height: auto !important;\"><br/></code></p></td></tr></tbody></table><p><br/></p>','2018-07-15 15:42:25',1,'2','pic.jpg','2018-07-15 07:42:25','2018-07-15 07:42:25'),(8,'北京酷元素服装服饰有限公司','<p style=\"text-align: center;\"><img src=\"/star_max/images/ueditor/20180715/1531643554703002.jpg\" title=\"1531643554703002.jpg\" alt=\"微信图片_20180715163117.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/star_max/images/ueditor/20180715/1531643563178527.jpg\" title=\"1531643563178527.jpg\" alt=\"微信图片_20180715163112.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/star_max/images/ueditor/20180715/1531643573202392.jpg\" title=\"1531643573202392.jpg\" alt=\"微信图片_20180715163120.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/star_max/images/ueditor/20180715/1531643580551940.jpg\" title=\"1531643580551940.jpg\" alt=\"微信图片_20180715163124.jpg\"/></p>','2018-07-15 16:33:41',1,'3','pic.jpg','2018-07-15 08:57:32','2018-07-15 08:57:32');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply`
--

DROP TABLE IF EXISTS `reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `content` text NOT NULL,
  `ctime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply`
--

LOCK TABLES `reply` WRITE;
/*!40000 ALTER TABLE `reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school`
--

DROP TABLE IF EXISTS `school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `school` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `time` varchar(255) NOT NULL,
  `school` varchar(255) NOT NULL,
  `intro` varchar(255) NOT NULL,
  `major` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school`
--

LOCK TABLES `school` WRITE;
/*!40000 ALTER TABLE `school` DISABLE KEYS */;
INSERT INTO `school` VALUES (1,'2010.9-2014.7','中原工学院','学校的主要课程包括：3Dmax、AE、Edius、Photoshop、web前端、php等课程。我在校期间担任学校话剧社表演部部长，性格开朗，抗压能力强','数字媒体');
/*!40000 ALTER TABLE `school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dataName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(4) NOT NULL DEFAULT '1',
  `count` int(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `types`
--

LOCK TABLES `types` WRITE;
/*!40000 ALTER TABLE `types` DISABLE KEYS */;
INSERT INTO `types` VALUES (1,'web前端','web',0,'0',NULL,'2018-07-13 14:03:46',1,5),(2,'仓库','house',0,'0',NULL,'2018-07-15 06:04:06',1,2),(3,'全栈项目','project',0,'0',NULL,'2018-07-15 06:42:14',1,1);
/*!40000 ALTER TABLE `types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'支子花','942663098@qq.com','$2y$10$IDrQ8EJNyKv7TBACzMYHF.mOwZG5WsMJBd33O9VJDJMuCjRSjLzii','OgD1LhAk7GiUFxWAbzeNRy7RptAqoRZGtaky2Cp36U98F3Es2CaXVaZ6R9SF','2018-07-13 01:43:18','2018-07-13 01:43:18','images/touxiang168.png');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `works`
--

DROP TABLE IF EXISTS `works`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `works` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `time` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `job` varchar(255) NOT NULL,
  `intro` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `works`
--

LOCK TABLES `works` WRITE;
/*!40000 ALTER TABLE `works` DISABLE KEYS */;
INSERT INTO `works` VALUES (1,'2014.6-2015.6','郑州','郑州云顶集团','品牌企划','负责工资主品牌”逸阳“和子品牌”慕然“的产品企划、活动策划、文案策划、品牌视觉等一系列企划工作。除此以外，还负责”逸阳“品牌的新媒体推广，公众号维护，网站维护等工作。'),(2,'2015.6-2016.12','郑州','郑州八角信息科技有限公司','web全栈工程师','负责前端WEB页面的搭建，后端PHP网站开发。主要针对小型企业或商家的平台搭建，包括手机端和网站页面。'),(3,'2017.1-2018.4','漯河','晴钻石','企划经理','完整了一整个品牌的所有项目，包括品牌企划，产品规划，视觉规划，活动策划，新媒体运营等。'),(4,'2018.4-2018.6','郑州','郑州八角信息科技有限公司','web前端','负责前端WEB页面的搭建。主要针对小型企业或商家的平台搭建，包括手机端和网站页面。');
/*!40000 ALTER TABLE `works` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-15 17:51:21
