-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 17, 2016 at 08:22 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `post_backend`
--

-- --------------------------------------------------------

--
-- Table structure for table `post_tb`
--

CREATE TABLE `post_tb` (
  `post_id` int(5) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `thumbnail` text NOT NULL,
  `content_preview` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post_tb`
--

INSERT INTO `post_tb` (`post_id`, `user_id`, `title`, `content`, `thumbnail`, `content_preview`) VALUES
(8, 1, 'ซิลิโคนเกรดไหนดี?', '&lt;p style=\\&quot;text-align: center;\\&quot;&gt;&lt;img alt=\\&quot;\\&quot; src=\\&quot;upload/files/1460913402_word1(1).jpg\\&quot; style=\\&quot;height:300px; width:450px\\&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=\\&quot;font-size:14px\\&quot;&gt;&lt;span style=\\&quot;background-color:rgb(255, 255, 255); color:rgb(104, 104, 104); font-family:conv_db helvethaica x li,noto sans,sans-serif\\&quot;&gt;&amp;ldquo;ซิลิโคนเกรดไหนดี&amp;rdquo; เป็นคำถามที่พบเจอบ่อยมากสำหรับวงการศัลยกรรมจมูกเลยทีเดียวนะคะ และนี่ก็คือต้นตอของความเชื่อผิดๆ เกี่ยวกับซิลิโคนว่าซิลิโคนที่มีเกรดราคาแพงนั้น จะสามารถให้ผลลัพธ์ออกมาได้สวยซึ่งในความเป็นจริงแล้วมันไม่ใช่เลย ลบความคิดแบบเดิมๆ ได้เลยนะคะ เพราะว่า ความสวยของจมูกมากน้อยแค่ไหนนั้นจะต้องขึ้นกับองค์ประกอบหลายๆอย่าง ไม่ว่าจะเป็นฝีมือของหมอ วัสดุอุปกรณ์ที่มีคุณภาพ และเทคนิควิธีการเสริมจมูกที่แต่ละคลีนิกก็ไม่เหมือนกัน&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=\\&quot;text-align: center;\\&quot;&gt;&lt;img alt=\\&quot;\\&quot; src=\\&quot;upload/files/1460913497_word2(1).jpg\\&quot; style=\\&quot;height:300px; width:334px\\&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=\\&quot;text-align: center;\\&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=\\&quot;color:#696969\\&quot;&gt;&lt;span style=\\&quot;font-size:14px\\&quot;&gt;สำหรับซิลิโคนนั้นปกติแล้วจะมีหลายเกรดด้วยกันค่ะ ซึ่งแต่ละเกรดจะแตกต่างตรงที่ความหนาบาง และนุ่ม ดังต่อไปนี้&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=\\&quot;color:#696969\\&quot;&gt;&lt;span style=\\&quot;font-size:14px\\&quot;&gt;&lt;strong&gt;1.ซิลิโคนระดับ Hard เป็นซิลิโคนชนิดแข็ง&lt;/strong&gt;&amp;nbsp;จัดได้เลยว่าเป็นซิลิโคนที่แย่ที่สุดเลยก็ได้ มีสีดำ อีกทั้งเหลายากมากเพราะเนื้อซิลิโคนมีความแข็ง จึงไม่ค่อยได้รับนิยมเท่าที่ควร แต่เนื่องด้วยราคาที่ถูกจึงยังมีออกมาให้เห็นอยู่บ้างนะคะ&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=\\&quot;color:#696969\\&quot;&gt;&lt;span style=\\&quot;font-size:14px\\&quot;&gt;&lt;strong&gt;2.ซิลิโคนระดับ Medium เป็นซิลิโคนแข็งระดับกลาง&lt;/strong&gt;&amp;nbsp;มีสีขาว เหลาง่ายได้ทรงที่สวย เมื่อนำมาเสริมจมูกแล้วอยู่ทรงไม่มีการยุบตัว จึงเป็นที่นิยมมาก ที่สำคัญไม่แข็งจนเกินไปด้วยนะคะ ราคาพอตัวค่ะ ไม่แพงเกินไป&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=\\&quot;color:#696969\\&quot;&gt;&lt;span style=\\&quot;font-size:14px\\&quot;&gt;&lt;strong&gt;3.ซิลิโคนระดับ Soft&amp;nbsp;&lt;/strong&gt;เป็นซิลิโคนแข็งระดับน้อยสุด เมื่อเสริมนานๆ ยิ่งทำให้ดูเนียนขึ้น มีสีเหลืองและน้ำตาลแดงค่ะ จึงเป็นที่นิยมมากเช่นกันนะคะ&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=\\&quot;color:#696969\\&quot;&gt;&lt;span style=\\&quot;font-size:14px\\&quot;&gt;&lt;strong&gt;4.ซิลิโคนระดับ Utra Soft&lt;/strong&gt;&amp;nbsp;มีลักษณะที่นิ่มและนุ่มมากๆ จนหลายคนเกิดความเชื่อที่ว่าซิลิโคนเกรดนี้จะดีที่สุดจะดูเป็นธรรมชาติมากกว่าซิลิโคนชนิดแข็งนั้น มันไม่เสมอไปหรอกค่ะ เพราะทรงที่ออกมานั้นไม่ค่อยสวยเท่าไหร่ค่ะ เมื่อเวลาผ่านไปก็จะเกิดการยุบตัว ดูเหมือนไม่ได้ทำมาเลย ของที่แพงๆ ก็ใช่ว่าจะสวยเสมอไปค่ะ&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=\\&quot;text-align: center;\\&quot;&gt;&lt;span style=\\&quot;color:#696969\\&quot;&gt;&lt;span style=\\&quot;font-size:14px\\&quot;&gt;&lt;img alt=\\&quot;\\&quot; src=\\&quot;upload/files/1460913621_word3.jpg\\&quot; style=\\&quot;height:300px; width:400px\\&quot; /&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=\\&quot;text-align: center;\\&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=\\&quot;color:#696969\\&quot;&gt;&lt;span style=\\&quot;font-size:14px\\&quot;&gt;&lt;span style=\\&quot;background-color:rgb(255, 255, 255); font-family:conv_db helvethaica x li,noto sans,sans-serif\\&quot;&gt;หากใครกำลังสงสัยว่าจะใช้ซิลิโคนแบบไหนดี เสริมแล้วดูสวยงามโดเด่นเป็นธรรมชาติ ไม่หลอก สามารถขอนัดเพื่อมาปรึกษากับคุณหมอศรัณย์ก่อนได้นะคะ&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', 'images/post/1460913672m19.jpg', '&lt;p&gt;&amp;ldquo;ซิลิโคนเกรดไหนดี&amp;rdquo; คำถามยอดฮิตสำหรับลูกค้าที่ต้องการเสริมจมูกให้ออกมาสวยแต่ละเกรดแตกต่างกันอย่างไร เหมาะสำหรับจมูกแบบไหนและราคาเท่าไหร่ ซึ่งวันนี้เรามีคำตอบค่ะ&lt;/p&gt;\r\n'),
(10, 1, 'บขส.ถนนมิตรภาพโคราชช่วงค่ำยังคึกคัก', '&lt;p style=\\&quot;text-align: center;\\&quot;&gt;&lt;img alt=\\&quot;\\&quot; src=\\&quot;upload/files/1460916037_aHR0cDovL3BlMS5pc2Fub29rLmNvbS9ucy8wL3VkLzM5Ni8xOTgxMTU4LzY5MjcwMC0wMS5qcGc=.jpg\\&quot; style=\\&quot;height:360px; width:500px\\&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=\\&quot;font-size:14px\\&quot;&gt;&lt;span style=\\&quot;color:#696969\\&quot;&gt;ถนนมิตรภาพ โคราช ช่วงค่ำ ยังคึกคัก ขณะ บขส.ประชาชนมาใช้บริการไม่ต่ำกว่า 2 หมื่นคน&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=\\&quot;font-size:14px\\&quot;&gt;&lt;span style=\\&quot;color:#696969\\&quot;&gt;บรรยากาศที่สถานีขนส่งผู้โดยสารนครราชสีมาแห่งที่ 2 ตลอดทั้งวันจนถึงขณะนี้มีประชาชนชาวอีสานจำนวนมากหอบกระเป๋าสัมภาระ และสิ่งของ เดินทางไปซื้อตั๋วรอขึ้นรถโดยสารเดินทางกลับไปทำ&lt;/span&gt;&lt;a class=\\&quot;a-default\\&quot; href=\\&quot;http://news.sanook.com/social/bulletin/\\&quot; style=\\&quot;box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; color: rgb(51, 51, 51); text-decoration: none; outline: 0px; word-break: break-all;\\&quot; target=\\&quot;_blank\\&quot; title=\\&quot;งาน\\&quot;&gt;&lt;span style=\\&quot;color:#696969\\&quot;&gt;งาน&lt;/span&gt;&lt;/a&gt;&lt;span style=\\&quot;color:#696969\\&quot;&gt;ที่กรุงเทพมหานคร และจังหวัดต่างๆ กันอย่างเนืองแน่น ส่งผลให้ช่องจำหน่ายตั๋วรถโดยสารเข้ากรุงเทพฯ มีประชาชนยืนรอซื้อตั๋วยาวเหยียด ทำให้ทางขนส่งจังหวัดนครราชสีมาได้สั่งเพิ่มรถโดยสารเข้ากรุงเทพฯ เป็น 400 เที่ยวต่อวัน เพื่อให้เพียงพอต่อความต้องการของประชาชน แต่ปัญหาการจราจรติดขัดบนถนนมิตรภาพ ทำให้รถโดยสารต้องใช้เวลานานกว่าจะขับตีรถกลับไปรับผู้โดยสารที่จังหวัดนครราชสีมา ส่งผลให้ผู้โดยสารหลายรายต้องนั่งรอคอยขึ้นรถโดยสารนานกว่า 3 ชั่วโมง ทำให้ประชาชนนั้นต้องนั่งรอรถโดยสารภายในเต็นท์ที่ทางสถานีขนส่งได้จัดเตรียมกิจกรรมนันทนาการและเล่นเกมแข่งของที่ระลึกเพื่อเป็นการผ่อนคลายให้กับผู้มาใช้บริการที่ต้องนั่งรอเป็นเวลานาน โดยทางขนส่งจังหวัดนครราชสีมา คาดการณ์ว่าตลอดทั้งวันนี้มีประชาชนมาใช้บริการไม่ต่ำกว่า 2 หมื่นคน&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=\\&quot;font-size:14px\\&quot;&gt;&lt;span style=\\&quot;color:#696969\\&quot;&gt;ขณะที่บรรยากาศการจราจรบนถนนมิตรภาพนครราชสีมา และถนนมิตรภาพสายบายพาสเลี่ยงตัวเมืองนครราชสีมา พบว่ายังคงมีประชาชนที่เดินทางกลับไปทำงานหลังฉลองเทศกาล&lt;/span&gt;&lt;a class=\\&quot;a-default\\&quot; href=\\&quot;http://campus.sanook.com/948044/\\&quot; style=\\&quot;box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; color: rgb(51, 51, 51); text-decoration: none; outline: 0px; word-break: break-all;\\&quot; target=\\&quot;_blank\\&quot; title=\\&quot;สงกรานต์\\&quot;&gt;&lt;span style=\\&quot;color:#696969\\&quot;&gt;สงกรานต์&lt;/span&gt;&lt;/a&gt;&lt;span style=\\&quot;color:#696969\\&quot;&gt;กันเป็นจำนวนมาก ส่งผลให้บนถนนมิตรภาพนั้นมีปริมาณรถมาก เคลื่อนได้ช้า เฉลี่ยอยู่ที่ประมาณ 50-60 กิโลเมตรต่อชั่ว จะมีการชะลอตัวและสะสมตัวในบางช่วง โดยเฉาพะบริเวณทางร่วมทางแยก และทางขึ้นเขา อำเภอสีคิ้ว จังหวัดนครราชสีมา ขณะที่ทางเจ้าหน้าที่ตำรวจยังคงต้องเปิดช่องทางการจราจรพิเศษ ที่บริเวณทางสะพานต่างระดับสีคิว ถึงบริเวณ&lt;/span&gt;&lt;a class=\\&quot;a-default\\&quot; href=\\&quot;http://home.sanook.com/\\&quot; style=\\&quot;box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; color: rgb(51, 51, 51); text-decoration: none; outline: 0px; word-break: break-all;\\&quot; target=\\&quot;_blank\\&quot; title=\\&quot;บ้าน\\&quot;&gt;&lt;span style=\\&quot;color:#696969\\&quot;&gt;บ้าน&lt;/span&gt;&lt;/a&gt;&lt;span style=\\&quot;color:#696969\\&quot;&gt;เขาน้อย ก่อนที่เข้า อ.ปากช่อง จ.นครราชสีมา เป็นระยะทางกว่า 20 กิโลเมตร ทั้งนี้คาดว่าตลอดทั้งค่ำนี้จะมีประชาชนเดินทางกลับไปทำงานในวันพรุ่งนี้กันอย่างต่อเนื่อง และคาดว่าสภาพการจราจรจะกลับเข้าสู่สภาพวะปกติในช่วงกลางดึกของวันนี้&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', 'images/post/1460916057aHR0cDovL3BlMS5pc2Fub29rLmNvbS9ucy8wL3VkLzM5Ni8xOTgxMTU4LzY5MjcwMC0wMS5qcGc=.jpg', '&lt;p&gt;ถนนมิตรภาพ โคราช ช่วงค่ำ ยังคึกคัก ขณะ บขส.ประชาชนมาใช้บริการไม่ต่ำกว่า 2 หมื่นคน&lt;/p&gt;\r\n'),
(11, 1, 'แผ่นดินไหวเอกวาดอร์ ขนาด 7.8 ดับแล้ว 28 ราย', '&lt;p&gt;&lt;span style=\\&quot;font-size:14px\\&quot;&gt;&lt;span style=\\&quot;color:#696969\\&quot;&gt;(17 เม.ย.) เมื่อเวลา 06.58 น. (ตามเวลา&lt;/span&gt;&lt;a class=\\&quot;a-default\\&quot; href=\\&quot;http://campus.sanook.com/1380493/\\&quot; style=\\&quot;box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; color: rgb(51, 51, 51); text-decoration: none; outline: 0px; word-break: break-all;\\&quot; target=\\&quot;_blank\\&quot; title=\\&quot;ไทย\\&quot;&gt;&lt;span style=\\&quot;color:#696969\\&quot;&gt;ไทย&lt;/span&gt;&lt;/a&gt;&lt;span style=\\&quot;color:#696969\\&quot;&gt;) หรือ 16.58 น. ตามเวลาท้องถิ่น สำนัก&lt;/span&gt;&lt;a class=\\&quot;a-default\\&quot; href=\\&quot;http://news.sanook.com/social/bulletin/\\&quot; style=\\&quot;box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; color: rgb(51, 51, 51); text-decoration: none; outline: 0px; word-break: break-all;\\&quot; target=\\&quot;_blank\\&quot; title=\\&quot;งาน\\&quot;&gt;&lt;span style=\\&quot;color:#696969\\&quot;&gt;งาน&lt;/span&gt;&lt;/a&gt;&lt;span style=\\&quot;color:#696969\\&quot;&gt;ธรณีวิทยาของสหรัฐ เกิดเหตุ&lt;/span&gt;&lt;a class=\\&quot;a-default\\&quot; href=\\&quot;http://news.sanook.com/1958438/\\&quot; style=\\&quot;box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; color: rgb(51, 51, 51); text-decoration: none; outline: 0px; word-break: break-all;\\&quot; target=\\&quot;_blank\\&quot; title=\\&quot;แผ่นดินไหว\\&quot;&gt;&lt;span style=\\&quot;color:#696969\\&quot;&gt;แผ่นดินไหว&lt;/span&gt;&lt;/a&gt;&lt;span style=\\&quot;color:#696969\\&quot;&gt;ขนาด 7.8 ใกล้ชายฝั่งทางภาคตะวันตกเฉียงเหนือของเอกวาดอร์ ห่างจากกรุงกีโต เมืองหลวงของประเทศเอกวาดอร์ ประมาณ 173 กิโลเมตร จุดศูนย์กลางของเหตุแผ่นดินไหวลึก ประมาณ 19.2 กิโลเมตร และมีการประกาศเตือนคลื่นยักษ์สึนามิ&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=\\&quot;text-align: center;\\&quot;&gt;&lt;span style=\\&quot;font-size:14px\\&quot;&gt;&lt;span style=\\&quot;color:#696969\\&quot;&gt;&lt;img alt=\\&quot;แผ่นดินไหว\\&quot; src=\\&quot;upload/files/1460916692_aHR0cDovL3BlMi5pc2Fub29rLmNvbS9ucy8wL3VkLzM5Ni8xOTgwODQyLzUuanBn.jpg\\&quot; style=\\&quot;height:240px; width:400px\\&quot; /&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=\\&quot;text-align: center;\\&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=\\&quot;font-size:14px\\&quot;&gt;&lt;span style=\\&quot;color:#696969\\&quot;&gt;รายงาน&lt;/span&gt;&lt;a class=\\&quot;a-default\\&quot; href=\\&quot;http://news.sanook.com/\\&quot; style=\\&quot;box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; color: rgb(51, 51, 51); text-decoration: none; outline: 0px; word-break: break-all;\\&quot; target=\\&quot;_blank\\&quot; title=\\&quot;ข่าว\\&quot;&gt;&lt;span style=\\&quot;color:#696969\\&quot;&gt;ข่าว&lt;/span&gt;&lt;/a&gt;&lt;span style=\\&quot;color:#696969\\&quot;&gt;ระบุว่า อาคาร&lt;/span&gt;&lt;a class=\\&quot;a-default\\&quot; href=\\&quot;http://home.sanook.com/\\&quot; style=\\&quot;box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; color: rgb(51, 51, 51); text-decoration: none; outline: 0px; word-break: break-all;\\&quot; target=\\&quot;_blank\\&quot; title=\\&quot;บ้าน\\&quot;&gt;&lt;span style=\\&quot;color:#696969\\&quot;&gt;บ้าน&lt;/span&gt;&lt;/a&gt;&lt;span style=\\&quot;color:#696969\\&quot;&gt;เรือนในเมืองหลวงคือกีโตที่อยู่ห่างออกไปถึง 160 กิโลเมตรสั่นสะเทือนไปด้วย ขณะที่สื่อท้องถิ่นรายงานว่า ทางยกระดับในเมืองกวายากิล เมืองใหญ่ที่สุด ถล่มลงมาทับรถยนต์พังเสียหาย&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=\\&quot;font-size:14px\\&quot;&gt;&lt;span style=\\&quot;color:#696969\\&quot;&gt;และมีประกาศเฝ้าระวังสึนามิในพื้นที่ชายฝั่งบางแห่งของเอกวาดอร์, โคลอมเบีย, คอสตาริก้า,ปานามาและเปรู โดยมีความเป็นไปได้ว่าจะเกิดคลื่นทะเลอันตรายสูงถึง 1 เมตรในแนวชายฝั่งบางแห่งของเอกวาดอร์ และคลื่นสูง 0.3 เมตร ในแนวชายฝั่งโคลอมเบีย, คอสตาริก้า, ปานามา และเปรู&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=\\&quot;font-size:14px\\&quot;&gt;&lt;span style=\\&quot;color:#696969\\&quot;&gt;ทั้งนี้ เดอะสเตรตส์ไทมส์ รายงานว่า จากเหตุแผ่นดินไหว ที่เอกวาดอร์ มีผู้เสียชีวิตเบื้องต้นแล้วกว่า 28 คน&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;em&gt;&lt;span style=\\&quot;color:#696969\\&quot;&gt;ภาพจาก&lt;/span&gt;&amp;nbsp;&lt;a href=\\&quot;http://websta.me/p/1230086358581474807_1499284956\\&quot; style=\\&quot;box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; color: rgb(237, 80, 30); text-decoration: none; outline: 0px; word-break: break-all;\\&quot; target=\\&quot;_blank\\&quot;&gt;อินสตาแกรม@traficocpanama&lt;/a&gt;&lt;/em&gt;&lt;/p&gt;\r\n', 'images/post/1460916730aHR0cDovL3BlMi5pc2Fub29rLmNvbS9ucy8wL3VkLzM5Ni8xOTgwODQyLzUuanBn.jpg', '&lt;p&gt;(17 เม.ย.) เมื่อเวลา 06.58 น. (ตามเวลาไทย) หรือ 16.58 น. ตามเวลาท้องถิ่น สำนักงานธรณีวิทยาของสหรัฐ เกิดเหตุแผ่นดินไหวขนาด 7.8 ใกล้ชายฝั่งทางภาคตะวันตกเฉียงเหนือของเอกวาดอร์&lt;/p&gt;\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `user_tb`
--

CREATE TABLE `user_tb` (
  `user_id` int(3) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(60) NOT NULL,
  `fullname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_tb`
--

INSERT INTO `user_tb` (`user_id`, `username`, `password`, `fullname`) VALUES
(1, 'admin', '$2a$13$jvlEMNIFqB/X23kEaYFabeVE/Gr6feJDfj8nPfJpIK38SoIPNZUU2', 'mr.somchai');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `post_tb`
--
ALTER TABLE `post_tb`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `user_tb`
--
ALTER TABLE `user_tb`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `post_tb`
--
ALTER TABLE `post_tb`
  MODIFY `post_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `user_tb`
--
ALTER TABLE `user_tb`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
