-- MySQL dump 10.13  Distrib 8.2.0, for Win64 (x86_64)
--
-- Host: localhost    Database: test_db
-- ------------------------------------------------------
-- Server version	8.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `year` int DEFAULT NULL,
  `month` int DEFAULT NULL,
  `data` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES (1,2003,4,'서울 성북구 출생'),(2,2015,3,'서울교육대학교 과학영재교육원 입학(정보심화)'),(3,2015,7,'2015 1학기 서울교육대학교 과학영재교육원 탐구발표대회 우수상'),(4,2015,12,'서울교육대학교 과학영재교육원 이수(정보심화)'),(5,2016,3,'KAIST 과학영재교육원 입학(C언어)'),(6,2016,8,'2016 1학기 KAIST Youth Scientist Camp 참여'),(7,2016,12,'KAIST 과학영재교육원 이수(C언어)'),(8,2019,3,'선린인터넷고등학교 소프트웨어과 입학'),(9,2019,4,'선린인터넷고등학교 동아리 IT리뷰반 부회장(~2019.12)'),(10,2019,5,'도봉청소년누리터 WiTH 봉사활동 참여(~2019.10) - 출동SOS'),(11,2019,9,'선린인터넷고등학교 2019 IoT아이디어공모전 은상 - Signal \\n선린인터넷고등학교 교육봉사동아리 VoIT 개설 / 회장(~2020.12)'),(12,2019,12,'2019 청소년프로그램공모사업 활동수기 공모전 청소년 부문 최우수상 (출동SOS, 여성가족부 장관상)'),(13,2020,3,'VoIT 청소년동아리 활동 지원사업 선정(도봉청소년누리터 WiTH, ~2020.12)\\n선린인터넷고등학교 안드로이드 앱 프로그래밍 동아리 SIRI_Android 회장(~2020.12)'),(14,2020,8,'Python 학습용 교재 [처음부터 만나는 Python] 기획 / 배포\\n선린인터넷고등학교 2020 해커톤 참여 (생활) - Prord \\n선린인터넷고등학교 2020 모바일 콘텐츠 개발대회 은상 (생활, 비디자인) - 띠앗'),(15,2020,9,'서울디지털재단 2020 스마트시민랩 커뮤니티 지원사업 선정(~2020.12) - 띠앗 : 우리말 사전'),(16,2020,11,'Android Studio(Java) 학습용 교재 [처음부터 만나는 Android Studio] 기획 / 배포'),(17,2021,1,'선린인터넷고등학교 2020 디지털 콘텐츠 개발대회 은상 (앱, 비디자인) - Code:Green'),(18,2021,7,'선린인터넷고등학교 2021 모바일 콘텐츠 개발대회 은상 (생활, 비디자인) - Mapable'),(19,2022,2,'선린인터넷고등학교 소프트웨어과 졸업'),(20,2022,3,'숭실대학교 전자정보공학부(전자공학) 입학'),(21,2022,4,'숭실대학교 중앙동아리 YOURSSU 가입'),(23,2023,4,'2023 우리금융그룹 WDA(Woori Digital Academy) - DSS(Data Science)반 과목조교'),(24,2023,5,'숭실교양공동체 데이터사이언스팀 2기 발대'),(25,2023,8,'2023 실리콘밸리 AI 온라인 인턴십 프로그램 참여\\n2023 KB금융그룹 DFIC(Digital Finance Innovation Course) - DAS(AI Specialist)반 과목조교\\n숭실대학교 동아리연합회 웹사이트 정식버전 1차 배포'),(26,2023,12,'개인 포트폴리오 사이트 [종우의 개발 꾸러미] 개발\\nK-PaaS 활용 디지털 사회혁신 서비스 개발 공모전 참여 - AI 법률자료 분석 커뮤니티 웹사이트 [너울] 서비스 시작\\n머신러닝 프로젝트 개발 - AI이론과응용'),(27,2024,1,'CES 2024(Consumer Electronics Show 2024) 참관'),(28,2024,2,'숭실대학교 동아리연합회 웹사이트 정식버전 2차 배포\\n숭실교양공동체 데이터사이언스팀 2기 해단 - 서울 주요대학 교양교육 데이터 분석 웹사이트 제작');
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `id` int NOT NULL,
  `year` varchar(10) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `duration` varchar(500) DEFAULT NULL,
  `duration_plus` varchar(500) DEFAULT NULL,
  `button_link` varchar(100) DEFAULT NULL,
  `button_description` varchar(10) DEFAULT NULL,
  `tags` varchar(500) DEFAULT NULL,
  `specs` varchar(500) DEFAULT NULL,
  `github_link` varchar(100) DEFAULT NULL,
  `imgs` int DEFAULT NULL,
  `text_1` varchar(1000) DEFAULT NULL,
  `text_2` varchar(1000) DEFAULT NULL,
  `text_3` varchar(1000) DEFAULT NULL,
  `text_4` varchar(1000) DEFAULT NULL,
  `text_5` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'2019','Signal','전구에 화재감지, 경보 기능과 LED 색상 조절 기능 등을 탑재한 *스마트 IoT 화재경보 시스템*입니다.\\n전구는 아두이노를 이용해 제작했고, Firebase 이용한 서버리스 시스템 구축해 언제 어디서나 전구에 접근 가능하도록 구현했습니다.','2019.06 - 2019.09 (팀 프로젝트, 3명)','2019.06 - 2019.09 (팀 프로젝트, 아두이노 2 + 어플리케이션 1)',NULL,NULL,'IoT&Android&Arduino&Firebase','Arduino (C)&Firebase','https://github.com/jwlee0411/Signal',4,'전구에 화재감지, 경보 기능과 LED 색상 조절 기능 등을 탑재한 *스마트 IoT 화재경보 시스템*입니다.\\n전구는 아두이노를 이용해 제작했고, Firebase 이용한 서버리스 시스템 구축해 언제 어디서나 전구에 접근 가능하도록 구현했습니다.\\n\\n*2019 IoT 아이디어 공모전(IoT 경진대회)에서 은상 수상*했습니다.','아두이노를 활용한 발명품을 생각하던 도중, 스마트 전구는 있어도 전구에 화재경보기를 결합한 것은 없다는 사실을 깨닫고 개발하게 되었습니다.','● 센서(온습도, 가스) 값 실시간 데이터 전송 / 모니터링\\n● LED 색상 조정, On/Off 관리\\n● 화재감지 시 화재경보 모드 전환강제 화재경보 모드 전환\\n● 어플리케이션을 통한 강제 화재경보 모드 전환 / 화재경보 해제\\n● 전구별 화재경보 시 표시 정보(색상) 설정\\n','팀장(*본인*)\\n● *기획, Arduino 개발, Database 관리*\\n● Arduino(NodeMCU, ESP-32) 및 센서(온습도, 가스, 스피커)를 이용한 스마트 IoT 화재감지 및 경보 시스템 개발\\n● Firebase Realtime Database 구축\\n\\n팀원\\n● *Android Studio, Java를 이용한 어플리케이션 개발*\\n● 센서(온습도, 가스) 값 실시간 모니터링\\n● 전구 상태 관리(LED 색상 조정, On/Off 관리, 전원 공급 상태 등)\\n● Firebase Realtime Database와 연동\\n','이 프로젝트의 기획은 중학생 때부터 어렴풋이 생각하고 있었고 작품으로 만들기도 했지만, 당시에는 빛을 발하지 못했습니다. 고등학교에 입학하고 어플리케이션 개발을 정말 잘 하는 친구를 만나 제 기획에 날개를 펼칠 수 있게 되었습니다.\\n아두이노에 Wifi 모듈을 접목시키는 것에 관한 정보도 많이 없고 시도해 본 사람도 많이 없어 엉뚱한 모듈을 구매해 몇 주를 허비하기도 했고, 이 과정에서 학교에서 지원해 준 금액을 뛰어넘어 제 사비로 메우기도 했습니다.\\n\\n저는 고등학교 시절부터 이 친구가 걸어가는 길을 동경했고, 한편으로는 존경하고 있습니다. 지금은 다른 길을 걷고 있지만 언젠가 저도 그 친구의 자리까지 갈 수 있으리라 믿으면서 열심히 개발하고자 하는 동기부여가 되었고, 그 덕에 안드로이드 앱 개발도 시작하게 된 것 같습니다. 💫'),(2,'2020','띠앗','순우리말을 친숙하게 사용하고 생활화할 수 있도록 해 주는 우리말 사전 어플리케이션입니다.\\n우리말 사전, 우리말로 바꾸기(번역), 우리말 단어 맞추기 기능을 구현했습니다.','2020.06 - 2020.12 (개인⇾팀 프로젝트, 4명)','2020.06 - 2020.08 (V1 / 개인 프로젝트)\\n2020.10 - 2020.12 (V2 / 팀 프로젝트, 개발 3 + 디자인 1)','https://play.google.com/store/apps/details?id=tiatt.jw','다운로드','Android&Java','Android Studio&Java','https://github.com/jwlee0411/Tiatt',6,'*순우리말을 친숙하게 사용하고 생활화할 수 있도록 해 주는 우리말 사전 어플리케이션*입니다.\\n우리말 사전, 우리말로 바꾸기(번역), 우리말 단어 맞추기 기능을 지원합니다.\\n\\nV1) *2020 모바일 콘텐츠 개발대회(생활, 비디자인 부문) 에서 은상*을 수상했습니다.\\nV2) *서울디지털재단 2020 스마트시민랩 커뮤니티 지원사업에 선정*되어 해당 사업을 통해 개발한 어플리케이션입니다.','외래어를 많이 사용하는 현재의 우리말 실정을 깨닫고 순우리말을 친숙하게 사용하고 생활화할 수 있는 어플리케이션을 기획, 개발하게 되었습니다.','● 우리말 사전\\n● 우리말로 바꾸기 (번역 기능)\\n● 우리말 단어 맞추기 (퀴즈)','팀장(*본인*)\\n● *어플리케이션 및 사업 기획, 개발*\\n● 운영팀(서울디지털재단)과 소통\\n● 각종 서류작업 및 지출 담당\\n\\n개발 (본인 포함 3명)\\n● *어플리케이션 개발*\\n● 디자인 적용\\n\\n디자인 (1명)\\n● *어플리케이션 및 각종 자료 디자인*\\n● 발표/성과보고 PPT 제작\\n● 홍보영상, 포스터 디자인/제작','학교 소수전공 심화 수업을 통해 Android Studio를 배운 후 처음 기획, 개발한 어플리케이션입니다. 단순히 수업 프로젝트 발표를 위해 써먹기에는 아까운 기획이라고 생각해서, 수업 때 개발했던 것에서 이름도 바꾸고 디자인도 깔끔하게 꾸미고 기능도 여러 가지 추가해 본 결과 지금의 어플리케이션이 되었습니다. (V1)\\n그 후 서울디지털재단에서 운영하는 2020 스마트시민랩 커뮤니티 지원사업에 선정되어 어플리케이션의 테마와 전반적인 디자인을 재조정하고, 스토어(Google Play, 원스토어) 업로드, SNS를 통한 홍보 등을 진행했습니다.\\n\\n디자이너와 처음 협업을 진행했는데, 제가 원하는 디자인을 고르는 것이랑 남이 지정해준 디자인에 맞게 구현하는 것이 생각보다 매우 큰 차이였습니다. 포트폴리오를 정리하는 과정에서 되돌아보니 제가 개발했던 것들 중 가장 그럴듯하게 보이는 것이 이 어플리케이션인 것을 보아 디자이너가 있고 없고의 차이는 난이도나 퀄리티 양쪽 면에서 모두 중요한 것 같습니다.\\n\\n(처음 기획부터 비영리를 목적으로 진행했기에 해당 사업을 통해 별도의 수익을 거둘 수는 없었던 것이 지나고 보니 아쉽게 느껴지기도 했습니다😅)'),(3,'2020','K-Corona.com','코로나19 관련 정보를 볼 수 있는 웹사이트입니다.\\n웹크롤링을 통한 실시간 코로나19 현황 조회, 게시물 작성 및 검색 등의 기능을 구현했습니다.','2020.11 - 2020.12 (팀 프로젝트, 2명)','2020.11 - 2020.12 (팀 프로젝트, 개발 2)',NULL,NULL,'Web','Django&Python&HTML/CSS','https://github.com/jwlee0411/K-Corona.com',5,'*코로나19 관련 정보를 볼 수 있는 웹사이트*입니다.\\n웹크롤링을 통한 실시간 코로나19 현황 조회, 게시물 작성 및 검색 등의 기능을 구현했습니다.','수업 시간에 배운 기술을 활용하기 위한 팀 프로젝트를 진행했습니다.\\n당시 유행 중이던 코로나19에 관한 정보를 제공하는 사이트를 만들면 좋을 것 같아 개발하게 되었습니다.','● 코로나19 관련 정보공유 게시판\\n● 전세계 / 대한민국 코로나19 현황 조회\\n● 코로나19 예방 방법 및 관련 사이트 안내','*본인*\\n● 기획\\n● 프론트엔드(HTML) 디자인\\n● Beautifulsoup을 활용한 코로나19 관련 데이터 웹 크롤링\\n\\n팀원\\n● 백엔드 구현(게시판)\\n● 데이터베이스 구축','Django 프레임워크와 Python을 이용해본 첫 프로젝트입니다. 프레임워크 구조를 파악하는 데 있어 어려움이 많았습니다. 빈 HTML 파일에 \"Hello World!\" 라고만 쳐도 그대로 출력되는 기존에 제가 해왔던 웹 개발과는 다르게 기본적인 기능 구현에도 여러 Python(.py) 파일을 건드려야 했고, 편리하게 데이터베이스를 관리할 수 있는 Migration 기능이나 사용자 관리 기능 같은 것은 이 프로젝트를 개발할 당시에는 오히려 걸리적거리다고 느껴졌고, 이해하기 쉽지 않은 부분이었습니다.\\n\\n Django에 대한 이해도가 높지 않아 기존 Python 코드와 HTML/CSS 파일을 Django 프레임워크에 적용시키는 것에 그친 것 같아 아쉬웠습니다. 😅'),(4,'2021','Code:Green','물건의 바코드를 인식하거나 사진을 찍으면 분리배출 정보를 알려주는, 쓰레기 분리수거/배출 도우미 어플리케이션입니다.\\n추가로 분리배출 통계를 제공하거나 내 지역의 분리배출 정보 확인, 친환경 제품 추천 등의 기능을 구현했습니다.','2020.10 - 2021.01 (팀 프로젝트, 3명)','2020.10 - 2021.01 (팀 프로젝트, 어플리케이션 2 + AI 1)',NULL,NULL,'Android','Android Studio&Java&TensorFlow&Firebase','https://github.com/jwlee0411/CodeGreen',7,'물건의 바코드를 인식하거나 사진을 찍으면 분리배출 정보를 알려주는 *쓰레기 분리수거/배출 도우미 어플리케이션*입니다.\\n이외에도 분리배출 통계를 제공하거나 내 지역의 분리배출 정보 확인, 친환경 제품 추천 등의 기능을 구현했습니다.\\n\\n2020 디지털 콘텐츠 개발대회(앱, 비디자인 부문) 에서 은상을 수상했습니다.','코로나19로 인한 온라인 쇼핑과 배달 증가로 쓰레기 배출량이 증가했다는 뉴스를 보고, 분리수거를 돕는 어플리케이션이 필요하다고 생각해 개발하게 되었습니다.','● 바코드 인식을 통한 재활용 정보 출력\\n● 바코드 인식을 통한 상품 데이터베이스 구축\\n● AI 사물인식을 통한 재활용 정보 출력\\n● 분리배출 통계(성별, 지역, 나이별) 분석\\n● 상품 정보를 기반으로 친환경 제품 추천\\n● 내 지역의 분리배출 정보 확인\\n● 로그인 / 회원가입\\n','팀장(본인)\\n● *기획, 어플리케이션 개발*\\n● Firebase Realtime Database를 활용한 데이터베이스 구축\\n● Firebase Auth를 활용한 회원 관리\\n● 바코드 인식, 로그인/회원가입, 배출 방법 표시 기능 구현\\n● API를 통해 가져온 데이터 표시\\n\\n팀원 1\\n● *어플리케이션 개발*\\n● 통계 데이터 수집 / 내역 조회(그래프 표시) 기능 구현\\n● API를 통해 가져온 데이터 표시\\n\\n팀원 2\\n● *TensorFlow AI 모델(TFlite) 적용*\\n● AI 사물인식 기능 구현\\n','Jsoup을 사용해 웹 크롤링을 진행했고, Firebase의 Realtime Database와 Firebase Auth를 사용해 서버리스 시스템을 구축했습니다. 프로젝트가 복잡해질수록 Realtime Database와 같은 단일 파일 형태의 데이터베이스가 개발이나 실행에 있어 비효율적이라는 것을 알 수 있었습니다. 어플리케이션 개발을 처음 팀으로 진행하는 과정에서 효율적인 팀 프로젝트 진행 방법과 Github 사용, 버전 관리의 중요성에 대해 다시 한 번 생각해 보는 계기가 되었습니다.\\n(* [띠앗]의 경우 초반에는 개인 프로젝트로 진행)\\n\\nKotlin을 공부하기 위해 Kotlin을 메인 언어로 사용하고 싶었지만 협업에 어려움이 있어 수업 시간에 배웠던 Java를 사용했고, 팀원이 마지막까지 인공지능 모델을 구현하기 위해 여러 방면으로 노력했으나 시간 관계상 오픈 소스로 공개되어 있던 인공지능 모델을 그대로 넣을 수밖에 없었습니다. 개발 시간이 좀 더 주어졌다면 어땠을까라는 아쉬움이 많이 남는 프로젝트였습니다. 🥺'),(5,'2021','Mapable','*교통약자의 편리한 이동을 돕는 대중교통 길찾기 어플리케이션*입니다.\\n휠체어 사용, 거동 불편 유무에 따라 최적화된 길찾기 경로를 제공해 교통약자가 실제로 이용할 수 있는 경로를 보여주고 안내하는 기능을 구현했습니다.\\n또한 시각장애가 있는 분을 위한 음성인식 설정, 길찾기 기능도 구현했습니다.','2021.04 - 2021.07 (개인 프로젝트)','2021.04 - 2021.07 (개인 프로젝트)',NULL,NULL,'Android&Kotlin&Java&OpenAPI','Android&Kotlin&Java&Firebase','https://github.com/jwlee0411/Mapable',15,'*교통약자의 편리한 이동을 돕는 대중교통 길찾기 어플리케이션*입니다.\\n휠체어 사용, 거동 불편 유무에 따라 최적화된 길찾기 경로를 제공해 교통약자가 실제로 이용할 수 있는 경로를 보여주고 안내하는 기능을 구현했습니다.\\n또한 시각장애가 있는 분을 위한 음성인식 설정, 길찾기 기능도 구현했습니다.\\n\\n*2021 모바일 콘텐츠 개발대회(생활, 비디자인 부문)에서 은상을 수상했습니다.*','휠체어를 타신 분이 저상버스를 쉽게 이용하지 못하는 모습을 보고 교통약자가 편하게 이동할 수 있도록 도와주는 장치가 필요하다고 생각했습니다.\\n비록 완전한 도움이 되지는 못하겠지만, 어느 정도 편해졌으면 좋겠다는 마음이 들어 교통약자를 위한 대중교통 길찾기 어플리케이션을 개발하게 되었습니다.','● 장소 검색, 공유, 북마크 등록\\n● 대중교통 길찾기\\n● 개인별 맞춤형 설정(휠체어 유무 등)을 통한 길안내\\n● 커뮤니티(게시물 작성)\\n● 공지사항\\n● 회원가입 / 로그인',NULL,'이 어플리케이션에서 메인 기능으로 사용하는 ODSay사의 대중교통 길찾기 API가 원래는 유료라서 무료로는 개발용으로 테스트해볼 수 있는 정도의 호출 수를 지원하기 때문에, 실제 서비스로 이어지기에는 어려움이 있었습니다. 열심히 만들었기에 부담스럽지 않은 정도의 금액이었으면 스토어에 업로드해 서비스를 하고 싶었습니다.\\n\\n프로젝트를 개발한 이후로 이 어플리케이션에서 지원하는 대부분의 기능을 카카오맵에서도 지원하기 시작했습니다. 서울의 경우 노선버스에 저상버스 도입이 의무화되고, 일부 고속버스에 휠체어 전용 좌석이 설치되기도 했습니다. 우리나라도 교통약자의 이동의 권리가 점점 보장되고 있다는 점에서 제가 영향력을 끼친 것은 정말 미미하겠지만 그래도 정말 다행이고 좋은 변화라고 생각합니다. 👍'),(6,'2023','너울','*법률 자문 AI 커뮤니티 웹사이트*를 개발했습니다.\\nOpenAI(GPT 4.0) API와 LangChain 프레임워크를 이용했고, 법률 데이터를 이용한 프롬포트 엔지니어링을 진행했습니다.\\n게시판 기능과 조회수 확인 기능 등을 구현했고, NAVER Cloud를 이용해 서버를 구축했습니다.','2023.11 - 2023.12 (팀 프로젝트, 2명)','2023.11 - 2023.12 (팀 프로젝트, 개발 2)',NULL,NULL,'Web&Django&Python&NAVER Cloud&Selenium&LangChain&ChatGPT','Django&Python&HTML/CSS&Bootstrap&Nginx&NAVER Cloud','https://github.com/jwlee0411/2023_neoul_pub',5,'*법률 자문 AI 커뮤니티 웹사이트*를 개발했습니다.\\nOpenAI(GPT 4.0) API와 LangChain 프레임워크를 이용했고, 법률 데이터를 이용한 프롬포트 엔지니어링을 진행했습니다.\\n게시판 기능과 조회수 확인 기능 등을 구현했고, NAVER Cloud를 이용해 서버를 구축했습니다.','지난 8월부터 금융그룹 재직자를 대상으로 하는 인공지능의 원리와 ChatGPT를 직무에 활용하는 방법에 대해 알려주는 수업에서 과목조교로 참여했습니다.\\n해당 수업에 같이 조교로 참여했던 선배와 함께 공모전에 출전했고, 수업에서 습득한 지식을 담아 웹사이트를 개발했습니다.','● 법률과 관련된 정보를 질문하면 해당 법률정보와 GPT 4.0 모델을 이용한 답변 제공\\n● 커뮤니티 게시판 형식으로 최신 질문 표시\\n● 질문 관련 법령정보 제공\\● 유사한 질문을 태그 형태로 분류\\n● 질문에 대한 추천 기능','팀원 (*본인*)\\n● *프론트엔드, 백엔드(Django, Database, Server) 개발*\\n● Django에 Python 코드 연결, 비동기 처리 구현\\n● 게시판 기능, 조회수 처리\\n● 데이터베이스, 서버 구현\\n\\n팀장\\n● *기획, 백엔드(Python) 개발*\\n● 법률정보센터(law.go.kr) 데이터 크롤링\\n● 법률 데이터를 이용한 프롬포트 엔지니어링\\n● LangChain 프레임워크와 OpenAI 등 각종 라이브러리를 이용한 Python 코드 구현','OpenAI(GPT 4.0) API와 LangChain 프레임워크를 이용했고, 법률 데이터를 이용한 프롬포트 엔지니어링을 진행했습니다. 게시판 기능과 조회수 확인 기능 등을 구현했고, NAVER Cloud를 이용해 서버를 구축했습니다. \\nGPT-4 모델을 사용하니 생각보다 비용이 많이 발생했다는 점에서(질문을 한 번 입력할 때마다 150원 이상의 비용 소요 / 개발 과정에서 20달러 가량의 크레딧 사용), 추후 보다 저렴한 가격으로 정확한 결과값을 도출해내는 방법을 개발할 필요가 있어 보입니다. 프롬포트 엔지니어링 과정에서 여러 예외 사항(예상치 못한 답변, 질문에 따라 표시되는 답변의 편차가 지나치게 큼)을 처리해주는 과정이 생각보다 복잡했고 여러 가지 경우의 수를 고려해야 했습니다.\\n개발 과정에서 서버의 인바운드/아웃바운드 포트를 모두 열어 두거나 Github에 api key를 실수로 삭제하지 않고 Public으로 업로드하는 일이 있었습니다. 이 과정에서 몇 번의 경고 이메일을 받았고, 앞으로는 이런 실수를 하지 않도록 최대한 조심해야겠다는 경각심을 가지게 되었습니다. 🥲'),(7,'2024','종우의 개발 꾸러미','*포트폴리오 용도로 제작한 개인 웹사이트*입니다.','2023.12 - 2024.02 (개인 프로젝트)','2023.12  (V1 / 개인 프로젝트) \\n2024. 01 - 2024. 02 (V2 / 개인 프로젝트)',NULL,NULL,'Web&JavaScript&React&Bootstrap','JavaScript&React&HTML/CSS&Bootstrap','https://github.com/jwlee0411/develop_portfolio',4,'*포트폴리오 용도로 제작한 개인 웹사이트*입니다.\\nReact, Bootstrap 라이브러리를 활용해 제작했습니다.','그 동안의 개발 경험을 체계적으로 정리하고, React 사용법을 습득하기 위해 개발하게 되었습니다.','● 다루는 기술 스택 정리\\n ● 연도별 한 것 / 작업물 정리\\n ● 프로젝트별 상세 내용 / 맡은 역할 / 느낀 점 등 정리',NULL,'기존에 개발했던 프로젝트들을 돌아보며 정리하는 시간을 가졌습니다. Github에 프로젝트 제목과 한줄소개 정도만 정리해 둔 것이 다였기에 제가 만든 프로젝트를 찾는 것도, 정리하는 것도 오랜 시간이 걸렸습니다. 중구난방으로 작성한 개발 보고서의 내용을 웹사이트에 동일한 양식으로 통일하는 과정도 상당히 오래 걸리고 쉽지만은 않은 작업이었습니다.\\n\\nReact와의 첫경험, 즐거웠습니다. 왜 많은 기업과 개발자들이 React를 사용하는지 알 수 있었습니다. React에 대한 첫인상은 그리 좋지 못했지만, 사용하면 할수록 기존에 사용하던 Django 프레임워크와 Python이 그립지 않을 정도로 편리하고 직관적으로 다가왔습니다.\\n익숙해지는 데에는 아직 더 많은 시간이 필요하겠지만 웹 개발 경험이 있어서인지 금방 적응할 수 있어 보입니다.\\n\\n(+ 사이트를 개발한 시점에서 가장 인상깊었던 프로젝트를 하나 꼽으라면, 동아리연합회 웹사이트 프로젝트입니다👌)'),(8,'2024','숭실대학교 동아리연합회','*기존 사용하던 네이버 카페를 대체하기 위한 숭실대학교 동아리연합회 웹사이트*를 제작했습니다.\\n실시간 연습실 신청 및 이용내역 관리, 장소사용신청서 작성 및 출력, 회원 관리, 게시물 관리 등의 기능을 구현했습니다.','2022.10 - 2024.01 (팀⇾개인 프로젝트)','2022.10 - 2022.11 (V0 / 팀 프로젝트, 개발 3)\\n2022.12 - 2023.08 (V1 / 개인 프로젝트)\\n2023.10 - 2024.01 (V2 / 개인 프로젝트)','http://www.ssudy.com','사이트로','Web&Django&Nginx&Python','','https://github.com/jwlee0411/ssudy_web_pub_v2308',11,'기존에 동아리연합회 내부에서 수작업으로 진행하던 작업(공동연습실 예약)을 홈페이지로 한 번에 처리하기 위해 개발했습니다.\\n처음에는 활동보고서 제출, 공동연습실 예약 이렇게 두 가지 기능 정도를 생각했으나, 논의 과정에서 여러 가지 기능을 추가해 지금의 웹사이트가 되었습니다. 😊','기존에 동아리연합회 내부에서 수작업으로 진행하던 작업(공동연습실 예약)을 홈페이지로 한 번에 처리하기 위해 개발했습니다.\\n처음에는 활동보고서 제출, 공동연습실 예약 이렇게 두 가지 기능 정도를 생각했으나, 논의 과정에서 여러 가지 기능을 추가해 지금의 웹사이트가 되었습니다. 😊','V2\\n ● 실시간 공동연습실 예약 및 관리\\n ● 실시간 강의실 대관 신청 및 관리 \\n ● 회원가입 (이메일 인증) / 로그인\\n\\nV1\\n ●  동아리연합회 소개 페이지 (동아리연합회 계정으로 관리)',NULL,'전반적인 Django 프레임워크의 작동 방식을 익힐 수 있었고, Bootstrap 프레임워크를 처음 적용해 보며 반응형 웹사이트를 구현했습니다. 네트워크와 서버 관련 지식이 사실상 전무했지만, 프로젝트를 진행하면서 서버 설정하는 법, 리소스 할당/연결, 도메인 설정 방법 등에 대해 실습할 수 있었습니다.\\n개발 서버를 통해 실제 배포를 진행하면 안 되는 이유에 대해 직접 체감할 수 있었습니다. 개발 환경에서는 오류가 발생하지 않았지만, 실제 프로덕션 환경에서는 보안 문제와 더불어 여러 사용자가 동시에 사용시 간혹(체감상 100번의 요청당 한 번 정도) 서버 연결이 끊기는 경우가 발생했습니다.\\n대회 출품이나 개인 프로젝트와는 다르게 실제 서비스를 출시하는 것이 훨씬 까다로웠습니다. 개발하면서 작은 경고 메시지에도 신경을 더 쓰게 되고, 계속해서 테스트를 해 보며 완성도를 높이는 과정이 제 예상보다 오래 걸렸습니다. 교내 담당자와 동아리연합회 내부 회의 등에서도 여러 의견이 나와 의견을 조율하는 과정도 쉽지 않았습니다.\\n여태까지 해봤던 프로젝트 중 가장 오랜 시간이 걸렸고, 그만큼 하면서 가장 많은 것을 배울 수 있었던 저에게 가장 뜻깊은 프로젝트로 남게 되었습니다. 🫠'),(9,'2024','서울 주요대학 교양교육 분석','asdf','2023.06 - 2024.02 (팀 프로젝트, 4명)','2023.06 - 2024.02 (팀 프로젝트, 개발 2 + 자료조사 2)','https://ssu-liberal-arts.streamlit.app/','사이트로','Web&Python&Streamlit','Python&Streamlit','https://github.com/jwlee0411/liberal_arts_project',NULL,'숭실교양공동체 2기 데이터사이언스팀에서 개발한 *서울 주요대학 교양교육 분석 데이터를 시각화한 웹사이트*입니다.','데이터사이언스 팀에서 1년간 서울 주요 대학의 교양교육 데이터를 수집 및 분석하는 것을 계획으로 세워, 이 과정에서 개발하게 된 프로젝트입니다.',NULL,'팀원(*본인*), 팀장\\n● 웹사이트 기획\\n● Streamlit 라이브러리 사용, Python으로 데이터 분석 진행 및 서버 구축\\n\\n전체\\n● 서울 주요대학 교양교육 데이터 수집 및 전처리\\n','10개 대학 / 20,000개 이상의 교양교육 데이터를 수집하고 분석했습니다. 기존에 존재하지 않았던 대학별 교양교육 데이터를 수치화하고 통계를 내는 작업이 방대한 데이터로 인해 생각보다 오랜 시간이 걸렸습니다.\\n\\n아무것도 주어지지 않은 상황에서 그럴듯한 결과물을 만들어내기까지의 과정이 결코 쉽지 않았지만, 험난한 과정을 끝냈을 때의 뿌듯함이 제가 개발을 10년 가까이 계속하고 있는 원동력이 되는 것 같습니다. 🙂');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills` (
  `type` varchar(45) NOT NULL,
  `icon` varchar(100) NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES ('Application','0'),('Back-End','0'),('Front-End','0');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills_data`
--

DROP TABLE IF EXISTS `skills_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills_data` (
  `data` varchar(45) NOT NULL,
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`data`),
  KEY `type_idx` (`type`),
  CONSTRAINT `type` FOREIGN KEY (`type`) REFERENCES `skills` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills_data`
--

LOCK TABLES `skills_data` WRITE;
/*!40000 ALTER TABLE `skills_data` DISABLE KEYS */;
INSERT INTO `skills_data` VALUES ('Android Studio','Application'),('Java','Application'),('Kotlin','Application'),('AWS','Back-End'),('Django','Back-End'),('Firebase','Back-End'),('NAVER Cloud','Back-End'),('Nginx','Back-End'),('Python','Back-End'),('HTML/CSS','Front-End'),('Javascript','Front-End'),('React','Front-End');
/*!40000 ALTER TABLE `skills_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-04 13:08:27
