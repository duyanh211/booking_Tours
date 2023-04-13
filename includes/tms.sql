-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 13, 2023 lúc 07:54 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tms`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2023-03-13 11:18:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) NOT NULL,
  `UserEmail` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `FromDate` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ToDate` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Comment` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(2, 1, 'anuj@gmail.com', '04/18/2023', '04/31/2023', 'Tôi chỉ cần đăng nhập vào trang web của họ và sau đó tìm kiếm chuyến bay phù hợp với lịch trình của mình', '2023-04-13 19:01:10', 2, 'u', '2023-04-13 05:40:02'),
(3, 2, 'anuj@gmail.com', '02/16/2023', '02/31/2023', 'Tôi đã đặt vé với công ty này và tôi rất hài lòng về dịch vụ', '2023-02-13 20:20:01', 2, 'a', '2023-04-13 05:40:02'),
(4, 1, 'anuj@gmail.com', '04/16/2023', '04/17/2023', 'dwef  fwe', '2023-04-13 20:32:54', 2, 'a', '2023-04-13 21:36:39'),
(5, 1, 'anuj@gmail.com', '05/16/2017', '04/17/2023', 'dwef  fwe', '2023-04-13 20:33:17', 1, NULL, '2023-04-13 23:11:35'),
(6, 2, 'anuj@gmail.com', '04/14/2023', '04/24/2023', 'test demo', '2023-04-13 21:18:37', 2, 'a', '2023-04-14 07:58:28'),
(7, 4, 'sarita@gmail.com', '04/16/2023', '4/20/2023', 'est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2023-04-14 05:09:11', 2, 'a', '2023-04-14 07:47:39'),
(8, 2, 'sarita@gmail.com', '04/17/2023', '04/18/2023', 'ubub5u6', '2023-04-14 05:10:24', 2, 'a', '2023-04-14 05:13:03'),
(9, 1, 'demo@test.com', '04/19/2023', '04/21/2023', 'demo test demo test', '2023-04-14 07:45:11', 1, NULL, '2023-04-14 07:47:45'),
(10, 5, 'abc@g.com', '04/22/2023', '04/24/2023', 'test test t test test ttest test ttest test ttest test ttest test ttest test ttest test ttest test ttest test ttest test ttest test ttest test ttest test t', '2023-04-14 07:56:26', 1, NULL, '2023-04-14 07:58:19'),
(11, 4, 'anh@gmail.com', '2023-04-13', '2023-04-15', 'duy anh travel to Con Dao', '2023-04-12 09:22:23', 2, 'a', '2023-04-13 05:23:07'),
(12, 3, 'anh@gmail.com', '2023-04-15', '2023-04-16', 'di cho noi ', '2023-04-12 09:43:59', 2, 'u', '2023-04-12 09:44:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `EmailId` varchar(100) NOT NULL,
  `MobileNumber` char(10) NOT NULL,
  `Subject` varchar(100) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(1, 'anuj', 'anuj.lpu1@gmail.com', '2354235235', 'The standard Lorem Ipsum passage, used since the 1500s', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '2023-04-13 22:23:53', 1),
(2, 'efgegter', 'terterte@gmail.com', '3454353453', 'The standard Lorem Ipsum passage', 'nventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat volup', '2023-04-13 22:27:00', 1),
(3, 'fwerwetrwet', 'fwsfhrtre@hdhdhqw.com', '8888888888', 'erwt wet', 'nventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat volup', '2023-04-13 22:28:11', 1),
(4, 'Test', 'test@gm.com', '4747474747', 'Test', 'iidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiid', '2023-04-14 07:54:07', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Issue` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Description` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(4, 'anuj@gmail.com', 'Cancellation', 'Tôi đã gặp phải rắc rối khi đặt vé với công ty này. Trang web của họ rất khó sử dụng và tôi đã mất rất nhiều thời gian để tìm kiếm chuyến bay phù hợp với lịch trình của mình. Hơn nữa, khi tôi cố gắng liên hệ với nhân viên hỗ trợ, tôi không thể kết nối được với ai trong một thời gian dài', '2023-04-13 22:03:33', 'xin lỗi bạn, đã phục vụ chưa tốt cho bạn.', '2023-04-13 05:52:01'),
(5, 'sarita@gmail.com', 'Cancellation', 'Tôi đã gặp phải rắc rối khi đặt vé với công ty này. Trang web của họ rất khó sử dụng và tôi đã mất rất nhiều thời gian để tìm kiếm chuyến bay phù hợp với lịch trình của mình. Hơn nữa, khi tôi cố gắng liên hệ với nhân viên hỗ trợ, tôi không thể kết nối được với ai trong một thời gian dài', '2023-04-14 05:12:14', 'xin lỗi bạn, đã phục vụ chưa tốt cho bạn.', '2023-04-13 05:52:01'),
(6, 'demo@test.com', 'Refund', 'Tôi đã gặp phải rắc rối khi đặt vé với công ty này. Trang web của họ rất khó sử dụng và tôi đã mất rất nhiều thời gian để tìm kiếm chuyến bay phù hợp với lịch trình của mình. Hơn nữa, khi tôi cố gắng liên hệ với nhân viên hỗ trợ, tôi không thể kết nối được với ai trong một thời gian dài', '2023-04-14 07:45:37', 'xin lỗi bạn, đã phục vụ chưa tốt cho bạn.', '2023-04-13 05:52:01'),
(7, 'abc@g.com', 'Refund', 'Tôi đã gặp phải rắc rối khi đặt vé với công ty này. Trang web của họ rất khó sử dụng và tôi đã mất rất nhiều thời gian để tìm kiếm chuyến bay phù hợp với lịch trình của mình. Hơn nữa, khi tôi cố gắng liên hệ với nhân viên hỗ trợ, tôi không thể kết nối được với ai trong một thời gian dài', '2023-04-14 07:56:46', 'xin lỗi bạn, đã phục vụ chưa tốt cho bạn.', '2023-04-13 05:52:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `detail` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '<P align=justify style=\"font-size: 16px;\"><FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG>Điều khoản sử dụng của A-3T là các quy định và điều kiện mà người dùng phải tuân thủ khi sử dụng website của A-3T. Điều khoản sử dụng này được thiết lập nhằm đảm bảo việc sử dụng website được an toàn, đáng tin cậy và tránh vi phạm các quy định pháp luật. Dưới đây là một số điều khoản sử dụng cơ bản của A-3T:\r\n\r\nQuyền sở hữu trí tuệ: Tất cả các nội dung, hình ảnh, tài liệu, video, âm thanh và các tài nguyên khác trên website A-3T đều thuộc quyền sở hữu trí tuệ của A-3T hoặc các đối tác liên kết. Người dùng không được sao chép, sửa đổi hoặc phân phối bất kỳ nội dung nào trên website mà không có sự cho phép trước của A-3T.\r\n\r\nĐăng ký tài khoản: Người dùng phải cung cấp thông tin đăng ký chính xác, đầy đủ và đúng thời gian. Người dùng phải bảo mật thông tin đăng nhập của mình và không được chia sẻ với bất kỳ ai khác.\r\n\r\nNội dung người dùng: Người dùng chịu trách nhiệm về nội dung mà họ đăng trên website A-3T. Người dùng không được đăng tải các nội dung vi phạm pháp luật hoặc các nội dung gây hại cho cộng đồng.\r\n\r\nBảo mật thông tin: A-3T cam kết bảo mật thông tin cá nhân của người dùng theo chính sách bảo mật được công bố trên website. Tuy nhiên, người dùng phải tự chịu trách nhiệm về việc bảo vệ thông tin cá nhân của mình trên máy tính hoặc thiết bị của mình.\r\n\r\nThay đổi điều khoản: A-3T có quyền thay đổi điều khoản sử dụng bất cứ lúc nào mà không cần thông báo trước cho người dùng. Việc tiếp tục sử dụng website sau khi có sự thay đổi điều khoản được coi là người dùng đã chấp nhận và đồng ý với những thay đổi này.\r\n\r\nTrên đây là một số điều khoản sử dụng cơ bản của A-3T. Việc tuân thủ các điều khoản này là rất quan trọng để đảm bảo việc sử dụng website một cách an toàn và đúng quy định. Nếu người dùng vi phạm bất kỳ điều khoản nào trong điều khoản sử dụng, A-3T có quyền ngay lập tức chấm dứt hoặc giới hạn quyền truy cập của người dùng vào website.\r\n\r\nNgoài ra, A-3T cũng cam kết bảo vệ thông tin cá nhân của người dùng theo chính sách bảo mật được công bố trên website. Chính sách bảo mật này mô tả cách thức thu thập, sử dụng và bảo vệ thông tin cá nhân của người dùng khi sử dụng website A-3T. A-3T cam kết không chia sẻ thông tin cá nhân của người dùng với bất kỳ bên thứ ba nào mà không có sự cho phép của người dùng.\r\n\r\nTrên website A-3T còn có các điều khoản sử dụng chi tiết hơn cho các dịch vụ cụ thể như đặt tour, thanh toán và hoàn trả. Người dùng nên đọc kỹ các điều khoản này trước khi sử dụng dịch vụ để tránh những tranh chấp xảy ra sau này.\r\n\r\nTóm lại, A-3T luôn đặt lợi ích và sự hài lòng của người dùng lên hàng đầu và cam kết cung cấp một trải nghiệm sử dụng website an toàn, đáng tin cậy và tiện lợi. Người dùng có trách nhiệm tuân thủ các điều khoản sử dụng và cùng A-3T xây dựng một môi trường trực tuyến lành mạnh và phát triển bền vững.</P>'),
(2, 'privacy', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 16px; text-align: justify;\">A-3T là một trang web đặt tour du lịch trực tuyến, chúng tôi cam kết bảo vệ thông tin cá nhân của khách hàng và duy trì chính sách bảo mật tốt nhất có thể. Dưới đây là một số điểm nổi bật về chính sách bảo mật của A-3T:\r\n<br>\r\nBảo vệ thông tin cá nhân của khách hàng: A-3T cam kết bảo vệ thông tin cá nhân của khách hàng một cách an toàn, bảo mật và trung thực. Chúng tôi sẽ không chia sẻ, bán hoặc cho thuê thông tin cá nhân của khách hàng cho bên thứ ba.\r\n<br>\r\nThu thập thông tin cá nhân hợp pháp: A-3T chỉ thu thập thông tin cá nhân của khách hàng thông qua các kênh hợp pháp và đáng tin cậy, bao gồm các biểu mẫu đăng ký, đăng nhập và thanh toán trực tuyến.\r\n<br>\r\nSử dụng thông tin cá nhân đúng mục đích: A-3T chỉ sử dụng thông tin cá nhân của khách hàng để cung cấp dịch vụ du lịch và liên lạc với khách hàng về các yêu cầu liên quan đến dịch vụ.\r\n<br>\r\nBảo vệ thông tin trên website: A-3T cam kết bảo vệ thông tin cá nhân của khách hàng trên trang web của chúng tôi thông qua các biện pháp an ninh thông tin, bao gồm mã hóa dữ liệu và các phương pháp bảo mật khác.\r\n<br>\r\nCập nhật chính sách bảo mật: A-3T có thể cập nhật chính sách bảo mật của mình theo thời gian để đáp ứng các yêu cầu của khách hàng và các quy định pháp luật liên quan đến bảo mật thông tin.</span>'),
(3, 'aboutus', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 16px; text-align: justify;\">A-3T là một trang web đặt tour du lịch trực tuyến với mục đích cung cấp cho khách hàng những trải nghiệm du lịch tuyệt vời. Với một giao diện trực quan và dễ sử dụng, khách hàng có thể dễ dàng tìm kiếm và đặt các gói tour phù hợp với nhu cầu của mình.\r\n<br><br>\r\nA-3T cung cấp một loạt các gói tour du lịch, từ các tour ngắn ngày cho đến các chuyến du lịch dài ngày. Tất cả các gói tour đều được thiết kế để đáp ứng các nhu cầu du lịch khác nhau của khách hàng, từ tham quan các địa điểm du lịch nổi tiếng đến trải nghiệm văn hóa đặc trưng của địa phương.\r\n<br><br>\r\nKhông chỉ cung cấp các gói tour đa dạng và phong phú, A-3T còn có đội ngũ hướng dẫn viên và nhân viên hỗ trợ khách hàng chuyên nghiệp, nhiệt tình và giàu kinh nghiệm. Với mục tiêu đem lại trải nghiệm du lịch hoàn hảo nhất cho khách hàng, A-3T cam kết mang đến cho khách hàng những kỷ niệm đáng nhớ và trải nghiệm tuyệt vời trong hành trình của mình.\r\n<br><br>\r\nVới A-3T, khách hàng sẽ có một trải nghiệm du lịch đầy thú vị và tiện lợi. Hãy truy cập ngay vào trang web của chúng tôi để khám phá các gói tour hấp dẫn và đặt ngay chuyến đi của mình!</span>'),
(11, 'contact', '										<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 16px; text-align: justify;\">Chào mừng bạn đến với trang Liên hệ của chúng tôi. Nếu bạn có bất kỳ câu hỏi, ý kiến hoặc góp ý nào về dịch vụ của chúng tôi, hãy liên hệ với chúng tôi bằng cách sử dụng thông tin liên lạc sau đây:\r\n<br><br>\r\nĐịa chỉ: Khu phố 6, phường Xuân Khánh, quận Ninh Kiều, thành phố Cần Thơ.\r\n<br><br>\r\nSố điện thoại: 0783902907\r\n<br>\r\nLiên hệ qua Facebook: https://www.facebook.com/dyanh12\r\n<br>\r\nLiên hệ qua Zalo: 0783902907\r\n<br> \r\nGiờ làm việc: Tất cả các ngày trong tuần chúng tôi luôn đợi chờ những đóng góp từ bạn.\r\n<br> Cảm ơn bạn đã đóng góp, những ý kiến của bạn sẽ giúp cho công ty chúng tôi ngày càng phát triển và ngày càng phục vụ tốt cho các bạn hơn !!!\r\n</span>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `PackageType` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `PackageLocation` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `PackagePrice` int(11) NOT NULL,
  `PackageFetures` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `PackageDetails` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `PackageImage` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Creationdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Vịnh Hạ Long', 'Cao cấp', 'Quảng Ninh, Việt Nam', 20000000, 'Câu cá / Chèo thuyền / Buffet hải sản đặc biệt ', 'Vịnh Hạ Long là một trong những địa điểm du lịch phổ biến nhất của Việt Nam, thu hút hàng triệu du khách từ khắp nơi trên thế giới mỗi năm. Du khách đến Vịnh Hạ Long có thể tham quan các hang động đẹp như Hang Đầu Gỗ, Hang Sửng Sốt, Hang Trống, thưởng ngoạn cảnh quan tuyệt đẹp từ trên tàu thuyền, tham gia các hoạt động như chèo thuyền kayak, lặn biển, câu cá hay đơn giản chỉ là tắm biển thảnh thơi.', 'vhlong.jpg', '2023-03-13 14:23:44', '2023-04-12 07:10:45'),
(2, 'Phong Nha Kẻ Bàng', 'Trung Cấp', 'Quảng Bình, ‎Bắc Trung Bộ‎, ‎Việt Nam', 5000000, 'Leo núi/ Dã ngoại/ Cấm trại / Chèo thuyền.', 'Phong Nha-Kẻ Bàng nằm ở một khu vực núi đá vôi rộng khoảng 201.000 ha thuộc lãnh thổ Việt Nam, khu vực lãnh thổ Lào tiếp giáp vườn quốc gia này cũng có diện tích núi đá vôi khoảng 200.001 ha. Diện tích vùng lõi của vườn quốc gia là 85.754 ha và một vùng đệm rộng 195.400 ha. Tháng 8 năm 2013, Thủ tướng chính phủ đã có quyết định mở rộng vườn quốc gia này lên 1233,26 km². Vườn quốc gia này được thiết lập để bảo vệ một trong hai vùng các-xtơ lớn nhất thế giới với khoảng 300 hang động và bảo tồn hệ sinh thái bắc Trường Sơn ở khu vực Bắc Trung Bộ Việt Nam. Đặc trưng của vườn quốc gia này là các kiến tạo đá vôi, 300 hang động, các sông ngầm và hệ động thực vật quý hiếm nằm trong Sách đỏ Việt Nam và Sách đỏ thế giới ', 'phongnha.jpg', '2023-03-26 15:24:26', '2023-04-12 07:19:14'),
(3, 'Chợ nổi Cái Răng', 'Phổ thông', 'Cần Thơ, Việt Nam', 150000, 'Chèo thuyền / Ăn uống / Buổi sáng', 'Chợ nổi Cái Răng là loại hình chợ độc đáo và đặc trưng của vùng đồng bằng sông Cửu Long mà không nơi nào trên đất nước Việt Nam có được. Và đây cũng là khu chợ tiêu biểu, sầm uất, nổi tiếng nhất cho nét văn hóa sông nước miền Tây.Chợ nổi Cái Răng Cần Thơ sẽ mang đến những trải nghiệm có 1-0-2 cho bạn như chiêm ngưỡng khung cảnh nên thơ của chợ nổi lúc bình minh, ngồi lênh đênh trên thuyền hòa mình vào không khí buôn bán tấp nập sáng sớm và thưởng thức tô bún riêu ngay trên ghe thuyền… vô cùng tuyệt vời', 'chonoi.jpg', '2023-04-03 16:00:58', '2023-04-13 16:28:14'),
(4, 'Côn Đảo', 'Trung cấp', 'Bà Rịa – Vũng Tàu, Việt Nam', 1200000, 'Tắm biển / Ăn hải sản / Đặc sản / Tham quan nhà tù Côn đảo', 'Côn Đảo là một quần đảo nằm ở ngoài khơi bờ biển Nam Bộ và cũng là đơn vị hành chính cấp huyện trực thuộc tỉnh Bà Rịa – Vũng Tàu, Việt Nam.\r\n\r\nQuần đảo cách thành phố Vũng Tàu 97 hải lý theo đường biển. Nơi gần Côn Đảo nhất trên đất liền là xã Vĩnh Hải, Vĩnh Châu, Sóc Trăng, cách 40 hải lý. Côn Đảo từng được biết đến là nơi giam giữ và lưu đày tù nhân lớn nhất Đông Dương trước năm 1975. Ngày nay, Côn Đảo là điểm du lịch nghỉ dưỡng và tham quan với các bãi tắm và khu bảo tồn thiên nhiên Vườn quốc gia Côn Đảo.', 'con-dao.jpeg', '2023-03-13 22:39:37', '2023-04-12 08:16:58'),
(5, 'Hang Sơn Đoòng', 'Cao cấp', 'Tỉnh Quảng Bình, Việt Nam', 3000000, 'Cấm trại/ Khám phá hang / leo núi ', 'Sơn Đoòng là hang động lớn nhất hành tinh và cũng là hang động hùng vĩ nhất tại Việt Nam. Hang Sơn Đoòng được ông một thợ rừng người Phong Nha phát hiện ra cửa hang vào năm 1990 và đến năm 2009 thì được nhóm thám hiểm hang động Anh-Việt (The British Vietnam Caving Expedition Team) do ông Howard Limbert dẫn đầu vào thám hiểm, khảo sát và đo vẽ. Hang Sơn Đoòng được nhóm thám hiểm cùng với tạp chí National Geographic công bố là hang động đá vôi tự nhiên lớn nhất thế giới năm 2009. Năm 2013, Hang Sơn Đoòng được tổ chức kỷ lục thế giới Guinness ghi nhận là hang động tự nhiên lớn nhất thế giới.', 'hang_son_doong.jpg', '2023-02-13 22:42:10', '2023-04-12 07:47:22'),
(6, 'Phú Quốc', 'Phổ thông', 'Vịnh Thái Lan, phía tây nam của Việt Nam', 600000, 'Lái cano/ lặn biển / câu mực.', 'Quần đảo Phú Quốc nằm trong vịnh Thái Lan, cách TP HCM khoảng 400 km về hướng tây. Nơi đây thu hút du khách trong và ngoài nước bởi các loại hình du lịch đa dạng, với tài nguyên biển, đảo phong phú; hệ sinh thái rừng, biển đa dạng.\r\n\r\nVùng biển Phú Quốc có 22 hòn đảo lớn, nhỏ, tổng diện tích khoảng 589,23 km2. Trong đó, đảo Phú Quốc lớn nhất được chia thành bắc đảo và nam đảo. Thị trấn Dương Đông nằm ở trung tâm.', 'phuquoc.jpg', '2023-04-04 08:01:08', '2023-04-20 08:01:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `MobileNumber` char(10) NOT NULL,
  `EmailId` varchar(70) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(1, 'Anuj kumar', '1111111111', 'anuj@gmail.com', '5c428d8875d2948607f3e3fe134d71b4', '2017-05-10 10:38:17', '2017-05-13 19:36:08'),
(3, 'sarita', '9999999999', 'sarita@gmail.com', '5c428d8875d2948607f3e3fe134d71b4', '2017-05-10 10:50:48', '2017-05-14 07:40:19'),
(9, 'XYZabc', '3333333333', 'xyz@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-05-14 07:25:13', '2017-05-14 07:25:42'),
(10, 'Anuj Kumar', '4543534534', 'demo@test.com', 'f925916e2754e5e03f75dd58a5733251', '2017-05-14 07:43:23', '2017-05-14 07:46:57'),
(11, 'XYZ', '8888888888', 'abc@g.com', 'f925916e2754e5e03f75dd58a5733251', '2017-05-14 07:54:32', '2017-05-14 07:55:17'),
(12, 'phan duy anh', '0147258369', 'anh@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-04-12 05:56:07', '0000-00-00 00:00:00');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Chỉ mục cho bảng `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Chỉ mục cho bảng `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
