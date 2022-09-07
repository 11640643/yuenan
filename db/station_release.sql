-- MySQL dump 10.13  Distrib 5.7.34, for Linux (x86_64)
--
-- Host: localhost    Database: station_admin_mu
-- ------------------------------------------------------
-- Server version	5.7.34-log

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
-- Table structure for table `anwser_cat`
--

DROP TABLE IF EXISTS `anwser_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anwser_cat` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anwser_cat`
--

LOCK TABLES `anwser_cat` WRITE;
/*!40000 ALTER TABLE `anwser_cat` DISABLE KEYS */;
/*!40000 ALTER TABLE `anwser_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anwser_list`
--

DROP TABLE IF EXISTS `anwser_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anwser_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL DEFAULT '0',
  `value` varchar(200) DEFAULT NULL,
  `is_ok` char(1) NOT NULL DEFAULT 'N',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anwser_list`
--

LOCK TABLES `anwser_list` WRITE;
/*!40000 ALTER TABLE `anwser_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `anwser_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_cat`
--

DROP TABLE IF EXISTS `article_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_cat` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL DEFAULT 'none',
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_cat`
--

LOCK TABLES `article_cat` WRITE;
/*!40000 ALTER TABLE `article_cat` DISABLE KEYS */;
INSERT INTO `article_cat` VALUES (1,'ad',0,'广告文章',0,0,0),(2,'about',0,'关于我们',0,0,0),(3,'focus',0,'焦点',0,0,0),(4,'index_arti',0,'首页文章配置',0,0,0);
/*!40000 ALTER TABLE `article_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_info`
--

DROP TABLE IF EXISTS `article_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(200) DEFAULT '',
  `title_en` varchar(200) DEFAULT NULL,
  `title_yn` varchar(200) DEFAULT NULL,
  `is_show_index` char(1) DEFAULT 'N',
  `thumb` varchar(255) DEFAULT NULL,
  `icon` varchar(300) DEFAULT NULL COMMENT '客户端小图标',
  `content` longtext,
  `content_en` text,
  `content_yn` text,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `is_disable` char(1) NOT NULL DEFAULT 'Y',
  `code` varchar(10) NOT NULL DEFAULT '',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_info`
--

LOCK TABLES `article_info` WRITE;
/*!40000 ALTER TABLE `article_info` DISABLE KEYS */;
INSERT INTO `article_info` VALUES (1,1,'12312323','','','N',NULL,NULL,'<p><img src=\"/upload/2020/04/10/20200410000223_b9ff27b0.jpg\"></p>','','',0,'Y','c4ca42',1586503290,1586448146,1),(2,1,'123123','','','N',NULL,NULL,'<p><img src=\"/upload/2020/04/10/20200410000239_7b62e77f.jpg\"></p>','','',333,'Y','c81e72',1586503292,1586448164,1),(3,1,'1223','','','N',NULL,NULL,'<p><img src=\"/upload/2020/04/10/20200410000309_4092a96a.jpg\"></p>','','',333,'Y','eccbc8',1586747431,1586448192,1),(4,2,'1111','','','N',NULL,NULL,'<p>2111111111111111111</p>','','',0,'Y','a87ff6',1586661092,1586449058,1),(5,2,'邀请好友','','','N',NULL,NULL,'<p><img src=\"/upload/2020/04/12/20200412111151_638ad0b8.png\"></p>','','',0,'Y','e4da3b',1586661624,1586449661,1),(6,2,'联系我们','','','N',NULL,NULL,'<p><img src=\"/upload/2020/05/08/20200508171656_ad5f75a5.jpg\"></p>','','',0,'Y','c4ca42',1619415316,1570113632,1),(7,2,'营业执照','','','N',NULL,NULL,'<p><img src=\"/upload/2020/05/07/20200507131622_163da5f4.jpg\"><img src=\"/upload/2020/05/07/20200507131611_2e9b2c3e.jpg\"></p>','','',0,'Y','c81e72',1619415315,1570969755,1),(8,2,'银行存管','','','N',NULL,NULL,'<p><img src=\"/upload/2020/05/06/20200506190208_3a4b076b.jpg\"><img src=\"/upload/2020/05/06/20200506190148_293fd06f.jpg\"></p><p><img src=\"/upload/2020/05/07/20200507131226_028e2132.jpg\"><img src=\"/upload/2020/05/07/20200507131237_a7d3948f.jpg\"><img src=\"/upload/2020/05/07/20200507131250_f1a24050.jpg\"><img src=\"/upload/2020/05/07/20200507131302_d9cd8159.jpg\"><img src=\"/upload/2020/05/07/20200507131308_43f66137.jpg\"><img src=\"/upload/2020/05/07/20200507131314_8b4b461f.jpg\"><img src=\"/upload/2020/05/07/20200507131338_ce6d3b4a.jpg\"><img src=\"/upload/2020/05/07/20200507131345_0736e2d1.jpg\"><img src=\"/upload/2020/05/07/20200507131350_409fc88b.jpg\"></p>','','',0,'Y','eccbc8',1619415313,1570969835,1),(9,2,'董事长致词','','','N',NULL,NULL,'','','',0,'Y','a87ff6',1586712588,1570969844,1),(10,2,'会员等级','','','N',NULL,NULL,'<p><img src=\"/upload/2020/05/06/20200506185627_6d06ab29.jpg\"></p>','','',0,'Y','e4da3b',1619415312,1570969853,1),(11,2,'公司公告','','','N',NULL,NULL,'','','',0,'Y','167909',1586661088,1570969864,1),(12,2,'支付方式','','','N',NULL,NULL,'','','',0,'Y','8f14e4',1586660519,1570969872,1),(13,2,'常见问题','','','N',NULL,NULL,'<p><img src=\"/upload/2020/05/06/20200506185454_fe3e5aab.jpg\"></p>','','',0,'Y','c9f0f8',1619415312,1570969880,1),(14,2,'转账充值教程','','','N',NULL,NULL,'<p><img src=\"/upload/2020/05/06/20200506185434_d375f475.jpg\"></p>','','',0,'Y','45c48c',1619415311,1570969905,1),(15,2,'公司简介','','','N',NULL,NULL,'<p><img src=\"/upload/2020/05/08/20200508192306_50e1799d.jpg\"></p>','','',0,'Y','d3d944',1619415310,1570969912,1),(16,1,'11awsd','','','N',NULL,NULL,'<p><img src=\"/upload/2020/04/10/20200410185403_8e400d7e.jpg\"></p>','','',0,'Y','c74d97',1586747428,1586516046,1),(17,2,'邀请好友','','','N',NULL,NULL,'<p><img src=\"/upload/2020/05/06/20200506185121_5a2b4edd.jpg\"></p>','','',0,'Y','70efdf',1619415308,1586661646,1),(18,2,'公司环境','','','N',NULL,'/upload/2020/08/15/20200815193810_c7177ef9.jpg','<p><img src=\"/upload/2020/08/11/20200811154014_d28e75a4.png\"></p>','','',99,'Y','6f4922',1619415300,1586712662,1),(19,1,'quyền riêng tư','','','N',NULL,NULL,'<p>Chúng tôi coi trọng quyền riêng tư của người dùng .&nbsp;Khi bạn sử dụng dịch vụ của chúng tôi, chúng tôi có thể thu thập và sử dụng thông tin liên quan của bạn.</p><p><br></p><p><br></p><p>Chúng tôi hy vọng cho thông qua \"Chính sách Bảo mật\" này sẽ giải thích về cách chúng tôi thu thập, sử dụng, lưu trữ và chia sẻ thông tin này khi sử dụng dịch vụ của chúng tôi và cách chúng tôi cung cấp cho bạn quyền truy cập, cập nhật, kiểm soát và bảo vệ thông tin này.</p><p><br></p><p><br></p><p>\"Chính sách Bảo mật\" này có liên quan chặt chẽ đến các dịch vụ bạn sử dụng. Hy vọng bạn đọc kỹ và khi cần thiết, hãy tuân theo các nguyên tắc của \"Chính sách Bảo mật\" này để đưa ra những lựa chọn mà bạn cho là phù hợp.</p><p><br></p><p><br></p><p>Đối với các từ ngữ kỹ thuật liên quan đến \"Chính sách bảo mật\" này, chúng tôi cố gắng biểu đạt 1 cách ngắn gọn và súc tích, đồng thời cung cấp các liên kết để giải thích thêm để bạn hiểu.</p><p><br></p><p><br></p><p>Bằng việc sử dụng hoặc tiếp tục sử dụng các dịch vụ của chúng tôi, bạn đồng ý với việc chúng tôi thu thập, sử dụng, lưu trữ và chia sẻ thông tin của bạn theo Chính sách Bảo mật này.</p><p><br></p><p><br></p><p>Nếu bạn có bất kỳ câu hỏi nào về Chính sách Bảo mật này hoặc các vấn đề liên quan, vui lòng liên hệ với chúng tôi thông qua : NextEraEnergyResources, LLC@gmail.com.</p><p><br></p><p>Thông tin chúng tôi có thể thu thập</p><p><br></p><p><br></p><p>Khi chúng tôi cung cấp dịch vụ, chúng tôi có thể thu thập, lưu trữ và sử dụng những thông tin liên quan đến bạn.&nbsp;Nếu bạn không cung cấp thông tin liên quan, bạn có thể không được hưởng một số dịch vụ mà chúng tôi cung cấp, hoặc bạn không thể đạt được hiệu quả của các dịch vụ liên quan.</p><p><br></p><p><br></p><p>Thông tin mà bạn cung cấp&nbsp;</p><p><br></p><p><br></p><p>Thông tin cá nhân mà bạn cung cấp cho chúng tôi khi bạn sử dụng dịch vụ của chúng tôi, chẳng hạn như số điện thoại, email hoặc số thẻ ngân hàng, v.v.;</p><p><br></p><p><br></p><p>Thông tin mà bạn chia sẻ cung cấp cho các bên khác thông qua Dịch vụ của chúng tôi và thông tin được lưu trữ khi bạn sử dụng Dịch vụ của chúng tôi.</p><p><br></p><p><br></p><p>Thông tin của bạn được chia sẻ với các bên khác</p><p><br></p><p><br></p><p>Thông tin chia sẻ về bạn do các bên khác cung cấp khi sử dụng dịch vụ của chúng tôi.</p><p><br></p><p><br></p><p>Chúng tôi có được thông tin về bạn</p><p><br></p><p><br></p><p>Khi bạn sử dụng dịch vụ, chúng tôi có thể thu thập các thông tin sau</p><p><br></p><p><br></p><p>Nhật ký thông tin, chỉ lúc mà bạn sử dụng dịch vụ của chúng tôi ,hệ thống có thể tự động thu thập thông tin thông qua cookie,&nbsp;web beacon hoặc các phương tiện khác khi bạn sử dụng dịch vụ của chúng tôi, bao gồm:</p><p><br></p><p><br></p><p>Thông tin thiết bị hoặc phần mềm, chẳng hạn như thông tin cấu hình được cung cấp bởi thiết bị di động của bạn, trình duyệt web hoặc chương trình khác được sử dụng để truy cập Dịch vụ của chúng tôi, địa chỉ IP của bạn ,mã định danh thiết bị tất cả phiên bản thiết bị di động của bạn;</p><p><br></p><p><br></p><p>Thông tin được tìm kiếm hoặc xem khi sử dụng dịch vụ của chúng tôi, chẳng hạn như các cụm từ tìm kiếm trên web mà bạn sử dụng,địa chỉ URL&nbsp;truyền thông xã hội mà bạn truy cập, thông tin và chi tiết nội dung khác mà bạn&nbsp;yêu cầu khi sử dụng dịch vụ của chúng tôi;</p><p><br></p><p><br></p><p>Thông tin về các ứng dụng di động (APP) và phần mềm thông tin khác mà bạn đã sử dụng cũng như thông tin về việc sử dụng trước đây của bạn đối với các ứng dụng và phần mềm di động đó;</p><p><br></p><p>Thông tin vị trí đề cập đến thông tin về vị trí của bạn được thu thập khi bạn bật chức năng định vị thiết bị và sử dụng các dịch vụ dựa trên vị trí của chúng tôi, bao gồm:</p><p><br></p><p><br></p><p><br></p><p>Thông tin vị trí địa lý của bạn được thu thập thông qua GPS hoặc WiFi khi bạn sử dụng dịch vụ của chúng tôi thông qua thiết bị di động có chức năng định vị;</p><p><br></p><p>Thông tin thời gian thực bao gồm vị trí địa lý của bạn do bạn hoặc những người dùng khác cung cấp, chẳng hạn như thông tin vị trí địa lý của bạn có trong thông tin tài khoản mà bạn cung cấp, thông tin được chia sẻ bởi bạn hoặc những người khác hiển thị vị trí địa lý hiện tại hoặc trong quá khứ của bạn;</p><p><br></p><p><br></p><p>Bằng cách tắt tính năng vị trí, bạn có thể ngăn chặn việc thu thập thông tin vị trí địa lý của chính mình</p><p><br></p><p><br></p><p>Cách chúng tôi có thể sử dụng thông tin</p><p><br></p><p><br></p><p>Chúng tôi có thể sử dụng thông tin thu thập được trong quá trình cung cấp dịch vụ cho bạn cho các mục đích sau:</p><p><br></p><p><br></p><p>Cung cấp dịch vụ cho bạn</p><p><br></p><p><br></p><p>Khi chúng tôi cung cấp dịch vụ, đối với mục đích xác thực thân phận, dịch vụ khách hàng, bảo mật, phát hiện gian lận, lưu trữ và sao lưu, nhằm đảm bảo tính bảo mật của các sản phẩm và tính an toàn của dịch vụ mà chúng tôi cung cấp cho bạn;</p><p><br></p><p><br></p><p>Giúp chúng tôi thiết kế các dịch vụ mới và cải thiện các dịch vụ hiện có của chúng tôi;</p><p><br></p><p><br></p><p>Để chúng tôi hiểu rõ hơn về cách bạn truy cập và sử dụng các dịch vụ của chúng tôi, để đáp ứng nhu cầu cá nhân của bạn theo cách có mục tiêu, chẳng hạn như cài đặt ngôn ngữ, cài đặt vị trí, các dịch vụ và hướng dẫn trợ giúp được cá nhân hóa, hoặc để bạn và những người dùng khác đưa ra những hồi đáp ở những mặt khác</p><p><br></p><p><br></p><p>Cung cấp cho bạn những quảng cáo có liên quan hơn thay vì những quảng cáo được phân phát chung;</p><p><br></p><p><br></p><p>Để đánh giá hiệu quả của các hoạt động quảng cáo và các chương trình khuyến mãi khác trên Dịch vụ của chúng tôi và để cải thiện chúng;</p><p><br></p><p><br></p><p>Chứng nhận phần mềm hoặc quản lý nâng cấp phần mềm;</p><p><br></p><p><br></p><p>Cho phép bạn tham gia các cuộc khảo sát về sản phẩm và dịch vụ của chúng tôi.</p><p><br></p><p><br></p><p>Để mang đến cho bạn trải nghiệm tốt hơn, cải thiện dịch vụ của chúng tôi hoặc các mục đích khác mà bạn đồng ý, chúng tôi có thể tổng hợp hoặc cá nhân hóa thông tin thu thập được thông qua một dịch vụ trên cơ sở tuân thủ các luật và quy định liên quan, cho các dịch vụ khác của chúng tôi.</p><p><br></p><p><br></p><p>Ví dụ: thông tin thu thập được khi bạn sử dụng một trong các dịch vụ của chúng tôi có thể được sử dụng trong một dịch vụ khác để cung cấp cho bạn nội dung đặc trưng hoặc để hiển thị cho bạn thông tin ít được đẩy .&nbsp;Bạn cũng có thể cho phép chúng tôi sử dụng thông tin do dịch vụ đó cung cấp và lưu trữ cho các dịch vụ khác của chúng tôi nếu chúng tôi cung cấp tùy chọn tương ứng trong dịch vụ .</p><p><br></p><p><br></p><p>Cách mà bạn có thể truy cập và kiểm soát thông tin cá nhân của mình</p><p><br></p><p><br></p><p>Chúng tôi sẽ làm mọi cách để sử dụng các phương tiện kỹ thuật thích hợp để đảm bảo rằng bạn có thể truy cập, cập nhật và chỉnh sửa thông tin đăng ký của bạn hoặc thông tin cá nhân khác được cung cấp khi sử dụng dịch vụ của chúng tôi.&nbsp;Khi truy cập, cập nhật, sửa và xóa các thông tin nói trên, chúng tôi có thể yêu cầu bạn xác thực thân phận để đảm bảo an toàn cho tài khoản.</p><p><br></p><p><br></p><p>Thông tin mà chúng tôi có thể chia sẻ</p><p><br></p><p>Chúng tôi sẽ không chia sẻ thông tin cá nhân của bạn với bất kỳ bên thứ ba nào mà không có sự đồng ý của bạn, ngoại trừ các trường hợp sau:</p><p><br></p><p><br></p><p>Chúng tôi có thể chia sẻ thông tin cá nhân của bạn với các nhà cung cấp dịch vụ, nhà thầu và đại lý bên thứ ba (chẳng hạn như các nhà cung cấp dịch vụ liên lạc gửi email hoặc&nbsp;phục vụ thông báo đẩy , các nhà cung cấp dịch vụ bản đồ cung cấp cho chúng tôi dữ liệu vị trí) chia sẻ (những người có thể không ở pháp vực) cho các mục đích sau:</p><p><br></p><p><br></p><p>Để cung cấp cho bạn các dịch vụ của chúng tôi;</p><p><br></p><p><br></p><p>Để đạt được các mục đích được mô tả trong phần \"Cách Chúng tôi Có thể Sử dụng Thông tin\";</p><p><br></p><p><br></p><p>Để thực hiện các nghĩa vụ của chúng tôi và thực hiện các quyền của chúng tôi trong Chính sách Bảo mật này;</p><p><br></p><p><br></p><p>Để hiểu, duy trì và cải thiện Dịch vụ của chúng tôi.</p><p><br></p><p><br></p><p>Nếu chúng tôi chia sẻ thông tin cá nhân của bạn với bất kỳ bên thứ ba nào ở trên, chúng tôi sẽ cố gắng đảm bảo rằng các bên thứ ba đó tuân thủ Chính sách quyền riêng tư này và các biện pháp bảo mật và an toàn mà chúng tôi yêu cầu họ tuân thủ khi sử dụng thông tin cá nhân của bạn.</p><p><br></p><p>Khi hoạt động kinh doanh của chúng tôi tiếp tục phát triển, chúng tôi có thể tiến hành sáp nhập, mua lại, chuyển nhượng tài sản hoặc các giao dịch tương tự và thông tin cá nhân của bạn có thể được chuyển giao như một phần của các giao dịch đó.&nbsp;Chúng tôi sẽ thông báo cho bạn trước khi chuyển&nbsp;</p><p><br></p><p><br></p><p>Chúng tôi cũng có thể giữ lại, lưu hoặc tiết lộ thông tin cá nhân của bạn cho các mục đích sau:</p><p><br></p><p><br></p><p>Tuân thủ các luật và quy định hiện hành;</p><p><br></p><p><br></p><p>Để tuân thủ lệnh của tòa án hoặc quy định trình tự pháp lý khác;</p><p><br></p><p><br></p><p>Tuân thủ các yêu cầu của các cơ quan chính phủ có liên quan;</p><p><br></p><p><br></p><p>Cần thiết một cách hợp lý để tuân thủ các luật và quy định hiện hành, bảo vệ lợi ích công cộng hoặc bảo vệ an toàn cá nhân và tài sản hoặc các quyền và lợi ích hợp pháp của khách hàng, chúng tôi và những người dùng khác.</p><p><br></p><p><br></p><p>Thông tin an toàn&nbsp;</p><p><br></p><p><br></p><p>Chúng tôi chỉ lưu giữ thông tin cá nhân của bạn trong khoảng thời gian cần thiết cho các mục đích được mô tả trong \"Chính sách bảo mật\" này và trong thời hạn mà luật pháp và quy định yêu cầu.&nbsp;Chúng tôi sử dụng nhiều công nghệ và quy trình bảo mật khác nhau để ngăn ngừa mất mát, lạm dụng, truy cập trái phép hoặc tiết lộ thông tin.</p><p><br></p><p><br></p><p>Ví dụ: trong một số dịch vụ, chúng tôi sẽ sử dụng công nghệ mã hóa (chẳng hạn như SSL) để bảo vệ thông tin cá nhân mà bạn cung cấp.&nbsp;Tuy nhiên, bạn hãy hiểu rằng do những hạn chế về mặt kỹ thuật và nhiều thủ đoạn xấu có thể tồn tại, trong ngành Internet, ngay cả khi chúng ta cố gắng hết sức để tăng cường các biện pháp bảo mật cũng không thể luôn đảm bảo an toàn thông tin 100%.</p><p><br></p><p><br></p><p>Bạn cần hiểu rằng hệ thống và mạng liên hệ mà bạn sử dụng để truy cập các dịch vụ của chúng tôi có thể gặp sự cố do các yếu tố nằm ngoài tầm kiểm soát của chúng tôi.</p><p><br></p><p><br></p><p>Thông tin mà bạn chia sẻ</p><p><br></p><p><br></p><p>Nhiều dịch vụ của chúng tôi cho phép bạn chia sẻ công khai thông tin về bạn không chỉ với mạng xã hội của riêng bạn mà còn với tất cả người dùng sử dụng dịch vụ, ví dụ: thông tin bạn tải lên hoặc đăng trên các dịch vụ của chúng tôi (bao gồm thông tin cá nhân công khai của bạn, danh sách bạn tạo), phản hồi của bạn đối với thông tin do người khác tải lên hoặc đăng lên và bao gồm dữ liệu vị trí thông tin và nhật ký liên quan đến thông tin đó.</p><p><br></p><p><br></p><p>Những người dùng khác dùng dịch vụ của chúng tôi cũng có thể chia sẻ thông tin về bạn (bao gồm dữ liệu vị trí và thông tin nhật ký).</p><p><br></p><p><br></p><p>Đặc biệt, các dịch vụ truyền thông xã hội của chúng tôi được thiết kế để cho phép bạn chia sẻ thông tin với người dùng trên khắp thế giới và bạn có thể cung cấp thông tin được chia sẻ trong thời gian thực và rộng rãi.&nbsp;Miễn là bạn không xóa thông tin được chia sẻ, thông tin liên quan sẽ vẫn còn trong miền công cộng; ngay cả khi bạn xóa thông tin được chia sẻ, thông tin liên quan vẫn có thể được lưu trữ, sao chép hoặc lưu trữ độc lập bởi người dùng khác hoặc các bên thứ ba không liên kết không được kiểm soát bởi chúng tôi, hoặc bởi Người dùng khác hoặc các bên thứ ba đó được lưu giữ trong miền công cộng.</p><p><br></p><p><br></p><p>Vì vậy, vui lòng xem xét cẩn thận nội dung thông tin được tải lên, xuất bản và truyền đạt thông qua các dịch vụ của chúng tôi.&nbsp;Trong một số trường hợp, bạn có thể kiểm soát phạm vi người dùng có quyền xem thông tin được chia sẻ của bạn thông qua cài đặt bảo mật của một số dịch vụ của chúng tôi.&nbsp;Nếu bạn yêu cầu xóa thông tin liên quan của mình khỏi các dịch vụ của chúng tôi, vui lòng thực hiện việc đó thông qua các phương tiện được cung cấp trong các điều khoản dịch vụ đặc biệt này.</p><p><br></p><p><br></p><p>Thông tin cá nhân nhạy cảm mà bạn chia sẻ</p><p><br></p><p><br></p><p>Một số thông tin cá nhân nhất định có thể được coi là thông tin cá nhân nhạy cảm do tính đặc thù của nó, chẳng hạn như chủng tộc, tôn giáo, sức khỏe cá nhân và thông tin y tế của bạn, v.v.&nbsp;Thông tin cá nhân nhạy cảm được bảo vệ nghiêm ngặt hơn các thông tin cá nhân khác.</p><p><br></p><p><br></p><p>Xin lưu ý rằng nội dung và thông tin bạn cung cấp, tải lên hoặc đăng khi sử dụng dịch vụ của chúng tôi (chẳng hạn như hình ảnh về các hoạt động xã hội của bạn, v.v.) có thể tiết lộ thông tin cá nhân nhạy cảm của bạn.&nbsp;Bạn cần cân nhắc kỹ có nên tiết lộ thông tin cá nhân nhạy cảm liên quan khi sử dụng dịch vụ của chúng tôi hay không.</p><p><br></p><p><br></p><p>Bạn đồng ý với việc xử lý thông tin cá nhân nhạy cảm của mình cho các mục đích và phương pháp theo Chính sách Bảo mật này.</p><p><br></p><p><br></p><p>Chúng ta thu thập thông tin như thế nào?</p><p><br></p><p><br></p><p>Chúng tôi hoặc các đối tác bên thứ ba của chúng tôi có thể thu thập và sử dụng thông tin của bạn thông qua cookie và ưeb beacon, đồng thời lưu trữ những thông tin đó dưới dạng thông tin nhật ký.</p><p><br></p><p><br></p><p>Chúng tôi sử dụng cookies và web beacon của riêng mình để cung cấp cho bạn trải nghiệm người dùng và dịch vụ được cá nhân hóa hơn và cho các mục đích sau:</p><p><br></p><p><br></p><p>Nhớ thân phận của bạn.&nbsp;Ví dụ: cookie và web beacon giúp chúng tôi xác định bạn là người dùng đã đăng ký của chúng tôi hoặc lưu các tùy chọn của bạn hoặc thông tin khác mà bạn cung cấp cho chúng tôi;</p><p><br></p><p><br></p><p>Để phân tích việc bạn sử dụng dịch vụ của chúng tôi.&nbsp;Ví dụ: chúng tôi có thể sử dụng cookie và web beacon để hiểu những hoạt động nào bạn sử dụng dịch vụ của chúng tôi hoặc những trang web hoặc dịch vụ mà bạn yêu thích;</p><p><br></p><p><br></p><p>Tối ưu hóa quảng cáo.&nbsp;Cookie và web beacon giúp chúng tôi cung cấp cho bạn những quảng cáo có liên quan đến bạn dựa trên thông tin của bạn chứ không phải quảng cáo chung chung.</p><p><br></p><p><br></p><p>Trong khi chúng tôi sử dụng cookie và web beacon cho các mục đích trên, chúng tôi có thể cung cấp thông tin nhận dạng phi cá nhân được thu thập thông qua cookie và web beacon cho các nhà quảng cáo hoặc các đối tác khác sau khi xử lý thống kê để phân tích cách người dùng sử dụng dịch vụ của chúng tôi và sử dụng cho các dịch vụ quảng cáo.</p><p><br></p><p><br></p><p>Có thể có cookie và web beacon được đặt bởi các nhà quảng cáo hoặc các đối tác khác trên các sản phẩm và dịch vụ của chúng tôi.&nbsp;Các cookie và web beacon này có thể thu thập thông tin nhận dạng phi cá nhân về bạn để phân tích cách người dùng sử dụng các dịch vụ này, để gửi cho bạn những quảng cáo mà bạn có thể quan tâm hoặc để đánh giá hiệu quả của các dịch vụ quảng cáo.&nbsp;Việc thu thập và sử dụng thông tin như vậy bởi các cookie và web beacon của bên thứ ba này không chịu sự điều chỉnh của Chính sách bảo mật này, mà bởi các chính sách bảo mật của người dùng có liên quan. Chúng tôi không chịu trách nhiệm về cookie hoặc&nbsp;web beacon của bên thứ ba.</p><p><br></p><p>Bạn có thể từ chối hoặc quản lý cookie hoặc web beacon&nbsp;thông qua cài đặt trình duyệt của mình.&nbsp;Tuy nhiên, xin lưu ý rằng nếu bạn tắt cookie hoặc&nbsp;web beacon, bạn có thể không tận hưởng được trải nghiệm dịch vụ tốt nhất và một số dịch vụ có thể không hoạt động bình thường.&nbsp;Đồng thời, bạn sẽ nhận được cùng một số lượng quảng cáo, nhưng những quảng cáo đó sẽ ít liên quan đến bạn hơn.</p><p><br></p><p><br></p><p>Phục vụ quảng cáo</p><p><br></p><p><br></p><p>Chúng tôi có thể sử dụng thông tin liên quan của bạn để cung cấp cho bạn những quảng cáo phù hợp hơn .</p><p><br></p><p><br></p><p>Chúng tôi cũng có thể sử dụng thông tin của bạn để gửi cho bạn thông tin liên lạc tiếp thị thông qua Dịch vụ của chúng tôi, email hoặc cách khác để cung cấp hoặc quảng bá hàng hóa và dịch vụ của chúng tôi hoặc bên thứ ba như sau:</p><p><br></p><p><br></p><p>Dịch vụ của chúng tôi, hàng hóa hoặc dịch vụ của các chi nhánh và đối tác của chúng tôi, bao gồm dịch vụ nhắn tin tức thời, dịch vụ truyền thông trực tuyến, dịch vụ giải trí tương tác, dịch vụ mạng xã hội, dịch vụ thanh toán, dịch vụ tìm kiếm trên Internet, dịch vụ định vị và bản đồ, ứng dụng và dịch vụ, phần mềm quản lý dữ liệu và dịch vụ, dịch vụ quảng cáo trực tuyến, tài chính internet, và các phương tiện truyền thông xã hội, giải trí, thương mại điện tử, phần mềm hoặc dịch vụ thông tin và truyền thông (gọi chung là \"Dịch vụ Internet\");</p><p><br></p><p><br></p><p>Các nhà cung cấp dịch vụ Internet bên thứ ba và hàng hóa hoặc dịch vụ của bên thứ ba liên quan đến: thực phẩm và ăn uống, thể thao, âm nhạc, phim ảnh, truyền hình, biểu diễn trực tiếp và nghệ thuật và giải trí khác, sách, tạp chí và các ấn phẩm khác, quần áo và phụ kiện, đồ trang sức, mỹ phẩm, sức khỏe và vệ sinh cá nhân, thiết bị điện tử, đồ sưu tầm, đồ dùng gia đình, thiết bị, trang trí nhà cửa và đồ đạc, vật nuôi, ô tô, khách sạn, giao thông và du lịch, ngân hàng, bảo hiểm và các dịch vụ tài chính khác, điểm khách hàng thân thiết và các chương trình phần thưởng, và những gì chúng tôi tin là Các hàng hóa hoặc dịch vụ khác có thể liên quan đến bạn.</p><p><br></p><p><br></p><p>Nếu bạn không muốn chúng tôi sử dụng thông tin cá nhân của bạn cho các mục đích quảng cáo nêu trên, bạn có thể yêu cầu chúng tôi ngừng sử dụng thông tin cá nhân của bạn cho các mục đích nêu trên thông qua các lời nhắc có liên quan mà chúng tôi cung cấp trong quảng cáo hoặc các nguyên tắc được cung cấp trong các dịch vụ cụ thể .</p><p><br></p><p><br></p><p>Email và thông tin chúng tôi có thể gửi cho bạn</p><p><br></p><p><br></p><p>Email &amp; tin thức đưa ra</p><p><br></p><p><br></p><p>Khi bạn sử dụng dịch vụ của chúng tôi, chúng tôi có thể sử dụng thông tin của bạn để gửi email, tin tức hoặc đưa thông báo&nbsp;đến thiết bị của bạn.&nbsp;Nếu bạn không muốn nhận thông tin này, bạn có thể chọn hủy đăng ký trên thiết bị của mình bằng cách làm theo lời nhắc nhở của chúng tôi.</p><p><br></p><p>Thông báo liên quan đến dịch vụ</p><p><br></p><p><br></p><p>Chúng tôi có thể đưa ra các thông báo liên quan đến dịch vụ cho bạn khi cần thiết (chẳng hạn như khi dịch vụ bị tạm dừng do bảo trì hệ thống).&nbsp;Bạn không thể hủy các thông báo liên quan đến dịch vụ không có tính chất quảng cáo này.</p><p><br></p><p><br></p><p>Các trường hợp ngoại lệ áp dụng cho Chính sách quyền riêng tư</p><p><br></p><p><br></p><p>Dịch vụ của chúng tôi có thể bao gồm hoặc liên kết đến phương tiện truyền thông xã hội hoặc các dịch vụ khác (bao gồm cả các trang web) do các bên thứ ba cung cấp.&nbsp;Ví dụ:</p><p><br></p><p><br></p><p>Bạn sử dụng nút \"Chia sẻ\" để chia sẻ nội dung nhất định với dịch vụ của chúng tôi hoặc bạn sử dụng dịch vụ kết nối của bên thứ ba để đăng nhập vào dịch vụ của chúng tôi.&nbsp;Các chức năng này có thể thu thập thông tin về bạn (bao gồm thông tin nhật ký của bạn), và có thể cài đặt cookies trên máy tính của bạn để hoạt động bình thường;</p><p><br></p><p><br></p><p>Chúng tôi cung cấp cho bạn các liên kết thông qua quảng cáo hoặc các phương tiện khác của dịch vụ của chúng tôi cho phép bạn truy cập các dịch vụ hoặc trang web của bên thứ ba.</p><p><br></p><p><br></p><p>Phương tiện truyền thông xã hội của bên thứ ba đó hoặc các dịch vụ khác có thể được điều hành bởi bên thứ ba có liên quan .&nbsp;Việc bạn sử dụng các dịch vụ truyền thông xã hội của bên thứ ba đó hoặc các dịch vụ khác (bao gồm bất kỳ thông tin cá nhân nào mà bạn cung cấp cho bên thứ ba đó) phải tuân theo các điều khoản dịch vụ và chính sách quyền riêng tư của bên thứ ba đó (không phải Điều khoản Dịch vụ Chung hoặc Chính sách Bảo mật này \"), bạn cần phải đọc kỹ các điều khoản của nó.</p><p><br></p><p><br></p><p>\"Chính sách Bảo mật\" này chỉ áp dụng cho thông tin chúng tôi thu thập, và không áp dụng cho các dịch vụ được cung cấp bởi bất kỳ bên thứ ba nào hoặc các quy tắc sử dụng thông tin của bên thứ ba ，chúng tôi không chịu trách nhiệm về việc bên thứ ba sử dụng thông tin do bạn cung cấp.</p><p><br></p><p><br></p><p>Trẻ vị thành niên sử dụng dịch vụ của chúng tôi</p><p><br></p><p>Chúng tôi khuyến khích cha mẹ hoặc người giám hộ hướng dẫn trẻ vị thành niên dưới mười tám tuổi sử dụng dịch vụ của chúng tôi.&nbsp;Chúng tôi khuyên trẻ vị thành niên nên khuyến khích cha mẹ hoặc người giám hộ của mình đọc Chính sách quyền riêng tư này và khuyên trẻ vị thành niên nên tìm kiếm sự đồng ý và hướng dẫn của cha mẹ hoặc người giám hộ trước khi gửi thông tin cá nhân.</p><p><br></p><p><br></p><p>Phạm vi thích hợp của Chính sách Bảo mật</p><p><br></p><p><br></p><p>Ngoại trừ một số dịch vụ cụ thể, Chính sách Bảo mật này áp dụng cho tất cả các dịch vụ của chúng tôi.&nbsp;Các chính sách bảo mật cụ thể sẽ được áp dụng cho các dịch vụ cụ thể này.&nbsp;Chính sách bảo mật cụ thể cho một số dịch vụ cụ thể sẽ cụ thể hơn về cách chúng tôi sử dụng thông tin của bạn trong các dịch vụ đó.</p><p><br></p><p><br></p><p>Chính sách bảo mật cho dịch vụ cụ thể đó là một phần của Chính sách bảo mật này.&nbsp;Nếu có bất kỳ sự ko đồng nhất nào giữa chính sách bảo mật của dịch vụ cụ thể có liên quan đến \"Chính sách bảo mật\" này, chính sách bảo mật của dịch vụ cụ thể đó sẽ được áp dụng.</p><p><br></p><p><br></p><p>Xin lưu ý rằng Chính sách Bảo mật này không áp dụng cho các trường hợp sau:</p><p><br></p><p><br></p><p>Thông tin được thu thập bởi các dịch vụ của bên thứ ba (bao gồm bất kỳ trang web nào của bên thứ ba) được truy cập thông qua Dịch vụ của chúng tôi;</p><p><br></p><p>Thông tin được thu thập thông qua các công ty hoặc đại lý khác quảng cáo trên Dịch vụ của chúng tôi.</p><p><br></p><p><br></p><p>càng thay đổi</p><p><br></p><p><br></p><p>Chúng tôi có thể sửa đổi các điều khoản của Chính sách Bảo mật này theo thời gian và những sửa đổi đó là một phần của Chính sách Bảo mật này.</p><p><br></p><p>Nếu những sửa đổi đó dẫn đến việc giảm đáng kể quyền của bạn theo Chính sách Bảo mật này, chúng tôi sẽ thông báo cho bạn bằng cách đặt một thông báo nổi bật trên trang chủ hoặc gửi email cho bạn hoặc bằng cách khác trước khi sửa đổi có hiệu lực.&nbsp;Trong trường hợp này, nếu bạn tiếp tục sử dụng dịch vụ của chúng tôi, bạn đồng ý bị ràng buộc bởi Chính sách bảo mật sửa đổi này.</p>','<p>quyền riêng tư</p>','<p>quyền riêng tư</p>',333,'Y','1f0e3d',1648627070,1588667529,0),(20,1,'Thỏa thuận người dùng','','dasdas','N',NULL,NULL,'<p>Thoả thuận người dùng</p><p><br></p><p>1. Người dùng không được sử dụng thông tin giả khi đăng ký trên trang web này.&nbsp;Người dùng nên giữ thông tin tài khoản và mật khẩu của mình đúng cách, và người dùng phải chịu trách nhiệm về bất kỳ tổn thất nào nếu thông tin người dùng bị rò rỉ.&nbsp;Nếu người dùng phát hiện ra rằng những người khác đã sử dụng gian lận hoặc chiếm đoạt tài khoản hoặc mật khẩu của mình hoặc tài khoản của họ đã được sử dụng mà không có sự cho phép hợp pháp, họ phải hiệu lực thông báo ngay cho công ty&nbsp;Người dùng hiểu và đồng ý rằng công ty có quyền thực hiện các hành động hoặc biện pháp tương ứng theo thông báo, yêu cầu hoặc nhận định、 áp dụng hành động hoặc biện pháp tương ứng , bao gồm nhưng không giới hạn ở việc đóng băng tài khoản, hạn chế chức năng tài khoản, v.v. Công ty không chịu trách nhiệm về những tổn thất gây ra bởi các hành động trên ngoại trừ Luật pháp có các trách nhiệm được quy định rõ ràng.</p><p><br></p><p><br></p><p>2. Người dùng phải tuân theo luật và quy định khi sử dụng dịch vụ này và không được sử dụng dịch vụ này để gây ra hành vi vi phạm luật , bao gồm nhưng không giới hạn ở:</p><p><br></p><p><br></p><p>&nbsp;(1) Xuất bản, truyền tải, phổ biến và lưu trữ nội dung gây nguy hại đến an ninh và đoàn kết quốc gia, phá hoại ổn định xã hội, vi phạm trật tự công cộng và thuần phong mỹ tục, lăng mạ, vu khống, tục tĩu, bạo lực và bất kỳ nội dung nào vi phạm pháp luật và quy định của quốc gia;</p><p><br></p><p><br></p><p>&nbsp;(2) Xuất bản, truyền, phổ biến và lưu trữ nội dung xâm phạm quyền sở hữu trí tuệ, bí mật kinh doanh và các nội dung hợp pháp khác;</p><p><br></p><p><br></p><p>&nbsp;(3) Bịa đặt sự thật ác ý và che giấu sự thật nhằm gây hiểu lầm hoặc lừa dối người khác;</p><p><br></p><p><br></p><p>&nbsp;(4) Đăng, truyền, phát tán thông tin quảng cáo, thông tin rác;</p><p><br></p><p><br></p><p>&nbsp;（5) Các hành vi khác bị nghiêm cấm theo quy định của pháp luật.</p><p><br></p><p><br></p><p><br></p><p>3. Người dùng không được phép sử dụng dịch vụ này để thực hiện bất kỳ hành động nào gây tổn hại đến quyền, lợi ích và tên tuổi của công ty và các chi nhánh, hoặc các quyền hợp pháp của người dùng khác.</p><p><br></p><p><br></p><p><br></p><p>4. Người dùng không được tham gia vào việc sản xuất, sử dụng và phổ biến \"hệ thống riêng\", \"kĩ thuật gian lận\" và các hành vi khác xâm phạm quyền và lợi ích hợp pháp của công ty dựa trên dịch vụ này.&nbsp;Nếu có bất kỳ vi phạm nào, công ty sẽ xử lý theo quy định của pháp luật hiện hành của Trung Quốc và các quy định có liên quan của công ty.</p><p><br></p><p><br></p><p><br></p><p>5. Ngoại trừ dịch vụ chuyển tài sản ảo, người dùng không được chuyển tài sản tài khoản trực tiếp hoặc dưới&nbsp;bất kỳ hình thức trá hình nào.</p><p><br></p><p><br></p><p>6. Người dùng không được tham gia vào các hành vi gian lận và các hành vi khác làm tổn hại đến tính công bằng.&nbsp;Người dùng đồng ý chấp nhận phân tích dữ liệu trò chơi của công ty. Khi công ty phát hiện thấy dữ liệu bất thường, công ty theo như&nbsp;phán quyết độc lập của riêng mình để xác định đó là gian lận .</p><p><br></p><p><br></p><p><br></p><p>7. Người dùng không được phép để bất kỳ hành vi nào lợi dụng sơ hở hệ thống nền tảng của công ty để gây thiệt hại cho người dùng khác, công ty hoặc hành vi bảo mật Internet</p><p><br></p><p><br></p><p>8. Người dùng biết và xác nhận rằng các thông báo, quy tắc, lời nhắc và thông tin khác về dịch vụ được công ty gửi đến người dùng thông qua thông báo, email, tin nhắn văn bản, thông báo tài khoản và các công cụ nhắn tin nhanh để được đăng ký trong tài khoản của người dùng đều hợp lệ thông báo.&nbsp;Khi thông tin đó được xuất bản hoặc phát hành, nó được coi là đã được chuyển đến người dùng.</p><p><br></p><p><br></p><p>Thông tin quảng cáo và khuyến mại</p><p><br></p><p><br></p><p>1. Người dùng đồng ý chấp nhận các dịch vụ có liên quan do công ty gửi thông qua thông báo, email, tin nhắn văn bản, thông báo tài khoản và các công cụ nhắn tin tức nhanh do người dùng đăng ký trong tài khoản, hoặc công ty, chi nhánh của họ hoặc có mối quan hệ hợp tác với công ty ,sản phẩm liên quan của bên thứ ba, khuyến mãi dịch vụ hoặc thông tin thương mại khác.</p><p><br></p><p><br></p><p>2. Công ty trong quá trình phụ vụ có thể cung cấp các liên kết đến các trang web khác trên Internet hoặc các tài nguyên trong dịch vụ này, và công ty không đảm bảo hoặc chịu trách nhiệm về bất kỳ nội dung, quảng cáo, sản phẩm hoặc các tài liệu khác hiện có hoặc có nguồn gốc từ các trang web hoặc tài nguyên đó;</p><p><br></p><p><br></p><p>Nếu nội dung có trong liên kết hoặc nội dung của liên kết được cung cấp bởi công cụ tìm kiếm xâm phạm quyền của người dùng, công ty tuyên bố rằng nó không liên quan gì đến nội dung trên và không chịu bất kỳ trách nhiệm nào ngoại trừ được quy định rõ ràng bởi pháp luật .</p><p><br></p><p><br></p>','<p>Thỏa thuận người dùng</p>','<p>Thỏa thuận người dùng</p>',333,'Y','98f137',1648626523,1588858679,0),(21,2,'测试一下','','','N',NULL,NULL,'<p>测试一下</p>','','',0,'Y','3c59dc',1619105214,1597482905,1),(22,2,'11','','','N',NULL,NULL,'<p>11</p>','','',0,'Y','b6d767',1619105213,1597483815,1),(23,2,'12','','','N',NULL,NULL,'<p>12</p>','','',0,'Y','37693c',1619105211,1597483819,1),(24,1,'2222222','','','N',NULL,NULL,'<p>2222</p>','','',0,'Y','1ff1de',1619847624,1619425933,1),(25,1,'1','','','N',NULL,NULL,'<p>aads</p>','','',0,'Y','8e296a',1619847622,1619444013,1),(26,1,'123','','','N',NULL,NULL,'<p>sas</p>','','',0,'Y','4e732c',1619847620,1619444052,1),(27,1,'22','','','N',NULL,'/upload/2021/04/26/20210426213847_edb54a8d.png','<p>322</p>','','',0,'Y','02e74f',1619847616,1619444355,1),(28,3,'133','','','Y','/upload/2021/04/26/20210426214209_49e32d2d.png',NULL,'<p>adad</p>','','',0,'Y','33e75f',1619444735,1619444531,1),(29,3,'11133','','','Y','/upload/2021/04/26/20210426214618_d1afca55.png',NULL,'<p>啊大大44</p>','','',0,'Y','6ea9ab',1619845753,1619444780,1),(30,2,'333','','','N',NULL,'','<p>42</p>','','',0,'Y','34173c',1619445452,1619445058,1),(31,3,'222','','','Y','/upload/2021/04/26/20210426220339_5dd6d9b3.png',NULL,'<p>adasd</p>','','',0,'Y','c16a53',1619845755,1619445819,1),(32,3,'23','','','Y',NULL,NULL,'<p>aasda</p>','','',0,'Y','6364d3',1619845757,1619450521,1),(33,3,'聚焦新能源','','','N','/upload/2021/04/26/20210426232248_84117e20.jpg',NULL,'<p>3asd</p>','','',0,'Y','182be0',1619845759,1619450569,1),(34,4,'Liên quan đến chúng tôi','','','Y','/upload/2022/03/30/20220330165643_fbd67954.png',NULL,'<p><img src=\"/upload/2022/04/03/20220403182327_718ea2bb.jpg\"></p>','','',1,'Y','e36985',1648981417,1619450689,0),(35,4,'333','','','Y','/upload/2021/04/26/20210426232624_410a5ace.png',NULL,'<p>aaaaa</p>','','',0,'Y','1c383c',1619450845,1619450786,1),(36,4,'Bảo đảm an toàn','','','Y','/upload/2022/03/30/20220330181652_e67741ca.png',NULL,'<p><img src=\"/upload/2022/03/30/20220330191053_e5f24579.jpg\"></p><p><br></p><p><br></p><p><br></p>','','',1,'Y','19ca14',1648638662,1619450854,0),(37,3,'对面的小白看过来，让你秒懂新能源！','','dasdasd','Y','/upload/2021/05/01/20210501131418_ab5f6113.jpg',NULL,'<p><img src=\"/upload/2021/05/01/20210501131425_d297f8e4.png\"></p>','','<p>dasdasd</p>',0,'Y','a5bfc9',1648457169,1619845838,1),(38,3,'222','','','Y',NULL,NULL,'','','',2,'Y','a5771b',1619845900,1619845842,1),(39,3,'5555','','','Y',NULL,NULL,'','','',5,'Y','d67d8a',1619845895,1619845871,1),(40,3,'444','','','Y',NULL,NULL,'','','',4,'Y','d64592',1619845897,1619845875,1),(41,3,'光伏电站的寿命','','','Y','/upload/2021/05/01/20210501131532_c5deb4da.jpg',NULL,'<p><img src=\"/upload/2021/05/01/20210501131617_f8d49d00.png\"></p>','','',0,'Y','3416a7',1648457171,1619846195,1),(42,3,'光伏电站哪个季节发电量最多？','','','Y','/upload/2021/05/01/20210501131714_1a525ec8.jpg',NULL,'<p><img src=\"/upload/2021/05/01/20210501131736_c53721a3.png\"></p>','','',0,'Y','a1d0c6',1648457174,1619846266,1),(43,3,'光伏电站如何做到“一枝独秀”','','','Y','/upload/2021/05/01/20210501131758_e3098964.jpg',NULL,'<p><img src=\"/upload/2021/05/01/20210501131828_4bd23e24.jpg\"></p>','','',0,'Y','17e621',1648457180,1619846317,1),(44,3,'光伏登上云端，温暖中国卫士的每一天！','','','Y','/upload/2021/05/01/20210501131915_5f008184.jpg',NULL,'<p><img src=\"/upload/2021/05/01/20210501131935_3d877cc2.jpg\"></p>','','',0,'Y','f71771',1648457181,1619846390,1),(45,3,'光伏电站的分类','','','Y','/upload/2021/05/01/20210501132000_1d72c995.jpg',NULL,'<p><img src=\"/upload/2021/05/01/20210501132010_090df650.png\"></p>','','',0,'Y','6c8349',1648457183,1619846419,1),(46,2,'1','','','N',NULL,'','','','',0,'Y','d9d4f4',1619846517,1619846510,1),(47,3,'电e行帮你来养老','','','Y','/upload/2021/05/01/20210501170358_cfe06064.png',NULL,'<p><img src=\"/upload/2021/05/01/20210501170458_105257fa.png\"></p>','','',0,'Y','67c6a1',1648457185,1619859922,1),(48,3,'您有一份赚钱攻略，请查收~','','22222','Y','/upload/2021/05/01/20210501170746_59fd8c5d.png',NULL,'<p><img src=\"/upload/2021/05/01/20210501170755_3a0c14fd.png\"></p>','','<p>2222</p>',0,'Y','642e92',1648457188,1619860100,1),(49,2,'1234','','','N',NULL,'/upload/2021/05/01/20210501171849_3bf7d629.png','<p>9876</p>','','',999,'Y','f457c5',1619861196,1619860730,1),(50,3,'光伏行业的创新——以“助力环保·帮扶农户”为主题的“电e行','','','Y','/upload/2021/05/01/20210501181047_69da286c.jpg',NULL,'<p class=\"ql-align-justify\">​​“电e行”是一个开放共享的新能源产业规模化平台。通过资源链接、行业建设、品牌推广、扶贫行动等支持，促进优质光伏产品资源的规模化发展，鼓励和号召每一个人都能参与新能源发展建设。</p><p class=\"ql-align-justify\">让更多人参与创造和分享环保价值</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">我国环保公益事业的发展，常常会受限于传播与参与渠道，很多公众期待参与到环境保护的行列中，却不得其门而入；另一方面，单方面的发展比较难以带动公众的互动与参与。随着环保公益项目的深入开展，在全新的布局中，“电e行”平台率先提出了以建设光伏电站促进环保节能，扶持当地贫困农户的行业新概念。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">根据发展规划，“电e行”计划在持续打造助力绿色能源品牌的基础上，改变社会公众只能通过部分线上和线下活动去参与个别环保公益活动的形式，通过“电e行”平台深度拓展光伏电站产业的建设和发展，进一步打破原有的环保节能和公益执行的固有模式，运用互联网的技术手段，逐步实现全社会环保公益大数据、大交互的新模式。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">从原本的定向关注环保公益到随时随地打开手机即可参与，“电e行”平台致力于让每一个人都能成为解决环境问题的参与者、贡献者，推动和传播绿色能源发展和方式。无缝链接各个光伏产业资源与环保爱心之士，营造整个光伏生态圈，实现双向精准。</p><p class=\"ql-align-justify\">​<img src=\"/upload/2021/05/01/20210501181034_6ede2e7a.jpg\"></p><p>另外，平台将逐步发展成为一个公众参与度高，门槛较低，互动及体验性强，且充分包含社会环保、扶持农户、公益资讯等多维元素，甚至是社会公众相互展示、交流的我国新能源环保领域唯一大型互联网平台。</p><p>践行“助力新能源”理念 传播环保正能量</p><p><br></p><p>如何使“助力绿色能源”的理念在具体操作中能够落到实处？平台在长时间的农村走访和调研中确立了基本思路：一是倡导人人积极争当解决环境问题的参与者和贡献者。环境问题是公共利益问题，需要社会公众共同参与，唯有共治才有共享；二是注重推动光伏产业资源的开发和利用。农户可利用自家屋顶的闲置资源，建设一座分布式光伏电站，装机容量少则三五千瓦，多则十千瓦、二十千瓦。节省了电费，用不完的电还能卖给电网，收益稳定可靠，甚至成为光伏扶贫的一种主要应用模式，是平台创始人的初心，也是是国家都认可并大力推广的清洁能源利用方式。收益回馈模式可按照房屋租金和户用系统维护费用形式回馈给贫困农户，有效提高农户收入，感受到劳动所得带来的价值，切实体会自身益处。</p><p><br></p><p>共创绿色生活 共推绿色发展</p><p><br></p><p>光伏电站的组建、安装和后期维护是环保务实与大众互动的完美结合，更是绿色生活落到实处的最好诠释，同时平台也为农户塑造牢固树立绿色青山就是金山银山的意识，切实推动每个人对绿色能源发展方式和生活方式，推进美丽中国建设积累了宝贵的实践经验。</p><p><br></p><p>近年来，我国政府把生态文明建设纳入中国特色社会主义事业五位一体总体布局，提出了创新、协调、绿色、开放、共享的发展理念，着力改善生态环境质量，推进美丽中国建设。“电e行”对新能源发展模式的探索，则是奏响了共创“绿色生活”的强音，射出了共推“绿色发展”的利箭。</p><p><br></p><p>我们始终相信，环保公益与每一个人息息相关，也需要全社会共同为之努力。“电e行”的初心便是利用太阳能光伏发电，以达到节能减排，创造绿色生活，秉持着为农户提升美好生活的初心，时刻牢记企业公民所肩负的责任与使命，全力助推环保公益事业发展，坚持追求与环境和社会和谐共赢发展。​​​​</p><p><br></p>','','',0,'Y','c0c7c7',1620121581,1619863853,1),(51,3,'电e行：积极投身一带一路建设参与引进来和走出去战略为光伏发展拓展','','','Y','/upload/2021/05/01/20210501182339_22e03af4.png',NULL,'<p class=\"ql-align-justify\">​​<strong>新能源的迅猛发展正在快速改变着全球能源格局，而区块链技术的横空出世为新能源的发展又增加了新生的巨大想象空间。</strong></p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">具有去中心化、分布式计账、信息高度透明、数据不可篡改等天然优势的区块链技术如何为新能源赋能？区块链与新能源系统的结合，可以为分步式新能源增强信用背书，便利资产数据化，将进一步降低新能源的投资门槛，并增强光伏电站的流动性，从而推动能源交易的市场化、电网智能化，降低融资成本，提高信任，助力环保，真正解决当前光伏行业的痛点。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\"><strong>“电e行”率先将区块链技术与新能源项目相结合，打造新能源自由市场规则的项目。</strong></p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">那么，当新能源遇上区块链，会产生怎样的火花呢?</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\"><strong>首先，区块链是什么？</strong></p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">区块链是比特币的底层技术，是一种去中心化的信任机制。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">2008年底金融危机肆虐，一个署名为中本聪的人发表了一篇名为《比特币：一种点对点电子现金系统》的论文，他在这篇论文中提出了这种基于P2P网络、密码学的数字货币，并于2009年创造了第一个“创世区块”，从此打开了比特币世界的大门。直到比特币系统在无专人维护的情况下高效、稳定地运行了多年，人们才关注到比特币的底层技术——区块链。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">通俗来说，区块链是一种去中心化的分布式记账技术，是一个公开透明的数据库，能够实现对超大规模交易项目的记账与管理，每个成员地位平等，都可以参与记账，并且将账本变化发送给所有参与者备份。因此被许多人称为“对未来10年影响最大的技术”“第二代互联网技术”。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\"><strong>第二，能源区块链是什么？</strong></p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">能源区块链是一个复合概念，顾名思义，是基于区块链技术实现能源互联网的一种商业模式。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">能源互联网被写在“一带一路”国家战略之中，与区块链有较强的内在一致性，都必须建立在智能设备物联网的基础上。<strong>此外，区块链和能源互联网都强调去中心化、自治性、市场化、智能化，可以说两者结合天生具有商业落地的实用价值。</strong></p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\"><img src=\"/upload/2021/05/01/20210501181711_2a151d7f.png\"></p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\"><strong>重心，区块链+能源能干什么？</strong></p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">目前，新能源发电快速崛起，我国的光伏发电已由“两头在外”的典型世界加工基地，逐步转变成为全产业链全球光伏发展创新制造基地，但仍面临诸多挑战，如光伏厂商良莠不齐、数据分散、运维成本高、交易不透明等，这些问题制约着整个行业的改革和进一步的发展。“电e行”团队认为，能源区块链可实现能源的数字化精准管理，每一度电都知道它来自在什么地方，而数字世界的每度电都有数字映射，可以重新建模电力网络，实现精确管理和结算。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">以光伏发电为例，未来电力市场化导致价格波动明显，电站金融产品开发成本高，怎么办？用区块链技术，其一、分布式总账数据强制信任，相关方点对点互动，第二、智能合约自动执行电力交易点机波动自动响应。第三、区块链实现电站收益直接证券化，让数据的价值流动起来，将数据的收益权回归数据的所有者，吸引到全球的新能源参与者加入平台形成新的去中心化的共赢的新生态网络。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\"><strong>“电e行”野心如何</strong></p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">显然，当下能源品类的丰富化、能源系统的分布化、能源交易的市场化以及电网智能化成为越来越清晰的发展趋势，<strong>而“区块链”与能源系统的结合恰好可以助推这一趋势的发展：</strong>区块链的数据融合会进一步扩大数据规模和丰富性，有利于突破信息孤岛，建立数据横向流通机制，形成<strong>“社会化大数据”。</strong></p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">“电e行”，通过大数据+、区块链+、AI和金融技术赋能新能源，以“去中心化”的自由组网，有利于加速实现“分布式能源”发展中的各种多能互补、计量结算场景，利用智能合约机制，有利于加速实现电网智能调度、市场自由交易的系统形态，每一个在绿色环保和新能源领域做出贡献的人都会得到相应的奖励。<strong>未来，“电e行”将为提升产业格局为新能源的未来带来哪些改变？</strong>让我们拭目以待。​​​​</p><p><br></p>','','',0,'Y','283802',1620121585,1619864264,1),(52,3,'“伏万家”光伏电站买卖平台，一个让你躺着也能赚钱的APP！','','','Y','/upload/2021/05/02/20210502185931_5c4ff910.png',NULL,'<h1><br></h1><p><br></p><p>凛冽寒冬，还有什么比早起上班更困难的呢？躺在被窝里赚钱，这一定是每个人都梦寐以求的。现在机会来了，你只需要拿出手机，下载伏万家APP，即可轻松赚钱。</p><p><strong>“伏万家”，一个让你躺着也能赚钱的APP！</strong></p><p><strong>平台概述</strong></p><p>“伏万家”是利用区块链、大数据、物联网、人工智能等技术，结合线下专业高效的运维团队，面向广大用户打造的<strong>新能源大数据互联网平台。</strong></p><p>一方面，“伏万家”从根源上解决了用户因场地受限而无法通过户用屋顶进行光伏发电的困扰，更为其省去了测量、安装、备案、并网的繁琐流程，使其<strong>一键即可获得电站，产生发电收入</strong>。</p><p>另一方面，“伏万家”平台的搭建，成功地帮助农户实现其想将闲置屋顶再利用，增加收入的需求，在<strong>节能减排的同时，带领更多贫困户脱贫致富。</strong></p><p>“伏万家”始终致力于建立去中心化、可信任、开放、多元应用的新能源平台，推动新能源有序发展的同时，不忘环保、砥砺前行。</p><p><strong>功能介绍</strong></p><p>一键购买、查看收入、商务合作</p><p><strong><img src=\"/upload/2021/05/02/20210502190112_1e7610a7.png\"></strong></p><p><strong>一个产品 五重优势</strong></p><p><strong>优势一：收入稳</strong></p><p>专业维修维护，常年发电稳定，一次购买，持续盈利；</p><p><strong>优势二：标准高</strong></p><p>每座光伏电站都记录在区块链上，可追溯、易管理、超省心；</p><p><strong>优势三：环保优</strong></p><p>安全、清洁、绿色、环保</p><p>每发一度电，可减少0.947kgCO2排放；</p><p><strong>优势四：支持全</strong></p><p>一键即可购买，平台为您提供全方位运营、维护支持；</p><p><strong>优势五：保障强</strong></p><p>一电站一保险，中国人保，为您的财富保驾护航</p><p><strong>躺着赚钱</strong></p><p>从太阳升起到太阳落下，<strong>足不出户，即可产生收入。</strong></p><p>这不是天方夜谭，而是真实存在的赚钱方式。只要你在“伏万家”APP上选购了电站，从订单生效那一刻起，你的专属电站就在源源不断地帮你赚取收入。即使是恶劣天气导致电站无法正常运作，平台也会在第一时间发现问题，派遣专业的维修师及时对电站进行维修维护，<strong>保证电站常年发电稳定，解决您的一切后顾之忧。</strong></p><p><br></p>','','',0,'Y','9a1158',1619953316,1619953184,1),(53,2,'关于我们','','','Y',NULL,'/upload/2021/05/03/20210503095520_e67c59ca.png','<p>adAA</p>','','',0,'Y','d82c8d',1620036178,1619967207,1),(54,2,'安全保障','','','Y',NULL,'/upload/2021/05/03/20210503101734_2f220823.jpg','','','',0,'Y','a684ec',1620296917,1620006709,1),(55,2,'Tư chất doanh nghiệp','Tư chất doanh nghiệp','Tư chất doanh nghiệp','Y',NULL,'/upload/2022/04/03/20220403184055_d4572bf6.png','<p><img src=\"/upload/2022/03/30/20220330163327_852241d3.jpg\"><img src=\"/upload/2022/03/30/20220330163313_53369000.jpg\"><img src=\"/upload/2022/03/30/20220330163309_e541f8ba.jpg\"></p>','','',0,'Y','b53b3a',1648982458,1620006735,0),(56,2,'风控机构','','','Y',NULL,'/upload/2021/05/03/20210503100347_72947b01.png','','','',0,'Y','9f6140',1648628995,1620006771,1),(57,2,'Cấp độ thành viên','','','Y',NULL,'/upload/2021/05/03/20210503100400_9c1e4657.png','<p><img src=\"/upload/2022/03/30/20220330162916_330acffa.jpg\"></p>','<p><img src=\"/upload/2022/03/30/20220330162925_83a87d32.jpg\"></p>','<p><img src=\"/upload/2022/03/30/20220330162931_0cbf6af4.jpg\"></p>',0,'Y','72b32a',1648629026,1620006784,0),(58,2,'APP下载','','','Y',NULL,'/upload/2021/05/03/20210503100547_71089b7f.png','','','',0,'Y','66f041',1648982529,1620006795,1),(59,2,'公司公告','','','Y',NULL,'/upload/2021/05/03/20210503101721_6816b612.jpg','','','',0,'Y','093f65',1620225560,1620006821,1),(60,2,'常见问题','','111111','Y',NULL,'/upload/2021/05/03/20210503100526_c0965dbb.png','','<p>111111</p>','<p>111111</p>',0,'Y','072b03',1648628697,1620006831,1),(61,5,'123','','','Y','/upload/2021/05/05/20210505220950_8fc43f5f.png',NULL,'<p>sadtest</p>','','',0,'Y','7f39f8',1648457218,1620223794,1),(62,5,'aaa','','adsdasd','N',NULL,NULL,'<p>asd</p>','','<p>dasdas</p>',0,'Y','44f683',1648457214,1620224260,1),(63,5,'11','11','11','Y',NULL,NULL,'<p>11</p>','<p>11</p>','<p>11</p>',0,'Y','03afdb',1648629545,1648629545,0),(64,2,'Vấn đề thường gặp','','','Y',NULL,'','<p><img src=\"/upload/2022/04/28/20220428172744_78a796ac.jpg\"></p>','','',3,'Y','ea5d2f',1651138067,1651138067,0);
/*!40000 ALTER TABLE `article_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clo`
--

DROP TABLE IF EXISTS `clo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `lt_uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '隐藏模块条件',
  `no_date` varchar(8) NOT NULL DEFAULT '' COMMENT '期数',
  `no_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '每期时间',
  `apr` decimal(15,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '费率',
  `not_apr` decimal(15,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '未完成返还比例',
  `min_money` decimal(15,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '设置投资金额',
  `min_dk_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最小打卡时间',
  `max_dk_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最大打卡时间',
  `auto_add_num` varchar(20) NOT NULL DEFAULT '' COMMENT '每分钟自增人数',
  `auto_add_user_money` varchar(20) NOT NULL DEFAULT '' COMMENT '每分钟自增金额',
  `is_disable` char(1) NOT NULL DEFAULT 'N',
  `bm_user_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '实际报名数',
  `bm_all_money` decimal(15,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '实际总金额',
  `back_all_money` decimal(15,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '返还总金额',
  `income_all_money` decimal(15,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '收入总金额',
  `set_user_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '前台显示人数',
  `set_all_money` decimal(15,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '前台显示金额',
  `status` char(1) NOT NULL DEFAULT 'D' COMMENT 'D:未完成|S:结算中|Y:已结算',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clo`
--

LOCK TABLES `clo` WRITE;
/*!40000 ALTER TABLE `clo` DISABLE KEYS */;
INSERT INTO `clo` VALUES (1,0,'20200810',1596988800,10.00,0.00,100.00,1597006800,1597017600,'10','10','N',0,0.00,0.00,0.00,0,0.00,'D',1597074413,1597074413,0),(5,0,'20200811',1597075200,10.00,0.00,100.00,1597093200,1597104000,'1,10','1,10','N',0,0.00,0.00,0.00,0,0.00,'D',1597076228,1597076228,0),(6,0,'20200812',1597161600,10.00,0.00,100.00,1597179600,1597190400,'1,10','1,10','N',0,0.00,0.00,0.00,7864,43016.00,'D',1597161541,1597076228,0),(7,0,'20200813',1597248000,10.00,0.00,100.00,1597266000,1597276800,'1,10','1,10','N',0,0.00,0.00,0.00,8023,43751.00,'D',1597247941,1597076228,0),(8,0,'20200814',1597334400,10.00,0.00,150.00,1597352400,1597363200,'1,10','1,10','N',0,0.00,0.00,0.00,7720,42553.00,'D',1597334401,1597161601,0),(9,0,'20200815',1597420800,10.00,0.00,150.00,1597438800,1597449600,'1,10','1,10','N',0,0.00,0.00,0.00,7953,43393.00,'D',1597420801,1597248002,0),(12,0,'20210419',1618761600,10.00,0.00,150.00,1618779600,1618790400,'1,10','1,10','N',0,0.00,0.00,0.00,7595,41734.00,'D',1618845426,1597334401,0),(13,0,'20210418',1618675200,10.00,0.00,150.00,1618866000,1618878600,'1,10','1,10','N',1000,500000.00,50000.00,50000.00,1000,50000.00,'D',1597420801,1597420801,0),(14,0,'20210420',1618848000,10.00,0.00,150.00,1618866000,1618876800,'1,10','1,10','N',0,0.00,0.00,0.00,244,1369.00,'D',1618855141,1618845426,0),(15,0,'20210421',1618934400,10.00,0.00,150.00,1618952400,1618963200,'1,10','1,10','N',0,0.00,0.00,0.00,7933,43998.00,'D',1618941542,1618845426,0),(16,0,'20210422',1619020800,10.00,0.00,150.00,1619038800,1619049600,'1,10','1,10','N',0,0.00,0.00,0.00,7934,43708.00,'D',1619027941,1618851602,0),(17,0,'20210423',1619107200,10.00,0.00,150.00,1619125200,1619136000,'1,10','1,10','N',0,0.00,0.00,0.00,8036,44269.00,'D',1619114341,1618938002,0),(18,0,'20210424',1619193600,10.00,0.00,150.00,1619211600,1619222400,'1,10','1,10','N',0,0.00,0.00,0.00,7867,43006.00,'D',1619200742,1619024402,0),(19,0,'20210425',1619280000,10.00,0.00,150.00,1619298000,1619308800,'1,10','1,10','N',0,0.00,0.00,0.00,8013,44382.00,'D',1619287141,1619110801,0),(20,0,'20210426',1619366400,10.00,0.00,150.00,1619384400,1619395200,'1,10','1,10','N',0,0.00,0.00,0.00,7848,43148.00,'D',1619373541,1619197201,0),(21,0,'20210427',1619452800,10.00,0.00,150.00,1619470800,1619481600,'1,10','1,10','N',0,0.00,0.00,0.00,8012,43970.00,'D',1619459942,1619283602,0),(22,0,'20210428',1619539200,10.00,0.00,150.00,1619557200,1619568000,'1,10','1,10','N',0,0.00,0.00,0.00,7937,43749.00,'D',1619546341,1619370001,0),(23,0,'20210429',1619625600,10.00,0.00,150.00,1619643600,1619654400,'1,10','1,10','N',0,0.00,0.00,0.00,7719,42460.00,'D',1619632742,1619456401,0),(24,0,'20210430',1619712000,10.00,0.00,150.00,1619730000,1619740800,'1,10','1,10','N',0,0.00,0.00,0.00,7922,43296.00,'D',1619719141,1619542801,0),(25,0,'20210501',1619798400,10.00,0.00,150.00,1619816400,1619827200,'1,10','1,10','N',0,0.00,0.00,0.00,7935,43718.00,'D',1619805542,1619629202,0),(26,0,'20210502',1619884800,10.00,0.00,150.00,1619902800,1619913600,'1,10','1,10','N',0,0.00,0.00,0.00,7958,43827.00,'D',1619891941,1619715601,0),(27,0,'20210503',1619971200,10.00,0.00,150.00,1619989200,1620000000,'1,10','1,10','N',0,0.00,0.00,0.00,7843,42753.00,'D',1619978342,1619802002,0),(28,0,'20210504',1620057600,10.00,0.00,150.00,1620075600,1620086400,'1,10','1,10','N',0,0.00,0.00,0.00,7802,42778.00,'D',1620064741,1619888401,0),(29,0,'20210505',1620144000,10.00,0.00,150.00,1620162000,1620172800,'1,10','1,10','N',0,0.00,0.00,0.00,7922,43318.00,'D',1620151141,1619974802,0),(30,0,'20210506',1620230400,10.00,0.00,150.00,1620248400,1620259200,'1,10','1,10','N',0,0.00,0.00,0.00,8101,44316.00,'D',1620237541,1620061201,0),(31,0,'20210507',1620316800,10.00,0.00,150.00,1620334800,1620345600,'1,10','1,10','N',0,0.00,0.00,0.00,7933,43543.00,'D',1620323942,1620147601,0),(32,0,'20210508',1620403200,10.00,0.00,150.00,1620421200,1620432000,'1,10','1,10','N',0,0.00,0.00,0.00,3285,18086.00,'D',1620352442,1620234001,0),(33,0,'20210509',1620489600,10.00,0.00,150.00,1620507600,1620518400,'1,10','1,10','N',0,0.00,0.00,0.00,0,0.00,'D',1620323942,1620320402,0);
/*!40000 ALTER TABLE `clo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clo_list`
--

DROP TABLE IF EXISTS `clo_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clo_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `clo_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '打卡活动ID',
  `no_date` varchar(10) NOT NULL DEFAULT '' COMMENT '期数',
  `apr` decimal(15,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '利率',
  `not_apr` decimal(15,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '未完成返还比例',
  `apr_money` decimal(15,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '利息',
  `money` decimal(15,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '参与打卡金额',
  `ok_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '打卡时间',
  `back_money` decimal(15,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '获得金额 ',
  `status` char(1) NOT NULL DEFAULT 'S' COMMENT ' S:未打卡|D:已打卡|C:结算中|Y:已结算|N:已失效',
  `max_dk_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最大打卡时间',
  `min_dk_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最小打卡时间',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clo_list`
--

LOCK TABLES `clo_list` WRITE;
/*!40000 ALTER TABLE `clo_list` DISABLE KEYS */;
INSERT INTO `clo_list` VALUES (1,31,2,'20200811',10.00,0.00,10.00,100.00,1597102630,110.00,'Y',1597104000,1597093200,1597074505,1597118401,0),(2,24,2,'20200811',10.00,0.00,0.00,100.00,0,0.00,'X',1597104000,1597093200,1597075068,1597118401,0),(3,24,3,'20200812',10.00,0.00,0.00,100.00,0,0.00,'X',1597190400,1597179600,1597075526,1597204801,0),(4,31,3,'20200812',10.00,0.00,10.00,100.00,1597190316,110.00,'Y',1597190400,1597179600,1597075630,1597204801,0),(5,24,7,'20200813',10.00,0.00,0.00,100.00,0,0.00,'X',1597276800,1597266000,1597165711,1597291201,0),(6,31,7,'20200813',10.00,0.00,0.00,100.00,0,0.00,'X',1597276800,1597266000,1597190533,1597291201,0),(7,24,8,'20200814',10.00,0.00,0.00,100.00,0,0.00,'X',1597363200,1597352400,1597248559,1597377601,0),(8,35,12,'20200816',10.00,0.00,0.00,150.00,0,0.00,'S',1597536000,1597525200,1597481343,1597481343,0),(9,35,12,'20200815',10.00,0.00,0.00,150.00,1597442400,0.00,'D',1597449600,1597438800,1597481343,1597481343,0),(10,14,12,'20210419',10.00,0.00,0.00,150.00,0,0.00,'N',1618790400,1618779600,1618732612,1618834505,0),(11,14,16,'20210422',10.00,0.00,0.00,150.00,0,0.00,'S',1619049600,1619038800,1618972385,1618972385,0),(12,14,19,'20210425',10.00,0.00,0.00,150.00,0,0.00,'S',1619308800,1619298000,1619237737,1619237737,0);
/*!40000 ALTER TABLE `clo_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `code`
--

DROP TABLE IF EXISTS `code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `code` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mobile` varchar(11) NOT NULL DEFAULT '',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱地址',
  `code` varchar(10) NOT NULL DEFAULT '',
  `status` char(1) NOT NULL DEFAULT 'S' COMMENT 'S:未使用|Y:已使用|N:未使用',
  `type` varchar(20) NOT NULL DEFAULT 'register' COMMENT '短信类型',
  `message` varchar(200) DEFAULT NULL,
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '过期时间',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `mobile` (`mobile`),
  KEY `type` (`type`),
  KEY `expire_time` (`expire_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `code`
--

LOCK TABLES `code` WRITE;
/*!40000 ALTER TABLE `code` DISABLE KEYS */;
/*!40000 ALTER TABLE `code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `export_file`
--

DROP TABLE IF EXISTS `export_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `export_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL DEFAULT 'user',
  `file` varchar(200) NOT NULL DEFAULT '',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `export_file`
--

LOCK TABLES `export_file` WRITE;
/*!40000 ALTER TABLE `export_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `export_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flow_kuaishou`
--

DROP TABLE IF EXISTS `flow_kuaishou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flow_kuaishou` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(15) COLLATE utf8_estonian_ci NOT NULL DEFAULT 'kuaishou',
  `os` varchar(10) COLLATE utf8_estonian_ci NOT NULL DEFAULT 'android',
  `unit` int(10) unsigned NOT NULL DEFAULT '0',
  `plan` int(10) unsigned NOT NULL DEFAULT '0',
  `aid` varchar(50) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `cid` varchar(50) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `did` varchar(50) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `dname` varchar(200) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `imei` varchar(100) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `idfa` varchar(100) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `ip` varchar(20) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `call_url` varchar(500) COLLATE utf8_estonian_ci NOT NULL,
  `is_open_index` tinyint(1) DEFAULT '0',
  `is_reg` tinyint(1) NOT NULL DEFAULT '0',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `is_delete` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `dname` (`dname`),
  KEY `imei` (`imei`),
  KEY `ios` (`idfa`),
  KEY `is_open_index` (`is_open_index`),
  KEY `is_reg` (`is_reg`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flow_kuaishou`
--

LOCK TABLES `flow_kuaishou` WRITE;
/*!40000 ALTER TABLE `flow_kuaishou` DISABLE KEYS */;
/*!40000 ALTER TABLE `flow_kuaishou` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_bak`
--

DROP TABLE IF EXISTS `goods_bak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods_bak` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `thumb` varchar(200) DEFAULT NULL,
  `money` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `remark` varchar(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `vip_exchange` text NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'Y',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_bak`
--

LOCK TABLES `goods_bak` WRITE;
/*!40000 ALTER TABLE `goods_bak` DISABLE KEYS */;
INSERT INTO `goods_bak` VALUES (1,'梨','/upload/2020/05/08/20200508114345_6a9353c0.jpg',10.00,'梨',17,'{\"vip0\":\"10\",\"vip1\":\"10\",\"vip2\":\"10\",\"vip3\":\"10\",\"vip4\":\"10\",\"vip5\":\"10\",\"vip6\":\"10\",\"vip7\":\"10\",\"vip8\":\"10\"}','Y',1588909433,1586666762,0),(2,'苹果','/upload/2020/05/08/20200508114303_318f83e4.jpg',10.00,'苹果',17,'{\"vip0\":\"10\",\"vip1\":\"10\",\"vip2\":\"10\",\"vip3\":\"10\",\"vip4\":\"10\",\"vip5\":\"10\",\"vip6\":\"10\",\"vip7\":\"10\",\"vip8\":\"10\"}','Y',1588909391,1587123742,0),(3,'猕猴桃','/upload/2020/05/08/20200508114215_e27bd81a.jpg',25.00,'猕猴桃',17,'{\"vip0\":\"25\",\"vip1\":\"25\",\"vip2\":\"25\",\"vip3\":\"25\",\"vip4\":\"25\",\"vip5\":\"25\",\"vip6\":\"25\",\"vip7\":\"25\",\"vip8\":\"25\"}','Y',1588909873,1588818010,0),(4,'芒果','/upload/2020/05/08/20200508114053_910449b2.jpg',10.00,'芒果',17,'{\"vip0\":\"10\",\"vip1\":\"10\",\"vip2\":\"10\",\"vip3\":\"10\",\"vip4\":\"10\",\"vip5\":\"10\",\"vip6\":\"10\",\"vip7\":\"10\",\"vip8\":\"10\"}','Y',1588909267,1588819403,0),(5,'橙子','/upload/2020/05/08/20200508114009_db55c8ec.jpg',10.00,'橙子',17,'{\"vip0\":\"10\",\"vip1\":\"10\",\"vip2\":\"10\",\"vip3\":\"10\",\"vip4\":\"10\",\"vip5\":\"10\",\"vip6\":\"10\",\"vip7\":\"10\",\"vip8\":\"10\"}','Y',1588909277,1588819433,0),(6,'榴莲','/upload/2020/05/08/20200508113733_ddc9fd0b.jpg',70.00,'榴莲',17,'{\"vip0\":\"70\",\"vip1\":\"70\",\"vip2\":\"68\",\"vip3\":\"68\",\"vip4\":\"65\",\"vip5\":\"65\",\"vip6\":\"60\",\"vip7\":\"60\",\"vip8\":\"60\"}','Y',1588909283,1588819533,0),(7,'樱桃','/upload/2020/05/08/20200508114424_394a54c2.jpg',50.00,'樱桃',17,'{\"vip0\":\"50\",\"vip1\":\"50\",\"vip2\":\"50\",\"vip3\":\"50\",\"vip4\":\"50\",\"vip5\":\"50\",\"vip6\":\"50\",\"vip7\":\"50\",\"vip8\":\"50\"}','Y',1588909475,1588909475,0),(8,'牛油果','/upload/2020/05/08/20200508114515_5e60b864.jpg',40.00,'牛油果',17,'{\"vip0\":\"40\",\"vip1\":\"40\",\"vip2\":\"40\",\"vip3\":\"40\",\"vip4\":\"40\",\"vip5\":\"40\",\"vip6\":\"40\",\"vip7\":\"40\",\"vip8\":\"40\"}','Y',1588909524,1588909524,0),(9,'草莓蓝莓拼盘','/upload/2020/05/08/20200508115305_65a43991.jpg',60.00,'草莓蓝莓拼盘',17,'{\"vip0\":\"60\",\"vip1\":\"60\",\"vip2\":\"60\",\"vip3\":\"60\",\"vip4\":\"60\",\"vip5\":\"60\",\"vip6\":\"60\",\"vip7\":\"60\",\"vip8\":\"60\"}','Y',1588909998,1588909998,0);
/*!40000 ALTER TABLE `goods_bak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_cat`
--

DROP TABLE IF EXISTS `goods_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods_cat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `name_en` varchar(200) NOT NULL,
  `name_yn` varchar(200) NOT NULL,
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_cat`
--

LOCK TABLES `goods_cat` WRITE;
/*!40000 ALTER TABLE `goods_cat` DISABLE KEYS */;
INSERT INTO `goods_cat` VALUES (1,'水果1','','',1619933030,1596246317,1),(2,'数码','','',1619933187,1596247079,1),(3,'123','','',1619933013,1596365301,1),(4,'213','','',1619933010,1596365389,1),(5,'213','','',1619933008,1596365428,1),(6,'1231','','',1619933006,1596461806,1),(7,'22','','',1596730532,1596730528,1),(8,'22','','',1619933004,1596731012,1),(9,'22333','','',1619933002,1596731093,1),(10,'限时','lift','Đồ gia dụng',1649687124,1619933045,0),(11,'水果','','',1619948965,1619933125,1),(13,'常规','Home kitchenware','Tiền mặt',1649667256,1619933181,0),(14,'家居厨具','Home kitchenware','',1648276736,1648276154,1),(15,'推荐','Mobile','Chữ số',1649667245,1648276204,0),(16,'精选','test','Cuộc sống',1649667235,1648276755,0);
/*!40000 ALTER TABLE `goods_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_category_bak`
--

DROP TABLE IF EXISTS `goods_category_bak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods_category_bak` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '分类名称',
  `image` varchar(200) DEFAULT NULL COMMENT '分类图标',
  `addtime` int(11) NOT NULL COMMENT '创建时间',
  `uptime` int(11) NOT NULL COMMENT '更新时间',
  `is_delete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '软删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COMMENT='商品分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_category_bak`
--

LOCK TABLES `goods_category_bak` WRITE;
/*!40000 ALTER TABLE `goods_category_bak` DISABLE KEYS */;
INSERT INTO `goods_category_bak` VALUES (1,'水果',NULL,1587028064,1588827704,1),(2,'饮料',NULL,1587030264,1588827706,1),(3,'面食',NULL,1587032960,1587032981,1),(4,'面食2',NULL,1587034682,1588827708,1),(6,'121',NULL,1587110947,1587110986,1),(7,'4',NULL,1587111128,1587111318,1),(8,'2',NULL,1587111185,1587111311,1),(9,'4',NULL,1587111224,1587111307,1),(10,'面食2',NULL,1587113240,1587117934,1),(11,'饮料',NULL,1587113788,1588827710,1),(12,'新分类',NULL,1587117926,1588827712,1),(13,'12121','/upload/2020/05/07/20200507202034_4a07ff5b.png',1587118219,1588854196,1),(14,'333','/upload/2020/05/07/20200507202041_ae969e2d.png',1588854043,1588854194,1),(15,'3333','/upload/2020/05/07/20200507202049_5cd291a8.png',1588854050,1588854193,1),(16,'3333333','/upload/2020/05/07/20200507202055_db24e2e6.png',1588854057,1588854191,1),(17,'水果','/upload/2020/05/08/20200508171942_8975f288.jpg',1588854067,1588929589,0);
/*!40000 ALTER TABLE `goods_category_bak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_list`
--

DROP TABLE IF EXISTS `goods_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` int(10) unsigned NOT NULL DEFAULT '0',
  `credit` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '积分',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '标题',
  `title_en` varchar(200) DEFAULT NULL,
  `title_yn` varchar(200) DEFAULT NULL,
  `max_shop_num` int(10) unsigned NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT 'Y',
  `is_show_index` char(1) NOT NULL DEFAULT 'N' COMMENT '是否首页显示',
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(100) NOT NULL DEFAULT '' COMMENT '标题图片',
  `thumbs` text NOT NULL COMMENT '图片',
  `content` text COMMENT '内容',
  `content_en` text,
  `content_yn` text,
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_list`
--

LOCK TABLES `goods_list` WRITE;
/*!40000 ALTER TABLE `goods_list` DISABLE KEYS */;
INSERT INTO `goods_list` VALUES (1,16,19000.00,'Apple iPhone 13 Pro Max 128GB','Apple iPhone 13 Pro Max 128GB','Apple iPhone 13 Pro Max 128GB',100,'Y','N',99,'/upload/2022/04/21/20220421165901_41f821f3.jpg','[\"\\/upload\\/2022\\/04\\/21\\/20220421165904_9d1ea98e.jpg\"]','<p><img src=\"/upload/2022/04/21/20220421165921_403d18b1.jpg\"><img src=\"/upload/2022/04/21/20220421165916_38b67664.jpg\"><img src=\"/upload/2022/04/21/20220421165914_4ea94055.jpg\"></p>','','',1651315346,1596248457,0),(2,8,0.00,'12312333',NULL,NULL,0,'Y','N',33,'/upload/2020/08/06/20200806230730_ee1c0e21.png','[\"\\/upload\\/2021\\/04\\/17\\/20210417225407_429ec117.png\",\"\\/upload\\/2021\\/04\\/17\\/20210417225412_b751d15f.png\"]','<ul><li>	品牌:&nbsp;豪新百伦斯凯</li><li>	功能:&nbsp;减震 防滑 耐磨 透气 支撑 抗冲击 轻便</li><li>	闭合方式:&nbsp;系带</li><li>	鞋码:&nbsp;35 36 37 38 39 40 41 42 43 44</li><li>	流行元素:&nbsp;运动生活系列</li><li>	颜色分类:&nbsp;新百伦-nb574浅灰蓝 新百伦-nb574灰银 新百伦-nb574灰绿 新百伦-nb574黑莲-皮面 新百伦-nb574灰白 新百伦-nb574美国队长 新百伦-nb574绿总统-皮面 新百伦-nb574米白绿 新百伦-nb574深橘灰 新百伦-nb574巨人蓝 新百伦-nb574碳灰白 新百伦-nb574雷神 新百伦-nb574碳灰灰-皮面 新百伦-nb574沙色 新百伦-nb574黑色CHD 新百伦-nb574棕粉 新百伦-nb574三原色红 新百伦-nb574粉红 新百伦-nb574军绿棕 新百伦-nb574深蓝银 新百伦-nb574灰色CHC 新百伦-nb574三原色蓝 新百伦-nb574蓝绿 新百伦-nb574酒红灰蓝</li><li>	运动鞋科技:&nbsp;强化避震缓冲 透气技术</li><li>	适合路面:&nbsp;小道 公路 跑道</li><li>	吊牌价:&nbsp;568</li><li>	款号:&nbsp;新百伦nb574</li><li>	是否瑕疵:&nbsp;否</li><li>	上市时间:&nbsp;2021年春季</li><li>	适用场景:&nbsp;单次3-10km中短距离适用</li><li>	外底材料:&nbsp;防滑橡胶</li><li>	性别:&nbsp;男女通用</li><li>	运动系列:&nbsp;运动生活系列</li><li>	帮面材质:&nbsp;反毛皮</li><li><img src=\"/upload/2021/04/17/20210417233105_37c68b31.jpg\"></li></ul><p><br></p>',NULL,NULL,1619926238,1596726452,1),(3,10,288.00,'Máy hút bụi cầm tay Xiaomi Deerma','Máy hút bụi cầm tay Xiaomi Deerma','Máy hút bụi cầm tay Xiaomi Deerma',100,'Y','N',96,'/upload/2022/04/21/20220421171405_658f954f.jpg','[\"\\/upload\\/2022\\/04\\/21\\/20220421171412_1a68b5c9.jpg\"]','<p><img src=\"/upload/2022/04/21/20220421171442_7edb1678.jpg\"><img src=\"/upload/2022/04/21/20220421171438_82716b82.jpg\"><img src=\"/upload/2022/04/21/20220421171433_556be165.jpg\"></p>','','',1651315735,1596728665,0),(4,13,200.00,'Máy tạo độ ẩm không khí Deerma','Máy tạo độ ẩm không khí Deerma','Máy tạo độ ẩm không khí Deerma',0,'Y','N',97,'/upload/2022/04/21/20220421170045_0e74d834.jpg','[\"\\/upload\\/2022\\/04\\/21\\/20220421170049_89c4b19e.jpg\",\"\\/upload\\/2022\\/04\\/21\\/20220421170123_1f677703.jpg\"]','<p><img src=\"/upload/2022/04/21/20220421170112_6979399d.jpg\"><img src=\"/upload/2022/04/21/20220421170107_c3c117a7.jpg\"><img src=\"/upload/2022/04/21/20220421170103_f99e844d.jpg\"></p>','','',1651319831,1596728673,0),(5,5,220.00,'完全燃烧方法',NULL,NULL,0,'N','N',1,'/upload/2021/04/17/20210417225303_cb2b3344.png','[\"\\/upload\\/2021\\/04\\/17\\/20210417225257_7ed32e7a.png\"]','<p>孙菲菲外国人高反而更</p>',NULL,NULL,1619926248,1618671189,1),(6,10,300.00,'Bàn Là Hơi Xiaomi Zanjia','Bàn Là Hơi Xiaomi Zanjia','Bàn Là Hơi Xiaomi Zanjia',100,'Y','N',94,'/upload/2022/04/21/20220421171504_21888c4c.jpg','[\"\\/upload\\/2022\\/04\\/21\\/20220421171509_201e7577.jpg\"]','<p><img src=\"/upload/2022/04/21/20220421171527_475977ee.jpg\"><img src=\"/upload/2022/04/21/20220421171524_93bb561f.jpg\"></p>','','',1651315930,1619932793,0),(7,16,26000.00,'Xe Máy Honda Vision Cao cấp','Xe Máy Honda Vision Cao cấp','Xe Máy Honda Vision Cao cấp',100,'Y','N',1,'/upload/2022/04/21/20220421171727_9fec4977.jpg','[\"\\/upload\\/2022\\/04\\/21\\/20220421171731_8ab98612.jpg\"]','<p><img src=\"/upload/2022/04/21/20220421171748_ad44e7bc.jpg\"><img src=\"/upload/2022/04/21/20220421171743_8550c611.jpg\"><img src=\"/upload/2022/04/21/20220421171740_d6477131.jpg\"></p>',NULL,NULL,1651316103,1619932889,0),(8,10,50.00,'giấy ăn gấu trúc thùng','giấy ăn gấu trúc thùng','giấy ăn gấu trúc thùng',0,'Y','N',99,'/upload/2022/04/21/20220421165714_4d741fce.jpg','[\"\\/upload\\/2022\\/04\\/21\\/20220421165719_215423dd.jpg\"]','<p><img src=\"/upload/2022/04/21/20220421165740_e457476a.jpg\"><img src=\"/upload/2022/04/21/20220421165759_e5e6245c.jpg\"><img src=\"/upload/2022/04/21/20220421165752_83a20376.jpg\"></p>','','',1651319794,1619933578,0),(9,16,16000.00,'Apple MacBook Air (2020) M1 Chip','Apple MacBook Air (2020) M1 Chip','Apple MacBook Air (2020) M1 Chip',500,'Y','N',98,'/upload/2022/04/21/20220421165949_5009b0cb.jpg','[\"\\/upload\\/2022\\/04\\/21\\/20220421165954_b518a419.jpg\"]','<p><img src=\"/upload/2022/04/21/20220421170014_a3188c5b.jpg\"><img src=\"/upload/2022/04/21/20220421170008_ced9c5b7.jpg\"><img src=\"/upload/2022/04/21/20220421170005_ed31048e.jpg\"></p>','','',1651315465,1619934035,0),(10,10,99.00,'Quạt Mini Cầm Tay ROBOT RT','Quạt Mini Cầm Tay ROBOT RT','Quạt Mini Cầm Tay ROBOT RT',100,'Y','N',96,'/upload/2022/04/21/20220421170427_292bf79a.jpg','[\"\\/upload\\/2022\\/04\\/21\\/20220421170431_bebfc490.jpg\"]','<p><img src=\"/upload/2022/04/21/20220421170451_17456223.jpg\"><img src=\"/upload/2022/04/21/20220421170446_7c682cb7.jpg\"></p>','','',1651315652,1619946268,0),(11,16,8961112.00,'xxx','XXXXX','XXXXX',1,'Y','N',0,'/upload/2022/04/12/20220412000518_9efb9c2d.png','[\"\\/upload\\/2022\\/04\\/12\\/20220412000450_f3eaf820.png\"]','<p>111</p>','<p>222</p>','<p>333</p>',1650532685,1649693120,1),(12,16,100000.00,'赛梅本田汽车 CBR500R','赛梅本田汽车 CBR500R','赛梅本田汽车 CBR500R',100,'Y','N',10,'/upload/2022/04/21/20220421171619_b8334f90.jpg','[\"\\/upload\\/2022\\/04\\/21\\/20220421171622_b8334f90.jpg\"]','<p><img src=\"/upload/2022/04/21/20220421171638_cb0fdd5f.jpg\"><img src=\"/upload/2022/04/21/20220421171635_c07bc803.jpg\"><img src=\"/upload/2022/04/21/20220421171628_f63e60de.jpg\"></p>','','',1651316044,1649740918,0),(13,13,9.00,'10 khẩu trang Kk 5D','','',1,'Y','N',0,'/upload/2022/04/28/20220428174215_4fe8a77c.jpg','[\"\\/upload\\/2022\\/04\\/28\\/20220428174223_77e2c2fa.jpg\"]','<p><img src=\"/upload/2022/04/28/20220428174235_ca444489.jpg\"><img src=\"/upload/2022/04/28/20220428174231_65bdefd2.jpg\"></p>','','',1651316449,1651138970,0),(14,15,52.00,'Khẩu trang n95','','',1,'Y','N',0,'/upload/2022/04/28/20220428174401_b5d09ad6.jpg','[\"\\/upload\\/2022\\/04\\/28\\/20220428174405_1dca790d.jpg\"]','<p><img src=\"/upload/2022/04/28/20220428174413_f2fdfc50.jpg\"><img src=\"/upload/2022/04/28/20220428174410_729b9d32.jpg\"></p>','','',1651316420,1651139136,0),(15,10,48000.00,'Máy ảnh Canon EOS R','','',5,'Y','N',0,'/upload/2022/04/28/20220428174726_9da96fd4.jpg','[\"\\/upload\\/2022\\/04\\/28\\/20220428174730_58a280ef.jpg\"]','<p><img src=\"/upload/2022/04/28/20220428174743_1b6bd785.jpg\"><img src=\"/upload/2022/04/28/20220428174739_8112b47c.jpg\"><img src=\"/upload/2022/04/28/20220428174735_c284962a.jpg\"></p>','','',1651316364,1651139266,0),(16,15,11.00,'111','11','11',0,'Y','N',0,'/upload/2022/04/28/20220428184257_8ea1d808.jpg','[\"\\/upload\\/2022\\/04\\/28\\/20220428184259_0a4c6427.jpg\"]','<p>现金红包50</p>','','',1651143947,1651142591,1),(17,15,310.00,'phong bì tiền mặt','','',0,'Y','N',95,'/upload/2022/04/28/20220428190430_436bcfb0.jpg','[\"\\/upload\\/2022\\/04\\/28\\/20220428190433_605627cd.jpg\"]','<p><strong>phong bì tiền mặt  ₫350000</strong></p><p><img src=\"/upload/2022/04/28/20220428190507_c8657a07.jpg\"></p>','','',1651315822,1651143914,0),(18,16,9999.00,'Samsung Galaxy S22','','',0,'Y','N',0,'/upload/2022/04/28/20220428191059_ed8cdf45.jpg','[\"\\/upload\\/2022\\/04\\/28\\/20220428191104_068167b8.jpg\"]','<p><img src=\"/upload/2022/04/28/20220428191122_484d38d1.jpg\"><img src=\"/upload/2022/04/28/20220428191118_623ad47f.jpg\"><img src=\"/upload/2022/04/28/20220428191132_c8fcd606.jpg\"></p>','','',1651316331,1651144295,0),(19,13,1880.00,'特福 RK762168','','',0,'Y','N',0,'/upload/2022/04/28/20220428191208_e8f1d8ba.jpg','[\"\\/upload\\/2022\\/04\\/28\\/20220428191212_1c3af24b.jpg\"]','<p><img src=\"/upload/2022/04/28/20220428191231_df418f71.jpg\"><img src=\"/upload/2022/04/28/20220428191226_a17bbcff.jpg\"><img src=\"/upload/2022/04/28/20220428191223_64831cfd.jpg\"></p>','','',1651316280,1651144353,0),(20,13,4000.00,'Samsung MG23K3515AS/SV','','',0,'Y','N',0,'/upload/2022/04/28/20220428191301_73eb5b73.jpg','[\"\\/upload\\/2022\\/04\\/28\\/20220428191305_cfe5740b.jpg\"]','<p><img src=\"/upload/2022/04/28/20220428191315_82450aa1.jpg\"><img src=\"/upload/2022/04/28/20220428191312_0f6d1f0c.jpg\"><img src=\"/upload/2022/04/28/20220428191309_4aa70478.jpg\"></p>','','',1651316240,1651144398,0),(21,15,28.00,'JIASHI','','',1,'Y','N',0,'/upload/2022/04/28/20220428191423_22ee0c62.jpg','[\"\\/upload\\/2022\\/04\\/28\\/20220428191427_75041f16.jpg\"]','<p><img src=\"/upload/2022/04/28/20220428191440_e1d8188d.jpg\"><img src=\"/upload/2022/04/28/20220428191436_6bc045f9.jpg\"><img src=\"/upload/2022/04/28/20220428191432_31047a90.jpg\"></p>','','',1651316196,1651144484,0),(22,13,59.00,'Cốc giấy dạng lốc ANECO','','',0,'Y','N',0,'/upload/2022/04/28/20220428191625_d608672c.jpg','[\"\\/upload\\/2022\\/04\\/28\\/20220428191630_314d44b5.jpg\"]','<p><img src=\"/upload/2022/04/28/20220428191644_780f1136.jpg\"><img src=\"/upload/2022/04/28/20220428191639_4b124afd.jpg\"><img src=\"/upload/2022/04/28/20220428191636_1399609c.jpg\"></p>','','',1651316147,1651144606,0),(23,15,1500.00,'Tiền mặt phong','','',0,'Y','N',96,'/upload/2022/04/28/20220428192226_1064b3ea.jpg','[\"\\/upload\\/2022\\/04\\/28\\/20220428192228_1064b3ea.jpg\"]','<h2>Tiền mặt phong <strong> ₫1800000</strong></h2><p><img src=\"/upload/2022/04/28/20220428192331_f4ac3d45.jpg\"></p>','','',1651315633,1651145020,0),(24,15,2900.00,'Tiền mặt phong','','',0,'Y','N',96,'/upload/2022/04/28/20220428192455_faaa1b6d.jpg','[\"\\/upload\\/2022\\/04\\/28\\/20220428192456_1ee2f929.jpg\"]','<h2><strong>Tiền mặt phong ₫3500000</strong></h2><p><img src=\"/upload/2022/04/28/20220428192556_54804ced.jpg\"></p>','','',1651315592,1651145161,0);
/*!40000 ALTER TABLE `goods_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_order`
--

DROP TABLE IF EXISTS `goods_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_id` int(10) unsigned NOT NULL DEFAULT '0',
  `credit` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '积分',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '姓名',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  `address` varchar(200) NOT NULL DEFAULT '' COMMENT '地址',
  `kd_sn` varchar(30) DEFAULT NULL COMMENT '快递号',
  `kd_name` varchar(30) DEFAULT NULL COMMENT '快递公司',
  `kd_name_pinyin` varchar(30) DEFAULT NULL COMMENT '快递公司编号',
  `status` char(1) NOT NULL DEFAULT 'S' COMMENT 'S:已下单:D:已发货:已签收',
  `ok_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收货时间',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_order`
--

LOCK TABLES `goods_order` WRITE;
/*!40000 ALTER TABLE `goods_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `goods_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_order_bak`
--

DROP TABLE IF EXISTS `goods_order_bak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods_order_bak` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(200) DEFAULT NULL,
  `money` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `num` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '商品数量',
  `thumb` varchar(200) DEFAULT NULL,
  `remark` varchar(300) DEFAULT NULL,
  `status` char(1) DEFAULT 'S',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_order_bak`
--

LOCK TABLES `goods_order_bak` WRITE;
/*!40000 ALTER TABLE `goods_order_bak` DISABLE KEYS */;
/*!40000 ALTER TABLE `goods_order_bak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `schedule` varchar(100) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `name_en` varchar(255) NOT NULL,
  `name_yn` varchar(200) NOT NULL,
  `thumb` varchar(200) DEFAULT NULL,
  `stock` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '总库存',
  `buy_count` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '已购数量',
  `rem_count` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '剩余数量',
  `is_show_index` char(1) NOT NULL DEFAULT 'N',
  `apr` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `pack` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `pack_max_num` int(10) NOT NULL DEFAULT '0',
  `pack_money` decimal(15,2) NOT NULL DEFAULT '0.00',
  `top_apr` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `days` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL DEFAULT 'A',
  `money` decimal(15,2) unsigned DEFAULT '0.00',
  `min_money` decimal(15,2) unsigned NOT NULL DEFAULT '1.00',
  `max_money` decimal(15,2) NOT NULL DEFAULT '0.00',
  `max_count` int(10) NOT NULL DEFAULT '1',
  `prize_num` int(10) unsigned NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT 'Y',
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `item_desc` text,
  `item_desc_en` text NOT NULL,
  `item_desc_yn` text NOT NULL,
  `begin_time` int(10) unsigned NOT NULL DEFAULT '0',
  `if_open_vouchers` char(1) DEFAULT 'N',
  `vouchers_money` decimal(15,2) DEFAULT '0.00',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sort` (`sort`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'100','有色金属铸造基地项目','','','/upload/2020/05/08/20200508145445_48aedd11.png',1,0,0,'N',2.32,0.00,0,0.00,0.00,25,'A',30000000.00,20000.00,3500000.00,100,0,'N',0,'【此项目未有投资限制，可重复投资】','','',1586670383,'N',0.00,1619936902,1586671446,0),(2,'100','年产4万吨橡胶制品项目','','','/upload/2020/05/08/20200508145513_a073a0b4.png',1,0,0,'N',0.86,0.00,0,0.00,0.00,15,'A',23000000.00,13000.00,1600000.00,100,0,'N',0,'【此项目未有投资限制，可重复投资】','','',1586671460,'N',0.00,1619259620,1586671835,0),(3,'100','年产320万套空气滤清器项目','','','/upload/2020/05/08/20200508145529_fd2d1e76.png',1,0,0,'N',0.64,0.00,0,0.00,0.00,8,'A',20000000.00,7000.00,1500000.00,100,0,'N',0,'【此项目未有投资限制，可重复投资】','','',1586671901,'N',0.00,1619259620,1586671988,0),(4,'100','安全装备材料智能制造项目','','','/upload/2020/05/08/20200508145543_0080c3e7.png',1,0,0,'N',0.48,0.00,0,0.00,0.00,3,'A',12000000.00,3000.00,2300000.00,100,0,'N',0,'【此项目未有投资限制，可重复投资】','','',1586671988,'N',0.00,1619259620,1586672108,0),(5,'100','水库扩建项目','','','/upload/2020/05/08/20200508145556_edde5d66.png',1,0,0,'N',0.79,0.00,0,0.00,0.00,23,'A',33000000.00,22000.00,5000000.00,100,0,'N',0,'【此项目未有投资限制，可重复投资】','','',1586672124,'N',0.00,1619259620,1586672225,0),(6,'100','年产8万锭高端纺纱项目','','','/upload/2020/05/08/20200508145610_fe5b6ae4.png',1,0,0,'N',0.87,0.00,0,0.00,0.00,13,'A',28000000.00,10000.00,4200000.00,100,0,'N',0,'【此项目未有投资限制，可重复投资】','','',1586672439,'N',0.00,1619259625,1586672540,0),(7,'100','铁路立交桥项目','','','/upload/2020/05/08/20200508145630_64bbe361.png',1,0,0,'N',0.65,0.00,0,0.00,0.00,7,'A',25000000.00,5000.00,2300000.00,100,0,'N',0,'【此项目未有投资限制，可重复投资】','','',1586673362,'N',0.00,1619259625,1586673560,0),(8,'100','雨污分流改造工程项目','','','/upload/2020/05/08/20200508145650_401dd8d2.png',1,0,0,'N',0.46,0.00,0,0.00,0.00,3,'A',20000000.00,1000.00,1700000.00,100,0,'N',0,'【此项目未有投资限制，可重复投资】','','',1586673643,'N',0.00,1619259625,1586673787,0),(9,'100','氢能源汽车加氢服务中心项目','','','/upload/2020/05/08/20200508145704_c005ffb7.png',1,0,0,'N',0.80,0.00,0,0.00,0.00,21,'A',38000000.00,20000.00,2600000.00,100,0,'N',0,'【此项目未有投资限制，可重复投资】','','',1586673908,'N',0.00,1619259625,1586674052,0),(10,'100','二期风电场储能系统E项目','','','/upload/2020/05/08/20200508145717_df3bc58f.png',1,0,0,'N',0.88,0.00,0,0.00,0.00,21,'A',29000000.00,12000.00,3500000.00,100,0,'N',0,'【此项目未有投资限制，可重复投资】','','',1586674054,'N',0.00,1619259625,1586674167,0),(11,'100','公路改建工程项目','','','/upload/2020/05/08/20200508145732_c4749fb1.png',1,0,0,'N',0.67,0.00,0,0.00,0.00,9,'A',23000000.00,7000.00,4200000.00,100,0,'N',0,'【此项目未有投资限制，可重复投资】','','',1586674179,'N',0.00,1619259625,1586674283,0),(12,'100','天然气利用项目','','','/upload/2020/05/08/20200508145746_104f2c7f.png',1,0,0,'N',0.47,0.00,0,0.00,0.00,5,'A',27000000.00,1000.00,2000000.00,100,0,'N',0,'【此项目未有投资限制，可重复投资】','','',1586674301,'N',0.00,1619259625,1586674384,0),(13,'100','天然气管网建设项目','','','/upload/2020/05/08/20200508145805_61ef70f4.png',1,0,0,'N',0.78,0.00,0,0.00,0.00,22,'A',36000000.00,21000.00,3400000.00,100,0,'N',0,'【此项目未有投资限制，可重复投资】','','',1586674437,'N',0.00,1619259625,1586674530,0),(14,'100','高铁站配套工程项目','','','/upload/2020/05/08/20200508145825_dcead2c2.png',1,0,0,'N',0.87,0.00,0,0.00,0.00,15,'A',42000000.00,15000.00,5100000.00,100,0,'N',0,'【此项目未有投资限制，可重复投资】','','',1586674534,'N',0.00,1619259625,1586674654,0),(15,'100','雨水泵站和污水泵站建设工程项目','','','/upload/2020/05/08/20200508145837_691de2ae.png',1,0,0,'N',0.66,0.00,0,0.00,0.00,8,'A',27000000.00,5000.00,1900000.00,100,0,'N',0,'【此项目未有投资限制，可重复投资】','','',1586674655,'N',0.00,1619259625,1586674783,0),(16,'100','建筑垃圾填埋场项目','','','/upload/2020/05/08/20200508145845_95cfd1ef.png',1,0,0,'N',0.45,0.00,0,0.00,0.00,5,'A',24000000.00,3000.00,1300000.00,100,0,'N',0,'【此项目未有投资限制，可重复投资】','','',1586674905,'N',0.00,1619259631,1586674965,0),(17,'100','年产150套环保设备项目','','','/upload/2020/05/08/20200508145900_f73f4425.png',1,0,0,'N',0.76,0.00,0,0.00,0.00,20,'A',38000000.00,20000.00,2400000.00,100,0,'N',0,'【此项目未有投资限制，可重复投资】','','',1586675408,'N',0.00,1619259631,1586675720,0),(18,'100','分散式风电项目','','','/upload/2020/05/08/20200508145912_b23d8088.png',1,0,0,'N',0.85,0.00,0,0.00,0.00,13,'A',37000000.00,10000.00,4600000.00,100,0,'N',0,'【此项目未有投资限制，可重复投资】','','',1586676011,'N',0.00,1619259631,1586676106,0),(19,'100','水库碧道工程项目','','','/upload/2020/05/08/20200508145924_1f929662.png',1,0,0,'N',0.64,0.00,0,0.00,0.00,7,'A',22000000.00,6000.00,1700000.00,100,0,'N',0,'【此项目未有投资限制，可重复投资】','','',1586676133,'N',0.00,1619259631,1586676199,0),(20,'100','收集管网工程项目','','','/upload/2020/05/08/20200508145937_9c459e88.png',1,0,0,'N',0.45,0.00,0,0.00,0.00,3,'A',25000000.00,1000.00,1000000.00,100,0,'N',0,'【此项目未有投资限制，可重复投资】','','',1586676225,'N',0.00,1619259631,1586676308,0),(21,'100','新型格子板设备生产项目','','','/upload/2020/05/08/20200508145951_5fc4f220.png',1,0,0,'N',0.79,0.00,0,0.00,0.00,21,'A',37000000.00,22000.00,3400000.00,100,0,'N',0,'【此项目未有投资限制，可重复投资】','','',1586677019,'N',0.00,1619259631,1586677503,0),(22,'100','天然气管道建设项目','','','/upload/2020/05/08/20200508150003_fe33e7bf.png',1,0,0,'N',0.88,0.00,0,0.00,0.00,13,'A',40000000.00,10000.00,3600000.00,100,0,'N',0,'【此项目未有投资限制，可重复投资】','','',1586677504,'N',0.00,1619259631,1586677630,0),(23,'100','人造石英石生产线项目','','','/upload/2020/05/08/20200508150040_5fc4f220.png',1,0,0,'N',0.66,0.00,0,0.00,0.00,8,'A',27000000.00,5000.00,2300000.00,100,0,'N',0,'【此项目未有投资限制，可重复投资】','','',1586677636,'N',0.00,1619926210,1586677754,0),(24,'100','小型饲料加工生产线项目','','','/upload/2020/05/08/20200508150055_510baecc.png',1,0,0,'N',0.48,0.00,0,0.00,0.00,3,'A',20000000.00,1000.00,1500000.00,100,0,'N',0,'【此项目未有投资限制，可重复投资】','','',1586677758,'N',0.00,1619926209,1586677884,0),(25,'80','安丘光伏电站组件','安丘光伏电站组件','安丘光伏电站组件','/upload/2021/05/01/20210501163012_37ef72af.jpg',500,0,0,'N',1.00,0.00,0,0.00,2.00,1,'A',3582.00,200.00,200.00,1,1,'N',0,'【此项目为福利电站，每人可购一次，限额200元】','安丘光伏电站组件','安丘光伏电站组件',1588920834,'N',120.00,1648452220,1586678715,0),(26,'10.22','污水厂扩容提标项目','','','/upload/2021/04/18/20210418191736_3ddf9858.jpg',1,0,0,'N',0.48,0.00,0,0.00,2.00,3,'A',21000000.00,1000.00,21000000.00,999,2,'N',0,'【此项目未有投资限制，可重复投资】','','',1588928437,'Y',30.00,1619929250,1588928501,0),(27,'16.2704','地下综合管廊工程','水库工程','水库工程','/upload/2020/05/08/20200508170211_8da67b6d.jpg',1,0,0,'N',0.53,0.00,0,0.00,2.00,7,'A',25000000.00,5000.00,25000000.00,999,999,'N',0,'【此项目未有投资限制，可重复投资】','水库工程','水库工程',1588928548,'N',0.00,1648452176,1588928589,0),(28,'34.51','水库工程','水库工程','水库工程','/upload/2020/05/08/20200508170410_60f59da2.jpg',1,0,0,'N',0.84,0.00,0,0.00,2.00,15,'A',32000000.00,10000.00,32000000.00,999,0,'N',0,'【此项目未有投资限制，可重复投资】','水库工程','水库工程',1588928666,'N',0.00,1648452160,1588928700,0),(29,'26.35','智能制造项目（一期）项目','智能制造项目（一期）项目','智能制造项目（一期）项目','/upload/2020/05/08/20200508170509_0013f0a6.jpg',1,0,0,'N',0.79,0.00,0,0.00,2.00,21,'A',30000000.00,15000.00,30000000.00,999,0,'N',0,'【此项目未有投资限制，可重复投资】','智能制造项目（一期）项目','智能制造项目（一期）项目',1588928728,'N',0.00,1648452145,1588928765,0),(30,'11','新能源发电','新能源发电','新能源发电','/upload/2021/04/25/20210425222834_6ca35dfc.png',1,0,0,'N',0.88,0.00,0,0.00,0.00,11,'A',35000000.00,10000.00,35000000.00,3500,0,'N',0,'新能源发电','新能源发电','新能源发电',1619261137,'N',0.00,1648452116,1619261203,0),(31,'22.5350','测试','test','4234242342','/upload/2021/05/01/20210501163637_ef879f07.jpg',1000,1000,20,'N',0.99,0.00,0,0.00,2.00,50,'A',5000.00,5000.00,99999999.99,999,2,'N',10001,'111','222','42342342',1619858177,'N',0.00,1651075574,1619858256,0),(32,'21.0000','测试二','test2','dasdasdasd','/upload/2022/03/28/20220328152015_3c4c247f.jpg',2000,0,10,'Y',1.20,0.00,0,0.00,0.00,3,'A',10000000.00,500.00,500.00,3,1,'N',999,'此为测试项目','test','dasdasda',1619859302,'Y',0.00,1648452017,1619859418,0),(33,'56.0012','Tất cả','Tất cả','Tất cả','/upload/2022/03/29/20220329185311_00d360fa.jpg',2888,0,500,'Y',1.00,0.00,0,0.00,2.00,3,'A',40000000.00,1000.00,50000.00,50,0,'Y',999,'[Không hạn chế đầu tư cho dự án này, có thể đầu tư nhiều lần]','[Không hạn chế đầu tư cho dự án này, có thể đầu tư nhiều lần]','[Không hạn chế đầu tư cho dự án này, có thể đầu tư nhiều lần]',1619866494,'Y',0.00,1650960031,1619866573,0),(34,'','浙江龙游芝溪家园一期4MW光伏发电示范小区（03号）','浙江龙游芝溪家园一期4MW光伏发电示范小区（03号）','浙江龙游芝溪家园一期4MW光伏发电示范小区（03号）','/upload/2021/05/02/20210502114907_c74c55e9.png',358,0,0,'N',1.20,0.00,0,0.00,0.00,50,'A',358.00,50000.00,500000.00,0,0,'N',1,'浙江龙游芝溪家园一期4MW光伏发电示范小区（03号）','浙江龙游芝溪家园一期4MW光伏发电示范小区（03号）','浙江龙游芝溪家园一期4MW光伏发电示范小区（03号）',1619927291,'N',0.00,1648452274,1619927482,0),(35,'','浙江龙游芝溪家园一期4MW光伏发电示范小区（02号）','浙江龙游芝溪家园一期4MW光伏发电示范小区（03号）','浙江龙游芝溪家园一期4MW光伏发电示范小区（03号）','/upload/2021/05/02/20210502115212_05e61efc.png',1800,0,0,'N',1.11,0.00,0,0.00,0.00,30,'A',1800.00,21000.00,210000.00,0,0,'N',2,'浙江龙游芝溪家园一期4MW光伏发电示范小区（03号）','浙江龙游芝溪家园一期4MW光伏发电示范小区（03号）','浙江龙游芝溪家园一期4MW光伏发电示范小区（03号）',1619927522,'Y',0.00,1648452286,1619927604,0),(36,'','浙江龙游芝溪家园一期4MW光伏发电示范小区（01号）','浙江龙游芝溪家园一期4MW光伏发电示范小区（03号）','浙江龙游芝溪家园一期4MW光伏发电示范小区（03号）','/upload/2021/05/02/20210502121329_e787c8ae.png',1800,0,0,'N',0.95,0.00,0,0.00,0.00,15,'A',18800000.00,10000.00,0.00,0,0,'N',3,'浙江龙游芝溪家园一期4MW光伏发电示范小区（03号）','浙江龙游芝溪家园一期4MW光伏发电示范小区（03号）','浙江龙游芝溪家园一期4MW光伏发电示范小区（03号）',1619928796,'N',0.00,1648452300,1619928876,0),(37,'','白城二期100MW光伏发电领跑者基地项目（03号）','浙江龙游芝溪家园一期4MW光伏发电示范小区（03号）','浙江龙游芝溪家园一期4MW光伏发电示范小区（03号）','/upload/2021/05/02/20210502121546_f4a379a8.png',158,0,0,'N',0.88,0.00,0,0.00,2.00,10,'A',3258.00,6800.00,6800.00,0,0,'N',4,'浙江龙游芝溪家园一期4MW光伏发电示范小区（03号）','浙江龙游芝溪家园一期4MW光伏发电示范小区（03号）','浙江龙游芝溪家园一期4MW光伏发电示范小区（03号）',1619928924,'N',0.00,1648452326,1619929028,0),(38,'','Tất cả','Tất cả','Tất cả','/upload/2022/03/29/20220329185344_c15c9974.jpg',2536,0,0,'Y',0.81,0.00,0,0.00,0.00,7,'B',2536.00,2000.00,2000.00,50,0,'Y',5,'[Không hạn chế đầu tư cho dự án này, có thể đầu tư nhiều lần]','[Không hạn chế đầu tư cho dự án này, có thể đầu tư nhiều lần]','[Không hạn chế đầu tư cho dự án này, có thể đầu tư nhiều lần]',1619929033,'N',0.00,1651075472,1619929098,0),(39,'0.2500','Tất cả','Tất cả','Tất cả','/upload/2022/03/29/20220329185325_84db5ff1.jpg',986,0,0,'Y',1.08,0.00,0,0.00,2.00,1,'A',900.00,500.00,500.00,1,0,'Y',6,'[Không hạn chế đầu tư cho dự án này, có thể đầu tư nhiều lần]','[Không hạn chế đầu tư cho dự án này, có thể đầu tư nhiều lần]','[Không hạn chế đầu tư cho dự án này, có thể đầu tư nhiều lần]',1619929100,'Y',0.00,1648631079,1619929212,0),(40,'','Hệ thống bảo vệ tiền vốn','Hệ thống bảo vệ tiền vốn','Hệ thống bảo vệ tiền vốn','/upload/2022/03/29/20220329185301_c42296c9.jpg',900,0,300,'Y',0.87,0.00,0,0.00,0.88,2,'A',0.00,50000000.00,1000000000.00,100,0,'Y',10004,'[Không hạn chế đầu tư cho dự án này, có thể đầu tư nhiều lần]','[Không hạn chế đầu tư cho dự án này, có thể đầu tư nhiều lần]','[Không hạn chế đầu tư cho dự án này, có thể đầu tư nhiều lần]',1648449321,'N',0.00,1651123984,1648449453,0),(41,'','Họ tên','Họ tên','Họ tên','/upload/2022/04/12/20220412164242_81c4cf68.jpg',5000,0,1700,'N',0.88,0.00,0,0.00,0.00,5,'A',0.00,500.00,500.00,500,0,'Y',999,'[Không hạn chế đầu tư cho dự án này, có thể đầu tư nhiều lần]','[Không hạn chế đầu tư cho dự án này, có thể đầu tư nhiều lần]','[Không hạn chế đầu tư cho dự án này, có thể đầu tư nhiều lần]',1649752937,'N',0.00,1649753037,1649753037,0),(42,'','999','999','999','',500,0,500,'Y',1.00,0.00,0,0.00,0.00,5,'A',0.00,10000.00,50000.00,10,0,'Y',10000,'1','2','3',1650922477,'N',0.00,1651075567,1650922542,0),(43,'','test999','test999','test999',NULL,1000,0,200,'Y',1.00,0.00,0,0.00,0.00,5,'A',0.00,2000.00,20000.00,1,0,'Y',10003,'1','1','1',1650963005,'N',0.00,1651075581,1650963078,0),(44,'','Tháng','Tháng','Tháng','/upload/2022/04/29/20220429012012_ff57c6a8.jpg',100000,0,5000,'Y',2.00,0.00,0,0.00,0.00,20,'A',0.00,50000.00,9999999999999.00,5,0,'Y',15566,'Tháng','Tháng','Tháng',1651166259,'N',0.00,1651166614,1651166485,0);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_apr_money`
--

DROP TABLE IF EXISTS `item_apr_money`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_apr_money` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `apr_no` int(10) unsigned NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT 'D',
  `type` varchar(20) DEFAULT NULL,
  `stype` varchar(20) DEFAULT NULL,
  `apr` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `money` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `apr_money` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `back_time` int(10) unsigned NOT NULL DEFAULT '0',
  `ok_time` int(10) unsigned NOT NULL DEFAULT '0',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=521 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_apr_money`
--

LOCK TABLES `item_apr_money` WRITE;
/*!40000 ALTER TABLE `item_apr_money` DISABLE KEYS */;
INSERT INTO `item_apr_money` VALUES (1,1,3,1,'D','A','dq',2.00,0.00,10000.00,1651591191,0,1651504791,1651504791,0),(2,1,3,2,'D','A','dq',2.00,0.00,10000.00,1651677591,0,1651504791,1651504791,0),(3,1,3,3,'D','A','dq',2.00,0.00,10000.00,1651763991,0,1651504791,1651504791,0),(4,1,3,4,'D','A','dq',2.00,0.00,10000.00,1651850391,0,1651504791,1651504791,0),(5,1,3,5,'D','A','dq',2.00,0.00,10000.00,1651936791,0,1651504791,1651504791,0),(6,1,3,6,'D','A','dq',2.00,0.00,10000.00,1652023191,0,1651504791,1651504791,0),(7,1,3,7,'D','A','dq',2.00,0.00,10000.00,1652109591,0,1651504791,1651504791,0),(8,1,3,8,'D','A','dq',2.00,0.00,10000.00,1652195991,0,1651504791,1651504791,0),(9,1,3,9,'D','A','dq',2.00,0.00,10000.00,1652282391,0,1651504791,1651504791,0),(10,1,3,10,'D','A','dq',2.00,0.00,10000.00,1652368791,0,1651504791,1651504791,0),(11,1,3,11,'D','A','dq',2.00,0.00,10000.00,1652455191,0,1651504791,1651504791,0),(12,1,3,12,'D','A','dq',2.00,0.00,10000.00,1652541591,0,1651504791,1651504791,0),(13,1,3,13,'D','A','dq',2.00,0.00,10000.00,1652627991,0,1651504791,1651504791,0),(14,1,3,14,'D','A','dq',2.00,0.00,10000.00,1652714391,0,1651504791,1651504791,0),(15,1,3,15,'D','A','dq',2.00,0.00,10000.00,1652800791,0,1651504791,1651504791,0),(16,1,3,16,'D','A','dq',2.00,0.00,10000.00,1652887191,0,1651504791,1651504791,0),(17,1,3,17,'D','A','dq',2.00,0.00,10000.00,1652973591,0,1651504791,1651504791,0),(18,1,3,18,'D','A','dq',2.00,0.00,10000.00,1653059991,0,1651504791,1651504791,0),(19,1,3,19,'D','A','dq',2.00,0.00,10000.00,1653146391,0,1651504791,1651504791,0),(20,1,3,20,'D','A','dq',2.00,500000.00,10000.00,1653232791,0,1651504791,1651504791,0),(21,2,3,1,'D','A','dq',2.00,0.00,10000.00,1651591311,0,1651504911,1651504911,0),(22,2,3,2,'D','A','dq',2.00,0.00,10000.00,1651677711,0,1651504911,1651504911,0),(23,2,3,3,'D','A','dq',2.00,0.00,10000.00,1651764111,0,1651504911,1651504911,0),(24,2,3,4,'D','A','dq',2.00,0.00,10000.00,1651850511,0,1651504911,1651504911,0),(25,2,3,5,'D','A','dq',2.00,0.00,10000.00,1651936911,0,1651504911,1651504911,0),(26,2,3,6,'D','A','dq',2.00,0.00,10000.00,1652023311,0,1651504911,1651504911,0),(27,2,3,7,'D','A','dq',2.00,0.00,10000.00,1652109711,0,1651504911,1651504911,0),(28,2,3,8,'D','A','dq',2.00,0.00,10000.00,1652196111,0,1651504911,1651504911,0),(29,2,3,9,'D','A','dq',2.00,0.00,10000.00,1652282511,0,1651504911,1651504911,0),(30,2,3,10,'D','A','dq',2.00,0.00,10000.00,1652368911,0,1651504911,1651504911,0),(31,2,3,11,'D','A','dq',2.00,0.00,10000.00,1652455311,0,1651504911,1651504911,0),(32,2,3,12,'D','A','dq',2.00,0.00,10000.00,1652541711,0,1651504911,1651504911,0),(33,2,3,13,'D','A','dq',2.00,0.00,10000.00,1652628111,0,1651504911,1651504911,0),(34,2,3,14,'D','A','dq',2.00,0.00,10000.00,1652714511,0,1651504911,1651504911,0),(35,2,3,15,'D','A','dq',2.00,0.00,10000.00,1652800911,0,1651504911,1651504911,0),(36,2,3,16,'D','A','dq',2.00,0.00,10000.00,1652887311,0,1651504911,1651504911,0),(37,2,3,17,'D','A','dq',2.00,0.00,10000.00,1652973711,0,1651504911,1651504911,0),(38,2,3,18,'D','A','dq',2.00,0.00,10000.00,1653060111,0,1651504911,1651504911,0),(39,2,3,19,'D','A','dq',2.00,0.00,10000.00,1653146511,0,1651504911,1651504911,0),(40,2,3,20,'D','A','dq',2.00,500000.00,10000.00,1653232911,0,1651504911,1651504911,0),(41,3,4,1,'D','A','dq',2.00,0.00,10000.00,1651591588,0,1651505188,1651505188,0),(42,3,4,2,'D','A','dq',2.00,0.00,10000.00,1651677988,0,1651505188,1651505188,0),(43,3,4,3,'D','A','dq',2.00,0.00,10000.00,1651764388,0,1651505188,1651505188,0),(44,3,4,4,'D','A','dq',2.00,0.00,10000.00,1651850788,0,1651505188,1651505188,0),(45,3,4,5,'D','A','dq',2.00,0.00,10000.00,1651937188,0,1651505188,1651505188,0),(46,3,4,6,'D','A','dq',2.00,0.00,10000.00,1652023588,0,1651505188,1651505188,0),(47,3,4,7,'D','A','dq',2.00,0.00,10000.00,1652109988,0,1651505188,1651505188,0),(48,3,4,8,'D','A','dq',2.00,0.00,10000.00,1652196388,0,1651505188,1651505188,0),(49,3,4,9,'D','A','dq',2.00,0.00,10000.00,1652282788,0,1651505188,1651505188,0),(50,3,4,10,'D','A','dq',2.00,0.00,10000.00,1652369188,0,1651505188,1651505188,0),(51,3,4,11,'D','A','dq',2.00,0.00,10000.00,1652455588,0,1651505188,1651505188,0),(52,3,4,12,'D','A','dq',2.00,0.00,10000.00,1652541988,0,1651505188,1651505188,0),(53,3,4,13,'D','A','dq',2.00,0.00,10000.00,1652628388,0,1651505188,1651505188,0),(54,3,4,14,'D','A','dq',2.00,0.00,10000.00,1652714788,0,1651505188,1651505188,0),(55,3,4,15,'D','A','dq',2.00,0.00,10000.00,1652801188,0,1651505188,1651505188,0),(56,3,4,16,'D','A','dq',2.00,0.00,10000.00,1652887588,0,1651505188,1651505188,0),(57,3,4,17,'D','A','dq',2.00,0.00,10000.00,1652973988,0,1651505188,1651505188,0),(58,3,4,18,'D','A','dq',2.00,0.00,10000.00,1653060388,0,1651505188,1651505188,0),(59,3,4,19,'D','A','dq',2.00,0.00,10000.00,1653146788,0,1651505188,1651505188,0),(60,3,4,20,'D','A','dq',2.00,500000.00,10000.00,1653233188,0,1651505188,1651505188,0),(61,4,4,1,'D','A','dq',2.00,0.00,10000.00,1651591722,0,1651505322,1651505322,0),(62,4,4,2,'D','A','dq',2.00,0.00,10000.00,1651678122,0,1651505322,1651505322,0),(63,4,4,3,'D','A','dq',2.00,0.00,10000.00,1651764522,0,1651505322,1651505322,0),(64,4,4,4,'D','A','dq',2.00,0.00,10000.00,1651850922,0,1651505322,1651505322,0),(65,4,4,5,'D','A','dq',2.00,0.00,10000.00,1651937322,0,1651505322,1651505322,0),(66,4,4,6,'D','A','dq',2.00,0.00,10000.00,1652023722,0,1651505322,1651505322,0),(67,4,4,7,'D','A','dq',2.00,0.00,10000.00,1652110122,0,1651505322,1651505322,0),(68,4,4,8,'D','A','dq',2.00,0.00,10000.00,1652196522,0,1651505322,1651505322,0),(69,4,4,9,'D','A','dq',2.00,0.00,10000.00,1652282922,0,1651505322,1651505322,0),(70,4,4,10,'D','A','dq',2.00,0.00,10000.00,1652369322,0,1651505322,1651505322,0),(71,4,4,11,'D','A','dq',2.00,0.00,10000.00,1652455722,0,1651505322,1651505322,0),(72,4,4,12,'D','A','dq',2.00,0.00,10000.00,1652542122,0,1651505322,1651505322,0),(73,4,4,13,'D','A','dq',2.00,0.00,10000.00,1652628522,0,1651505322,1651505322,0),(74,4,4,14,'D','A','dq',2.00,0.00,10000.00,1652714922,0,1651505322,1651505322,0),(75,4,4,15,'D','A','dq',2.00,0.00,10000.00,1652801322,0,1651505322,1651505322,0),(76,4,4,16,'D','A','dq',2.00,0.00,10000.00,1652887722,0,1651505322,1651505322,0),(77,4,4,17,'D','A','dq',2.00,0.00,10000.00,1652974122,0,1651505322,1651505322,0),(78,4,4,18,'D','A','dq',2.00,0.00,10000.00,1653060522,0,1651505322,1651505322,0),(79,4,4,19,'D','A','dq',2.00,0.00,10000.00,1653146922,0,1651505322,1651505322,0),(80,4,4,20,'D','A','dq',2.00,500000.00,10000.00,1653233322,0,1651505322,1651505322,0),(81,5,5,1,'D','A','dq',2.00,0.00,10000.00,1651591882,0,1651505482,1651505482,0),(82,5,5,2,'D','A','dq',2.00,0.00,10000.00,1651678282,0,1651505482,1651505482,0),(83,5,5,3,'D','A','dq',2.00,0.00,10000.00,1651764682,0,1651505482,1651505482,0),(84,5,5,4,'D','A','dq',2.00,0.00,10000.00,1651851082,0,1651505482,1651505482,0),(85,5,5,5,'D','A','dq',2.00,0.00,10000.00,1651937482,0,1651505482,1651505482,0),(86,5,5,6,'D','A','dq',2.00,0.00,10000.00,1652023882,0,1651505482,1651505482,0),(87,5,5,7,'D','A','dq',2.00,0.00,10000.00,1652110282,0,1651505482,1651505482,0),(88,5,5,8,'D','A','dq',2.00,0.00,10000.00,1652196682,0,1651505482,1651505482,0),(89,5,5,9,'D','A','dq',2.00,0.00,10000.00,1652283082,0,1651505482,1651505482,0),(90,5,5,10,'D','A','dq',2.00,0.00,10000.00,1652369482,0,1651505482,1651505482,0),(91,5,5,11,'D','A','dq',2.00,0.00,10000.00,1652455882,0,1651505482,1651505482,0),(92,5,5,12,'D','A','dq',2.00,0.00,10000.00,1652542282,0,1651505482,1651505482,0),(93,5,5,13,'D','A','dq',2.00,0.00,10000.00,1652628682,0,1651505482,1651505482,0),(94,5,5,14,'D','A','dq',2.00,0.00,10000.00,1652715082,0,1651505482,1651505482,0),(95,5,5,15,'D','A','dq',2.00,0.00,10000.00,1652801482,0,1651505482,1651505482,0),(96,5,5,16,'D','A','dq',2.00,0.00,10000.00,1652887882,0,1651505482,1651505482,0),(97,5,5,17,'D','A','dq',2.00,0.00,10000.00,1652974282,0,1651505482,1651505482,0),(98,5,5,18,'D','A','dq',2.00,0.00,10000.00,1653060682,0,1651505482,1651505482,0),(99,5,5,19,'D','A','dq',2.00,0.00,10000.00,1653147082,0,1651505482,1651505482,0),(100,5,5,20,'D','A','dq',2.00,500000.00,10000.00,1653233482,0,1651505482,1651505482,0),(101,6,5,1,'D','A','dq',2.00,0.00,10000.00,1651591948,0,1651505548,1651505548,0),(102,6,5,2,'D','A','dq',2.00,0.00,10000.00,1651678348,0,1651505548,1651505548,0),(103,6,5,3,'D','A','dq',2.00,0.00,10000.00,1651764748,0,1651505548,1651505548,0),(104,6,5,4,'D','A','dq',2.00,0.00,10000.00,1651851148,0,1651505548,1651505548,0),(105,6,5,5,'D','A','dq',2.00,0.00,10000.00,1651937548,0,1651505548,1651505548,0),(106,6,5,6,'D','A','dq',2.00,0.00,10000.00,1652023948,0,1651505548,1651505548,0),(107,6,5,7,'D','A','dq',2.00,0.00,10000.00,1652110348,0,1651505548,1651505548,0),(108,6,5,8,'D','A','dq',2.00,0.00,10000.00,1652196748,0,1651505548,1651505548,0),(109,6,5,9,'D','A','dq',2.00,0.00,10000.00,1652283148,0,1651505548,1651505548,0),(110,6,5,10,'D','A','dq',2.00,0.00,10000.00,1652369548,0,1651505548,1651505548,0),(111,6,5,11,'D','A','dq',2.00,0.00,10000.00,1652455948,0,1651505548,1651505548,0),(112,6,5,12,'D','A','dq',2.00,0.00,10000.00,1652542348,0,1651505548,1651505548,0),(113,6,5,13,'D','A','dq',2.00,0.00,10000.00,1652628748,0,1651505548,1651505548,0),(114,6,5,14,'D','A','dq',2.00,0.00,10000.00,1652715148,0,1651505548,1651505548,0),(115,6,5,15,'D','A','dq',2.00,0.00,10000.00,1652801548,0,1651505548,1651505548,0),(116,6,5,16,'D','A','dq',2.00,0.00,10000.00,1652887948,0,1651505548,1651505548,0),(117,6,5,17,'D','A','dq',2.00,0.00,10000.00,1652974348,0,1651505548,1651505548,0),(118,6,5,18,'D','A','dq',2.00,0.00,10000.00,1653060748,0,1651505548,1651505548,0),(119,6,5,19,'D','A','dq',2.00,0.00,10000.00,1653147148,0,1651505548,1651505548,0),(120,6,5,20,'D','A','dq',2.00,500000.00,10000.00,1653233548,0,1651505548,1651505548,0),(121,7,6,1,'D','A','dq',2.00,0.00,10000.00,1651592143,0,1651505743,1651505743,0),(122,7,6,2,'D','A','dq',2.00,0.00,10000.00,1651678543,0,1651505743,1651505743,0),(123,7,6,3,'D','A','dq',2.00,0.00,10000.00,1651764943,0,1651505743,1651505743,0),(124,7,6,4,'D','A','dq',2.00,0.00,10000.00,1651851343,0,1651505743,1651505743,0),(125,7,6,5,'D','A','dq',2.00,0.00,10000.00,1651937743,0,1651505743,1651505743,0),(126,7,6,6,'D','A','dq',2.00,0.00,10000.00,1652024143,0,1651505743,1651505743,0),(127,7,6,7,'D','A','dq',2.00,0.00,10000.00,1652110543,0,1651505743,1651505743,0),(128,7,6,8,'D','A','dq',2.00,0.00,10000.00,1652196943,0,1651505743,1651505743,0),(129,7,6,9,'D','A','dq',2.00,0.00,10000.00,1652283343,0,1651505743,1651505743,0),(130,7,6,10,'D','A','dq',2.00,0.00,10000.00,1652369743,0,1651505743,1651505743,0),(131,7,6,11,'D','A','dq',2.00,0.00,10000.00,1652456143,0,1651505743,1651505743,0),(132,7,6,12,'D','A','dq',2.00,0.00,10000.00,1652542543,0,1651505743,1651505743,0),(133,7,6,13,'D','A','dq',2.00,0.00,10000.00,1652628943,0,1651505743,1651505743,0),(134,7,6,14,'D','A','dq',2.00,0.00,10000.00,1652715343,0,1651505743,1651505743,0),(135,7,6,15,'D','A','dq',2.00,0.00,10000.00,1652801743,0,1651505743,1651505743,0),(136,7,6,16,'D','A','dq',2.00,0.00,10000.00,1652888143,0,1651505743,1651505743,0),(137,7,6,17,'D','A','dq',2.00,0.00,10000.00,1652974543,0,1651505743,1651505743,0),(138,7,6,18,'D','A','dq',2.00,0.00,10000.00,1653060943,0,1651505743,1651505743,0),(139,7,6,19,'D','A','dq',2.00,0.00,10000.00,1653147343,0,1651505743,1651505743,0),(140,7,6,20,'D','A','dq',2.00,500000.00,10000.00,1653233743,0,1651505743,1651505743,0),(141,8,6,1,'D','A','dq',2.00,0.00,10000.00,1651592183,0,1651505783,1651505783,0),(142,8,6,2,'D','A','dq',2.00,0.00,10000.00,1651678583,0,1651505783,1651505783,0),(143,8,6,3,'D','A','dq',2.00,0.00,10000.00,1651764983,0,1651505783,1651505783,0),(144,8,6,4,'D','A','dq',2.00,0.00,10000.00,1651851383,0,1651505783,1651505783,0),(145,8,6,5,'D','A','dq',2.00,0.00,10000.00,1651937783,0,1651505783,1651505783,0),(146,8,6,6,'D','A','dq',2.00,0.00,10000.00,1652024183,0,1651505783,1651505783,0),(147,8,6,7,'D','A','dq',2.00,0.00,10000.00,1652110583,0,1651505783,1651505783,0),(148,8,6,8,'D','A','dq',2.00,0.00,10000.00,1652196983,0,1651505783,1651505783,0),(149,8,6,9,'D','A','dq',2.00,0.00,10000.00,1652283383,0,1651505783,1651505783,0),(150,8,6,10,'D','A','dq',2.00,0.00,10000.00,1652369783,0,1651505783,1651505783,0),(151,8,6,11,'D','A','dq',2.00,0.00,10000.00,1652456183,0,1651505783,1651505783,0),(152,8,6,12,'D','A','dq',2.00,0.00,10000.00,1652542583,0,1651505783,1651505783,0),(153,8,6,13,'D','A','dq',2.00,0.00,10000.00,1652628983,0,1651505783,1651505783,0),(154,8,6,14,'D','A','dq',2.00,0.00,10000.00,1652715383,0,1651505783,1651505783,0),(155,8,6,15,'D','A','dq',2.00,0.00,10000.00,1652801783,0,1651505783,1651505783,0),(156,8,6,16,'D','A','dq',2.00,0.00,10000.00,1652888183,0,1651505783,1651505783,0),(157,8,6,17,'D','A','dq',2.00,0.00,10000.00,1652974583,0,1651505783,1651505783,0),(158,8,6,18,'D','A','dq',2.00,0.00,10000.00,1653060983,0,1651505783,1651505783,0),(159,8,6,19,'D','A','dq',2.00,0.00,10000.00,1653147383,0,1651505783,1651505783,0),(160,8,6,20,'D','A','dq',2.00,500000.00,10000.00,1653233783,0,1651505783,1651505783,0),(161,9,7,1,'D','A','dq',2.00,0.00,10000.00,1651592313,0,1651505913,1651505913,0),(162,9,7,2,'D','A','dq',2.00,0.00,10000.00,1651678713,0,1651505913,1651505913,0),(163,9,7,3,'D','A','dq',2.00,0.00,10000.00,1651765113,0,1651505913,1651505913,0),(164,9,7,4,'D','A','dq',2.00,0.00,10000.00,1651851513,0,1651505913,1651505913,0),(165,9,7,5,'D','A','dq',2.00,0.00,10000.00,1651937913,0,1651505913,1651505913,0),(166,9,7,6,'D','A','dq',2.00,0.00,10000.00,1652024313,0,1651505913,1651505913,0),(167,9,7,7,'D','A','dq',2.00,0.00,10000.00,1652110713,0,1651505913,1651505913,0),(168,9,7,8,'D','A','dq',2.00,0.00,10000.00,1652197113,0,1651505913,1651505913,0),(169,9,7,9,'D','A','dq',2.00,0.00,10000.00,1652283513,0,1651505913,1651505913,0),(170,9,7,10,'D','A','dq',2.00,0.00,10000.00,1652369913,0,1651505913,1651505913,0),(171,9,7,11,'D','A','dq',2.00,0.00,10000.00,1652456313,0,1651505913,1651505913,0),(172,9,7,12,'D','A','dq',2.00,0.00,10000.00,1652542713,0,1651505913,1651505913,0),(173,9,7,13,'D','A','dq',2.00,0.00,10000.00,1652629113,0,1651505913,1651505913,0),(174,9,7,14,'D','A','dq',2.00,0.00,10000.00,1652715513,0,1651505913,1651505913,0),(175,9,7,15,'D','A','dq',2.00,0.00,10000.00,1652801913,0,1651505913,1651505913,0),(176,9,7,16,'D','A','dq',2.00,0.00,10000.00,1652888313,0,1651505913,1651505913,0),(177,9,7,17,'D','A','dq',2.00,0.00,10000.00,1652974713,0,1651505913,1651505913,0),(178,9,7,18,'D','A','dq',2.00,0.00,10000.00,1653061113,0,1651505913,1651505913,0),(179,9,7,19,'D','A','dq',2.00,0.00,10000.00,1653147513,0,1651505913,1651505913,0),(180,9,7,20,'D','A','dq',2.00,500000.00,10000.00,1653233913,0,1651505913,1651505913,0),(181,10,7,1,'D','A','dq',2.00,0.00,10000.00,1651592354,0,1651505954,1651505954,0),(182,10,7,2,'D','A','dq',2.00,0.00,10000.00,1651678754,0,1651505954,1651505954,0),(183,10,7,3,'D','A','dq',2.00,0.00,10000.00,1651765154,0,1651505954,1651505954,0),(184,10,7,4,'D','A','dq',2.00,0.00,10000.00,1651851554,0,1651505954,1651505954,0),(185,10,7,5,'D','A','dq',2.00,0.00,10000.00,1651937954,0,1651505954,1651505954,0),(186,10,7,6,'D','A','dq',2.00,0.00,10000.00,1652024354,0,1651505954,1651505954,0),(187,10,7,7,'D','A','dq',2.00,0.00,10000.00,1652110754,0,1651505954,1651505954,0),(188,10,7,8,'D','A','dq',2.00,0.00,10000.00,1652197154,0,1651505954,1651505954,0),(189,10,7,9,'D','A','dq',2.00,0.00,10000.00,1652283554,0,1651505954,1651505954,0),(190,10,7,10,'D','A','dq',2.00,0.00,10000.00,1652369954,0,1651505954,1651505954,0),(191,10,7,11,'D','A','dq',2.00,0.00,10000.00,1652456354,0,1651505954,1651505954,0),(192,10,7,12,'D','A','dq',2.00,0.00,10000.00,1652542754,0,1651505954,1651505954,0),(193,10,7,13,'D','A','dq',2.00,0.00,10000.00,1652629154,0,1651505954,1651505954,0),(194,10,7,14,'D','A','dq',2.00,0.00,10000.00,1652715554,0,1651505954,1651505954,0),(195,10,7,15,'D','A','dq',2.00,0.00,10000.00,1652801954,0,1651505954,1651505954,0),(196,10,7,16,'D','A','dq',2.00,0.00,10000.00,1652888354,0,1651505954,1651505954,0),(197,10,7,17,'D','A','dq',2.00,0.00,10000.00,1652974754,0,1651505954,1651505954,0),(198,10,7,18,'D','A','dq',2.00,0.00,10000.00,1653061154,0,1651505954,1651505954,0),(199,10,7,19,'D','A','dq',2.00,0.00,10000.00,1653147554,0,1651505954,1651505954,0),(200,10,7,20,'D','A','dq',2.00,500000.00,10000.00,1653233954,0,1651505954,1651505954,0),(201,11,8,1,'D','A','dq',2.00,0.00,10000.00,1651593094,0,1651506694,1651506694,0),(202,11,8,2,'D','A','dq',2.00,0.00,10000.00,1651679494,0,1651506694,1651506694,0),(203,11,8,3,'D','A','dq',2.00,0.00,10000.00,1651765894,0,1651506694,1651506694,0),(204,11,8,4,'D','A','dq',2.00,0.00,10000.00,1651852294,0,1651506694,1651506694,0),(205,11,8,5,'D','A','dq',2.00,0.00,10000.00,1651938694,0,1651506694,1651506694,0),(206,11,8,6,'D','A','dq',2.00,0.00,10000.00,1652025094,0,1651506694,1651506694,0),(207,11,8,7,'D','A','dq',2.00,0.00,10000.00,1652111494,0,1651506694,1651506694,0),(208,11,8,8,'D','A','dq',2.00,0.00,10000.00,1652197894,0,1651506694,1651506694,0),(209,11,8,9,'D','A','dq',2.00,0.00,10000.00,1652284294,0,1651506694,1651506694,0),(210,11,8,10,'D','A','dq',2.00,0.00,10000.00,1652370694,0,1651506694,1651506694,0),(211,11,8,11,'D','A','dq',2.00,0.00,10000.00,1652457094,0,1651506694,1651506694,0),(212,11,8,12,'D','A','dq',2.00,0.00,10000.00,1652543494,0,1651506694,1651506694,0),(213,11,8,13,'D','A','dq',2.00,0.00,10000.00,1652629894,0,1651506694,1651506694,0),(214,11,8,14,'D','A','dq',2.00,0.00,10000.00,1652716294,0,1651506694,1651506694,0),(215,11,8,15,'D','A','dq',2.00,0.00,10000.00,1652802694,0,1651506694,1651506694,0),(216,11,8,16,'D','A','dq',2.00,0.00,10000.00,1652889094,0,1651506694,1651506694,0),(217,11,8,17,'D','A','dq',2.00,0.00,10000.00,1652975494,0,1651506694,1651506694,0),(218,11,8,18,'D','A','dq',2.00,0.00,10000.00,1653061894,0,1651506694,1651506694,0),(219,11,8,19,'D','A','dq',2.00,0.00,10000.00,1653148294,0,1651506694,1651506694,0),(220,11,8,20,'D','A','dq',2.00,500000.00,10000.00,1653234694,0,1651506694,1651506694,0),(221,12,9,1,'D','A','dq',2.00,0.00,10000.00,1651593320,0,1651506920,1651506920,0),(222,12,9,2,'D','A','dq',2.00,0.00,10000.00,1651679720,0,1651506920,1651506920,0),(223,12,9,3,'D','A','dq',2.00,0.00,10000.00,1651766120,0,1651506920,1651506920,0),(224,12,9,4,'D','A','dq',2.00,0.00,10000.00,1651852520,0,1651506920,1651506920,0),(225,12,9,5,'D','A','dq',2.00,0.00,10000.00,1651938920,0,1651506920,1651506920,0),(226,12,9,6,'D','A','dq',2.00,0.00,10000.00,1652025320,0,1651506920,1651506920,0),(227,12,9,7,'D','A','dq',2.00,0.00,10000.00,1652111720,0,1651506920,1651506920,0),(228,12,9,8,'D','A','dq',2.00,0.00,10000.00,1652198120,0,1651506920,1651506920,0),(229,12,9,9,'D','A','dq',2.00,0.00,10000.00,1652284520,0,1651506920,1651506920,0),(230,12,9,10,'D','A','dq',2.00,0.00,10000.00,1652370920,0,1651506920,1651506920,0),(231,12,9,11,'D','A','dq',2.00,0.00,10000.00,1652457320,0,1651506920,1651506920,0),(232,12,9,12,'D','A','dq',2.00,0.00,10000.00,1652543720,0,1651506920,1651506920,0),(233,12,9,13,'D','A','dq',2.00,0.00,10000.00,1652630120,0,1651506920,1651506920,0),(234,12,9,14,'D','A','dq',2.00,0.00,10000.00,1652716520,0,1651506920,1651506920,0),(235,12,9,15,'D','A','dq',2.00,0.00,10000.00,1652802920,0,1651506920,1651506920,0),(236,12,9,16,'D','A','dq',2.00,0.00,10000.00,1652889320,0,1651506920,1651506920,0),(237,12,9,17,'D','A','dq',2.00,0.00,10000.00,1652975720,0,1651506920,1651506920,0),(238,12,9,18,'D','A','dq',2.00,0.00,10000.00,1653062120,0,1651506920,1651506920,0),(239,12,9,19,'D','A','dq',2.00,0.00,10000.00,1653148520,0,1651506920,1651506920,0),(240,12,9,20,'D','A','dq',2.00,500000.00,10000.00,1653234920,0,1651506920,1651506920,0),(241,13,10,1,'D','A','dq',2.00,0.00,10000.00,1651593454,0,1651507054,1651507054,0),(242,13,10,2,'D','A','dq',2.00,0.00,10000.00,1651679854,0,1651507054,1651507054,0),(243,13,10,3,'D','A','dq',2.00,0.00,10000.00,1651766254,0,1651507054,1651507054,0),(244,13,10,4,'D','A','dq',2.00,0.00,10000.00,1651852654,0,1651507054,1651507054,0),(245,13,10,5,'D','A','dq',2.00,0.00,10000.00,1651939054,0,1651507054,1651507054,0),(246,13,10,6,'D','A','dq',2.00,0.00,10000.00,1652025454,0,1651507054,1651507054,0),(247,13,10,7,'D','A','dq',2.00,0.00,10000.00,1652111854,0,1651507054,1651507054,0),(248,13,10,8,'D','A','dq',2.00,0.00,10000.00,1652198254,0,1651507054,1651507054,0),(249,13,10,9,'D','A','dq',2.00,0.00,10000.00,1652284654,0,1651507054,1651507054,0),(250,13,10,10,'D','A','dq',2.00,0.00,10000.00,1652371054,0,1651507054,1651507054,0),(251,13,10,11,'D','A','dq',2.00,0.00,10000.00,1652457454,0,1651507054,1651507054,0),(252,13,10,12,'D','A','dq',2.00,0.00,10000.00,1652543854,0,1651507054,1651507054,0),(253,13,10,13,'D','A','dq',2.00,0.00,10000.00,1652630254,0,1651507054,1651507054,0),(254,13,10,14,'D','A','dq',2.00,0.00,10000.00,1652716654,0,1651507054,1651507054,0),(255,13,10,15,'D','A','dq',2.00,0.00,10000.00,1652803054,0,1651507054,1651507054,0),(256,13,10,16,'D','A','dq',2.00,0.00,10000.00,1652889454,0,1651507054,1651507054,0),(257,13,10,17,'D','A','dq',2.00,0.00,10000.00,1652975854,0,1651507054,1651507054,0),(258,13,10,18,'D','A','dq',2.00,0.00,10000.00,1653062254,0,1651507054,1651507054,0),(259,13,10,19,'D','A','dq',2.00,0.00,10000.00,1653148654,0,1651507054,1651507054,0),(260,13,10,20,'D','A','dq',2.00,500000.00,10000.00,1653235054,0,1651507054,1651507054,0),(261,14,11,1,'D','A','dq',2.00,0.00,10000.00,1651593958,0,1651507558,1651507558,0),(262,14,11,2,'D','A','dq',2.00,0.00,10000.00,1651680358,0,1651507558,1651507558,0),(263,14,11,3,'D','A','dq',2.00,0.00,10000.00,1651766758,0,1651507558,1651507558,0),(264,14,11,4,'D','A','dq',2.00,0.00,10000.00,1651853158,0,1651507558,1651507558,0),(265,14,11,5,'D','A','dq',2.00,0.00,10000.00,1651939558,0,1651507558,1651507558,0),(266,14,11,6,'D','A','dq',2.00,0.00,10000.00,1652025958,0,1651507558,1651507558,0),(267,14,11,7,'D','A','dq',2.00,0.00,10000.00,1652112358,0,1651507558,1651507558,0),(268,14,11,8,'D','A','dq',2.00,0.00,10000.00,1652198758,0,1651507558,1651507558,0),(269,14,11,9,'D','A','dq',2.00,0.00,10000.00,1652285158,0,1651507558,1651507558,0),(270,14,11,10,'D','A','dq',2.00,0.00,10000.00,1652371558,0,1651507558,1651507558,0),(271,14,11,11,'D','A','dq',2.00,0.00,10000.00,1652457958,0,1651507558,1651507558,0),(272,14,11,12,'D','A','dq',2.00,0.00,10000.00,1652544358,0,1651507558,1651507558,0),(273,14,11,13,'D','A','dq',2.00,0.00,10000.00,1652630758,0,1651507558,1651507558,0),(274,14,11,14,'D','A','dq',2.00,0.00,10000.00,1652717158,0,1651507558,1651507558,0),(275,14,11,15,'D','A','dq',2.00,0.00,10000.00,1652803558,0,1651507558,1651507558,0),(276,14,11,16,'D','A','dq',2.00,0.00,10000.00,1652889958,0,1651507558,1651507558,0),(277,14,11,17,'D','A','dq',2.00,0.00,10000.00,1652976358,0,1651507558,1651507558,0),(278,14,11,18,'D','A','dq',2.00,0.00,10000.00,1653062758,0,1651507558,1651507558,0),(279,14,11,19,'D','A','dq',2.00,0.00,10000.00,1653149158,0,1651507558,1651507558,0),(280,14,11,20,'D','A','dq',2.00,500000.00,10000.00,1653235558,0,1651507558,1651507558,0),(281,15,12,1,'D','A','dq',2.00,0.00,10000.00,1651595498,0,1651509098,1651509098,0),(282,15,12,2,'D','A','dq',2.00,0.00,10000.00,1651681898,0,1651509098,1651509098,0),(283,15,12,3,'D','A','dq',2.00,0.00,10000.00,1651768298,0,1651509098,1651509098,0),(284,15,12,4,'D','A','dq',2.00,0.00,10000.00,1651854698,0,1651509098,1651509098,0),(285,15,12,5,'D','A','dq',2.00,0.00,10000.00,1651941098,0,1651509098,1651509098,0),(286,15,12,6,'D','A','dq',2.00,0.00,10000.00,1652027498,0,1651509098,1651509098,0),(287,15,12,7,'D','A','dq',2.00,0.00,10000.00,1652113898,0,1651509098,1651509098,0),(288,15,12,8,'D','A','dq',2.00,0.00,10000.00,1652200298,0,1651509098,1651509098,0),(289,15,12,9,'D','A','dq',2.00,0.00,10000.00,1652286698,0,1651509098,1651509098,0),(290,15,12,10,'D','A','dq',2.00,0.00,10000.00,1652373098,0,1651509098,1651509098,0),(291,15,12,11,'D','A','dq',2.00,0.00,10000.00,1652459498,0,1651509098,1651509098,0),(292,15,12,12,'D','A','dq',2.00,0.00,10000.00,1652545898,0,1651509098,1651509098,0),(293,15,12,13,'D','A','dq',2.00,0.00,10000.00,1652632298,0,1651509098,1651509098,0),(294,15,12,14,'D','A','dq',2.00,0.00,10000.00,1652718698,0,1651509098,1651509098,0),(295,15,12,15,'D','A','dq',2.00,0.00,10000.00,1652805098,0,1651509098,1651509098,0),(296,15,12,16,'D','A','dq',2.00,0.00,10000.00,1652891498,0,1651509098,1651509098,0),(297,15,12,17,'D','A','dq',2.00,0.00,10000.00,1652977898,0,1651509098,1651509098,0),(298,15,12,18,'D','A','dq',2.00,0.00,10000.00,1653064298,0,1651509098,1651509098,0),(299,15,12,19,'D','A','dq',2.00,0.00,10000.00,1653150698,0,1651509098,1651509098,0),(300,15,12,20,'D','A','dq',2.00,500000.00,10000.00,1653237098,0,1651509098,1651509098,0),(301,16,12,1,'D','A','dq',2.00,0.00,10000.00,1651595546,0,1651509146,1651509146,0),(302,16,12,2,'D','A','dq',2.00,0.00,10000.00,1651681946,0,1651509146,1651509146,0),(303,16,12,3,'D','A','dq',2.00,0.00,10000.00,1651768346,0,1651509146,1651509146,0),(304,16,12,4,'D','A','dq',2.00,0.00,10000.00,1651854746,0,1651509146,1651509146,0),(305,16,12,5,'D','A','dq',2.00,0.00,10000.00,1651941146,0,1651509146,1651509146,0),(306,16,12,6,'D','A','dq',2.00,0.00,10000.00,1652027546,0,1651509146,1651509146,0),(307,16,12,7,'D','A','dq',2.00,0.00,10000.00,1652113946,0,1651509146,1651509146,0),(308,16,12,8,'D','A','dq',2.00,0.00,10000.00,1652200346,0,1651509146,1651509146,0),(309,16,12,9,'D','A','dq',2.00,0.00,10000.00,1652286746,0,1651509146,1651509146,0),(310,16,12,10,'D','A','dq',2.00,0.00,10000.00,1652373146,0,1651509146,1651509146,0),(311,16,12,11,'D','A','dq',2.00,0.00,10000.00,1652459546,0,1651509146,1651509146,0),(312,16,12,12,'D','A','dq',2.00,0.00,10000.00,1652545946,0,1651509146,1651509146,0),(313,16,12,13,'D','A','dq',2.00,0.00,10000.00,1652632346,0,1651509146,1651509146,0),(314,16,12,14,'D','A','dq',2.00,0.00,10000.00,1652718746,0,1651509146,1651509146,0),(315,16,12,15,'D','A','dq',2.00,0.00,10000.00,1652805146,0,1651509146,1651509146,0),(316,16,12,16,'D','A','dq',2.00,0.00,10000.00,1652891546,0,1651509146,1651509146,0),(317,16,12,17,'D','A','dq',2.00,0.00,10000.00,1652977946,0,1651509146,1651509146,0),(318,16,12,18,'D','A','dq',2.00,0.00,10000.00,1653064346,0,1651509146,1651509146,0),(319,16,12,19,'D','A','dq',2.00,0.00,10000.00,1653150746,0,1651509146,1651509146,0),(320,16,12,20,'D','A','dq',2.00,500000.00,10000.00,1653237146,0,1651509146,1651509146,0),(321,17,8,1,'D','A','dq',2.00,0.00,10000.00,1651595667,0,1651509267,1651509267,0),(322,17,8,2,'D','A','dq',2.00,0.00,10000.00,1651682067,0,1651509267,1651509267,0),(323,17,8,3,'D','A','dq',2.00,0.00,10000.00,1651768467,0,1651509267,1651509267,0),(324,17,8,4,'D','A','dq',2.00,0.00,10000.00,1651854867,0,1651509267,1651509267,0),(325,17,8,5,'D','A','dq',2.00,0.00,10000.00,1651941267,0,1651509267,1651509267,0),(326,17,8,6,'D','A','dq',2.00,0.00,10000.00,1652027667,0,1651509267,1651509267,0),(327,17,8,7,'D','A','dq',2.00,0.00,10000.00,1652114067,0,1651509267,1651509267,0),(328,17,8,8,'D','A','dq',2.00,0.00,10000.00,1652200467,0,1651509267,1651509267,0),(329,17,8,9,'D','A','dq',2.00,0.00,10000.00,1652286867,0,1651509267,1651509267,0),(330,17,8,10,'D','A','dq',2.00,0.00,10000.00,1652373267,0,1651509267,1651509267,0),(331,17,8,11,'D','A','dq',2.00,0.00,10000.00,1652459667,0,1651509267,1651509267,0),(332,17,8,12,'D','A','dq',2.00,0.00,10000.00,1652546067,0,1651509267,1651509267,0),(333,17,8,13,'D','A','dq',2.00,0.00,10000.00,1652632467,0,1651509267,1651509267,0),(334,17,8,14,'D','A','dq',2.00,0.00,10000.00,1652718867,0,1651509267,1651509267,0),(335,17,8,15,'D','A','dq',2.00,0.00,10000.00,1652805267,0,1651509267,1651509267,0),(336,17,8,16,'D','A','dq',2.00,0.00,10000.00,1652891667,0,1651509267,1651509267,0),(337,17,8,17,'D','A','dq',2.00,0.00,10000.00,1652978067,0,1651509267,1651509267,0),(338,17,8,18,'D','A','dq',2.00,0.00,10000.00,1653064467,0,1651509267,1651509267,0),(339,17,8,19,'D','A','dq',2.00,0.00,10000.00,1653150867,0,1651509267,1651509267,0),(340,17,8,20,'D','A','dq',2.00,500000.00,10000.00,1653237267,0,1651509267,1651509267,0),(341,18,8,1,'D','A','dq',2.00,0.00,10000.00,1651596286,0,1651509886,1651509886,0),(342,18,8,2,'D','A','dq',2.00,0.00,10000.00,1651682686,0,1651509886,1651509886,0),(343,18,8,3,'D','A','dq',2.00,0.00,10000.00,1651769086,0,1651509886,1651509886,0),(344,18,8,4,'D','A','dq',2.00,0.00,10000.00,1651855486,0,1651509886,1651509886,0),(345,18,8,5,'D','A','dq',2.00,0.00,10000.00,1651941886,0,1651509886,1651509886,0),(346,18,8,6,'D','A','dq',2.00,0.00,10000.00,1652028286,0,1651509886,1651509886,0),(347,18,8,7,'D','A','dq',2.00,0.00,10000.00,1652114686,0,1651509886,1651509886,0),(348,18,8,8,'D','A','dq',2.00,0.00,10000.00,1652201086,0,1651509886,1651509886,0),(349,18,8,9,'D','A','dq',2.00,0.00,10000.00,1652287486,0,1651509886,1651509886,0),(350,18,8,10,'D','A','dq',2.00,0.00,10000.00,1652373886,0,1651509886,1651509886,0),(351,18,8,11,'D','A','dq',2.00,0.00,10000.00,1652460286,0,1651509886,1651509886,0),(352,18,8,12,'D','A','dq',2.00,0.00,10000.00,1652546686,0,1651509886,1651509886,0),(353,18,8,13,'D','A','dq',2.00,0.00,10000.00,1652633086,0,1651509886,1651509886,0),(354,18,8,14,'D','A','dq',2.00,0.00,10000.00,1652719486,0,1651509886,1651509886,0),(355,18,8,15,'D','A','dq',2.00,0.00,10000.00,1652805886,0,1651509886,1651509886,0),(356,18,8,16,'D','A','dq',2.00,0.00,10000.00,1652892286,0,1651509886,1651509886,0),(357,18,8,17,'D','A','dq',2.00,0.00,10000.00,1652978686,0,1651509886,1651509886,0),(358,18,8,18,'D','A','dq',2.00,0.00,10000.00,1653065086,0,1651509886,1651509886,0),(359,18,8,19,'D','A','dq',2.00,0.00,10000.00,1653151486,0,1651509886,1651509886,0),(360,18,8,20,'D','A','dq',2.00,500000.00,10000.00,1653237886,0,1651509886,1651509886,0),(361,19,9,1,'D','A','dq',2.00,0.00,10000.00,1651596448,0,1651510048,1651510048,0),(362,19,9,2,'D','A','dq',2.00,0.00,10000.00,1651682848,0,1651510048,1651510048,0),(363,19,9,3,'D','A','dq',2.00,0.00,10000.00,1651769248,0,1651510048,1651510048,0),(364,19,9,4,'D','A','dq',2.00,0.00,10000.00,1651855648,0,1651510048,1651510048,0),(365,19,9,5,'D','A','dq',2.00,0.00,10000.00,1651942048,0,1651510048,1651510048,0),(366,19,9,6,'D','A','dq',2.00,0.00,10000.00,1652028448,0,1651510048,1651510048,0),(367,19,9,7,'D','A','dq',2.00,0.00,10000.00,1652114848,0,1651510048,1651510048,0),(368,19,9,8,'D','A','dq',2.00,0.00,10000.00,1652201248,0,1651510048,1651510048,0),(369,19,9,9,'D','A','dq',2.00,0.00,10000.00,1652287648,0,1651510048,1651510048,0),(370,19,9,10,'D','A','dq',2.00,0.00,10000.00,1652374048,0,1651510048,1651510048,0),(371,19,9,11,'D','A','dq',2.00,0.00,10000.00,1652460448,0,1651510048,1651510048,0),(372,19,9,12,'D','A','dq',2.00,0.00,10000.00,1652546848,0,1651510048,1651510048,0),(373,19,9,13,'D','A','dq',2.00,0.00,10000.00,1652633248,0,1651510048,1651510048,0),(374,19,9,14,'D','A','dq',2.00,0.00,10000.00,1652719648,0,1651510048,1651510048,0),(375,19,9,15,'D','A','dq',2.00,0.00,10000.00,1652806048,0,1651510048,1651510048,0),(376,19,9,16,'D','A','dq',2.00,0.00,10000.00,1652892448,0,1651510048,1651510048,0),(377,19,9,17,'D','A','dq',2.00,0.00,10000.00,1652978848,0,1651510048,1651510048,0),(378,19,9,18,'D','A','dq',2.00,0.00,10000.00,1653065248,0,1651510048,1651510048,0),(379,19,9,19,'D','A','dq',2.00,0.00,10000.00,1653151648,0,1651510048,1651510048,0),(380,19,9,20,'D','A','dq',2.00,500000.00,10000.00,1653238048,0,1651510048,1651510048,0),(381,20,10,1,'D','A','dq',2.00,0.00,10000.00,1651596599,0,1651510199,1651510199,0),(382,20,10,2,'D','A','dq',2.00,0.00,10000.00,1651682999,0,1651510199,1651510199,0),(383,20,10,3,'D','A','dq',2.00,0.00,10000.00,1651769399,0,1651510199,1651510199,0),(384,20,10,4,'D','A','dq',2.00,0.00,10000.00,1651855799,0,1651510199,1651510199,0),(385,20,10,5,'D','A','dq',2.00,0.00,10000.00,1651942199,0,1651510199,1651510199,0),(386,20,10,6,'D','A','dq',2.00,0.00,10000.00,1652028599,0,1651510199,1651510199,0),(387,20,10,7,'D','A','dq',2.00,0.00,10000.00,1652114999,0,1651510199,1651510199,0),(388,20,10,8,'D','A','dq',2.00,0.00,10000.00,1652201399,0,1651510199,1651510199,0),(389,20,10,9,'D','A','dq',2.00,0.00,10000.00,1652287799,0,1651510199,1651510199,0),(390,20,10,10,'D','A','dq',2.00,0.00,10000.00,1652374199,0,1651510199,1651510199,0),(391,20,10,11,'D','A','dq',2.00,0.00,10000.00,1652460599,0,1651510199,1651510199,0),(392,20,10,12,'D','A','dq',2.00,0.00,10000.00,1652546999,0,1651510199,1651510199,0),(393,20,10,13,'D','A','dq',2.00,0.00,10000.00,1652633399,0,1651510199,1651510199,0),(394,20,10,14,'D','A','dq',2.00,0.00,10000.00,1652719799,0,1651510199,1651510199,0),(395,20,10,15,'D','A','dq',2.00,0.00,10000.00,1652806199,0,1651510199,1651510199,0),(396,20,10,16,'D','A','dq',2.00,0.00,10000.00,1652892599,0,1651510199,1651510199,0),(397,20,10,17,'D','A','dq',2.00,0.00,10000.00,1652978999,0,1651510199,1651510199,0),(398,20,10,18,'D','A','dq',2.00,0.00,10000.00,1653065399,0,1651510199,1651510199,0),(399,20,10,19,'D','A','dq',2.00,0.00,10000.00,1653151799,0,1651510199,1651510199,0),(400,20,10,20,'D','A','dq',2.00,500000.00,10000.00,1653238199,0,1651510199,1651510199,0),(401,21,13,1,'D','A','dq',2.00,0.00,10000.00,1651596933,0,1651510533,1651510533,0),(402,21,13,2,'D','A','dq',2.00,0.00,10000.00,1651683333,0,1651510533,1651510533,0),(403,21,13,3,'D','A','dq',2.00,0.00,10000.00,1651769733,0,1651510533,1651510533,0),(404,21,13,4,'D','A','dq',2.00,0.00,10000.00,1651856133,0,1651510533,1651510533,0),(405,21,13,5,'D','A','dq',2.00,0.00,10000.00,1651942533,0,1651510533,1651510533,0),(406,21,13,6,'D','A','dq',2.00,0.00,10000.00,1652028933,0,1651510533,1651510533,0),(407,21,13,7,'D','A','dq',2.00,0.00,10000.00,1652115333,0,1651510533,1651510533,0),(408,21,13,8,'D','A','dq',2.00,0.00,10000.00,1652201733,0,1651510533,1651510533,0),(409,21,13,9,'D','A','dq',2.00,0.00,10000.00,1652288133,0,1651510533,1651510533,0),(410,21,13,10,'D','A','dq',2.00,0.00,10000.00,1652374533,0,1651510533,1651510533,0),(411,21,13,11,'D','A','dq',2.00,0.00,10000.00,1652460933,0,1651510533,1651510533,0),(412,21,13,12,'D','A','dq',2.00,0.00,10000.00,1652547333,0,1651510533,1651510533,0),(413,21,13,13,'D','A','dq',2.00,0.00,10000.00,1652633733,0,1651510533,1651510533,0),(414,21,13,14,'D','A','dq',2.00,0.00,10000.00,1652720133,0,1651510533,1651510533,0),(415,21,13,15,'D','A','dq',2.00,0.00,10000.00,1652806533,0,1651510533,1651510533,0),(416,21,13,16,'D','A','dq',2.00,0.00,10000.00,1652892933,0,1651510533,1651510533,0),(417,21,13,17,'D','A','dq',2.00,0.00,10000.00,1652979333,0,1651510533,1651510533,0),(418,21,13,18,'D','A','dq',2.00,0.00,10000.00,1653065733,0,1651510533,1651510533,0),(419,21,13,19,'D','A','dq',2.00,0.00,10000.00,1653152133,0,1651510533,1651510533,0),(420,21,13,20,'D','A','dq',2.00,500000.00,10000.00,1653238533,0,1651510533,1651510533,0),(421,22,10,1,'D','A','dq',2.00,0.00,10000.00,1651597008,0,1651510608,1651510608,0),(422,22,10,2,'D','A','dq',2.00,0.00,10000.00,1651683408,0,1651510608,1651510608,0),(423,22,10,3,'D','A','dq',2.00,0.00,10000.00,1651769808,0,1651510608,1651510608,0),(424,22,10,4,'D','A','dq',2.00,0.00,10000.00,1651856208,0,1651510608,1651510608,0),(425,22,10,5,'D','A','dq',2.00,0.00,10000.00,1651942608,0,1651510608,1651510608,0),(426,22,10,6,'D','A','dq',2.00,0.00,10000.00,1652029008,0,1651510608,1651510608,0),(427,22,10,7,'D','A','dq',2.00,0.00,10000.00,1652115408,0,1651510608,1651510608,0),(428,22,10,8,'D','A','dq',2.00,0.00,10000.00,1652201808,0,1651510608,1651510608,0),(429,22,10,9,'D','A','dq',2.00,0.00,10000.00,1652288208,0,1651510608,1651510608,0),(430,22,10,10,'D','A','dq',2.00,0.00,10000.00,1652374608,0,1651510608,1651510608,0),(431,22,10,11,'D','A','dq',2.00,0.00,10000.00,1652461008,0,1651510608,1651510608,0),(432,22,10,12,'D','A','dq',2.00,0.00,10000.00,1652547408,0,1651510608,1651510608,0),(433,22,10,13,'D','A','dq',2.00,0.00,10000.00,1652633808,0,1651510608,1651510608,0),(434,22,10,14,'D','A','dq',2.00,0.00,10000.00,1652720208,0,1651510608,1651510608,0),(435,22,10,15,'D','A','dq',2.00,0.00,10000.00,1652806608,0,1651510608,1651510608,0),(436,22,10,16,'D','A','dq',2.00,0.00,10000.00,1652893008,0,1651510608,1651510608,0),(437,22,10,17,'D','A','dq',2.00,0.00,10000.00,1652979408,0,1651510608,1651510608,0),(438,22,10,18,'D','A','dq',2.00,0.00,10000.00,1653065808,0,1651510608,1651510608,0),(439,22,10,19,'D','A','dq',2.00,0.00,10000.00,1653152208,0,1651510608,1651510608,0),(440,22,10,20,'D','A','dq',2.00,500000.00,10000.00,1653238608,0,1651510608,1651510608,0),(441,23,11,1,'D','A','dq',2.00,0.00,10000.00,1651597094,0,1651510694,1651510694,0),(442,23,11,2,'D','A','dq',2.00,0.00,10000.00,1651683494,0,1651510694,1651510694,0),(443,23,11,3,'D','A','dq',2.00,0.00,10000.00,1651769894,0,1651510694,1651510694,0),(444,23,11,4,'D','A','dq',2.00,0.00,10000.00,1651856294,0,1651510694,1651510694,0),(445,23,11,5,'D','A','dq',2.00,0.00,10000.00,1651942694,0,1651510694,1651510694,0),(446,23,11,6,'D','A','dq',2.00,0.00,10000.00,1652029094,0,1651510694,1651510694,0),(447,23,11,7,'D','A','dq',2.00,0.00,10000.00,1652115494,0,1651510694,1651510694,0),(448,23,11,8,'D','A','dq',2.00,0.00,10000.00,1652201894,0,1651510694,1651510694,0),(449,23,11,9,'D','A','dq',2.00,0.00,10000.00,1652288294,0,1651510694,1651510694,0),(450,23,11,10,'D','A','dq',2.00,0.00,10000.00,1652374694,0,1651510694,1651510694,0),(451,23,11,11,'D','A','dq',2.00,0.00,10000.00,1652461094,0,1651510694,1651510694,0),(452,23,11,12,'D','A','dq',2.00,0.00,10000.00,1652547494,0,1651510694,1651510694,0),(453,23,11,13,'D','A','dq',2.00,0.00,10000.00,1652633894,0,1651510694,1651510694,0),(454,23,11,14,'D','A','dq',2.00,0.00,10000.00,1652720294,0,1651510694,1651510694,0),(455,23,11,15,'D','A','dq',2.00,0.00,10000.00,1652806694,0,1651510694,1651510694,0),(456,23,11,16,'D','A','dq',2.00,0.00,10000.00,1652893094,0,1651510694,1651510694,0),(457,23,11,17,'D','A','dq',2.00,0.00,10000.00,1652979494,0,1651510694,1651510694,0),(458,23,11,18,'D','A','dq',2.00,0.00,10000.00,1653065894,0,1651510694,1651510694,0),(459,23,11,19,'D','A','dq',2.00,0.00,10000.00,1653152294,0,1651510694,1651510694,0),(460,23,11,20,'D','A','dq',2.00,500000.00,10000.00,1653238694,0,1651510694,1651510694,0),(461,24,14,1,'D','A','dq',2.00,0.00,10000.00,1651597294,0,1651510894,1651510894,0),(462,24,14,2,'D','A','dq',2.00,0.00,10000.00,1651683694,0,1651510894,1651510894,0),(463,24,14,3,'D','A','dq',2.00,0.00,10000.00,1651770094,0,1651510894,1651510894,0),(464,24,14,4,'D','A','dq',2.00,0.00,10000.00,1651856494,0,1651510894,1651510894,0),(465,24,14,5,'D','A','dq',2.00,0.00,10000.00,1651942894,0,1651510894,1651510894,0),(466,24,14,6,'D','A','dq',2.00,0.00,10000.00,1652029294,0,1651510894,1651510894,0),(467,24,14,7,'D','A','dq',2.00,0.00,10000.00,1652115694,0,1651510894,1651510894,0),(468,24,14,8,'D','A','dq',2.00,0.00,10000.00,1652202094,0,1651510894,1651510894,0),(469,24,14,9,'D','A','dq',2.00,0.00,10000.00,1652288494,0,1651510894,1651510894,0),(470,24,14,10,'D','A','dq',2.00,0.00,10000.00,1652374894,0,1651510894,1651510894,0),(471,24,14,11,'D','A','dq',2.00,0.00,10000.00,1652461294,0,1651510894,1651510894,0),(472,24,14,12,'D','A','dq',2.00,0.00,10000.00,1652547694,0,1651510894,1651510894,0),(473,24,14,13,'D','A','dq',2.00,0.00,10000.00,1652634094,0,1651510894,1651510894,0),(474,24,14,14,'D','A','dq',2.00,0.00,10000.00,1652720494,0,1651510894,1651510894,0),(475,24,14,15,'D','A','dq',2.00,0.00,10000.00,1652806894,0,1651510894,1651510894,0),(476,24,14,16,'D','A','dq',2.00,0.00,10000.00,1652893294,0,1651510894,1651510894,0),(477,24,14,17,'D','A','dq',2.00,0.00,10000.00,1652979694,0,1651510894,1651510894,0),(478,24,14,18,'D','A','dq',2.00,0.00,10000.00,1653066094,0,1651510894,1651510894,0),(479,24,14,19,'D','A','dq',2.00,0.00,10000.00,1653152494,0,1651510894,1651510894,0),(480,24,14,20,'D','A','dq',2.00,500000.00,10000.00,1653238894,0,1651510894,1651510894,0),(481,25,11,1,'D','A','dq',2.00,0.00,10000.00,1651597360,0,1651510960,1651510960,0),(482,25,11,2,'D','A','dq',2.00,0.00,10000.00,1651683760,0,1651510960,1651510960,0),(483,25,11,3,'D','A','dq',2.00,0.00,10000.00,1651770160,0,1651510960,1651510960,0),(484,25,11,4,'D','A','dq',2.00,0.00,10000.00,1651856560,0,1651510960,1651510960,0),(485,25,11,5,'D','A','dq',2.00,0.00,10000.00,1651942960,0,1651510960,1651510960,0),(486,25,11,6,'D','A','dq',2.00,0.00,10000.00,1652029360,0,1651510960,1651510960,0),(487,25,11,7,'D','A','dq',2.00,0.00,10000.00,1652115760,0,1651510960,1651510960,0),(488,25,11,8,'D','A','dq',2.00,0.00,10000.00,1652202160,0,1651510960,1651510960,0),(489,25,11,9,'D','A','dq',2.00,0.00,10000.00,1652288560,0,1651510960,1651510960,0),(490,25,11,10,'D','A','dq',2.00,0.00,10000.00,1652374960,0,1651510960,1651510960,0),(491,25,11,11,'D','A','dq',2.00,0.00,10000.00,1652461360,0,1651510960,1651510960,0),(492,25,11,12,'D','A','dq',2.00,0.00,10000.00,1652547760,0,1651510960,1651510960,0),(493,25,11,13,'D','A','dq',2.00,0.00,10000.00,1652634160,0,1651510960,1651510960,0),(494,25,11,14,'D','A','dq',2.00,0.00,10000.00,1652720560,0,1651510960,1651510960,0),(495,25,11,15,'D','A','dq',2.00,0.00,10000.00,1652806960,0,1651510960,1651510960,0),(496,25,11,16,'D','A','dq',2.00,0.00,10000.00,1652893360,0,1651510960,1651510960,0),(497,25,11,17,'D','A','dq',2.00,0.00,10000.00,1652979760,0,1651510960,1651510960,0),(498,25,11,18,'D','A','dq',2.00,0.00,10000.00,1653066160,0,1651510960,1651510960,0),(499,25,11,19,'D','A','dq',2.00,0.00,10000.00,1653152560,0,1651510960,1651510960,0),(500,25,11,20,'D','A','dq',2.00,500000.00,10000.00,1653238960,0,1651510960,1651510960,0),(501,26,17,1,'D','A','dq',2.00,0.00,10000.00,1651628677,0,1651542277,1651542277,0),(502,26,17,2,'D','A','dq',2.00,0.00,10000.00,1651715077,0,1651542277,1651542277,0),(503,26,17,3,'D','A','dq',2.00,0.00,10000.00,1651801477,0,1651542277,1651542277,0),(504,26,17,4,'D','A','dq',2.00,0.00,10000.00,1651887877,0,1651542277,1651542277,0),(505,26,17,5,'D','A','dq',2.00,0.00,10000.00,1651974277,0,1651542277,1651542277,0),(506,26,17,6,'D','A','dq',2.00,0.00,10000.00,1652060677,0,1651542277,1651542277,0),(507,26,17,7,'D','A','dq',2.00,0.00,10000.00,1652147077,0,1651542277,1651542277,0),(508,26,17,8,'D','A','dq',2.00,0.00,10000.00,1652233477,0,1651542277,1651542277,0),(509,26,17,9,'D','A','dq',2.00,0.00,10000.00,1652319877,0,1651542277,1651542277,0),(510,26,17,10,'D','A','dq',2.00,0.00,10000.00,1652406277,0,1651542277,1651542277,0),(511,26,17,11,'D','A','dq',2.00,0.00,10000.00,1652492677,0,1651542277,1651542277,0),(512,26,17,12,'D','A','dq',2.00,0.00,10000.00,1652579077,0,1651542277,1651542277,0),(513,26,17,13,'D','A','dq',2.00,0.00,10000.00,1652665477,0,1651542277,1651542277,0),(514,26,17,14,'D','A','dq',2.00,0.00,10000.00,1652751877,0,1651542277,1651542277,0),(515,26,17,15,'D','A','dq',2.00,0.00,10000.00,1652838277,0,1651542277,1651542277,0),(516,26,17,16,'D','A','dq',2.00,0.00,10000.00,1652924677,0,1651542277,1651542277,0),(517,26,17,17,'D','A','dq',2.00,0.00,10000.00,1653011077,0,1651542277,1651542277,0),(518,26,17,18,'D','A','dq',2.00,0.00,10000.00,1653097477,0,1651542277,1651542277,0),(519,26,17,19,'D','A','dq',2.00,0.00,10000.00,1653183877,0,1651542277,1651542277,0),(520,26,17,20,'D','A','dq',2.00,500000.00,10000.00,1653270277,0,1651542277,1651542277,0);
/*!40000 ALTER TABLE `item_apr_money` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_list`
--

DROP TABLE IF EXISTS `item_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(200) DEFAULT NULL,
  `stype` varchar(10) NOT NULL DEFAULT 'dq',
  `type` varchar(20) DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT 'D',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `days` int(10) unsigned NOT NULL DEFAULT '0',
  `max_apr_count` int(10) unsigned NOT NULL DEFAULT '0',
  `money` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `vouchers_money` decimal(15,2) DEFAULT '0.00',
  `apr` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `level_apr` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `pack` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `top_apr` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `is_auto_apply` char(1) NOT NULL DEFAULT 'N',
  `end_time` int(10) unsigned NOT NULL DEFAULT '0',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_list`
--

LOCK TABLES `item_list` WRITE;
/*!40000 ALTER TABLE `item_list` DISABLE KEYS */;
INSERT INTO `item_list` VALUES (1,44,'Tháng','dq','A','D',3,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653232791,1651504791,1651504791,0),(2,44,'Tháng','dq','A','D',3,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653232911,1651504911,1651504911,0),(3,44,'Tháng','dq','A','D',4,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653233188,1651505188,1651505188,0),(4,44,'Tháng','dq','A','D',4,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653233322,1651505322,1651505322,0),(5,44,'Tháng','dq','A','D',5,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653233482,1651505482,1651505482,0),(6,44,'Tháng','dq','A','D',5,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653233548,1651505548,1651505548,0),(7,44,'Tháng','dq','A','D',6,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653233743,1651505743,1651505743,0),(8,44,'Tháng','dq','A','D',6,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653233783,1651505783,1651505783,0),(9,44,'Tháng','dq','A','D',7,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653233913,1651505913,1651505913,0),(10,44,'Tháng','dq','A','D',7,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653233954,1651505954,1651505954,0),(11,44,'Tháng','dq','A','D',8,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653234694,1651506694,1651506694,0),(12,44,'Tháng','dq','A','D',9,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653234920,1651506920,1651506920,0),(13,44,'Tháng','dq','A','D',10,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653235054,1651507054,1651507054,0),(14,44,'Tháng','dq','A','D',11,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653235558,1651507558,1651507558,0),(15,44,'Tháng','dq','A','D',12,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653237098,1651509098,1651509098,0),(16,44,'Tháng','dq','A','D',12,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653237146,1651509146,1651509146,0),(17,44,'Tháng','dq','A','D',8,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653237267,1651509267,1651509267,0),(18,44,'Tháng','dq','A','D',8,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653237886,1651509886,1651509886,0),(19,44,'Tháng','dq','A','D',9,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653238048,1651510048,1651510048,0),(20,44,'Tháng','dq','A','D',10,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653238199,1651510199,1651510199,0),(21,44,'Tháng','dq','A','D',13,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653238533,1651510533,1651510533,0),(22,44,'Tháng','dq','A','D',10,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653238608,1651510608,1651510608,0),(23,44,'Tháng','dq','A','D',11,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653238694,1651510694,1651510694,0),(24,44,'Tháng','dq','A','D',14,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653238894,1651510894,1651510894,0),(25,44,'Tháng','dq','A','D',11,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653238960,1651510960,1651510960,0),(26,44,'Tháng','dq','A','D',17,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653270277,1651542277,1651542277,0);
/*!40000 ALTER TABLE `item_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_log`
--

DROP TABLE IF EXISTS `login_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `ip` varchar(20) DEFAULT NULL,
  `area` varchar(100) DEFAULT NULL,
  `mobile` varchar(11) NOT NULL DEFAULT '',
  `uptime` int(11) DEFAULT '0',
  `addtime` int(11) DEFAULT '0',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_log`
--

LOCK TABLES `login_log` WRITE;
/*!40000 ALTER TABLE `login_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pack`
--

DROP TABLE IF EXISTS `pack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pack` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `lt_uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '隐藏模块条件',
  `no_date` varchar(8) NOT NULL DEFAULT '' COMMENT '期数',
  `no_time` int(10) unsigned NOT NULL DEFAULT '0',
  `min_money` decimal(15,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '最小投入金额',
  `set_task_step1` int(10) unsigned NOT NULL DEFAULT '0',
  `set_task_apr1` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `set_task_step2` int(10) unsigned NOT NULL DEFAULT '0',
  `set_task_apr2` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `set_task_step3` int(10) unsigned NOT NULL DEFAULT '0',
  `set_task_apr3` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `set_task_step4` int(10) unsigned NOT NULL DEFAULT '0',
  `set_task_apr4` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `set_task_money1` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `set_task_money2` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `set_task_money3` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `set_task_money4` decimal(15,2) unsigned DEFAULT '0.00',
  `not_apr` decimal(15,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '未完成返还比例',
  `auto_add_num` varchar(20) NOT NULL DEFAULT '' COMMENT '每分钟自增人数',
  `auto_add_user_money` varchar(20) NOT NULL DEFAULT '' COMMENT '每分钟自增金额',
  `is_disable` char(1) NOT NULL DEFAULT 'N' COMMENT '是否关闭',
  `set_user_num` int(10) unsigned NOT NULL DEFAULT '0',
  `set_all_money` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `bm_user_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '实际报名数',
  `bm_all_money` decimal(15,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '实际总金额',
  `back_all_money` decimal(15,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '返还总金额',
  `income_all_money` decimal(15,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '收入总金额',
  `status` char(1) NOT NULL DEFAULT 'D' COMMENT 'D:未完成|S:结算中|Y:已结算',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `back_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '返还时间',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pack`
--

LOCK TABLES `pack` WRITE;
/*!40000 ALTER TABLE `pack` DISABLE KEYS */;
INSERT INTO `pack` VALUES (1,0,'20200810',1596988800,0.00,3000,1.00,5000,2.00,8000,3.00,10000,4.00,20.00,30.00,40.00,50.00,0.00,'122,1000','150,1000','N',0,0.00,0,0.00,0.00,0.00,'D',1597074475,0,1597074475,0),(2,0,'20200811',1597075200,0.00,3000,1.00,5000,2.00,8000,3.00,10000,4.00,20.00,30.00,40.00,50.00,0.00,'122,1000','150,1000','N',6289,3601689.00,0,0.00,0.00,0.00,'D',1597075142,0,1597074475,0),(3,0,'20200812',1597161600,0.00,3000,1.00,5000,2.00,8000,3.00,10000,4.00,20.00,30.00,40.00,50.00,0.00,'122,1000','150,1000','N',818032,99999999.99,0,0.00,0.00,0.00,'D',1597161542,0,1597074475,0),(4,0,'20200813',1597248000,0.00,3000,1.00,5000,2.00,8000,3.00,10000,4.00,20.00,30.00,40.00,50.00,0.00,'122,1000','150,1000','N',793925,99999999.99,0,0.00,0.00,0.00,'D',1597247942,0,1597075201,0),(5,0,'20200814',1597334400,0.00,1000,1.00,2000,2.00,3000,3.00,5000,4.00,20.00,30.00,40.00,50.00,0.00,'990,1000','950,1000','N',845787,99999999.99,0,0.00,0.00,0.00,'D',1597334401,0,1597161601,0),(6,0,'20200815',1597420800,0.00,1000,1.00,2000,2.00,3000,3.00,5000,4.00,20.00,30.00,40.00,50.00,0.00,'990,1000','950,1000','N',1432818,99999999.99,0,0.00,0.00,0.00,'D',1597420802,0,1597248002,0),(7,0,'20200816',1597507200,0.00,1000,1.00,2000,2.00,3000,3.00,5000,4.00,20.00,30.00,40.00,50.00,0.00,'990,1000','950,1000','N',1344975,99999999.99,0,0.00,0.00,0.00,'D',1597501863,0,1597334401,0),(8,0,'20210419',1618761600,0.00,1000,1.00,2000,2.00,3000,3.00,5000,4.00,20.00,30.00,40.00,50.00,0.00,'990,1000','950,1000','N',20,300.00,20,50000.00,100.00,300.00,'D',1618845413,0,1597420802,0),(9,0,'20210420',1618848000,0.00,1000,1.00,2000,2.00,3000,3.00,5000,4.00,20.00,30.00,40.00,50.00,0.00,'990,1000','950,1000','N',42767,41700620.00,0,0.00,0.00,0.00,'D',1618855141,0,1618845413,0),(10,0,'20210421',1618934400,0.00,1000,1.00,2000,2.00,3000,3.00,5000,4.00,20.00,30.00,40.00,50.00,0.00,'990,1000','950,1000','N',1432873,99999999.99,0,0.00,0.00,0.00,'D',1618941542,0,1618845413,0),(11,0,'20210422',1619020800,0.00,1000,1.00,2000,2.00,3000,3.00,5000,4.00,20.00,30.00,40.00,50.00,0.00,'990,1000','950,1000','N',1432628,99999999.99,0,0.00,0.00,0.00,'D',1619027941,0,1618851602,0),(12,0,'20210423',1619107200,0.00,1000,1.00,2000,2.00,3000,3.00,5000,4.00,20.00,30.00,40.00,50.00,0.00,'990,1000','950,1000','N',1432758,99999999.99,0,0.00,0.00,0.00,'D',1619114341,0,1618938002,0),(13,0,'20210424',1619193600,0.00,1000,1.00,2000,2.00,3000,3.00,5000,4.00,20.00,30.00,40.00,50.00,0.00,'990,1000','950,1000','N',1432710,99999999.99,0,0.00,0.00,0.00,'D',1619200742,0,1619024402,0),(14,0,'20210425',1619280000,0.00,1000,1.00,2000,2.00,3000,3.00,5000,4.00,20.00,30.00,40.00,50.00,0.00,'990,1000','950,1000','N',1424802,99999999.99,0,0.00,0.00,0.00,'D',1619287141,0,1619110801,0),(15,0,'20210426',1619366400,0.00,1000,1.00,2000,2.00,3000,3.00,5000,4.00,20.00,30.00,40.00,50.00,0.00,'990,1000','950,1000','N',1432685,99999999.99,0,0.00,0.00,0.00,'D',1619373541,0,1619197201,0),(16,0,'20210427',1619452800,0.00,1000,1.00,2000,2.00,3000,3.00,5000,4.00,20.00,30.00,40.00,50.00,0.00,'990,1000','950,1000','N',1433054,99999999.99,0,0.00,0.00,0.00,'D',1619459942,0,1619283601,0),(17,0,'20210428',1619539200,0.00,1000,1.00,2000,2.00,3000,3.00,5000,4.00,20.00,30.00,40.00,50.00,0.00,'990,1000','950,1000','N',1432853,99999999.99,0,0.00,0.00,0.00,'D',1619546341,0,1619370001,0),(18,0,'20210429',1619625600,0.00,1000,1.00,2000,2.00,3000,3.00,5000,4.00,20.00,30.00,40.00,50.00,0.00,'990,1000','950,1000','N',1432870,99999999.99,0,0.00,0.00,0.00,'D',1619632742,0,1619456401,0),(19,0,'20210430',1619712000,0.00,1000,1.00,2000,2.00,3000,3.00,5000,4.00,20.00,30.00,40.00,50.00,0.00,'990,1000','950,1000','N',1432733,99999999.99,0,0.00,0.00,0.00,'D',1619719141,0,1619542801,0),(20,0,'20210501',1619798400,0.00,1000,1.00,2000,2.00,3000,3.00,5000,4.00,20.00,30.00,40.00,50.00,0.00,'990,1000','950,1000','N',1432740,99999999.99,0,0.00,0.00,0.00,'D',1619805542,0,1619629202,0),(21,0,'20210502',1619884800,0.00,1000,1.00,2000,2.00,3000,3.00,5000,4.00,20.00,30.00,40.00,50.00,0.00,'990,1000','950,1000','N',1432945,99999999.99,0,0.00,0.00,0.00,'D',1619891941,0,1619715601,0),(22,0,'20210503',1619971200,0.00,1000,1.00,2000,2.00,3000,3.00,5000,4.00,20.00,30.00,40.00,50.00,0.00,'990,1000','950,1000','N',1432718,99999999.99,0,0.00,0.00,0.00,'D',1619978342,0,1619802002,0),(23,0,'20210504',1620057600,0.00,1000,1.00,2000,2.00,3000,3.00,5000,4.00,20.00,30.00,40.00,50.00,0.00,'990,1000','950,1000','N',1432897,99999999.99,0,0.00,0.00,0.00,'D',1620064741,0,1619888401,0),(24,0,'20210505',1620144000,0.00,1000,1.00,2000,2.00,3000,3.00,5000,4.00,20.00,30.00,40.00,50.00,0.00,'990,1000','950,1000','N',1432420,99999999.99,0,0.00,0.00,0.00,'D',1620151141,0,1619974802,0),(25,0,'20210506',1620230400,0.00,1000,1.00,2000,2.00,3000,3.00,5000,4.00,20.00,30.00,40.00,50.00,0.00,'990,1000','950,1000','N',1432660,99999999.99,0,0.00,0.00,0.00,'D',1620237541,0,1620061201,0),(26,0,'20210507',1620316800,0.00,1000,1.00,2000,2.00,3000,3.00,5000,4.00,20.00,30.00,40.00,50.00,0.00,'990,1000','950,1000','N',1432856,99999999.99,0,0.00,0.00,0.00,'D',1620323942,0,1620147601,0),(27,0,'20210508',1620403200,0.00,1000,1.00,2000,2.00,3000,3.00,5000,4.00,20.00,30.00,40.00,50.00,0.00,'990,1000','950,1000','N',592005,99999999.99,0,0.00,0.00,0.00,'D',1620352443,0,1620234002,0),(28,0,'20210509',1620489600,0.00,1000,1.00,2000,2.00,3000,3.00,5000,4.00,20.00,30.00,40.00,50.00,0.00,'990,1000','950,1000','N',0,0.00,0,0.00,0.00,0.00,'D',1620323942,0,1620320402,0);
/*!40000 ALTER TABLE `pack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pack_list`
--

DROP TABLE IF EXISTS `pack_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pack_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `pack_id` int(10) unsigned NOT NULL DEFAULT '0',
  `step_task_key` varchar(20) NOT NULL DEFAULT '',
  `money` decimal(15,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '投入金额',
  `set_step` int(10) unsigned NOT NULL DEFAULT '0',
  `no_date` varchar(10) NOT NULL DEFAULT '' COMMENT '投放期数',
  `min_money` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `apr` decimal(15,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '费率',
  `not_apr` decimal(15,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '未完成返还比例',
  `apr_money` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `status` char(1) NOT NULL DEFAULT 'S' COMMENT 'S:未提交|D:已提交|C:结算中|Y:已结算|N:已失效',
  `back_money` decimal(15,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '回报金额',
  `ok_step` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '提交步数',
  `ok_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '提交时间',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pack_list`
--

LOCK TABLES `pack_list` WRITE;
/*!40000 ALTER TABLE `pack_list` DISABLE KEYS */;
INSERT INTO `pack_list` VALUES (1,31,2,'set_task_step1',20.00,3000,'20200811',20.00,1.00,0.00,0.20,'Y',20.20,5000,1597103792,1597161601,1597074777,0),(2,24,2,'set_task_step4',50.00,10000,'20200811',50.00,4.00,0.00,2.00,'Y',52.00,4858,1597161196,1597161601,1597075083,0),(3,32,3,'set_task_step1',20.00,3000,'20200812',20.00,1.00,0.00,0.00,'X',0.00,0,0,1597248002,1597116694,0),(4,24,3,'set_task_step1',20.00,3000,'20200812',20.00,1.00,0.00,0.00,'X',0.00,593,1597247735,1597248002,1597143367,0),(5,24,4,'set_task_step1',20.00,3000,'20200813',20.00,1.00,0.00,0.00,'X',0.00,0,0,1597334401,1597164152,0),(6,31,4,'set_task_step2',30.00,5000,'20200813',30.00,2.00,0.00,0.00,'X',0.00,0,0,1597334401,1597190679,0),(7,24,5,'set_task_step2',30.00,5000,'20200814',30.00,2.00,0.00,0.00,'X',0.00,0,0,1597420802,1597248155,0),(8,35,7,'set_task_step4',50.00,5000,'20200816',50.00,4.00,0.00,0.00,'S',0.00,0,0,1597481326,1597481326,0),(9,14,8,'set_task_step1',20.00,1000,'20210419',20.00,1.00,0.00,0.00,'S',0.00,0,0,1618730829,1618730829,0),(10,14,11,'set_task_step4',50.00,5000,'20210422',50.00,4.00,0.00,0.00,'S',0.00,0,0,1618979838,1618979838,0),(11,14,14,'set_task_step1',20.00,1000,'20210425',20.00,1.00,0.00,0.00,'S',0.00,0,0,1619237751,1619237751,0);
/*!40000 ALTER TABLE `pack_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `problem`
--

DROP TABLE IF EXISTS `problem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `problem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL,
  `uptime` int(10) NOT NULL,
  `addtime` int(10) NOT NULL,
  `is_delete` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problem`
--

LOCK TABLES `problem` WRITE;
/*!40000 ALTER TABLE `problem` DISABLE KEYS */;
INSERT INTO `problem` VALUES (1,'#',1,1650911247,1649744055,0),(2,'#',2,1650911246,1650078698,0),(3,'#',3,1650911244,1650078794,0),(4,'#',4,1650911243,1650078799,0),(5,'#',5,1650911240,1650078803,0);
/*!40000 ALTER TABLE `problem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `problem_answer`
--

DROP TABLE IF EXISTS `problem_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `problem_answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problem` varchar(155) NOT NULL,
  `content` text NOT NULL,
  `sort` int(10) NOT NULL,
  `pid` int(11) NOT NULL,
  `uptime` int(10) NOT NULL,
  `addtime` int(10) NOT NULL,
  `is_delete` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problem_answer`
--

LOCK TABLES `problem_answer` WRITE;
/*!40000 ALTER TABLE `problem_answer` DISABLE KEYS */;
INSERT INTO `problem_answer` VALUES (1,'1.-Làm thế nào để đăng ký ？','*Mở ứng dụng NEXTera lượng, bấm vào [của tôi], hệ thống sẽ chuyển đến trang đăng nhập, bấm vào [Đăng ký], nhập thông tin nhắc để hoàn tất đăng ký.\n\n*Sau khi đăng ký thành công, vui lòng hoàn tất xác thực thông tin tên thật của bạn trong [của tôi] - [Trung tâm an toàn] và liên kết tài khoản ngân hàng để rút tiền. Tiền gốc và thu nhập của khoản hoàn vốn đầu tư sẽ được rút vào tài khoản ngân hàng mà bạn liên kết.',1,1,1650912986,1649744178,0),(2,'2.-Không thể nhận Mã OTP để đăng ký?','1.Kiểm tra xem tin nhắn có bị phần mềm  trên điện thoại  chặn hay không.\n\n2.Xác nhận xem điện thoại có thể nhận tin nhắn bình thường hay không.\n\n3.Loại bỏ các lý do như sự cố tín hiệu, nợ tiền điện thoại , tắt máy, v.v\n\n4.Có thể có sự chậm trễ trong quá trình gửi và nhận tin nhắn, vui lòng kiên nhẫn đợi .\n\n5.Nếu vẫn không nhận được Mã OTP , bạn có thể liên hệ với bộ phận chăm sóc khách hàng trực tuyến để được tư vấn.',1,1,1650912997,1649744810,0),(3,'3.-Số điện thoại di động có được thay đổi sau khi đăng ký thành công không?','Số điện thoại di động có được thay đổi sau khi đăng ký thành công không?',3,1,1650913007,1649744941,0),(4,'4.Có thể hủy tài khoản không?','Hiện không hỗ trợ hủy tài khoản',4,1,1650913018,1650911410,0),(5,'5.Có bao nhiêu mật khẩu tài khoản?','Mật khẩu đăng nhập (để đăng nhập tài khoản), mật khẩu thanh toán (để đầu tư và rút tiền)',5,1,1650913046,1650911510,0),(6,'6.Cách lấy lại mật khẩu đăng nhập và mật khẩu thanh toán','Bạn có thể sử dụng ứng dụng NEXTera lượng để đăng nhập vào trang chủ và sử dụng số điện thoại liên kết để tìm lại hoặc bạn có thể liên hệ với bộ phận chăm sóc khách hàng để yêu cầu đặt lại mật khẩu ban đầu.',6,1,1650911927,1650911541,0),(7,'7.Cách thay đổi mật khẩu đăng nhập và mật khẩu thanh toán','Sau khi đăng nhập tài khoản, vào giao diện [của tôi], nhấp vào [Trung tâm an toàn], chọn loại mật khẩu cần sửa đổi, nhập mật khẩu gốc và mật khẩu mới để hoàn tất sửa đổi.',7,1,1650911942,1650911570,0),(8,'8.Cách xác thực tên thật và liên kết tài khoản ngân hàng để rút tiền.','Sau khi đăng nhập tài khoản, vào giao diện [của tôi], nhấp vào [Trung tâm bảo mật], chọn xác thực tên thật hoặc quản lý tài khoản ngân hàng, nhập thông tin tương ứng.\nLưu ý: Tiền gốc và lợi tức do khoản đầu tư trả lại sẽ được rút vào tài khoản ngân mà bạn liên kết. Hãy nhớ điền thông tin thật của bạn, nếu không tiền rút sẽ không được chuyển vào tài khoản của bạn.',8,1,1650911956,1650911594,0),(9,'9.Tại sao bạn cần liên kết thẻ ngân hàng?','Mục đích của việc liên kết thẻ ngân hàng là để rút tiền từ tài khoản, do đó, thông tin tài khoản của thẻ ngân hàng bạn liên kết\n phải phù hợp với thông tin xác thực tên thật, khi liên kết vui lòng điền kỹ [Tài khoản] để xác minh rằng nó là chính xác, và sau đó xác nhận để gửi thông tin thanh toán để liên kết.\nLưu ý: Tiền gốc và lợi tức do khoản đầu tư trả lại sẽ được rút vào tài khoản ngân hàng mà bạn nliên kết. Hãy nhớ điền thông tin thật của bạn, nếu không tiền rút sẽ không được chuyển vào tài khoản của bạn.',9,1,1650911970,1650911780,0),(10,'10.Thông tin xác thực tên thật có thể thay đổi được không?','Không được, để đảm bảo an toàn cho tiền trong tài khoản, sau khi xác thực tên thật thành công, bạn không thể tự mình sửa đổi thông tin tên và chứng minh thư của mình.',10,1,1650911991,1650911833,0),(11,'11. Tôi có thể thay đổi thông tin của tài khoản thẻ ngân hàng đã nliên kết không?','Có thể, sau khi liên kết thành công, bạn có thể thay đổi hoặc xóa thông tin thẻ ngân hàng đăng nhập. ([của tôi] - [Trung tâm bảo mật] - [Quản lý thẻ ngân hàng])',11,1,1650912056,1650912056,0),(12,'12. Làm thế nào để mời bạn bè?','1. Đăng nhập vào tài khoản NEXTera nănglượng của bạn\n2. Nhấp vào thanh điều khiển [[Đội ngũ]\n3. Nhấp vào [Mời bạn bè], sao chép liên kết mời của bạn hoặc dùng mã QR để chia sẻ với bạn bè để họ đăng ký tải xuống.\n4. Chia sẻ càng nhiều với bạn bè và gia đình của bạn để được chiết khấu đầu tư.',12,1,1650912120,1650912120,0),(13,'13. Làm thế nào để kiếm hoa hồng bằng cách mời bạn bè?','1. Chia sẻ liên kết mời của bạn hoặc mời mã QR cho bạn bè của bạn và hoàn tất đăng ký.\n2. Khi bạn bè của bạn bắt đầu đầu tư, bạn sẽ nhận được hoa hồng .\n3. Mức hoa hồng phụ thuộc vào số tiền đầu tư của bạn bè và cấp độ đại lý, chi tiết vui lòng tham khảo giao diện [Đội ngũ].',13,1,1650912167,1650912167,0),(14,'14. Làm thế nào để nạp tiền?','1. Trên giao diện [của tôi], nhấp vào [Nạp tiền]\n2. Nhập số tiền nạp\n3. Chọn phương thức nạp tiền và nhấp vào [Lập tức nộp tiền]\nI. Nạp tiền chuyển khoản: Copy người nhận tiền, số tài khoản ngân hàng, ngân hàng liên kết trong giao diện vào e-banking của bạn để chuyển tiền nạp tiền thành công\nII- Nạp tiền vào ví điện tử: lưu mã QR, mở ví điện tử và quét mã QR thanh toán để hoàn tất việc nạp tiền.\nNếu bạn có bất kỳ câu hỏi nào, vui lòng liên hệ với bên chăm sóc khách hàng.',14,1,1650912253,1650912253,0),(15,'15. Sau khi nạp tiền thì sau bao lâu sẽ về tài khoản?','Sau khi nạp tiền thành công, tiền sẽ được cộng vào tài khoản theo thời gian thực, nếu bạn xác nhận qua ngân hàng là đã thanh toán thành công nhưng tài khoản không hiển thị lịch sử nạp tiền thì bạn có thể liên hệ với bộ phận chăm sóc khách hàng để được giải đáp.',15,1,1650912284,1650912284,0),(16,'16. Tại sao nạp tiền không thành công?','Xác minh chuyển khoản của bạn thành công Nếu bạn xác nhận qua ngân hàng rằng việc chuyển tiền đã thành công nhưng số dư tài khoản không tăng lên, bạn có thể liên hệ với bộ phận chăm sóc khách hàng  để được giải đáp. (Nói chung, nó sẽ được ghi có trong thời gian thực)',16,1,1650913082,1650912306,0),(17,'17. Tôi có thể rút tiền mặt ngay sau khi nạp tiền không?','Không được\nĐể ngăn chặn một số người dùng bất hợp pháp rửa tiền thông qua nền tảng NEXTera lượng và các hoạt động bất hợp pháp khác, mỗi khoản tiền gửi cần phải được đầu tư trước khi có thể rút tiền.',17,1,1650912362,1650912362,0),(18,'18. Gửi và rút tiền có mất phí không?','Gửi và rút tiền không yêu cầu bất kỳ khoản phí nào.',18,1,1650912383,1650912383,0),(19,'9. Có thể sử dụng nhiều tài khoản ngân hàng để nạp tiền cho cùng một tài khoản không?','Có thể, bạn có thể sử dụng nhiều tài khoản ngân hàng khác nhau để nạp tiền hoặc nhờ bạn bè nạp tiền thay cho bạn, nếu nạp tiền thành công thì tiền sẽ được cộng vào tài khoản mà bạn đã gửi lệnh nạp tiền.(Bạn bè nên chỉ ra trong cột tên của người thanh toán để hệ thống UnionPay có thể xác định được)',19,1,1650912410,1650912410,0),(20,'20. Làm thế nào để check lịch sử nộp và rút tiền?','Sau khi đăng nhập vào tài khoản , hãy nhấp vào [của tôi] - [Chi tiết ] để xem tất cả các lịch sử nạp tiền.',20,1,1650912427,1650912427,0),(21,'21. Những vấn đề cần chú ý trước khi đầu tư vào một dự án?','1. Vui lòng đọc chi tiết tỷ lệ hoàn vốn hàng ngày, chu kỳ đầu tư và các thông tin khác của dự án đã chọn.\n2. Đảm bảo đủ số tiền trong tài khoản, nếu không đủ vui lòng nạp tiền kịp thời.\n3. Việc đầu tư phải được thực hiện theo tiêu chuẩn đầu tư tối thiểu của dự án đầu tư (không có giới hạn trên cho một khoản đầu tư).\n4. Xác nhận số tiền bạn sẽ đầu tư và kiểm tra xem số tiền còn lại của dự án đã chọn có đáp ứng được nhu cầu đầu tư của bạn hay không.\n5. Mọi thứ cần được vận hành theo đúng yêu cầu của hệ thống, sau khi đầu tư xong, chu kỳ dự án không thể bị hủy bỏ cho đến khi kết thúc chu kỳ dự án.',21,1,1650912482,1650912482,0),(22,'22. Làm thế nào để đăng ký rút tiền mặt từ tài khoản?','Nhấp vào [Rút tiền] trên giao diện [của tôi], nhập số tiền rút và mật khẩu thanh toán, nhấp vào [Lập tức rút tiền] là có thể gửi đơn rút tiền thành công.',22,1,1650912506,1650912506,0),(23,'23. Điều gì xảy ra nếu việc rút tiền không thành công hoặc bị hệ thống từ chối?','(1) Kiểm tra xem tên của tài khoản ngân hàng liên kết với lệnh rút tiền có giống với tên của xác thực danh tính hay không.\n(2) Số / tên tài khoản ngân hàng bị sai, hoặc số tài khoản và tên tài khoản không khớp. Nếu  liên kết sai, bạn có thể tự sửa đổi hoặc liên hệ với dịch vụ khách hàng trực tuyến để xử lý.',23,1,1650913091,1650912547,0),(24,'24. Cần lưu ý điều gì trước khi đăng ký rút tiền mặt?','Bạn cần liên kết tài khoản ngân hàng của mình trước khi có thể rút. Số tiền rút tối thiểu là 700000 ₫ và thời gian rút là 08: 00-22: 00 mỗi ngày.',24,1,1650913099,1650912571,0),(25,'25. Mất bao lâu để tiền rút về tài khoản?','(1) Giờ đăng ký rút tiền là: 08: 00-22: 00 hàng ngày, sau khi đơn rút tiền được gửi thành công, tiền rút sẽ đến tài khoản ngân hàng mà bạn liên kết trong vòng 1-30 phút.\n(2) Các khoản tiền được áp dụng để rút từ 22:00 đến 08:00 vào ban đêm phải được hệ thống UnionPay tự động xác định và rút tiền sau 08:00.',25,1,1650912602,1650912602,0),(26,'26. Có bất kỳ khoản phí nào được tính cho nhà đầu tư không?','Người dùng không tính bất kỳ khoản phí nào cho việc đầu tư, nạp tiền và rút tiền.',26,1,1650913114,1650912621,0),(27,'27. Khi đầu tư thành công thì khi nào bắt đầu tính thu nhập?','Nếu bạn đầu tư vào cùng một ngày, thu nhập sẽ được tính trong cùng một ngày, sau 24 giờ, thu nhập trong ngày sẽ được chuyển vào tài khoản của bạn (một ngày  được đánh dấu bởi dự án là 24 giờ và tỷ lệ sai sót trong thu nhập không quá 5 giây). Để biết chi tiết, vui lòng tham khảo chi tiết khởi động dự án.',27,1,1650912645,1650912645,0),(28,'28. Số tiền đầu tư tối thiểu','Trên 1000000',28,1,1650913128,1650912666,0),(29,'29. Sau khi nhà máy điện đầu tư hết hạn, khi nào tiền gốc sẽ được chuyển vào tài khoản của tôi?','Vào ngày khoản đầu tư hết hạn, tiền gốc và thu nhập ngay lập tức được hoàn trả vào tài khoản của người dùng.',29,1,1650912694,1650912694,0),(30,'30. Tôi có thể rút tiền mặt ngay sau khi dự án đầu tư hết hạn không?','Sau khi đầu tư hết hạn, tiền gốc và thu nhập sẽ được hoàn trả vào tài khoản thành viên của bạn vào ngày hết hạn, và bạn có thể chọn rút tiền hoặc tiếp tục đầu tư.',30,1,1650912716,1650912716,0),(31,'31. Làm thế nào để kiểm tra hồ sơ đầu tư và hợp đồng điện tử?','Sau khi đăng nhập vào tài khoản của bạn, nhấp vào trang [của tôi] - [Lịch sử mua hàng], bạn có thể xem tất cả hồ sơ đầu tư, sau đó nhấp vào bất kỳ dự án đầu tư nào để xem hợp đồng.',31,1,1650912737,1650912737,0),(32,'32. Dự án đầu tư sau này có thể bị hủy bỏ không?','Sau khi dự án đầu tư không được phép hủy bỏ mà phải đầu tư phù hợp với yêu cầu của dự án, chỉ sau khi dự án đầu tư hết hạn theo yêu cầu mới được thu hồi toàn bộ hoặc tiếp tục lựa chọn dự án khác để đầu tư.',32,1,1650912764,1650912764,0);
/*!40000 ALTER TABLE `problem_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_advicon`
--

DROP TABLE IF EXISTS `sys_advicon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_advicon` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(18) NOT NULL DEFAULT '' COMMENT '名称',
  `icon` varchar(200) DEFAULT '' COMMENT 'icon地址',
  `jump_url` varchar(200) DEFAULT '' COMMENT '跳转URL',
  `condition` text NOT NULL COMMENT '需满足的条件',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态：1上架，2下架',
  `uptime` int(11) DEFAULT NULL COMMENT '更新时间',
  `addtime` int(11) DEFAULT NULL COMMENT '添加时间',
  `is_delete` tinyint(4) DEFAULT '0' COMMENT '是否删除：1是，0否',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_advicon`
--

LOCK TABLES `sys_advicon` WRITE;
/*!40000 ALTER TABLE `sys_advicon` DISABLE KEYS */;
INSERT INTO `sys_advicon` VALUES (1,'理财有道','/upload/2020/04/25/20200425153758_ee6e1e07.png','/item','{\"name\":\"阶段3\",\"value\":\"3\"}',1,1588827678,1587745243,0),(2,'理财有道1235454','/upload/2020/04/25/20200425150428_b8d2cc44.png','/item','\"8\"',1,1587799443,1587746522,1);
/*!40000 ALTER TABLE `sys_advicon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL DEFAULT '' COMMENT 'clo:早起|pack:红包|reward:奖励',
  `content` text COMMENT '配置内容',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES (4,'reward','{\"reg_money\":\"30\",\"share_money\":\"0\",\"top1_apr\":\"101\",\"top2_apr\":\"10\",\"top3_apr\":\"10\",\"checkin_money\":\"3\",\"item_credit\":\"1\"}',1651463565,1564986897,0),(5,'web','{\"title\":\"NEXTeran\\u0103ng l\\u01b0\\u1ee3ng\",\"store_switch\":\"on\",\"invite_firends\":\"1. Th\\u00e2n m\\u1ebfn, h\\u00e3y nh\\u1ea5p v\\u00e0o khuy\\u1ebfn m\\u00e3i c\\u1ee7a t\\u00f4i trong trung t\\u00e2m c\\u00e1 nh\\u00e2n, b\\u1ea1n c\\u00f3 th\\u1ec3 sao ch\\u00e9p li\\u00ean k\\u1ebft khuy\\u1ebfn m\\u00e3i c\\u1ee7a m\\u00ecnh v\\u00e0 g\\u1eedi cho b\\u1ea1n b\\u00e8, ho\\u1eb7c b\\u1ea1n b\\u00e8 c\\u1ee7a b\\u1ea1n c\\u00f3 th\\u1ec3 qu\\u00e9t m\\u00e3 QR l\\u1eddi m\\u1eddi c\\u1ee7a b\\u1ea1n tr\\u1ef1c ti\\u1ebfp.  (L\\u01b0u \\u00fd: Khi b\\u1ea1n b\\u00e8 \\u0111\\u0103ng k\\u00fd, h\\u00e3y \\u0111i\\u1ec1n s\\u1ed1 \\u0111i\\u1ec7n tho\\u1ea1i di \\u0111\\u1ed9ng c\\u1ee7a th\\u00e0nh vi\\u00ean v\\u00e0o c\\u1ed9t l\\u1eddi m\\u1eddi)\\n\\n2. B\\u1eb1ng c\\u00e1ch m\\u1eddi b\\u1ea1n b\\u00e8, b\\u1ea1n c\\u00f3 th\\u1ec3 nh\\u1eadn \\u0111\\u01b0\\u1ee3c ph\\u1ea7n th\\u01b0\\u1edfng hoa h\\u1ed3ng cho s\\u1ed1 ti\\u1ec1n \\u0111\\u1ea7u t\\u01b0 c\\u1ee7a b\\u1ea1n m\\u00ecnh, ph\\u1ea7n th\\u01b0\\u1edfng hoa h\\u1ed3ng 5% cho s\\u1ed1 ti\\u1ec1n \\u0111\\u1ea7u t\\u01b0 c\\u1ea5p 1, ph\\u1ea7n th\\u01b0\\u1edfng hoa h\\u1ed3ng 4% cho s\\u1ed1 ti\\u1ec1n \\u0111\\u1ea7u t\\u01b0 c\\u1ea5p 2, ph\\u1ea7n th\\u01b0\\u1edfng hoa h\\u1ed3ng 3% cho c\\u1ea5p \\u0111\\u1ed9 S\\u1ed1 ti\\u1ec1n \\u0111\\u1ea7u t\\u01b0 3, v\\u00e0 s\\u1ed1 ti\\u1ec1n \\u0111\\u1ea7u t\\u01b0 c\\u1ea5p 4 th\\u01b0\\u1edfng hoa h\\u1ed3ng 2% th\\u01b0\\u1edfng hoa h\\u1ed3ng, 1% hoa h\\u1ed3ng th\\u01b0\\u1edfng qu\\u1ef9 \\u0111\\u1ea7u t\\u01b0 c\\u1ea5p 5, c\\u00f3 gi\\u00e1 tr\\u1ecb l\\u00e2u d\\u00e0i.\",\"name\":\"NextEra Energy Resources, LLC\",\"phone\":\"4000290095\",\"address\":\"\\u6d59\\u6c5f\\u7701\\u5b81\\u6ce2\\u5e02\\u6c5f\\u5317\\u533a\\u957f\\u5174\\u8def689\\u5f0421\\u53f710\\u5e62112\\u5ba4\",\"notice\":\"\\u5c0a\\u656c\\u7684\\u7528\\u6237\\u60a8\\u597d\\uff0c\\u6b22\\u8fce\\u4f7f\\u7528\\u7535e\\u884cAPP\\uff0c\\u65b0\\u4f1a\\u5458\\u6ce8\\u518c\\u5373\\u900130\\u5143\\uff0c\\u6bcf\\u65e5\\u7b7e\\u5230\\u53ef\\u9886\\u53d63\\u5143\\uff0c\\u4f7f\\u7528\\u94f6\\u884c\\u6c47\\u6b3e\\u5145\\u503c\\u5355\\u7b143000\\u5143\\u4ee5\\u4e0a\\u53ef\\u83b7\\u5f972%\\u5145\\u503c\\u8fd4\\u5229\\u3002\\u9080\\u8bf7\\u597d\\u53cb\\u6295\\u8d44\\u53ef\\u4ee5\\u83b7\\u5f97\\u597d\\u53cb\\u6295\\u8d44\\u91d1\\u989d2%\\u9080\\u8bf7\\u4f63\\u91d1\\u3002\",\"kefu_link\":\"https:\\/\\/tb.53kf.com\\/code\\/app\\/f921ef95816c7772282fd40c32a4e9af9\\/1\",\"app_link\":\"http:\\/\\/a.f14554804.xyz\\/JDK4JOCE\",\"kefu_wx\":\"\",\"kefu_qq\":\"40036650\",\"kefu_tel\":\"4000290095\",\"ipcc_no\":\"881996357\",\"sms_tpl1\":\"11\",\"sms_key1\":\"22\",\"sms_tpl2\":\"33\",\"sms_key2\":\"44\",\"auth_key\":\"1d2be3d99fca4aa7984862523d5254df\",\"sms_key\":\"accabc61ead9c0bbab53c77936aa8dae\",\"is_maintain\":\"N\",\"version\":\"v1.2\",\"news_url\":\"\",\"logo\":\"\\/upload\\/2022\\/03\\/28\\/20220328150625_08ef87b9.png\",\"user_logo\":\"\\/upload\\/2022\\/03\\/28\\/20220328150629_f2851168.png\",\"user_contract_name\":\"Th\\u1ecfa thu\\u1eadn ng\\u01b0\\u1eddi d\\u00f9ng\",\"user_contract_link\":\"\\/art\\/98f137\",\"user_contract_ys_name\":\"quy\\u1ec1n ri\\u00eang t\\u01b0\",\"user_contract_ys_link\":\"\\/art\\/1f0e3d\"}',1651326964,1564987837,0),(7,'pay','{\"huzhan_min_money\":\"2000\",\"bank_back_apr\":\"0\",\"bank_is_back\":\"Y\",\"wx_code\":\"\\/upload\\/2020\\/05\\/07\\/20200507141241_7ce818f6.jpg\",\"wx_is_open\":\"N\",\"alipay_code\":\"\\/upload\\/2020\\/05\\/07\\/20200507141216_768f68c8.jpg\",\"alipay_is_open\":\"N\",\"bank_name\":\"\\u4e2d\\u56fd\\u5efa\\u8bbe\\u94f6\\u884c\",\"bank_user\":\"\\u8303\\u661f\",\"bank_card\":\"6217004220058204383\",\"bank_is_open\":\"Y\",\"invest_min_money\":\"100\",\"cost_min_money\":\"200\",\"wx_content\":\"\\u652f\\u4ed8\\u5b9d\\u5145\\u503c\\uff0c\\u957f\\u6309\\u4e8c\\u7ef4\\u7801\\u4fdd\\u5b58\\u6216\\u622a\\u56fe\\u4e8c\\u7ef4\\u7801\\uff0c\\u6253\\u5f00\\u652f\\u4ed8\\u5b9d\\uff0c\\u626b\\u4e00\\u626b\\uff0c\\u70b9\\u51fb\\u53f3\\u4e0a\\u89d2\\u76f8\\u518c\\uff0c\\u9009\\u62e9\\u521a\\u4fdd\\u5b58\\u7684\\u4e8c\\u7ef4\\u7801\\uff0c\\u5145\\u503c\\u5373\\u53ef\\u3002\\u6e29\\u99a8\\u63d0\\u793a\\uff1a\\u8bf7\\u60a8\\u5728\\u5145\\u503c\\u7684\\u65f6\\u5019\\u5c3d\\u91cf\\u4e0d\\u8981\\u5145\\u503c\\u6574\\u6570\\uff0c\\u6bd4\\u5982\\u60a8\\u8981\\u5145\\u503c100\\u5143\\uff0c\\u60a8\\u53ef\\u4ee5\\u9009\\u62e9\\u5145\\u503c100.01\\u5143\\u621699.99\\u5143\\uff0c\\u5c3d\\u91cf\\u5728\\u5c0f\\u6570\\u70b9\\u9009\\u62e9\\u6bd4\\u8f83\\u7279\\u6b8a\\u7684\\u91d1\\u989d\\uff0c\\u8ba9\\u7cfb\\u7edf\\u66f4\\u5feb\\u8bc6\\u522b\\u60a8\\u7684\\u5145\\u503c\\u8ba2\\u5355\\uff0c\\u4ee5\\u514d\\u803d\\u8bef\\u60a8\\u7684\\u6295\\u8d44\\uff0c\\u8be6\\u7ec6\\u5145\\u503c\\u6b65\\u9aa4\\u53ef\\u4ee5\\u770b\\u5e73\\u53f0\\u516c\\u544a\\u3002\",\"alipay_content\":\"\\u652f\\u4ed8\\u5b9d\\u5145\\u503c\\uff0c\\u957f\\u6309\\u4e8c\\u7ef4\\u7801\\u4fdd\\u5b58\\u6216\\u622a\\u56fe\\u4e8c\\u7ef4\\u7801\\uff0c\\u6253\\u5f00\\u652f\\u4ed8\\u5b9d\\uff0c\\u626b\\u4e00\\u626b\\uff0c\\u70b9\\u51fb\\u53f3\\u4e0a\\u89d2\\u76f8\\u518c\\uff0c\\u9009\\u62e9\\u521a\\u4fdd\\u5b58\\u7684\\u4e8c\\u7ef4\\u7801\\uff0c\\u5145\\u503c\\u5373\\u53ef\\u3002\\u6e29\\u99a8\\u63d0\\u793a\\uff1a\\u8bf7\\u60a8\\u5728\\u5145\\u503c\\u7684\\u65f6\\u5019\\u5c3d\\u91cf\\u4e0d\\u8981\\u5145\\u503c\\u6574\\u6570\\uff0c\\u6bd4\\u5982\\u60a8\\u8981\\u5145\\u503c100\\u5143\\uff0c\\u60a8\\u53ef\\u4ee5\\u9009\\u62e9\\u5145\\u503c100.01\\u5143\\u621699.99\\u5143\\uff0c\\u5c3d\\u91cf\\u5728\\u5c0f\\u6570\\u70b9\\u9009\\u62e9\\u6bd4\\u8f83\\u7279\\u6b8a\\u7684\\u91d1\\u989d\\uff0c\\u8ba9\\u7cfb\\u7edf\\u66f4\\u5feb\\u8bc6\\u522b\\u60a8\\u7684\\u5145\\u503c\\u8ba2\\u5355\\uff0c\\u4ee5\\u514d\\u803d\\u8bef\\u60a8\\u7684\\u6295\\u8d44\\uff0c\\u8be6\\u7ec6\\u5145\\u503c\\u6b65\\u9aa4\\u53ef\\u4ee5\\u770b\\u5e73\\u53f0\\u516c\\u544a\\u3002\"}',1650958840,1564987837,0),(9,'banner','{\"banner\":[{\"image\":\"\\/upload\\/2019\\/08\\/29\\/20190829205555_64fe7835.png\",\"url\":\"\\/task\"},{\"image\":\"\\/upload\\/2019\\/09\\/03\\/20190903175229_af1adb33.png\",\"url\":\"\\/baoku\"},{\"image\":\"\\/upload\\/2019\\/09\\/16\\/20190916130323_057ef5fd.png\",\"url\":\"\\/art\\/3c59dc\"},{\"image\":\"\\/upload\\/2019\\/09\\/16\\/20190916140737_a29ec349.png\",\"url\":\"\\/verified\"}]}',1569176304,1565707027,0),(11,'vip','{\"vip1\":null,\"vip2\":null,\"vip3\":null,\"vip4\":null,\"vip5\":null,\"vip6\":null,\"vip7\":null}',1570112277,1565707027,0),(12,'sound','{\"sound_list\":[{\"id\":1,\"sound\":\"1.mp3\"},{\"id\":2,\"sound\":\"2.mp3\"}],\"invest_sound\":\"1.mp3\",\"is_open_invest\":\"Y\",\"cost_sound\":\"2.mp3\",\"is_open_cost\":\"Y\"}',1619860009,1565707027,0),(14,'home','{\"notice\":\"公告公告公告公告公告公告公告公告公告公告公告\"}',1570035234,1565707027,0),(15,'ad','{\"image\":\"\\/upload\\/2020\\/05\\/08\\/20200508140142_2320a7d7.png\",\"url\":\"\\/art\\/70efdf\",\"is_disable\":\"N\"}',1618671042,1565707027,0),(16,'item_dq','{\"top1_apr\":\"2\",\"top2_apr\":\"1\",\"top3_apr\":\"0.5\",\"is_top_open\":\"Y\",\"open_tree_type\":\"tree3\",\"is_disable\":\"Y\",\"signin_num\":\"0\"}',1647960609,1565707027,0),(18,'contract_dq','{\"end_time\":\"1546356524\",\"contract_image2\":\"\\/upload\\/2022\\/03\\/28\\/20220328160740_be1d36cb.png\",\"contract_image1\":\"\\/upload\\/2022\\/04\\/02\\/20220402164932_571b9734.png\",\"contract_content\":\"<p> II B\\u00ean A kh\\u00f4ng \\u0111\\u01b0\\u1ee3c ch\\u1ea5m d\\u1ee9t h\\u1ee3p \\u0111\\u1ed3ng n\\u00e0y  khi h\\u1ebft th\\u1eddi h\\u1ea1n v\\u1eadn h\\u00e0nh tr\\u1ea1m \\u0111i\\u1ec7n ch\\u01b0a h\\u1ebft, n\\u1ebfu kh\\u00f4ng B\\u00ean B s\\u1ebd h\\u1ee7y d\\u1ecbch v\\u1ee5 thu\\u00ea bao tr\\u1ea1m \\u0111i\\u1ec7n cho B\\u00ean A. B\\u00ean A s\\u1ebd kh\\u00f4ng \\u0111\\u01b0\\u1ee3c h\\u01b0\\u1edfng b\\u1ea5t k\\u1ef3 quy\\u1ec1n l\\u1ee3i n\\u00e0o do tr\\u1ea1m \\u0111i\\u1ec7n mang l\\u1ea1i. N\\u1eafm r\\u00f5 m\\u1ecdi v\\u1ea5n \\u0111\\u1ec1 v\\u1ec1 d\\u1ef1 \\u00e1n tr\\u1ea1m \\u0111i\\u1ec7n v\\u00e0 nh\\u1eadn mua theo y\\u00eau c\\u1ea7u c\\u1ee7a C\\u00f4ng ty, n\\u1ebfu vi ph\\u1ea1m quy \\u0111\\u1ecbnh th\\u00ec B\\u00ean A ch\\u1ecbu m\\u1ecdi thi\\u1ec7t h\\u1ea1i t\\u1ed5n th\\u1ea5t g\\u00e2y ra.  <\\/p > <p> Th\\u1ee9 ba, tr\\u1ea1m ph\\u00e1t \\u0111i\\u1ec7n \\u0111i\\u1ec7n s\\u1ebd h\\u1ee3p t\\u00e1c d\\u01b0\\u1edbi h\\u00ecnh th\\u1ee9c n\\u1ec1n t\\u1ea3ng \\u0111\\u1ea7u t\\u01b0 m\\u1ea1ng l\\u01b0\\u1edbi  .  C\\u00e1c kho\\u1ea3n ti\\u1ec1n \\u0111\\u0103ng k\\u00fd \\u0111\\u01b0\\u1ee3c chuy\\u1ec3n t\\u1eeb t\\u00e0i kho\\u1ea3n c\\u1ee7a B\\u00ean A sang t\\u00e0i kho\\u1ea3n c\\u1ee7a B\\u00ean B do b\\u00ean A u\\u1ef7 quy\\u1ec1n to\\u00e0 b\\u1ed9 \\u0111\\u1ea7u t\\u01b0 cho b\\u00ean B, v\\u00ec v\\u1eady \\u0111\\u1ea7u t\\u01b0 v\\u1ec1 c\\u1ed5 ph\\u1ea7n, b\\u1ea5t \\u0111\\u1ed9ng s\\u1ea3n, m\\u1ecf kho\\u00e1ng \\uff0cngu\\u1ed3n n\\u0103ng l\\u01b0\\u1ee3ng m\\u1edbi \\uff0c d\\u1ea7u m\\u1ecf c\\u00f9ng c\\u00e1c ng\\u00e0nh c\\u00f4ng th\\u01b0\\u01a1ng nghi\\u1ec7p kh\\u00e1c s\\u1ebd \\u0111\\u01b0\\u1ee3c b\\u00ean B \\u0111\\u1ea3m nhi\\u1ec7m .Tr\\u01b0\\u1edbc ti\\u00ean B\\u00ean B ph\\u1ea3i xem x\\u00e9t t\\u00ednh an to\\u00e0n c\\u1ee7a ngu\\u1ed3n v\\u1ed1n, v\\u00e0 sau \\u0111\\u00f3 m\\u1edbi xem x\\u00e9t thu nh\\u1eadp c\\u1ee7a c\\u00e1c qu\\u1ef9.  B\\u00ean A kh\\u00f4ng \\u0111\\u01b0\\u1ee3c can thi\\u1ec7p v\\u00e0o ho\\u1ea1t \\u0111\\u1ed9ng \\u0111\\u1ea7u t\\u01b0 tr\\u1ea1m ph\\u00e1t \\u0111i\\u1ec7n c\\u1ee7a B\\u00ean B d\\u01b0\\u1edbi m\\u1ecdi h\\u00ecnh th\\u1ee9c.  L\\u1ee3i nhu\\u1eadn \\u0111\\u01b0\\u1ee3c ph\\u00e2n b\\u1ed5 v\\u00e0o t\\u00e0i kho\\u1ea3n c\\u1ee7a B\\u00ean A m\\u1ed7i ng\\u00e0y, khi h\\u1ebft chu k\\u1ef3 mua tr\\u1ea1m \\u0111i\\u1ec7n, B\\u00ean B chuy\\u1ec3n thu nh\\u1eadp v\\u00e0 ti\\u1ec1n g\\u1ed1c c\\u1ee7a B\\u00ean A v\\u00e0o t\\u00e0i kho\\u1ea3n ti\\u1ec1n g\\u1eedi do B\\u00ean B m\\u1edf.  <\\/p > <p> Th\\u1ee9 t\\u01b0, B\\u00ean B ch\\u1ecbu tr\\u00e1ch nhi\\u1ec7m ki\\u1ec3m so\\u00e1t r\\u1ee7i ro \\u0111\\u1ed1i v\\u1edbi qu\\u1ef9 \\u0111\\u1ea7u t\\u01b0 c\\u1ee7a B\\u00ean A, \\u0111\\u1ed3ng th\\u1eddi ph\\u1ea3i si\\u00eang n\\u0103ng v\\u00e0 c\\u00f3 tr\\u00e1ch nhi\\u1ec7m.  N\\u1ebfu kho\\u1ea3n \\u0111\\u1ea7u t\\u01b0 b\\u1ecb l\\u1ed7, B\\u00ean B ch\\u1ecbu m\\u1ecdi kho\\u1ea3n l\\u1ed7 b\\u1ea5t k\\u1ec3 m\\u1ee9c \\u0111\\u1ed9 l\\u1ed7 v\\u00e0 thanh to\\u00e1n cho B\\u00ean A nh\\u01b0 \\u0111\\u00e3 cam k\\u1ebft trong h\\u1ee3p \\u0111\\u1ed3ng.  Trong tr\\u01b0\\u1eddng h\\u1ee3p b\\u00ean B vi ph\\u1ea1m h\\u1ee3p \\u0111\\u1ed3ng, b\\u00ean b\\u1ea3o l\\u00e3nh b\\u00ean C s\\u1ebd th\\u1ef1c hi\\u1ec7n cam k\\u1ebft thanh to\\u00e1n cho b\\u00ean A.  <\\/p > <p> V. Ngh\\u0129a v\\u1ee5 b\\u1ea3o m\\u1eadt C\\u1ea3 B\\u00ean A v\\u00e0 B\\u00ean B ph\\u1ea3i gi\\u1eef b\\u00ed m\\u1eadt tuy\\u1ec7t \\u0111\\u1ed1i b\\u00ed m\\u1eadt kinh doanh c\\u1ee7a c\\u00e1c b\\u00ean li\\u00ean quan m\\u00e0 h\\u1ecd bi\\u1ebft \\u0111\\u01b0\\u1ee3c qua li\\u00ean l\\u1ea1c v\\u00e0 qua c\\u00e1c k\\u00eanh kh\\u00e1c, gi\\u1eef b\\u00ed m\\u1eadt tuy\\u1ec7t \\u0111\\u1ed1i m\\u1ecdi th\\u00f4ng tin v\\u00e0 kh\\u00f4ng \\u0111\\u01b0\\u1ee3c ti\\u1ebft l\\u1ed9 cho b\\u1ea5t k\\u1ef3 c\\u00e1 nh\\u00e2n ho\\u1eb7c t\\u1ed5 ch\\u1ee9c n\\u00e0o kh\\u00e1c,  th\\u00f4ng tin c\\u00e1 nh\\u00e2n.  <\\/p > <p> VI. Hi\\u1ec7u l\\u1ef1c H\\u1ee3p \\u0110\\u1ed3ng <\\/p > <p> 1. Th\\u1ecfa thu\\u1eadn n\\u00e0y s\\u1ebd \\u0111\\u01b0\\u1ee3c t\\u1ef1 \\u0111\\u1ed9ng t\\u1ea1o v\\u00e0 k\\u00fd sau khi nh\\u00e0 \\u0111\\u1ea7u t\\u01b0 nh\\u1ea5p v\\u00e0o n\\u1ec1n t\\u1ea3ng \\u0111\\u1ea7u t\\u01b0 \\u0111\\u1ec3 x\\u00e1c nh\\u1eadn \\u0111\\u0103ng k\\u00fd \\u0111\\u1ea7u t\\u01b0 v\\u00e0 th\\u1ecfa thu\\u1eadn n\\u00e0y s\\u1ebd c\\u00f3 hi\\u1ec7u l\\u1ef1c khi n\\u00f3 \\u0111\\u01b0\\u1ee3c t\\u1ea1o ra.  <\\/p > <p> 2. Trong qu\\u00e1 tr\\u00ecnh th\\u1ef1c hi\\u1ec7n th\\u1ecfa thu\\u1eadn n\\u00e0y, n\\u1ebfu c\\u00f3 b\\u1ea5t k\\u1ef3 tranh ch\\u1ea5p n\\u00e0o ph\\u00e1t sinh gi\\u1eefa c\\u00e1c b\\u00ean th\\u00ec n\\u00ean gi\\u1ea3i quy\\u1ebft th\\u00f4ng qua th\\u01b0\\u01a1ng l\\u01b0\\u1ee3ng h\\u1eefu ngh\\u1ecb; n\\u1ebfu th\\u01b0\\u01a1ng l\\u01b0\\u1ee3ng kh\\u00f4ng th\\u00e0nh, m\\u1ed9t trong hai b\\u00ean c\\u00f3 quy\\u1ec1n kh\\u1edfi ki\\u1ec7n t\\u00f2a \\u00e1n nh\\u00e2n d\\u00e2n n\\u01a1i B\\u00ean B c\\u00f3 tr\\u1ee5 s\\u1edf.  <\\/p > <p> 3. Th\\u1ecfa thu\\u1eadn n\\u00e0y \\u0111\\u01b0\\u1ee3c l\\u1eadp d\\u01b0\\u1edbi d\\u1ea1ng \\u0111i\\u1ec7n t\\u1eed v\\u00e0 t\\u1ea5t c\\u1ea3 c\\u00e1c b\\u00ean \\u0111\\u1ec1u c\\u00f4ng nh\\u1eadn hi\\u1ec7u l\\u1ef1c ph\\u00e1p l\\u00fd c\\u1ee7a h\\u00ecnh th\\u1ee9c n\\u00e0y.  <\\/p > <p> VII. Th\\u1ecfa thu\\u1eadn n\\u00e0y \\u0111\\u01b0\\u1ee3c l\\u1eadp l\\u00e0m ba b\\u1ea3ng , m\\u1ed9t b\\u00ean B, m\\u1ed9t b\\u00ean A v\\u00e0 m\\u1ed9t b\\u00ean C, c\\u00f3 hi\\u1ec7u l\\u1ef1c ph\\u00e1p l\\u00fd nh\\u01b0 nhau.  <\\/ p>\",\"name2\":\"NextEra Energy Resources, LLC\",\"name3\":\"T\\u1ed5ng c\\u00f4ng ty B\\u1ea3o hi\\u1ec3m B\\u1ea3o Vi\\u1ec7t\",\"title\":\"EXTeran\\u0103ng l\\u01b0\\u1ee3ng\"}',1649524424,1565707027,0),(20,'footer','{\"news\":\"1.png\",\"index\":\"2.png\",\"item\":\"3.png\",\"user\":\"4.png\",\"about\":\"5.png\",\"contract\":\"6.png\"}',1569860027,1565707027,0),(21,'prize','{\"remark\":\" 1.\\u6295\\u8d44\\u62bd\\u5956\\u798f\\u5229\\u9879\\u76ee\\u83b7\\u5f97\\u62bd\\u5956\\u6743\\u9650\\uff0c\\u591a\\u6295\\u591a\\u9001\\uff1b \\n2.\\u5982\\u83b7\\u5f97\\u73b0\\u91d1\\u5956\\u52b1\\uff0c\\u62bd\\u5956\\u7ed3\\u675f\\u540e\\u81ea\\u52a8\\u6d3e\\u9001\\u81f3\\u4f1a\\u5458\\u8d26\\u6237\\u4f59\\u989d\\uff0c\\u53ef\\u70b9\\u51fb\\u4f1a\\u5458\\u4e2d\\u5fc3-\\u8d44\\u91d1\\u660e\\u7ec6\\u67e5\\u770b\\u8be6\\u60c5\\uff1b \\n3.\\u5982\\u83b7\\u5f97\\u5b9e\\u4f53\\u7269\\u54c1\\uff0c\\u62bd\\u5956\\u7ed3\\u675f\\u540e\\u4e3b\\u52a8\\u8054\\u7cfb\\u5ba2\\u670d\\u4eba\\u5458\\uff0c\\u63d0\\u4f9b\\u5feb\\u9012\\u4fe1\\u606f\\uff0c\\u7531\\u4e8e\\u5b9e\\u4f53\\u793c\\u54c1\\u6d89\\u53ca\\u91c7\\u8d2d\\u65f6\\u95f4\\uff0c\\u6240\\u4ee5\\u5956\\u54c1\\u4f1a\\u5728\\u62bd\\u5956\\u7ed3\\u675f\\u540e20\\u4e2a\\u5de5\\u4f5c\\u65e5\\u5185\\u5bc4\\u51fa\\uff1b \",\"prize\":[{\"name\":\"188\\u7ea2\\u5305\",\"img\":\"\\/upload\\/2021\\/04\\/21\\/20210421115241_28402b1b.jpg\",\"pro\":\"100.00\",\"type\":\"money\",\"num\":\"1\"},{\"name\":\"\\u5c0f\\u7c73\",\"img\":\"\\/upload\\/2020\\/08\\/08\\/20200808154253_59d86ecd.jpg\",\"pro\":\"0.00\",\"type\":\"credit\",\"num\":\"1\"},{\"name\":\"\\u5956\\u54c13\",\"pro\":\"0.00\",\"type\":\"money\",\"num\":\"1\",\"img\":\"\\/upload\\/2020\\/08\\/08\\/20200808154257_ef386ceb.jpg\"},{\"name\":\"\\u5956\\u54c14\",\"img\":\"\\/upload\\/2020\\/08\\/08\\/20200808154300_09cfd15e.jpg\",\"pro\":\"0.00\",\"type\":\"goods\",\"num\":\"1\"},{\"name\":\"\\u5956\\u54c15\",\"img\":\"\\/upload\\/2020\\/08\\/08\\/20200808154305_80a4b854.jpg\",\"pro\":\"0.00\",\"type\":\"goods\",\"num\":\"1\"},{\"name\":\"\\u5956\\u54c16\",\"img\":\"\\/upload\\/2020\\/08\\/13\\/20200813162105_40648a7e.jpg\",\"pro\":\"0.00\",\"type\":\"goods\",\"num\":\"1\"},{\"name\":\"288\",\"img\":\"\\/upload\\/2020\\/08\\/08\\/20200808154313_0a6f5dbd.jpg\",\"pro\":\"0.00\",\"type\":\"goods\",\"num\":\"1\"},{\"name\":\"\\u672a\\u4e2d\\u5956\",\"img\":\"\\/upload\\/2020\\/08\\/08\\/20200808154322_43109dc6.jpg\",\"pro\":\"0.00\",\"type\":\"money\",\"num\":\"0\"}],\"is_open\":\"Y\",\"image\":\"\\/upload\\/2019\\/12\\/01\\/20191201154854_f77db5a6.png\"}',1618977163,1565707027,0),(22,'show','{\"is_top_open\":\"N\",\"checkin_days\":\"1\",\"is_disable\":\"Y\"}',1573052445,1565707027,0),(23,'app','{\"image\":\"\\/upload\\/2020\\/05\\/08\\/20200508112053_0d82b4dc.png\",\"text1\":\"\\u8bda\\u4fe1\\u81f4\\u8fdc   \\u5584\\u8d22\\u8005\\u884c\",\"text2\":\"\\u70b9\\u51fb\\u4e0b\\u8f7d\\u5929\\u821cAPP\",\"is_disable\":\"N\"}',1619848375,1565707027,0),(24,'bg','{\"reg\":\"\\/upload\\/2020\\/05\\/06\\/20200506175547_106b0e0d.jpg\",\"login\":\"\\/upload\\/2020\\/05\\/06\\/20200506175535_67dc7f91.jpg\",\"forget\":\"\\/upload\\/2020\\/05\\/06\\/20200506175556_5a9e20ed.jpg\",\"app_reg\":\"\"}',1588758958,1565707027,0),(25,'sms_yp','{\"verify_key2\":\"\\u3010\\u5143\\u6052\\u8d22\\u5bcc\\u3011\",\"key2\":\"0c09b83b0288f72723cb1c6f6aa8c065\",\"verify_key1\":\"\\u3010\\u6d69\\u5929\\u5feb\\u8baf\\u3011\",\"key1\":\"8a599f376fa83d899dc8dad1863cbd5d\",\"register\":\"\\u60a8\\u7684\\u624b\\u673a\\u6ce8\\u518c\\u9a8c\\u8bc1\\u7801\\u662f\\uff1a%s\\uff0c\\u5982\\u975e\\u672c\\u4eba\\u64cd\\u4f5c\\uff0c\\u8bf7\\u5ffd\\u7565\\u672c\\u4fe1\\u606f\\uff01\",\"forgetpwd\":\"\\u60a8\\u7684\\u627e\\u56de\\u5bc6\\u7801\\u7684\\u9a8c\\u8bc1\\u7801\\u662f\\uff1a%s\\uff0c\\u5982\\u975e\\u672c\\u4eba\\u64cd\\u4f5c\\uff0c\\u8bf7\\u5ffd\\u7565\\u672c\\u4fe1\\u606f\\uff01\",\"item_apr\":\"\",\"cost_ok\":\"\\u5c0a\\u656c\\u7684\\u7528\\u6237\\uff0c\\u60a8\\u7684\\u5e10\\u53f7\\u4e8e%s\\u6210\\u529f\\u63d0\\u73b0%s\\u5143\\uff0c\\u5982\\u6709\\u7591\\u95ee\\u8bf7\\u8054\\u7cfb\\u5ba2\\u670d\\u3002\",\"cost_no\":\"\\u5c0a\\u656c\\u7684\\u7528\\u6237\\uff0c\\u60a8\\u7684\\u5e10\\u53f7\\u4e8e%s\\u63d0\\u73b0%s\\u5143\\u5931\\u8d25\\uff0c\\u5982\\u6709\\u7591\\u95ee\\u8bf7\\u8054\\u7cfb\\u5ba2\\u670d\\u3002\\uff01\",\"invest_ok\":\"\\u5c0a\\u656c\\u7684\\u7528\\u6237\\uff0c\\u60a8\\u7684\\u5e10\\u53f7\\u4e8e%s\\u6210\\u529f\\u5145\\u503c%s\\u5143\\uff0c\\u5982\\u6709\\u7591\\u95ee\\u8bf7\\u8054\\u7cfb\\u5ba2\\u670d\\u3002\",\"invest_no\":\"\\u5c0a\\u656c\\u7684\\u7528\\u6237\\uff0c\\u60a8\\u7684\\u5e10\\u53f7\\u4e8e%s\\u5145\\u503c%s\\u5143\\u5931\\u8d25\\uff0c\\u5982\\u6709\\u7591\\u95ee\\u8bf7\\u8054\\u7cfb\\u5ba2\\u670d\\u3002\",\"item_apply\":\"\"}',1571591747,1565707027,0),(26,'checkin','{\"mobile1\":\"13376250246\",\"mobile2\":\"326847167\",\"mobile3\":\"777888\",\"mobile4\":\"13333333337\",\"mobile5\":\"13333333333\",\"mobile6\":\"13333333333\",\"mobile7\":\"13333333333\",\"mobile8\":\"13333333333\",\"mobile9\":\"13333333333\",\"mobile10\":\"13333333333\",\"user_num\":\"100\",\"num1\":\"7\",\"num2\":\"15\",\"num3\":\"15\",\"num4\":\"7\",\"num5\":\"6\",\"num6\":\"1\",\"num7\":\"1\",\"num8\":\"1\",\"num9\":\"1\",\"num10\":\"1\"}',1651053916,1565707027,0),(27,'xc','{\"content\":\"<p>\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\uff0c<\\/p><p>\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c<\\/p><p>\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c<\\/p><p>\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\uff0c<\\/p><p>\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c<\\/p><p>\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\uff0c<\\/p><p>\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c<\\/p><p>\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c<\\/p><p>\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5<\\/p><p>\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\uff0c<\\/p><p>\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5\\uff0c\\u6d4b\\u8bd5<\\/p><p><img src=\\\"\\/upload\\/2019\\/10\\/25\\/20191025192935_c1e38b86.jpg\\\"><\\/p>\",\"is_open\":\"Y\"}',1572008259,1565707027,0),(28,'tg','{\"reg_bg\":\"\\/upload\\/2019\\/11\\/06\\/20191106234224_5f3ab055.jpg\",\"content\":\"<p><img src=\\\"\\/upload\\/2019\\/11\\/07\\/20191107001258_5f84bc9c.jpg\\\"><\\/p>\",\"num\":\"500\",\"date\":\"2019-11-07\",\"time\":\"600\"}',1573057258,1565707027,0),(29,'anwser','{\"c\":\"10\",\"m\":\"10\",\"is_open\":\"Y\",\"money\":\"10\",\"stop_time\":\"1577753566\",\"remark\":\"\\u6d3b\\u52a8\\u89c4\\u5219 1\\u3001\\u201c\\u534e\\u5b89\\u82f1\\u96c4\\u4f1a\\\"\\u662f\\u4e00\\u6b3e\\u5b9e\\u65f6\\u7b54\\u9898\\u8282\\u76ee\\u6d3b\\u52a8\\uff0c\\u7b54\\u5bf910\\u9898\\u5373\\u53ef\\u74dc\\u5206\\u73b0\\u91d1\\u5956\\u52b1\\u3002\\u62a5\\u540d\\u540e\\u5373\\u53ef\\u53c2\\u4e0e\\u7b54\\u9898\\u3002 \\u6bcf\\u671f\\u6d3b\\u52a8\\u517110\\u9898\\uff0c\\u6bcf\\u98982-4\\u4e2a\\u7b54\\u6848\\u9009\\u9879,\\u4ece\\u4e2d\\u9009\\u51fa\\u60a8\\u8ba4\\u4e3a\\u6b63\\u786e\\u7684\\u552f\\u4e00\\u9009\\u9879\\u3002 \\u6bcf\\u9898\\u7b54\\u9898\\u65f6\\u95f4\\u53ea\\u670910\\u79d2\\uff0c\\u8d85\\u65f6\\u6216\\u8005\\u56de\\u7b54\\u9519\\u8bef\\u60a8\\u5728\\u6700\\u540e\\u5c06\\u65e0\\u6cd5\\u83b7\\u5f97\\u73b0\\u91d1\\u5956\\u52b1\\u3002 \\u5982\\u679c\\u60a8\\u662fVIP\\u4f1a\\u5458\\uff0c\\u60a8\\u53ef\\u4ee5\\u989d\\u5916\\u83b7\\u5f97\\u4e00\\u6b21\\u53c2\\u4e0e\\u7b54\\u9898\\u673a\\u4f1a\\uff0c\\u60a8\\u53ef\\u4ee5\\u5728\\u9996\\u6b21\\u7b54\\u9898\\u7ed3\\u675f\\u540e\\u7ee7\\u7eed\\u7b54\\u9898\\u3002\\u5982\\u679c\\u60a8\\u4e24\\u6b21\\u53c2\\u4e0e\\u7b54\\u9898\\u90fd\\u56de\\u7b54\\u6b63\\u786e\\uff0c\\u53ef\\u4ee5\\u4eab\\u53d7\\u53cc\\u4efd\\u7684\\u73b0\\u91d1\\u5956\\u52b1\\u3002 \\u5f53\\u671f\\u7b54\\u9898\\u6d3b\\u52a8\\u51c6\\u5907\\u65f6\\u95f4\\u5185\\u9080\\u8bf7\\u4e00\\u4f4d\\u597d\\u53cb\\u9996\\u6b21\\u53c2\\u4e0e\\u6d3b\\u52a8\\uff0c\\u60a8\\u53ef\\u83b7\\u5f97\\u989d\\u5916\\u4e00\\u6b21\\u7b54\\u9898\\u673a\\u4f1a\\u3002\\u989d\\u5916\\u7b54\\u9898\\u673a\\u4f1a\\u53ef\\u4ee5\\u5728\\u7b54\\u9898\\u6d3b\\u52a8\\u4e2d\\u83b7\\u5f97\\u4e00\\u6b21\\u7ee7\\u7eed\\u53c2\\u4e0e\\u7b54\\u9898\\u7684\\u673a\\u4f1a\\u3002\\u5982\\u679c\\u60a8\\u4e24\\u6b21\\u53c2\\u4e0e\\u7b54\\u9898\\u90fd\\u56de\\u7b54\\u6b63\\u786e\\uff0c\\u53ef\\u4ee5\\u4eab\\u53d7\\u53cc\\u4efd\\u7684\\u73b0\\u91d1\\u5956\\u52b1\\u3002 \\u7b54\\u5bf915\\u9898\\u74dc\\u5206\\u5956\\u91d1,\\u5982\\u679c\\u8d85\\u8fc7\\u4e00\\u4e2a\\u4eba\\u7b54\\u5bf9\\u6240\\u6709\\u9898\\u76ee\\uff0c\\u5956\\u91d1\\u7531\\u6240\\u6709\\u83b7\\u80dc\\u8005\\u5e73\\u5206\\u3002 2\\u3001\\u6d3b\\u52a8\\u65f6\\u95f4:2020\\u5e741\\u67081\\u65e5- 2020\\u5e7412\\u670830\\u65e5(\\u5177\\u4f53\\u6d3b\\u52a8\\u65f6\\u95f4\\u8be6\\u89c1\\u6d3b\\u52a8\\u9875\\u9762)\\u3002\\u6bcf\\u671f\\u5f00\\u542f\\u7b54\\u9898\\u6d3b\\u52a8\\u540e\\u9650\\u65f630\\u5206\\u949f\\u5185\\u53c2\\u4e0e\\uff0c\\u8d85\\u8fc7\\u65f6\\u95f4\\u672a\\u53c2\\u4e0e\\u3001\\u672a\\u5b8c\\u6210\\u7b54\\u9898\\u8005\\u6309\\u7167\\u7b54\\u9898\\u9519\\u8bef\\u8ba1\\u7b97\\u3002 3\\u3001\\u6d3b\\u52a8\\u5bf9\\u8c61:\\u4e50\\u95fb\\u5feb\\u8baf\\u6240\\u6709\\u6ce8\\u518c\\u4f1a\\u5458\\u3002 4\\u3001\\u7ed3\\u679c\\u516c\\u5e03:\\u6bcf\\u671f\\u7b54\\u9898\\u6d3b\\u52a8\\u6210\\u529f\\u4eba\\u6570\\u4ee5\\u53ca\\u6bcf\\u4eba\\u74dc\\u5206\\u7684\\u91d1\\u989d\\u5c06\\u5728\\u5f53\\u671f\\u7b54\\u9898\\u65f6\\u95f4\\u7ed3\\u675f\\u540e\\uff0c\\u5728\\u7b54\\u9898\\u7ed3\\u675f\\u9875\\u9762\\u7acb\\u5373\\u516c\\u5e03\\u3002 5\\u3001\\u4efb\\u4f55\\u7591\\u95ee\\u53ef\\u4ee5\\u901a\\u8fc7\\u201c\\u5728\\u7ebf\\u5ba2\\u670d\\u201d\\u8fdb\\u884c\\u54a8\\u8be2\\u3002\",\"begin_time\":\"1577806813\",\"stop_min\":\"30\",\"add_num\":\"20\",\"add_ok_num\":\"10\",\"anw_num\":\"1\",\"anw_vip_num\":2,\"anw_sum\":\"12140\",\"anw_ok_sum\":\"571\",\"vip_key\":\"7\",\"no\":\"85dfb412e0a96c7c2d80c6ae42b9fccb\"}',1577807270,1565707027,0),(30,'contract_dq_new','{\"end_time\":\"\",\"contract_image2\":\"\\/upload\\/2019\\/10\\/12\\/20191012133359_fb1866ac.jpeg\",\"contract_image1\":\"\\/upload\\/2019\\/10\\/12\\/20191012133351_ebafce68.jpeg\",\"contract_content\":\"<p>\\u4e8c\\u3001\\u7406\\u8d22\\u671f\\u672a\\u6ee1\\uff0c\\u7532\\u65b9\\u4e0d\\u5f97\\u64c5\\u81ea\\u7ec8\\u6b62\\u672c\\u534f\\u8bae\\uff0c\\u5426\\u5219\\uff0c\\u4e59\\u65b9\\u5c06\\u53d6\\u6d88\\u4e3a\\u7532\\u65b9\\u7684\\u7406\\u8d22\\u670d\\u52a1\\uff0c\\u7532\\u65b9\\u4e0d\\u4eab\\u53d7\\u4efb\\u4f55\\u7406\\u8d22\\u6536\\u76ca\\uff0c\\u7532\\u65b9\\u6295\\u8d44\\u65f6\\u5fc5\\u987b\\u770b\\u6e05\\u695a\\u6295\\u8d44\\u9879\\u76ee\\u7684\\u4e00\\u5207\\u4e8b\\u5b9c\\uff0c\\u6309\\u7167\\u516c\\u53f8\\u8981\\u6c42\\u8fdb\\u884c\\u6295\\u8d44\\uff0c\\u5982\\u6709\\u8fdd\\u53cd\\u89c4\\u5b9a\\uff0c\\u7532\\u65b9\\u5e76\\u627f\\u62c5\\u7531\\u6b64\\u6240\\u5f15\\u8d77\\u7684\\u4e00\\u5207\\u635f\\u5931\\u3002<\\/p>  <p>\\u4e09\\u3001\\u7406\\u8d22\\u65b9\\u5f0f\\u4ee5\\u7f51\\u7edc\\u6295\\u8d44\\u5e73\\u53f0\\u7684\\u5f62\\u5f0f\\u8fdb\\u884c\\u5408\\u4f5c\\u3002\\u7406\\u8d22\\u91d1\\u7531\\u7532\\u65b9\\u5e10\\u6237\\u5212\\u8f6c\\u5230\\u4e59\\u65b9\\u7684\\u7efc\\u5408\\u7406\\u8d22\\u5e10\\u6237\\u4e0a\\u8fdb\\u884c\\u5177\\u4f53\\u7684\\u7406\\u8d22\\u64cd\\u4f5c\\uff0c\\u7531\\u4e8e\\u7532\\u65b9\\u5168\\u6743\\u59d4\\u6258\\u4e59\\u65b9\\u7406\\u8d22\\uff0c\\u56e0\\u6b64\\u5728\\u80a1\\u6743\\uff0c\\u623f\\u5730\\u4ea7\\u571f\\u5730\\uff0c\\u77ff\\u6743\\uff0c\\u65b0\\u80fd\\u6e90\\uff0c\\u77f3\\u6cb9\\uff0c\\u7b49\\u5176\\u5b83\\u5b9e\\u4e1a\\u7684\\u6295\\u8d44\\u98ce\\u9669\\u7531\\u4e59\\u65b9\\u627f\\u62c5\\uff0c\\u4e59\\u65b9\\u9996\\u5148\\u8981\\u8003\\u8651\\u8d44\\u91d1\\u7684\\u5b89\\u5168\\u6027\\uff0c\\u7136\\u540e\\u624d\\u8003\\u8651\\u8d44\\u91d1\\u7684\\u6536\\u76ca\\u3002\\u7532\\u65b9\\u4e0d\\u5f97\\u4ee5\\u4efb\\u4f55\\u5f62\\u5f0f\\u5e72\\u9884\\u4e59\\u65b9\\u7684\\u7406\\u8d22\\u64cd\\u4f5c\\u3002\\u6536\\u76ca\\u662f\\u6bcf\\u5929\\u53d1\\u653e\\u5230\\u7532\\u65b9\\u8d26\\u6237\\uff0c\\u5f85\\u7406\\u8d22\\u6295\\u8d44\\u5468\\u671f\\u5230\\u65e5\\u6b62\\uff0c\\u4e59\\u65b9\\u5e94\\u5c06\\u7532\\u65b9\\u4e4b\\u7406\\u8d22\\u672c\\u91d1\\u5212\\u5165\\u5176\\u5728\\u4e59\\u65b9\\u5f00\\u7acb\\u7684\\u5b58\\u6b3e\\u5e10\\u6237\\u4e0a\\u3002<\\/p><p>\\u56db\\u3001\\u4e59\\u65b9\\u5bf9\\u7532\\u65b9\\u6295\\u8d44\\u8d44\\u91d1\\u8d1f\\u6709\\u63a7\\u5236\\u98ce\\u9669\\u7684\\u8d23\\u4efb\\uff0c\\u5fc5\\u987b\\u52e4\\u52c9\\u5c3d\\u8d23\\u3002\\u5982\\u679c\\u6295\\u8d44\\u6709\\u4e8f\\u635f\\u60c5\\u51b5\\uff0c\\u5219\\u65e0\\u8bba\\u4e8f\\u635f\\u5927\\u5c0f\\u7531\\u4e59\\u65b9\\u627f\\u62c5\\u5168\\u90e8\\u635f\\u5931\\uff0c\\u6309\\u5408\\u540c\\u627f\\u8bfa\\u4ed8\\u6b3e\\u7ed9\\u7532\\u65b9\\u3002\\u5982\\u679c\\u4e59\\u65b9\\u51fa\\u73b0\\u8fdd\\u7ea6\\u5c06\\u7531\\u62c5\\u4fdd\\u65b9\\u4e19\\u65b9\\u5c65\\u884c\\u627f\\u8bfa\\u4ed8\\u6b3e\\u7ed9\\u7532\\u65b9\\u3002<\\/p>  <p>\\u4e94\\u3001\\u4fdd\\u5bc6\\u4e49\\u52a1 \\u7532\\u4e59\\u53cc\\u65b9\\u5bf9\\u5176\\u901a\\u8fc7\\u63a5\\u89e6\\u548c\\u901a\\u8fc7\\u5176\\u4ed6\\u6e20\\u9053\\u5f97\\u77e5\\u7684\\u6709\\u5173\\u5404\\u65b9\\u7684\\u5546\\u4e1a\\u673a\\u5bc6\\u7b49\\u4e25\\u683c\\u4fdd\\u5bc6\\uff0c\\u5bf9\\u6240\\u6709\\u8d44\\u6599\\u4e25\\u683c\\u4fdd\\u5bc6\\uff0c\\u4e0d\\u5f97\\u5411\\u4efb\\u4f55\\u5176\\u4ed6\\u4eba\\u5458\\u53ca\\u673a\\u6784\\u900f\\u9732\\u3002\\u4e2a\\u4eba\\u7684\\u4fe1\\u606f\\u3002<\\/p>  <p>\\u516d\\u3001\\u5408\\u540c\\u751f\\u6548<\\/p>  <p>1\\u3001\\u672c\\u534f\\u8bae\\u7ecf\\u6295\\u8d44\\u4eba\\u901a\\u8fc7\\u6295\\u8d44\\u5e73\\u53f0\\u70b9\\u51fb\\u786e\\u8ba4\\u6295\\u8d44\\u540e\\u81ea\\u52a8\\u751f\\u6210\\u5e76\\u7b7e\\u8ba2\\uff0c\\u672c\\u534f\\u8bae\\u81ea\\u751f\\u6210\\u65f6\\u751f\\u6548\\u3002<\\/p>  <p>2\\u3001\\u672c\\u534f\\u8bae\\u5c65\\u884c\\u671f\\u95f4\\uff0c\\u5404\\u65b9\\u5982\\u53d1\\u751f\\u4e89\\u8bae\\u6216\\u8005\\u7ea0\\u7eb7\\uff0c\\u5e94\\u53cb\\u597d\\u534f\\u5546\\u89e3\\u51b3\\uff1b\\u5982\\u534f\\u5546\\u4e0d\\u6210\\uff0c\\u4efb\\u4f55\\u4e00\\u65b9\\u6709\\u6743\\u5411\\u4e59\\u65b9\\u6240\\u5728\\u5730\\u4eba\\u6c11\\u6cd5\\u9662\\u8d77\\u8bc9\\u3002<\\/p> <p>3\\u3001\\u672c\\u534f\\u8bae\\u91c7\\u7528\\u7535\\u5b50\\u6587\\u672c\\u5f62\\u5f0f\\u5236\\u6210\\uff0c\\u5404\\u65b9\\u5747\\u8ba4\\u53ef\\u8be5\\u5f62\\u5f0f\\u7684\\u6cd5\\u5f8b\\u6548\\u529b\\u3002<\\/p>  <p>\\u4e03\\u3001\\u7406\\u8d22\\u534f\\u8bae\\u4e00\\u5f0f\\u4e09\\u4efd\\uff0c\\u4e59\\u65b9\\u4e00\\u4efd\\uff0c\\u7532\\u65b9\\u4e00\\u4efd\\uff0c\\u4e19\\u65b9\\u4e00\\u4efd\\uff0c\\u5177\\u6709\\u540c\\u7b49\\u6cd5\\u5f8b\\u6548\\u529b\\u3002<\\/p>\",\"name2\":\"\\u5927\\u8fde\\u888b\\u9f20\\u7f51\\u7edc\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"name3\":\"\\u4e2d\\u56fd\\u592a\\u5e73\\u6d0b\\u4fdd\\u9669\\uff08\\u96c6\\u56e2\\uff09\\u80a1\\u4efd\\u6709\\u9650\\u516c\\u53f8\",\"title\":\"\\u5927\\u8fde\\u888b\\u9f20111\"}',1578065323,1565707027,0),(31,'jz','{\"image\":\"\\/upload\\/2022\\/04\\/04\\/20220404140744_0a7310aa.jpg\",\"bgimage\":\"\\/upload\\/2022\\/04\\/04\\/20220404141210_58ee0e47.jpg\",\"review\":1}',1649052731,1565707027,0),(32,'tree','{\"tree\":{\"tree1\":{\"name\":\"\\u9636\\u6bb51\",\"value\":\"1\"},\"tree2\":{\"name\":\"\\u9636\\u6bb52\",\"value\":\"2\"},\"tree3\":{\"name\":\"\\u9636\\u6bb53\",\"value\":\"3\"},\"tree4\":{\"name\":\"\\u9636\\u6bb54\",\"value\":\"4\"},\"tree5\":{\"name\":\"\\u9636\\u6bb55\",\"value\":\"5\"},\"tree6\":{\"name\":\"\\u9636\\u6bb56\",\"value\":\"6\"}},\"num\":\"10\",\"login_water\":\"1\",\"login_manure\":\"0\",\"tree_rule\":\"{\\\"figure\\\":\\\"\\\",\\\"note\\\":\\\"1.\\u6bcf\\u65e5\\u53ef\\u6d47\\u6c34\\u4e24\\u6b21\\uff0c\\u53c2\\u4e0e\\u6e38\\u620f\\u53ef\\u589e\\u52a0\\u6b21\\u6570\\u3002\\\\n2.\\u6bcf\\u65e5\\u53ef\\u65bd\\u80a51\\u6b21\\uff0c\\u53c2\\u4e0e\\u6e38\\u620f\\u53ef\\u589e\\u52a0\\u6b21\\u6570\\u3002\\\\n3.\\u82f9\\u679c\\u6210\\u719f\\u4e4b\\u540e\\u65b9\\u53ef\\u91c7\\u6458\\u3002\\\"}\",\"notice\":\"\\u7528\\u6237187****3336\\u5df2\\u6210\\u529f\\u9886\\u53d6\\u6c34\\u679c\\uff01\\n\\u7528\\u6237135****8597\\u5df2\\u6210\\u529f\\u9886\\u53d6\\u6c34\\u679c\\uff01\\n\\u7528\\u6237178****5788\\u5df2\\u6210\\u529f\\u9886\\u53d6\\u6c34\\u679c\\uff01\\n\\u7528\\u6237188****8745\\u5df2\\u6210\\u529f\\u9886\\u53d6\\u6c34\\u679c\\uff01\\n\\u7528\\u6237186****8769\\u5df2\\u6210\\u529f\\u9886\\u53d6\\u6c34\\u679c\\uff01\\n\"}',1588932751,1565707027,0),(33,'sms_cl','{\"username1\":\"0ce686e2d9feaa10afb1afc1b4db3a46\",\"password1\":\"0ce686e2d9feaa10afb1afc1b4db3a46\",\"username2\":\"123\",\"password2\":\"123\",\"register\":\"Your verification code is:{$var}.\",\"forgetpwd\":\"Your verification code is\\uff1a{$var}\",\"item_apr\":\"\",\"cost_ok\":\"1\",\"cost_no\":\"2\",\"invest_ok\":\"3\",\"invest_no\":\"4\",\"item_apply\":\"5\"}',1651212351,1565707027,0),(34,'exchange','{\"content\":\"{\\\"title\\\":\\\"\\u6d4b\\u8bd5\\u5730\\u5740123456\\\"}\",\"rules\":\"{\\\"content\\\":\\\"1.\\u5151\\u6362\\u4ee5\\u7bb1\\u4e3a\\u5355\\u4f4d,\\u4f8b:[10\\u679c\\u5e01\\u5151\\u63621\\u7bb1\\u6c34\\u679c]\\\\n2.\\u79cd\\u690d\\u679c\\u6811\\u4ee5\\u83b7\\u5f97\\u679c\\u5e01\\u5151\\u6362\\u60a8\\u5fc3\\u4eea\\u7684\\u6c34\\u679c\\\\n3.\\u6536\\u8d27\\u5730\\u5740\\u586b\\u5199\\u5b8c\\u6210\\u9700\\u8981\\u70b9\\u51fb\\u786e\\u5b9a\\u4e3a\\u9ed8\\u8ba4\\u5730\\u5740\\\\n\\u624d\\u53ef\\u751f\\u6548.\\u672a\\u9ed8\\u8ba4\\u6536\\u8d27\\u5730\\u5740\\u65e0\\u6cd5\\u8fdb\\u884c\\u6d3e\\u9001\\\"}\"}',1588909710,0,0),(35,'public_notice','{\"notice\":\"\\u6d4b\\u8bd5\\u516c\\u544a\\uff0c\\u6d4b\\u8bd5\\u516c\\u544a123123456\"}',1587743440,0,0),(36,'finance_icon','[]',1587740770,0,0),(37,'sign_reward','{\"reward_set\":\"{\\\"3\\\":{\\\"type\\\":\\\"money\\\",\\\"value\\\":\\\"3\\\"},\\\"7\\\":{\\\"type\\\":\\\"money\\\",\\\"value\\\":\\\"7\\\"},\\\"15\\\":{\\\"type\\\":\\\"money\\\",\\\"value\\\":\\\"40\\\"},\\\"30\\\":{\\\"type\\\":\\\"money\\\",\\\"value\\\":\\\"10\\\"}}\",\"sign_rule\":\"1.\\u6bcf\\u65e5\\u767b\\u5165\\u7b7e\\u5230\\u53ef\\u83b7\\u5f973\\u5143\\u5956\\u52b1\\uff1b2.\\u6bcf\\u7b7e\\u5230\\u8fbe\\u4e00\\u5b9a\\u5929\\u6570\\u5373\\u53ef\\u83b7\\u5f97\\u76f8\\u5e94\\u7684\\u989d\\u5916\\u5956\\u52b1\\uff1b3.\\u6bcf\\u6708\\u76841\\u53f7\\u5c06\\u91cd\\u7f6e\\u5929\\u6570\\uff01\",\"sign_bg\":\"\\/upload\\/2022\\/03\\/30\\/20220330181749_89c48fc2.jpg\"}',1651053856,1588397837,0),(38,'white_list_manage','{\"white_list\":\"[0]\",\"security_code\":\"133233\"}',1620225537,0,0),(39,'sms_sf','{\"username\":\"N9596121\",\"passwd\":\"dr9yuS6x7\",\"msg_temp\":\"亲!登陆验证码:%s,5分钟之内有效\"}',0,0,0),(40,'clo','{\"apr\":\"10\",\"min_money\":\"150\",\"auto_add_num\":\"1,10\",\"auto_add_user_money\":\"1,10\",\"dk_times\":[\"2020-08-01T21:00:00.000Z\",\"2020-08-03T00:00:00.000Z\"],\"is_disable\":\"N\",\"min_dk_time\":1596315600,\"max_dk_time\":1596412800}',1618719041,0,0),(41,'pack','{\"auto_add_num\":\"990,1000\",\"auto_add_user_money\":\"950,1000\",\"is_disable\":\"N\",\"lt_uid\":\"999\",\"not_apr\":\"0\",\"set_task_apr1\":\"1\",\"set_task_apr2\":\"2\",\"set_task_apr3\":\"3\",\"set_task_apr4\":\"4\",\"set_task_money1\":\"20\",\"set_task_money2\":\"30\",\"set_task_money3\":\"40\",\"set_task_money4\":\"50\",\"set_task_step1\":\"1000\",\"set_task_step2\":\"2000\",\"set_task_step3\":\"3000\",\"set_task_step4\":\"5000\"}',1618727932,0,0),(42,'public','{\"task_notice\":1312332,\"bank_account\":null}',1620225526,1618749582,0);
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_image`
--

DROP TABLE IF EXISTS `sys_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_image` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `thumb` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'banner',
  `status` char(1) NOT NULL DEFAULT 'Y',
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_image`
--

LOCK TABLES `sys_image` WRITE;
/*!40000 ALTER TABLE `sys_image` DISABLE KEYS */;
INSERT INTO `sys_image` VALUES (1,'注册','','/upload/2021/04/17/20210417221606_08b5a3f3.png','','banner','Y',0,1619846546,1586659914,1),(2,'银行汇款','/art/45c48c','/upload/2020/05/07/20200507225441_120a6d22.png','','banner','Y',0,1596856580,1586659926,1),(3,'邀请好友','/art/70efdf','/upload/2020/04/12/20200412222715_367f7c7f.jpg','','banner','Y',0,1586747550,1586659943,1),(4,'安全保障','/art/eccbc8','/upload/2020/05/07/20200507225456_714b602b.png','','banner','Y',0,1596856579,1586659956,1),(5,'安全网站','/','/upload/2020/04/12/20200412105730_573b33f1.png','','banner','Y',0,1586660263,1586660252,1),(6,'安全网站','/','/upload/2020/04/12/20200412105755_ab62ae6b.png','','banner','Y',0,1586660650,1586660277,1),(7,'安全网站','/','/upload/2020/04/12/20200412105941_e9247e9f.png','','banner','Y',0,1586660649,1586660389,1),(8,'111111111','/','','','banner','Y',0,1586660751,1586660416,1),(9,'安全网站','/','/upload/2020/04/12/20200412223153_161d8856.jpg','','banner','Y',8,1586702153,1586701915,1),(10,'安全保障','/','/upload/2020/04/12/20200412223304_a222e131.jpg','','banner','Y',0,1586702159,1586701997,1),(11,'安全保障','/','/upload/2020/04/12/20200412223322_8a6a0157.jpg','','banner','Y',8,1586702171,1586702010,1),(12,'12312','/','/upload/2021/04/17/20210417221615_e7a00d68.png','','banner','Y',0,1619846547,1596861850,1),(13,'333','/','/upload/2021/04/17/20210417221624_a7d92c54.png','','banner','Y',0,1619846548,1596861865,1),(14,'哈哈','baidu.com','/upload/2021/04/17/20210417221633_835c895a.png','','banner','Y',0,1619846549,1596868334,1),(15,'tt1','/','/upload/2021/04/17/20210417221643_483638fa.png','','banner','Y',0,1619846549,1597330709,1),(16,'123123','/','/upload/2021/04/25/20210425133401_72dbdb3c.png','','banner','Y',0,1619846550,1619328842,1),(17,'1111','/','','','banner','Y',1,1619846545,1619420459,1),(18,'44444','/','','','banner','Y',0,1619442553,1619420569,1),(19,'12','/','/upload/2021/04/26/20210426203318_866d6c74.jpg','','banner','Y',0,1619442552,1619440401,1),(20,'12333','/user','/upload/2021/04/26/20210426210858_ba53fd4b.png','','links','Y',0,1619846882,1619442542,1),(21,'333','/','','','banner','Y',0,1619846551,1619442560,1),(22,NULL,'http://47.243.61.255/dist/index.html#/art/17e621','/upload/2022/03/29/20220329134732_3d9d5025.jpg','','banner','Y',0,1648532853,1619846590,0),(23,NULL,'','/upload/2021/05/04/20210504145057_d88de86d.png','','banner','Y',0,1620112931,1619846598,1),(24,NULL,'/','/upload/2022/03/29/20220329134747_3b3fae1c.jpg','','banner','Y',0,1648532868,1619846607,0),(25,NULL,'/','/upload/2022/03/29/20220329134803_e06f43fd.jpg','','banner','Y',0,1648532884,1619846614,0),(26,NULL,'/','/upload/2021/05/01/20210501132830_3754123a.png','','links','Y',0,1619846924,1619846913,1),(27,'中国人保承保','/','/upload/2021/05/01/20210501132848_face9d36.jpg','','links','Y',0,1619929370,1619846929,1),(28,'国家电网','/','/upload/2021/05/03/20210503213711_0ff8f61a.png','','links','Y',3,1620050224,1619846936,1),(29,'区块链','/','/upload/2021/05/03/20210503212925_d5019b3c.png','','links','Y',1,1620050227,1619846945,1),(30,'CPIC','/','/upload/2021/05/03/20210503215630_716d9143.png','','links','Y',88,1620050223,1619929393,1),(31,'注册','/','/upload/2021/05/03/20210503152717_ea9105dd.png','','banner','Y',99,1620026902,1620026838,1),(32,'电网','/','/upload/2021/05/03/20210503215730_aa3b0b09.png','','links','Y',0,1648453349,1620050252,1),(33,'cpic','/','/upload/2021/05/03/20210503215744_b7c9d185.png','','links','Y',0,1648453349,1620050266,1),(34,'区块链','/','/upload/2021/05/03/20210503215754_af9dca90.png','','links','Y',0,1648453350,1620050275,1),(35,NULL,'/',NULL,'','banner','Y',0,1620112883,1620112845,1),(36,'太平洋','/','/upload/2022/03/29/20220329134817_0b15b06f.jpg','','banner','Y',0,1648532898,1620112944,0);
/*!40000 ALTER TABLE `sys_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_ip_data`
--

DROP TABLE IF EXISTS `sys_ip_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_ip_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip_begin` varchar(16) NOT NULL COMMENT '开始ip',
  `ip_end` varchar(16) NOT NULL COMMENT '结束ip',
  `r_min` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '开始区间',
  `r_max` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '结束区间',
  `country` varchar(20) NOT NULL DEFAULT '' COMMENT '国家',
  `province` varchar(20) NOT NULL DEFAULT '' COMMENT '省',
  `city` varchar(255) NOT NULL DEFAULT '' COMMENT '市',
  `type` varchar(20) NOT NULL DEFAULT '' COMMENT '运营商',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `r_min` (`r_min`) USING BTREE,
  KEY `r_max` (`r_max`) USING BTREE,
  KEY `province` (`province`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Ip地址解析';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_ip_data`
--

LOCK TABLES `sys_ip_data` WRITE;
/*!40000 ALTER TABLE `sys_ip_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_ip_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0',
  `uptime` int(10) NOT NULL DEFAULT '0',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `is_delete` tinyint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,'admin','e10adc3949ba59abbe56e057f20f883e',1651457391,1651457391,1564385319,0);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `t_uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '推荐人UID',
  `team_id` tinyint(1) DEFAULT '0',
  `channel` varchar(10) NOT NULL DEFAULT 'domain',
  `nick_name` varchar(20) NOT NULL DEFAULT '',
  `avatar` varchar(300) DEFAULT NULL COMMENT '头像',
  `name` varchar(20) NOT NULL DEFAULT '',
  `idcard` varchar(20) NOT NULL DEFAULT '',
  `sex` varchar(1) NOT NULL DEFAULT '',
  `birth_day` varchar(12) NOT NULL DEFAULT '',
  `area` varchar(100) NOT NULL DEFAULT '',
  `mobile` varchar(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `pay_pwd` varchar(32) NOT NULL DEFAULT '',
  `salt` varchar(10) NOT NULL DEFAULT '',
  `is_auth` char(1) NOT NULL DEFAULT 'N' COMMENT '是否认证',
  `check_in_num` int(10) unsigned NOT NULL DEFAULT '0',
  `money` decimal(15,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '账户余额',
  `prize_num` int(10) unsigned NOT NULL DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `anwser_num` int(10) unsigned NOT NULL DEFAULT '0',
  `yeb_money` decimal(15,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '余额宝余额',
  `gold` decimal(15,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '金币',
  `credit` decimal(15,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '积分',
  `exchange_credit` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '兑换积分',
  `fruit` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `water` int(10) unsigned NOT NULL DEFAULT '0',
  `manure` int(10) unsigned NOT NULL DEFAULT '0',
  `cost_credit` decimal(15,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '总消费积分',
  `cost_gold` decimal(15,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '总消费金币',
  `cost_money` decimal(15,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '提现总额',
  `invest_money` decimal(15,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '总充值金额',
  `invest_credit` decimal(15,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '总充值积分',
  `invest_gold` decimal(15,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '总充值金币',
  `score` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '成长值',
  `status` char(1) NOT NULL DEFAULT 'Y' COMMENT 'N:禁用|Y:正常|S:冻结',
  `reg_ip` varchar(20) DEFAULT NULL COMMENT '注册ip',
  `reg_addr` varchar(200) DEFAULT NULL COMMENT '注册地点',
  `last_login_ip` varchar(20) DEFAULT NULL,
  `last_login_addr` varchar(200) DEFAULT NULL,
  `dev_no` varchar(100) DEFAULT '',
  `dev_type` varchar(20) DEFAULT '',
  `notice_id` int(10) unsigned NOT NULL DEFAULT '0',
  `freeze_login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '冻结到期时间',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `clear_text` varchar(32) DEFAULT NULL,
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `mobile` (`mobile`) USING BTREE,
  KEY `t_uid` (`t_uid`),
  KEY `name` (`name`),
  KEY `channel` (`channel`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,0,0,'domain','UHO8nLGv_26',NULL,'','','','','','13376250246','13376250246','ff4639c9743831c5b499cc07f9e2eaab','','IFU^cRy2C%','N',0,30.00,0,NULL,0,0.00,0.00,0.00,0.00,0.00,0,0,0.00,0.00,0.00,0.00,0.00,0.00,0,'Y','47.102.101.82','中国 SH 上海 Addresses CNNIC','47.102.101.82','中国 SH 上海 Addresses CNNIC','','ios',0,0,1651499306,'111111',1651499342,1651499306,0),(2,0,5,'domain','g0E402kc_39',NULL,'','','','','','963852','963852','f5361dd1b7bc3f28cb05d65d77d56d26','','vY12mXS&$p','N',0,495030.00,0,NULL,0,0.00,0.00,0.00,0.00,0.00,0,0,0.00,0.00,0.00,0.00,0.00,0.00,0,'Y','47.102.101.82','中国 SH 上海 Addresses CNNIC','47.102.101.82','中国 SH 上海 Addresses CNNIC','','ios',0,0,1651505208,'123123',1651542305,1651504659,0),(3,2,4,'domain','WciBXs7s_32',NULL,'124','124','','','','852741','852741','02f0e6d2c7d9887f68e7e9bafb37fe49','02f0e6d2c7d9887f68e7e9bafb37fe49','Q1(wWbnotN','Y',0,4999070030.00,0,NULL,0,0.00,0.00,10000.00,0.00,0.00,0,0,0.00,0.00,0.00,0.00,0.00,0.00,0,'Y','47.102.101.82','中国 SH 上海 Addresses CNNIC','47.102.101.82','中国 SH 上海 Addresses CNNIC','','ios',0,0,1651506276,'123123',1651510960,1651504712,0),(4,2,0,'domain','vO1zU5AG_15',NULL,'125','125','','','','57848','57848','515ffdf01bd581c15aafe809e6ff9aab','515ffdf01bd581c15aafe809e6ff9aab','nTFgYDz0Rb','Y',0,4999000030.00,0,NULL,0,0.00,0.00,10000.00,0.00,0.00,0,0,0.00,0.00,0.00,0.00,0.00,0.00,0,'Y','47.102.101.82','中国 SH 上海 Addresses CNNIC','47.102.101.82','中国 SH 上海 Addresses CNNIC','','ios',0,0,1651505292,'123123',1651505342,1651505115,0),(5,2,0,'domain','hCs2UUhN_38',NULL,'126','126','','','','74121','74121','abefdc66351643cd3c59a9dde555a57c','abefdc66351643cd3c59a9dde555a57c','R+hLBdM9GA','Y',0,4999000030.00,0,NULL,0,0.00,0.00,10000.00,0.00,0.00,0,0,0.00,0.00,0.00,0.00,0.00,0.00,0,'Y','47.102.101.82','中国 SH 上海 Addresses CNNIC','47.102.101.82','中国 SH 上海 Addresses CNNIC','','ios',0,0,1651505378,'123123',1651505582,1651505378,0),(6,2,0,'domain','WXOsDm8B_41',NULL,'127','127','','','','96325','96325','35abe1500074ddeefbf888f22da33c8b','35abe1500074ddeefbf888f22da33c8b','1(3LwzvD3r','Y',0,49999000030.00,0,NULL,0,0.00,0.00,10000.00,0.00,0.00,0,0,0.00,0.00,0.00,0.00,0.00,0.00,0,'Y','47.102.101.82','中国 SH 上海 Addresses CNNIC','47.102.101.82','中国 SH 上海 Addresses CNNIC','','ios',0,0,1651505621,'123123',1651505821,1651505621,0),(7,2,0,'domain','4qtZRXSL_28',NULL,'128','128','','','','52142','52142','cb25c79168b520c8082ff8127fe07c6d','cb25c79168b520c8082ff8127fe07c6d','yQfejgmv)8','Y',0,49999000030.00,0,NULL,0,0.00,0.00,10000.00,0.00,0.00,0,0,0.00,0.00,0.00,0.00,0.00,0.00,0,'Y','47.102.101.82','中国 SH 上海 Addresses CNNIC','47.102.101.82','中国 SH 上海 Addresses CNNIC','','ios',0,0,1651505848,'123123',1651505954,1651505848,0),(8,3,1,'domain','jbhld0XE_23',NULL,'131','131','','','','12321','12321','9227593893aab7cdb653ed4e1fbe38a4','9227593893aab7cdb653ed4e1fbe38a4','kiNhwGaAy0','Y',0,4998510030.00,0,NULL,0,0.00,0.00,15000.00,0.00,0.00,0,0,0.00,0.00,0.00,0.00,0.00,0.00,0,'Y','47.102.101.82','中国 SH 上海 Addresses CNNIC','47.102.101.82','中国 SH 上海 Addresses CNNIC','','ios',0,0,1651509671,'123123',1651510960,1651506623,0),(9,8,1,'domain','QKWhMyma_56',NULL,'132','132','','','','5214','5214','6a1a807db490c705a1f3985c5f587df5','6a1a807db490c705a1f3985c5f587df5','l0pbdFIueD','Y',0,4999015030.00,0,NULL,0,0.00,0.00,10000.00,0.00,0.00,0,0,0.00,0.00,0.00,0.00,0.00,0.00,0,'Y','47.102.101.82','中国 SH 上海 Addresses CNNIC','47.102.101.82','中国 SH 上海 Addresses CNNIC','','ios',0,0,1651509981,'123123',1651510960,1651506776,0),(10,9,1,'domain','ANcLIpQj_43',NULL,'133','133','','','','3265','3265','698bfaca1adf323c4c5286cb5bc7ceb5','698bfaca1adf323c4c5286cb5bc7ceb5','5VpN_YPXpv','Y',0,4998515030.00,0,NULL,0,0.00,0.00,15000.00,0.00,0.00,0,0,0.00,0.00,0.00,0.00,0.00,0.00,0,'Y','47.102.101.82','中国 SH 上海 Addresses CNNIC','47.102.101.82','中国 SH 上海 Addresses CNNIC','','ios',0,0,1651510585,'123123',1651510960,1651507003,0),(11,10,0,'domain','UnGfDPxf_04',NULL,'134','134','','','','6254','6254','a4260345e76051ef5d4ec2465d043fb3','a4260345e76051ef5d4ec2465d043fb3','esrmS}gRFr','Y',0,4998500030.00,0,NULL,0,0.00,0.00,15000.00,0.00,0.00,0,0,0.00,0.00,0.00,0.00,0.00,0.00,0,'Y','47.102.101.82','中国 SH 上海 Addresses CNNIC','47.102.101.82','中国 SH 上海 Addresses CNNIC','','ios',0,0,1651510947,'123123',1651510982,1651507384,0),(12,3,0,'domain','TLMbl1FG_47',NULL,'135','135','','','','46461','46461','80fb0674462d4be752cfce58dd335ddb','80fb0674462d4be752cfce58dd335ddb','U59g{G0GgF','Y',0,49999000030.00,0,NULL,0,0.00,0.00,10000.00,0.00,0.00,0,0,0.00,0.00,0.00,0.00,0.00,0.00,0,'Y','47.102.101.82','中国 SH 上海 Addresses CNNIC','47.102.101.82','中国 SH 上海 Addresses CNNIC','','ios',0,0,1651508327,'123123',1651509182,1651508327,0),(13,3,0,'domain','ftIPTJh9_01',NULL,'141','141','','','','7411','7411','e24927ddca7f0305713f5fcea908304f','e24927ddca7f0305713f5fcea908304f',')4_cnqKDA1','Y',0,4999500030.00,0,NULL,0,0.00,0.00,5000.00,0.00,0.00,0,0,0.00,0.00,0.00,0.00,0.00,0.00,0,'Y','47.102.101.82','中国 SH 上海 Addresses CNNIC','47.102.101.82','中国 SH 上海 Addresses CNNIC','','ios',0,0,1651510441,'123123',1651510561,1651510441,0),(14,3,0,'domain','3hN16zgt_59',NULL,'151','151','','','','5677','5677','a4007b1ac531fb07ab1d6a56d27a6664','a4007b1ac531fb07ab1d6a56d27a6664','J1^%08EfbC','Y',0,49999500030.00,0,NULL,0,0.00,0.00,5000.00,0.00,0.00,0,0,0.00,0.00,0.00,0.00,0.00,0.00,0,'Y','47.102.101.82','中国 SH 上海 Addresses CNNIC','47.102.101.82','中国 SH 上海 Addresses CNNIC','','ios',0,0,1651510799,'123123',1651510921,1651510799,0),(15,0,1,'domain','4RgUk4cR_44',NULL,'','','','','','13376250001','13376250001','4c946f6d048029ed4152dd39eb77c700','','wP3PqaZ%82','N',0,5030.00,0,NULL,0,0.00,0.00,0.00,0.00,0.00,0,0,0.00,0.00,0.00,0.00,0.00,0.00,0,'Y','47.102.101.82','中国 SH 上海 Addresses CNNIC','47.102.101.82','中国 SH 上海 Addresses CNNIC','','android',0,0,1651541804,'111111',1651542277,1651541804,0),(16,0,0,'domain','r2AhlOcZ_52',NULL,'1111','1111','','','','13376250002','13376250002','e0db8a276da3f63ce97afd1470aa1f1c','d9e20a0c286af7ba217b1fff4892a55a','sDabPSatrp','Y',0,2000000030.00,0,NULL,0,0.00,0.00,0.00,0.00,0.00,0,0,0.00,0.00,0.00,0.00,0.00,0.00,0,'Y','47.102.101.82','中国 SH 上海 Addresses CNNIC','47.102.101.82','中国 SH 上海 Addresses CNNIC','','android',0,0,1651541872,'111111',1651542242,1651541872,0),(17,15,0,'domain','1QwnKgrl_08',NULL,'111','2222','','','','13376250003','13376250003','fe5de49f4ea98333e909176b94ad6fc7','9a122790b72ca8aba884617e540756ff','leZHH&j{#U','Y',0,9999500029.00,0,NULL,0,0.00,0.00,5000.00,0.00,0.00,0,0,0.00,0.00,0.00,0.00,0.00,0.00,0,'Y','47.102.101.82','中国 SH 上海 Addresses CNNIC','47.102.101.82','中国 SH 上海 Addresses CNNIC','','ios',0,0,1651542188,'111111',1651542302,1651542188,0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_address`
--

DROP TABLE IF EXISTS `user_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(20) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `tag` varchar(50) NOT NULL COMMENT '标签',
  `tags` varchar(500) NOT NULL COMMENT '自定义标签集合',
  `province` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `county` varchar(20) DEFAULT NULL,
  `address` text,
  `area_code` varchar(10) DEFAULT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `is_default` char(1) NOT NULL DEFAULT 'N',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_address`
--

LOCK TABLES `user_address` WRITE;
/*!40000 ALTER TABLE `user_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_anwser`
--

DROP TABLE IF EXISTS `user_anwser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_anwser` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT 'D',
  `anwc` int(10) unsigned NOT NULL DEFAULT '0',
  `no` varchar(50) DEFAULT NULL,
  `extime` int(10) unsigned NOT NULL DEFAULT '0',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_anwser`
--

LOCK TABLES `user_anwser` WRITE;
/*!40000 ALTER TABLE `user_anwser` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_anwser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_anwser_list`
--

DROP TABLE IF EXISTS `user_anwser_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_anwser_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL DEFAULT '0',
  `acid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT 'D',
  `extime` int(10) unsigned NOT NULL DEFAULT '0',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_anwser_list`
--

LOCK TABLES `user_anwser_list` WRITE;
/*!40000 ALTER TABLE `user_anwser_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_anwser_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_bank`
--

DROP TABLE IF EXISTS `user_bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_bank` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '银行名称',
  `card` varchar(30) NOT NULL DEFAULT '' COMMENT '银行卡号',
  `code` varchar(10) DEFAULT NULL COMMENT '银行code',
  `is_default` char(1) NOT NULL DEFAULT 'N' COMMENT '是否默认',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_bank`
--

LOCK TABLES `user_bank` WRITE;
/*!40000 ALTER TABLE `user_bank` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_cost`
--

DROP TABLE IF EXISTS `user_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_cost` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `money` decimal(15,2) unsigned NOT NULL,
  `bank_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '银行卡id',
  `status` char(1) NOT NULL DEFAULT 'S' COMMENT 'S:提交|Y:提现成功|N:提现失败',
  `front_status` char(1) NOT NULL DEFAULT 'S',
  `ok_time` int(10) unsigned NOT NULL DEFAULT '0',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `fail_tips` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_cost`
--

LOCK TABLES `user_cost` WRITE;
/*!40000 ALTER TABLE `user_cost` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_feedback`
--

DROP TABLE IF EXISTS `user_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_feedback` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` char(1) NOT NULL COMMENT 'A:咨询 B:投诉 C:意见/建议 D:其它',
  `uid` int(11) unsigned NOT NULL,
  `content` text NOT NULL COMMENT '内容',
  `image` varchar(250) DEFAULT NULL COMMENT '图片',
  `name` varchar(100) NOT NULL COMMENT '联系人',
  `mobile` char(11) NOT NULL COMMENT '联系方式',
  `reply_content` text COMMENT '回复内容',
  `reply_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '回复时间',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_feedback`
--

LOCK TABLES `user_feedback` WRITE;
/*!40000 ALTER TABLE `user_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_funds`
--

DROP TABLE IF EXISTS `user_funds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_funds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `cid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '关联ID',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '流水标题',
  `remark` varchar(300) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT '' COMMENT 'moeny:余额流水|gold:金币流水|credit:会员积分流水|exchange_credit:兑换积分流水',
  `stype` varchar(30) NOT NULL DEFAULT 'itemdt_autoapply_error',
  `btype` varchar(10) NOT NULL DEFAULT 'add',
  `money` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '操作金额',
  `befor_money` decimal(15,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '操作之前余额',
  `after_money` decimal(15,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '操作之后金额',
  `status` char(1) NOT NULL DEFAULT 'D' COMMENT 'D:待处理|S:处理中|Y:处理成功',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `status` (`status`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_funds`
--

LOCK TABLES `user_funds` WRITE;
/*!40000 ALTER TABLE `user_funds` DISABLE KEYS */;
INSERT INTO `user_funds` VALUES (1,1,1,'注册奖励','','money','reg_money','add',30.00,0.00,30.00,'Y',1651499342,1651499306,0),(2,2,2,'注册奖励','','money','reg_money','add',30.00,0.00,30.00,'Y',1651504682,1651504659,0),(3,3,3,'注册奖励','','money','reg_money','add',30.00,0.00,30.00,'Y',1651504742,1651504712,0),(4,3,1,'Nộp số dư ','','money','invest_bank','add',5000000000.00,30.00,5000000030.00,'Y',1651504748,1651504745,0),(5,3,1,'Đầu tư:Tháng','','money','itemdq_apply','sub',-500000.00,5000000030.00,4999500030.00,'Y',1651504791,1651504791,0),(6,3,1,'投资送等级积分','','credit','item_credit','add',5000.00,0.00,5000.00,'Y',1651504802,1651504791,0),(7,3,2,'Đầu tư:Tháng','','money','itemdq_apply','sub',-500000.00,4999500030.00,4999000030.00,'Y',1651504911,1651504911,0),(8,3,2,'投资送等级积分','','credit','item_credit','add',5000.00,5000.00,10000.00,'Y',1651504922,1651504911,0),(9,4,4,'注册奖励','','money','reg_money','add',30.00,0.00,30.00,'Y',1651505162,1651505115,0),(10,4,2,'Nộp số dư ','','money','invest_bank','add',5000000000.00,30.00,5000000030.00,'Y',1651505162,1651505142,0),(11,4,3,'Đầu tư:Tháng','','money','itemdq_apply','sub',-500000.00,5000000030.00,4999500030.00,'Y',1651505188,1651505188,0),(12,4,3,'投资送等级积分','','credit','item_credit','add',5000.00,0.00,5000.00,'Y',1651505222,1651505188,0),(13,4,4,'Đầu tư:Tháng','','money','itemdq_apply','sub',-500000.00,4999500030.00,4999000030.00,'Y',1651505322,1651505322,0),(14,4,4,'投资送等级积分','','credit','item_credit','add',5000.00,5000.00,10000.00,'Y',1651505342,1651505322,0),(15,5,5,'注册奖励','','money','reg_money','add',30.00,0.00,30.00,'Y',1651505402,1651505378,0),(16,5,3,'Nộp số dư ','','money','invest_bank','add',5000000000.00,30.00,5000000030.00,'Y',1651505462,1651505429,0),(17,5,5,'Đầu tư:Tháng','','money','itemdq_apply','sub',-500000.00,5000000030.00,4999500030.00,'Y',1651505482,1651505482,0),(18,5,5,'投资送等级积分','','credit','item_credit','add',5000.00,0.00,5000.00,'Y',1651505521,1651505482,0),(19,5,6,'Đầu tư:Tháng','','money','itemdq_apply','sub',-500000.00,4999500030.00,4999000030.00,'Y',1651505548,1651505548,0),(20,5,6,'投资送等级积分','','credit','item_credit','add',5000.00,5000.00,10000.00,'Y',1651505582,1651505548,0),(21,6,6,'注册奖励','','money','reg_money','add',30.00,0.00,30.00,'Y',1651505642,1651505621,0),(22,6,4,'Nộp số dư ','','money','invest_bank','add',50000000000.00,30.00,50000000030.00,'Y',1651505702,1651505658,0),(23,6,7,'Đầu tư:Tháng','','money','itemdq_apply','sub',-500000.00,50000000030.00,49999500030.00,'Y',1651505743,1651505743,0),(24,6,7,'投资送等级积分','','credit','item_credit','add',5000.00,0.00,5000.00,'Y',1651505762,1651505743,0),(25,6,8,'Đầu tư:Tháng','','money','itemdq_apply','sub',-500000.00,49999500030.00,49999000030.00,'Y',1651505783,1651505783,0),(26,6,8,'投资送等级积分','','credit','item_credit','add',5000.00,5000.00,10000.00,'Y',1651505821,1651505783,0),(27,7,7,'注册奖励','','money','reg_money','add',30.00,0.00,30.00,'Y',1651505881,1651505848,0),(28,7,5,'Nộp số dư ','','money','invest_bank','add',50000000000.00,30.00,50000000030.00,'Y',1651505884,1651505881,0),(29,7,9,'Đầu tư:Tháng','','money','itemdq_apply','sub',-500000.00,50000000030.00,49999500030.00,'Y',1651505913,1651505913,0),(30,7,9,'投资送等级积分','','credit','item_credit','add',5000.00,0.00,5000.00,'Y',1651505942,1651505913,0),(31,7,10,'Đầu tư:Tháng','','money','itemdq_apply','sub',-500000.00,49999500030.00,49999000030.00,'Y',1651505954,1651505954,0),(32,7,10,'投资送等级积分','','credit','item_credit','add',5000.00,5000.00,10000.00,'Y',1651505954,1651505954,0),(33,8,8,'注册奖励','','money','reg_money','add',30.00,0.00,30.00,'Y',1651506661,1651506623,0),(34,8,6,'Nộp số dư ','','money','invest_bank','add',5000000000.00,30.00,5000000030.00,'Y',1651506661,1651506647,0),(35,8,11,'Đầu tư:Tháng','','money','itemdq_apply','sub',-500000.00,5000000030.00,4999500030.00,'Y',1651506694,1651506694,0),(36,8,11,'投资送等级积分','','credit','item_credit','add',5000.00,0.00,5000.00,'Y',1651506722,1651506694,0),(37,2,1,'好友投资奖励:852741','','money','reward_item','add',10000.00,150030.00,160030.00,'Y',1651506725,1651506722,0),(38,9,9,'注册奖励','','money','reg_money','add',30.00,0.00,30.00,'Y',1651506782,1651506776,0),(39,9,7,'Nộp số dư ','','money','invest_bank','add',5000000000.00,30.00,5000000030.00,'Y',1651506902,1651506893,0),(40,9,12,'Đầu tư:Tháng','','money','itemdq_apply','sub',-500000.00,5000000030.00,4999500030.00,'Y',1651506920,1651506920,0),(41,9,12,'投资送等级积分','','credit','item_credit','add',5000.00,0.00,5000.00,'Y',1651506961,1651506920,0),(42,2,2,'好友投资奖励:852741','','money','reward_item','add',10000.00,175030.00,185030.00,'Y',1651506964,1651506961,0),(43,10,10,'注册奖励','','money','reg_money','add',30.00,0.00,30.00,'Y',1651507022,1651507004,0),(44,10,8,'Nộp số dư ','','money','invest_bank','add',5000000000.00,30.00,5000000030.00,'Y',1651507028,1651507028,0),(45,10,13,'Đầu tư:Tháng','','money','itemdq_apply','sub',-500000.00,5000000030.00,4999500030.00,'Y',1651507054,1651507054,0),(46,10,13,'投资送等级积分','','credit','item_credit','add',5000.00,0.00,5000.00,'Y',1651507082,1651507054,0),(47,2,3,'好友投资奖励:57848','','money','reward_item','add',10000.00,195030.00,205030.00,'Y',1651507085,1651507082,0),(48,11,11,'注册奖励','','money','reg_money','add',30.00,0.00,30.00,'Y',1651507385,1651507384,0),(49,11,9,'Nộp số dư ','','money','invest_bank','add',5000000000.00,30.00,5000000030.00,'Y',1651507502,1651507459,0),(50,11,14,'Đầu tư:Tháng','','money','itemdq_apply','sub',-500000.00,5000000030.00,4999500030.00,'Y',1651507558,1651507558,0),(51,11,14,'投资送等级积分','','credit','item_credit','add',5000.00,0.00,5000.00,'Y',1651507562,1651507558,0),(52,2,4,'好友投资奖励:57848','','money','reward_item','add',10000.00,210030.00,220030.00,'Y',1651507565,1651507562,0),(53,12,12,'注册奖励','','money','reg_money','add',30.00,0.00,30.00,'Y',1651508342,1651508327,0),(54,12,11,'Nộp số dư ','','money','invest_bank','add',50000000000.00,30.00,50000000030.00,'Y',1651508702,1651508673,0),(55,12,15,'Đầu tư:Tháng','','money','itemdq_apply','sub',-500000.00,50000000030.00,49999500030.00,'Y',1651509098,1651509098,0),(56,12,15,'投资送等级积分','','credit','item_credit','add',5000.00,0.00,5000.00,'Y',1651509122,1651509098,0),(57,2,5,'好友投资奖励:74121','','money','reward_item','add',10000.00,240030.00,250030.00,'Y',1651509125,1651509122,0),(58,12,16,'Đầu tư:Tháng','','money','itemdq_apply','sub',-500000.00,49999500030.00,49999000030.00,'Y',1651509146,1651509146,0),(59,12,16,'投资送等级积分','','credit','item_credit','add',5000.00,5000.00,10000.00,'Y',1651509182,1651509146,0),(60,2,6,'好友投资奖励:74121','','money','reward_item','add',10000.00,270030.00,280030.00,'Y',1651509185,1651509182,0),(61,8,17,'Đầu tư:Tháng','','money','itemdq_apply','sub',-500000.00,4999505030.00,4999005030.00,'Y',1651509267,1651509267,0),(62,8,17,'投资送等级积分','','credit','item_credit','add',5000.00,5000.00,10000.00,'Y',1651509302,1651509267,0),(63,2,7,'好友投资奖励:96325','','money','reward_item','add',10000.00,300030.00,310030.00,'Y',1651509302,1651509302,0),(64,8,18,'Đầu tư:Tháng','','money','itemdq_apply','sub',-500000.00,4999005030.00,4998505030.00,'Y',1651509886,1651509886,0),(65,8,18,'投资送等级积分','','credit','item_credit','add',5000.00,10000.00,15000.00,'Y',1651509901,1651509886,0),(66,2,8,'好友投资奖励:96325','','money','reward_item','add',10000.00,330030.00,340030.00,'Y',1651509904,1651509901,0),(67,9,19,'Đầu tư:Tháng','','money','itemdq_apply','sub',-500000.00,4999505030.00,4999005030.00,'Y',1651510048,1651510048,0),(68,9,19,'投资送等级积分','','credit','item_credit','add',5000.00,5000.00,10000.00,'Y',1651510081,1651510048,0),(69,2,9,'好友投资奖励:52142','','money','reward_item','add',10000.00,355030.00,365030.00,'Y',1651510084,1651510081,0),(70,10,20,'Đầu tư:Tháng','','money','itemdq_apply','sub',-500000.00,4999505030.00,4999005030.00,'Y',1651510199,1651510199,0),(71,10,20,'投资送等级积分','','credit','item_credit','add',5000.00,5000.00,10000.00,'Y',1651510202,1651510199,0),(72,13,13,'注册奖励','','money','reg_money','add',30.00,0.00,30.00,'Y',1651510442,1651510441,0),(73,13,12,'Nộp số dư ','','money','invest_bank','add',5000000000.00,30.00,5000000030.00,'Y',1651510502,1651510473,0),(74,13,21,'Đầu tư:Tháng','','money','itemdq_apply','sub',-500000.00,5000000030.00,4999500030.00,'Y',1651510533,1651510533,0),(75,13,21,'投资送等级积分','','credit','item_credit','add',5000.00,0.00,5000.00,'Y',1651510561,1651510533,0),(76,2,1,'好友投资奖励:852741','','money','reward_item','add',10000.00,395030.00,405030.00,'Y',1651510564,1651510561,0),(77,10,22,'Đầu tư:Tháng','','money','itemdq_apply','sub',-500000.00,4999005030.00,4998505030.00,'Y',1651510608,1651510608,0),(78,10,22,'投资送等级积分','','credit','item_credit','add',5000.00,10000.00,15000.00,'Y',1651510622,1651510608,0),(79,2,2,'好友投资奖励:852741','','money','reward_item','add',10000.00,415030.00,425030.00,'Y',1651510625,1651510622,0),(80,11,23,'Đầu tư:Tháng','','money','itemdq_apply','sub',-500000.00,4999500030.00,4999000030.00,'Y',1651510694,1651510694,0),(81,11,23,'投资送等级积分','','credit','item_credit','add',5000.00,5000.00,10000.00,'Y',1651510742,1651510694,0),(82,2,3,'好友投资奖励:57848','','money','reward_item','add',10000.00,430030.00,440030.00,'Y',1651510745,1651510742,0),(83,14,14,'注册奖励','','money','reg_money','add',30.00,0.00,30.00,'Y',1651510802,1651510799,0),(84,14,13,'Nộp số dư ','','money','invest_bank','add',50000000000.00,30.00,50000000030.00,'Y',1651510861,1651510824,0),(85,14,24,'Đầu tư:Tháng','','money','itemdq_apply','sub',-500000.00,50000000030.00,49999500030.00,'Y',1651510894,1651510894,0),(86,14,24,'投资送等级积分','','credit','item_credit','add',5000.00,0.00,5000.00,'Y',1651510921,1651510894,0),(87,2,4,'好友投资奖励:57848','','money','reward_item','add',10000.00,460030.00,470030.00,'Y',1651510924,1651510921,0),(88,11,25,'Đầu tư:Tháng','','money','itemdq_apply','sub',-500000.00,4999000030.00,4998500030.00,'Y',1651510960,1651510960,0),(89,11,25,'投资送等级积分','','credit','item_credit','add',5000.00,10000.00,15000.00,'Y',1651510982,1651510960,0),(90,2,5,'好友投资奖励:74121','','money','reward_item','add',10000.00,475030.00,485030.00,'Y',1651510985,1651510982,0),(91,15,15,'注册奖励','','money','reg_money','add',30.00,0.00,30.00,'Y',1651541822,1651541804,0),(92,16,16,'注册奖励','','money','reg_money','add',30.00,0.00,30.00,'Y',1651541882,1651541872,0),(93,17,17,'注册奖励','','money','reg_money','add',30.00,0.00,30.00,'Y',1651542188,1651542188,0),(94,17,15,'Nộp số dư ','','money','invest_bank','add',9999999999.00,30.00,10000000029.00,'Y',1651542242,1651542225,0),(95,16,14,'Nộp số dư ','','money','invest_bank','add',2000000000.00,30.00,2000000030.00,'Y',1651542242,1651542229,0),(96,17,26,'Đầu tư:Tháng','','money','itemdq_apply','sub',-500000.00,10000000029.00,9999500029.00,'Y',1651542277,1651542277,0),(97,17,26,'投资送等级积分','','credit','item_credit','add',5000.00,0.00,5000.00,'Y',1651542302,1651542277,0),(98,2,6,'好友投资奖励:74121','','money','reward_item','add',10000.00,485030.00,495030.00,'Y',1651542305,1651542302,0);
/*!40000 ALTER TABLE `user_funds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_invest`
--

DROP TABLE IF EXISTS `user_invest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_invest` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `money` decimal(15,2) unsigned NOT NULL,
  `channel` varchar(10) NOT NULL DEFAULT 'wx' COMMENT 'wx:微信充值|alipay:支付宝|bank:银行充值',
  `status` char(1) NOT NULL DEFAULT 'S' COMMENT 'S:提交|Y:充值成功|N:充值失败',
  `front_status` char(1) NOT NULL DEFAULT 'S',
  `name` varchar(10) NOT NULL DEFAULT '',
  `remark` varchar(200) NOT NULL DEFAULT '',
  `fail_tips` varchar(250) DEFAULT NULL,
  `ok_time` int(10) unsigned NOT NULL DEFAULT '0',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_invest`
--

LOCK TABLES `user_invest` WRITE;
/*!40000 ALTER TABLE `user_invest` DISABLE KEYS */;
INSERT INTO `user_invest` VALUES (1,3,5000000000.00,'bank','Y','Y','1','1',NULL,1651504745,1651504745,1651504737,0),(2,4,5000000000.00,'bank','Y','Y','1','1',NULL,1651505142,1651505142,1651505134,0),(3,5,5000000000.00,'bank','Y','Y','1','1',NULL,1651505429,1651505429,1651505422,0),(4,6,50000000000.00,'bank','Y','Y','1','1',NULL,1651505658,1651505658,1651505647,0),(5,7,50000000000.00,'bank','Y','Y','1','1',NULL,1651505881,1651505881,1651505875,0),(6,8,5000000000.00,'bank','Y','Y','1','1',NULL,1651506647,1651506647,1651506642,0),(7,9,5000000000.00,'bank','Y','Y','11','11',NULL,1651506893,1651506893,1651506885,0),(8,10,5000000000.00,'bank','Y','Y','1','1',NULL,1651507028,1651507028,1651507021,0),(9,11,5000000000.00,'bank','Y','Y','1','1',NULL,1651507459,1651507459,1651507403,0),(10,12,500000000.00,'bank','C','C','1','1',NULL,0,1651508664,1651508363,0),(11,12,50000000000.00,'bank','Y','Y','1','1',NULL,1651508673,1651508673,1651508627,0),(12,13,5000000000.00,'bank','Y','Y','1','1',NULL,1651510473,1651510473,1651510457,0),(13,14,50000000000.00,'bank','Y','Y','11','',NULL,1651510824,1651510824,1651510815,0),(14,16,2000000000.00,'bank','Y','Y','1','1',NULL,1651542229,1651542229,1651541911,0),(15,17,9999999999.00,'bank','Y','Y','1','1',NULL,1651542225,1651542225,1651542215,0);
/*!40000 ALTER TABLE `user_invest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_jz`
--

DROP TABLE IF EXISTS `user_jz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_jz` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `thumb` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `status` char(1) DEFAULT 'Y',
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `money` int(10) unsigned NOT NULL DEFAULT '0',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_jz`
--

LOCK TABLES `user_jz` WRITE;
/*!40000 ALTER TABLE `user_jz` DISABLE KEYS */;
INSERT INTO `user_jz` VALUES (1,'分享微信朋友圈获取化肥奖励','/upload/2020/05/08/20200508122132_e1374240.png','/upload/2020/05/08/20200508184925_14acecd2.jpg','Y',0,1,1588934966,1586685540,0);
/*!40000 ALTER TABLE `user_jz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_jz_list`
--

DROP TABLE IF EXISTS `user_jz_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_jz_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `cid` int(10) unsigned NOT NULL DEFAULT '0',
  `file` varchar(200) DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT '',
  `money` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_jz_list`
--

LOCK TABLES `user_jz_list` WRITE;
/*!40000 ALTER TABLE `user_jz_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_jz_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_level`
--

DROP TABLE IF EXISTS `user_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_level` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `credit` int(10) unsigned NOT NULL DEFAULT '0',
  `apr` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_level`
--

LOCK TABLES `user_level` WRITE;
/*!40000 ALTER TABLE `user_level` DISABLE KEYS */;
INSERT INTO `user_level` VALUES (1,'VIP1',35000000,0.01,1651320671,1586661840,0),(2,'VIP2',180000000,0.02,1651320706,1586661875,0),(3,'VIP3',360000000,0.05,1651458111,1586661917,1),(4,'VIP4',700000000,0.10,1651320741,1586661937,0),(5,'VIP5',1800000000,0.15,1651320754,1586661965,0),(6,'VIP6',3600000000,0.20,1651320764,1586661987,0),(7,'VIP7',999999999,0.30,1651458182,1586662005,1),(8,'VIP3',360000000,0.50,1651458156,1586662028,0),(9,'VIP0',0,0.00,1586666933,1586666933,0),(10,'VIP7',1000000000,0.30,1651458304,1651458294,1);
/*!40000 ALTER TABLE `user_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_login`
--

DROP TABLE IF EXISTS `user_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_login` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `login_ip` varchar(20) DEFAULT NULL,
  `login_addr` varchar(200) DEFAULT NULL,
  `http_user_agent` varchar(300) DEFAULT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_login`
--

LOCK TABLES `user_login` WRITE;
/*!40000 ALTER TABLE `user_login` DISABLE KEYS */;
INSERT INTO `user_login` VALUES (1,1,'47.102.101.82','中国 SH 上海 Addresses CNNIC','Mozilla/5.0 (iPhone; CPU iPhone OS 14_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Mobile/15E148 Safari/604.1',1651499306,0),(2,2,'47.102.101.82','中国 SH 上海 Addresses CNNIC','Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1',1651504659,0),(3,3,'47.102.101.82','中国 SH 上海 Addresses CNNIC','Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1',1651504712,0),(4,2,'47.102.101.82','中国 SH 上海 Addresses CNNIC','Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1',1651504822,0),(5,3,'47.102.101.82','中国 SH 上海 Addresses CNNIC','Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1',1651504891,0),(6,2,'47.102.101.82','中国 SH 上海 Addresses CNNIC','Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1',1651504938,0),(7,4,'47.102.101.82','中国 SH 上海 Addresses CNNIC','Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1',1651505115,0),(8,2,'47.102.101.82','中国 SH 上海 Addresses CNNIC','Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1',1651505209,0),(9,4,'47.102.101.82','中国 SH 上海 Addresses CNNIC','Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1',1651505292,0),(10,5,'47.102.101.82','中国 SH 上海 Addresses CNNIC','Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1',1651505378,0),(11,6,'47.102.101.82','中国 SH 上海 Addresses CNNIC','Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1',1651505621,0),(12,7,'47.102.101.82','中国 SH 上海 Addresses CNNIC','Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1',1651505848,0),(13,3,'47.102.101.82','中国 SH 上海 Addresses CNNIC','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Mobile Safari/537.36',1651506277,0),(14,8,'47.102.101.82','中国 SH 上海 Addresses CNNIC','Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1',1651506623,0),(15,9,'47.102.101.82','中国 SH 上海 Addresses CNNIC','Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1',1651506776,0),(16,10,'47.102.101.82','中国 SH 上海 Addresses CNNIC','Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1',1651507003,0),(17,11,'47.102.101.82','中国 SH 上海 Addresses CNNIC','Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1',1651507384,0),(18,12,'47.102.101.82','中国 SH 上海 Addresses CNNIC','Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1',1651508327,0),(19,8,'47.102.101.82','中国 SH 上海 Addresses CNNIC','Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1',1651509252,0),(20,8,'47.102.101.82','中国 SH 上海 Addresses CNNIC','Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1',1651509673,0),(21,9,'47.102.101.82','中国 SH 上海 Addresses CNNIC','Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1',1651509984,0),(22,10,'47.102.101.82','中国 SH 上海 Addresses CNNIC','Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1',1651510183,0),(23,13,'47.102.101.82','中国 SH 上海 Addresses CNNIC','Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1',1651510441,0),(24,10,'47.102.101.82','中国 SH 上海 Addresses CNNIC','Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1',1651510586,0),(25,11,'47.102.101.82','中国 SH 上海 Addresses CNNIC','Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1',1651510683,0),(26,14,'47.102.101.82','中国 SH 上海 Addresses CNNIC','Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1',1651510799,0),(27,11,'47.102.101.82','中国 SH 上海 Addresses CNNIC','Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1',1651510947,0),(28,15,'47.102.101.82','中国 SH 上海 Addresses CNNIC','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Mobile Safari/537.36',1651541804,0),(29,16,'47.102.101.82','中国 SH 上海 Addresses CNNIC','Mozilla/5.0 (iPhone; CPU iPhone OS 14_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Mobile/15E148 Safari/604.1',1651541872,0),(30,17,'47.102.101.82','中国 SH 上海 Addresses CNNIC','Mozilla/5.0 (iPhone; CPU iPhone OS 14_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Mobile/15E148 Safari/604.1',1651542188,0);
/*!40000 ALTER TABLE `user_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_notice`
--

DROP TABLE IF EXISTS `user_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `vip_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(200) NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'none',
  `content` text NOT NULL,
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_notice`
--

LOCK TABLES `user_notice` WRITE;
/*!40000 ALTER TABLE `user_notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_notice_read`
--

DROP TABLE IF EXISTS `user_notice_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_notice_read` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `cid` int(10) unsigned NOT NULL DEFAULT '0',
  `read_time` int(10) unsigned NOT NULL DEFAULT '0',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_notice_read`
--

LOCK TABLES `user_notice_read` WRITE;
/*!40000 ALTER TABLE `user_notice_read` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_notice_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_prize`
--

DROP TABLE IF EXISTS `user_prize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_prize` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `jp_name` varchar(200) NOT NULL,
  `jp_pro` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `status` char(1) NOT NULL DEFAULT 'D',
  `type` varchar(10) NOT NULL DEFAULT 'lunpan',
  `is_show_index` char(1) NOT NULL DEFAULT 'N',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_prize`
--

LOCK TABLES `user_prize` WRITE;
/*!40000 ALTER TABLE `user_prize` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_prize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_replyback`
--

DROP TABLE IF EXISTS `user_replyback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_replyback` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` char(1) NOT NULL COMMENT 'A:咨询 B:投诉 C:意见/建议 D:其它',
  `uid` int(11) unsigned NOT NULL,
  `content` text NOT NULL COMMENT '内容',
  `image` varchar(250) DEFAULT NULL COMMENT '图片',
  `name` varchar(100) NOT NULL COMMENT '联系人',
  `mobile` char(11) NOT NULL COMMENT '联系方式',
  `reply_content` text COMMENT '回复内容',
  `reply_time` varchar(100) DEFAULT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_replyback`
--

LOCK TABLES `user_replyback` WRITE;
/*!40000 ALTER TABLE `user_replyback` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_replyback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_statis_cat`
--

DROP TABLE IF EXISTS `user_statis_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_statis_cat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT 'D',
  `type` varchar(10) NOT NULL DEFAULT 'ip',
  `extime` int(10) unsigned NOT NULL DEFAULT '0',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_statis_cat`
--

LOCK TABLES `user_statis_cat` WRITE;
/*!40000 ALTER TABLE `user_statis_cat` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_statis_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_statis_cat_data`
--

DROP TABLE IF EXISTS `user_statis_cat_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_statis_cat_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL DEFAULT '0',
  `v1` varchar(50) DEFAULT NULL,
  `v2` varchar(50) DEFAULT NULL,
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_statis_cat_data`
--

LOCK TABLES `user_statis_cat_data` WRITE;
/*!40000 ALTER TABLE `user_statis_cat_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_statis_cat_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_task`
--

DROP TABLE IF EXISTS `user_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_task` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL DEFAULT 'credit' COMMENT 'money:金额|积分',
  `stype` varchar(10) NOT NULL DEFAULT 'login',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `status` char(1) NOT NULL DEFAULT 'D' COMMENT 'Y:已完成:N:无效',
  `uptime` int(10) NOT NULL DEFAULT '0',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `type` (`type`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_task`
--

LOCK TABLES `user_task` WRITE;
/*!40000 ALTER TABLE `user_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_team`
--

DROP TABLE IF EXISTS `user_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL COMMENT '等级名称',
  `num` int(10) NOT NULL COMMENT '有效邀请人数',
  `per_money` int(10) NOT NULL COMMENT '每人投资金额',
  `five_apr` decimal(15,2) NOT NULL,
  `four_apr` decimal(15,2) DEFAULT NULL,
  `three_apr` decimal(15,2) DEFAULT NULL,
  `two_apr` decimal(15,2) DEFAULT NULL,
  `one_apr` decimal(15,2) DEFAULT NULL,
  `content` text NOT NULL,
  `uptime` int(10) NOT NULL,
  `addtime` int(10) NOT NULL,
  `is_delete` tinyint(1) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='团队等级设置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_team`
--

LOCK TABLES `user_team` WRITE;
/*!40000 ALTER TABLE `user_team` DISABLE KEYS */;
INSERT INTO `user_team` VALUES (1,'Đồng',1,500000,0.00,0.00,0.00,0.00,1.00,'Đồng cần mời 1 thành viên, và số tiền đầu tư tích lũy của các thành viên được mời đạt ₫35000000',1651459638,0,0),(2,'Bạc',2,500000,0.00,0.00,0.00,1.00,2.00,'Bạc cần mời 3 thành viên, số tiền đầu tư tích lũy của các thành viên được mời lên đến ₫35000000, và một trong số họ đã đạt cấp đồng.',1651459706,0,0),(3,'Vàng',3,500000,0.00,0.00,1.00,2.00,3.00,'Vàng cần mời 8 thành viên, đầu tư tích lũy của các thành viên được mời đã lên đến ₫35000000, và một trong số họ đã đạt lời mời cấp bạc',1651459719,0,0),(4,'Bạch kim',4,500000,0.00,1.00,2.00,3.00,4.00,'Bạch kim cần mời 15 thành viên, số tiền đầu tư tích lũy của các thành viên được mời đã đạt ₫35000000, và một trong số họ đã đạt cấp mời vàng',1651459725,0,0),(5,'Kim cương',5,500000,1.00,2.00,3.00,4.00,5.00,'Kim cương cần mời 25 thành viên, khoản đầu tư tích lũy của các thành viên được mời đã lên đến ₫35000000, và một trong số họ đã đạt cấp mời bạch kim.',1651457896,0,0);
/*!40000 ALTER TABLE `user_team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_team_apr`
--

DROP TABLE IF EXISTS `user_team_apr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_team_apr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `il_id` int(11) NOT NULL COMMENT '关联Itemid',
  `t_uid` int(11) NOT NULL,
  `team_apr` decimal(15,2) NOT NULL,
  `team_apr_money` decimal(15,2) NOT NULL,
  `cid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(200) DEFAULT NULL,
  `stype` varchar(10) NOT NULL DEFAULT 'dq',
  `type` varchar(20) DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT 'D',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `days` int(10) unsigned NOT NULL DEFAULT '0',
  `max_apr_count` int(10) unsigned NOT NULL DEFAULT '0',
  `money` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `vouchers_money` decimal(15,2) DEFAULT '0.00',
  `apr` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `level_apr` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `pack` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `top_apr` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `is_auto_apply` char(1) NOT NULL DEFAULT 'N',
  `end_time` int(10) unsigned NOT NULL DEFAULT '0',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_team_apr`
--

LOCK TABLES `user_team_apr` WRITE;
/*!40000 ALTER TABLE `user_team_apr` DISABLE KEYS */;
INSERT INTO `user_team_apr` VALUES (1,1,2,1.00,5000.00,44,'Tháng','dq','A','D',3,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653232791,1651504791,1651504791,0),(2,2,2,1.00,5000.00,44,'Tháng','dq','A','D',3,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653232911,1651504911,1651504911,0),(3,3,2,1.00,5000.00,44,'Tháng','dq','A','D',4,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653233188,1651505188,1651505188,0),(4,4,2,2.00,10000.00,44,'Tháng','dq','A','D',4,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653233322,1651505322,1651505322,0),(5,5,2,2.00,10000.00,44,'Tháng','dq','A','D',5,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653233482,1651505482,1651505482,0),(6,6,2,3.00,15000.00,44,'Tháng','dq','A','D',5,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653233548,1651505548,1651505548,0),(7,7,2,3.00,15000.00,44,'Tháng','dq','A','D',6,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653233743,1651505743,1651505743,0),(8,8,2,4.00,20000.00,44,'Tháng','dq','A','D',6,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653233783,1651505783,1651505783,0),(9,9,2,4.00,20000.00,44,'Tháng','dq','A','D',7,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653233913,1651505913,1651505913,0),(10,10,2,5.00,25000.00,44,'Tháng','dq','A','D',7,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653233954,1651505954,1651505954,0),(11,11,3,1.00,5000.00,44,'Tháng','dq','A','D',8,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653234694,1651506694,1651506694,0),(12,11,2,4.00,20000.00,44,'Tháng','dq','A','D',8,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653234694,1651506694,1651506694,0),(13,12,8,1.00,5000.00,44,'Tháng','dq','A','D',9,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653234920,1651506920,1651506920,0),(14,12,3,0.00,0.00,44,'Tháng','dq','A','D',9,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653234920,1651506920,1651506920,0),(15,12,2,3.00,15000.00,44,'Tháng','dq','A','D',9,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653234920,1651506920,1651506920,0),(16,13,9,1.00,5000.00,44,'Tháng','dq','A','D',10,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653235054,1651507054,1651507054,0),(17,13,8,0.00,0.00,44,'Tháng','dq','A','D',10,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653235054,1651507054,1651507054,0),(18,13,3,0.00,0.00,44,'Tháng','dq','A','D',10,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653235054,1651507054,1651507054,0),(19,13,2,2.00,10000.00,44,'Tháng','dq','A','D',10,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653235054,1651507054,1651507054,0),(20,14,10,1.00,5000.00,44,'Tháng','dq','A','D',11,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653235558,1651507558,1651507558,0),(21,14,9,0.00,0.00,44,'Tháng','dq','A','D',11,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653235558,1651507558,1651507558,0),(22,14,8,0.00,0.00,44,'Tháng','dq','A','D',11,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653235558,1651507558,1651507558,0),(23,14,3,0.00,0.00,44,'Tháng','dq','A','D',11,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653235558,1651507558,1651507558,0),(24,14,2,1.00,5000.00,44,'Tháng','dq','A','D',11,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653235558,1651507558,1651507558,0),(25,15,3,1.00,5000.00,44,'Tháng','dq','A','D',12,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653237098,1651509098,1651509098,0),(26,15,2,4.00,20000.00,44,'Tháng','dq','A','D',12,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653237098,1651509098,1651509098,0),(27,16,3,1.00,5000.00,44,'Tháng','dq','A','D',12,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653237146,1651509146,1651509146,0),(28,16,2,4.00,20000.00,44,'Tháng','dq','A','D',12,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653237146,1651509146,1651509146,0),(29,17,3,1.00,5000.00,44,'Tháng','dq','A','D',8,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653237267,1651509267,1651509267,0),(30,17,2,4.00,20000.00,44,'Tháng','dq','A','D',8,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653237267,1651509267,1651509267,0),(31,18,3,2.00,10000.00,44,'Tháng','dq','A','D',8,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653237886,1651509886,1651509886,0),(32,18,2,4.00,20000.00,44,'Tháng','dq','A','D',8,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653237886,1651509886,1651509886,0),(33,19,8,1.00,5000.00,44,'Tháng','dq','A','D',9,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653238048,1651510048,1651510048,0),(34,19,3,1.00,5000.00,44,'Tháng','dq','A','D',9,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653238048,1651510048,1651510048,0),(35,19,2,3.00,15000.00,44,'Tháng','dq','A','D',9,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653238048,1651510048,1651510048,0),(36,20,9,1.00,5000.00,44,'Tháng','dq','A','D',10,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653238199,1651510199,1651510199,0),(37,20,8,0.00,0.00,44,'Tháng','dq','A','D',10,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653238199,1651510199,1651510199,0),(38,20,3,0.00,0.00,44,'Tháng','dq','A','D',10,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653238199,1651510199,1651510199,0),(39,20,2,2.00,10000.00,44,'Tháng','dq','A','D',10,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653238199,1651510199,1651510199,0),(40,21,3,2.00,10000.00,44,'Tháng','dq','A','D',13,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653238533,1651510533,1651510533,0),(41,21,2,4.00,20000.00,44,'Tháng','dq','A','D',13,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653238533,1651510533,1651510533,0),(42,22,9,1.00,5000.00,44,'Tháng','dq','A','D',10,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653238608,1651510608,1651510608,0),(43,22,8,0.00,0.00,44,'Tháng','dq','A','D',10,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653238608,1651510608,1651510608,0),(44,22,3,1.00,5000.00,44,'Tháng','dq','A','D',10,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653238608,1651510608,1651510608,0),(45,22,2,2.00,10000.00,44,'Tháng','dq','A','D',10,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653238608,1651510608,1651510608,0),(46,23,10,1.00,5000.00,44,'Tháng','dq','A','D',11,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653238694,1651510694,1651510694,0),(47,23,9,0.00,0.00,44,'Tháng','dq','A','D',11,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653238694,1651510694,1651510694,0),(48,23,8,0.00,0.00,44,'Tháng','dq','A','D',11,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653238694,1651510694,1651510694,0),(49,23,3,0.00,0.00,44,'Tháng','dq','A','D',11,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653238694,1651510694,1651510694,0),(50,23,2,1.00,5000.00,44,'Tháng','dq','A','D',11,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653238694,1651510694,1651510694,0),(51,24,3,3.00,15000.00,44,'Tháng','dq','A','D',14,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653238894,1651510894,1651510894,0),(52,24,2,4.00,20000.00,44,'Tháng','dq','A','D',14,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653238894,1651510894,1651510894,0),(53,25,10,1.00,5000.00,44,'Tháng','dq','A','D',11,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653238960,1651510960,1651510960,0),(54,25,9,0.00,0.00,44,'Tháng','dq','A','D',11,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653238960,1651510960,1651510960,0),(55,25,8,0.00,0.00,44,'Tháng','dq','A','D',11,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653238960,1651510960,1651510960,0),(56,25,3,1.00,5000.00,44,'Tháng','dq','A','D',11,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653238960,1651510960,1651510960,0),(57,25,2,1.00,5000.00,44,'Tháng','dq','A','D',11,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653238960,1651510960,1651510960,0),(58,26,15,1.00,5000.00,44,'Tháng','dq','A','D',17,20,20,500000.00,0.00,2.00,0.00,0.00,0.00,'N',1653270277,1651542277,1651542277,0);
/*!40000 ALTER TABLE `user_team_apr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_team_tree`
--

DROP TABLE IF EXISTS `user_team_tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_team_tree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `t_uid` int(11) NOT NULL,
  `team_level` tinyint(1) NOT NULL,
  `username` varchar(200) DEFAULT NULL,
  `sum_money` decimal(15,2) DEFAULT NULL,
  `all_money` decimal(15,2) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT '0',
  `addtime` int(10) NOT NULL,
  `uptime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='团队等级记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_team_tree`
--

LOCK TABLES `user_team_tree` WRITE;
/*!40000 ALTER TABLE `user_team_tree` DISABLE KEYS */;
INSERT INTO `user_team_tree` VALUES (1,3,2,1,'852741',10000.00,1000000.00,0,1651504712,1651504911),(2,4,2,1,'57848',15000.00,1000000.00,0,1651505115,1651505322),(3,5,2,1,'74121',25000.00,1000000.00,0,1651505378,1651505548),(4,6,2,1,'96325',35000.00,1000000.00,0,1651505621,1651505783),(5,7,2,1,'52142',45000.00,1000000.00,0,1651505848,1651505954),(6,8,3,1,'12321',20000.00,1500000.00,0,1651506623,1651509886),(7,8,2,2,'12321',60000.00,1500000.00,0,1651506623,1651509886),(8,9,8,1,'5214',10000.00,1000000.00,0,1651506776,1651510048),(9,9,3,2,'5214',5000.00,1000000.00,0,1651506776,1651510048),(10,9,2,3,'5214',30000.00,1000000.00,0,1651506776,1651510048),(11,10,9,1,'3265',15000.00,1500000.00,0,1651507004,1651510608),(12,10,8,2,'3265',0.00,1500000.00,0,1651507004,1651510608),(13,10,3,3,'3265',5000.00,1500000.00,0,1651507004,1651510608),(14,10,2,4,'3265',30000.00,1500000.00,0,1651507004,1651510608),(15,11,10,1,'6254',15000.00,1500000.00,0,1651507384,1651510960),(16,11,9,2,'6254',0.00,1500000.00,0,1651507384,1651510960),(17,11,8,3,'6254',0.00,1500000.00,0,1651507384,1651510960),(18,11,3,4,'6254',5000.00,1500000.00,0,1651507384,1651510960),(19,11,2,5,'6254',15000.00,1500000.00,0,1651507384,1651510960),(20,12,3,1,'46461',10000.00,1000000.00,0,1651508327,1651509146),(21,12,2,2,'46461',40000.00,1000000.00,0,1651508327,1651509146),(22,13,3,1,'7411',10000.00,500000.00,0,1651510441,1651510533),(23,13,2,2,'7411',20000.00,500000.00,0,1651510441,1651510533),(24,14,3,1,'5677',15000.00,500000.00,0,1651510799,1651510894),(25,14,2,2,'5677',20000.00,500000.00,0,1651510799,1651510894),(26,17,15,1,'13376250003',5000.00,500000.00,0,1651542188,1651542277);
/*!40000 ALTER TABLE `user_team_tree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_tree`
--

DROP TABLE IF EXISTS `user_tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_tree` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `water` int(10) unsigned NOT NULL DEFAULT '0',
  `manure` int(10) unsigned NOT NULL DEFAULT '0',
  `value` int(10) unsigned NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT 'S',
  `max_value` int(10) unsigned NOT NULL DEFAULT '0',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_tree`
--

LOCK TABLES `user_tree` WRITE;
/*!40000 ALTER TABLE `user_tree` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_tree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'station_admin_mu'
--

--
-- Dumping routines for database 'station_admin_mu'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-03  9:49:56
