-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2021 at 02:57 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `chapter`
--

CREATE TABLE `chapter` (
  `ID` varchar(10) NOT NULL,
  `ID_subject` varchar(10) DEFAULT NULL,
  `Name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chapter`
--

INSERT INTO `chapter` (`ID`, `ID_subject`, `Name`) VALUES
('XSTK01', 'COMP1501', 'Sự kiện ngẫu nhiên và phép tính xác suất'),
('XSTK02', 'COMP1501', 'Biến ngẫu nhiên và luật phân phối xác suất'),
('XSTK03', 'COMP1501', 'Biến ngẫu nhiên nhiều chiều'),
('XSTK04', 'COMP1501', 'Mẫu thống kê và ước lượng tham số'),
('XSTK05', 'COMP1501', 'Kiểm định giả thuyết'),
('XSTK06', 'COMP1501', 'Phân tích hồi quy');

-- --------------------------------------------------------

--
-- Table structure for table `exercise`
--

CREATE TABLE `exercise` (
  `ID` int(10) NOT NULL,
  `ID_lesson` int(10) DEFAULT NULL,
  `Name` text NOT NULL,
  `Content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `ID` int(10) NOT NULL,
  `ID_chapter` varchar(10) DEFAULT NULL,
  `Name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`ID`, `ID_chapter`, `Name`) VALUES
(1, 'XSTK01', 'Khái niệm mở đầu'),
(2, 'XSTK01', 'Các định nghĩa của xác suất'),
(3, 'XSTK01', 'Xác suất có điều kiện'),
(4, 'XSTK01', 'Công thức Bayes'),
(5, 'XSTK02', 'Khái niệm biến ngẫu nhiên'),
(6, 'XSTK02', 'Luật phân phối xác suất'),
(7, 'XSTK02', 'Các số đặc trưng của biến ngẫu nhiên'),
(8, 'XSTK02', 'Một số phân phối thông dụng'),
(9, 'XSTK03', 'Luật phân phối của biến ngẫu nhiên nhiều chiều'),
(10, 'XSTK03', 'Các số đặc trưng của biến ngẫu nhiên hai chiều'),
(11, 'XSTK03', 'Hàm của các biến ngẫu nhiên'),
(12, 'XSTK03', 'Các định lý giới hạn và luật số lớn '),
(13, 'XSTK04', 'Mẫu và thống kê mô tả'),
(14, 'XSTK04', 'Mẫu ngẫu nhiên và các đặc trưng mẫu'),
(15, 'XSTK04', 'Ước lượng điểm'),
(16, 'XSTK04', 'Khoảng tin cậy'),
(17, 'XSTK05', 'Giả thuyết thống kê và quy tắc kiểm định'),
(18, 'XSTK05', 'Các kiểm định dùng một mẫu'),
(19, 'XSTK05', 'Các kiểm định dùng nhiều mẫu'),
(20, 'XSTK05', 'Kiểm định phi tham số'),
(21, 'XSTK06', 'Phân tích tương quan'),
(22, 'XSTK06', 'Hồi quy'),
(23, 'XSTK06', 'Hồi quy bội');

-- --------------------------------------------------------

--
-- Table structure for table `lesson_detail`
--

CREATE TABLE `lesson_detail` (
  `ID` int(10) NOT NULL,
  `ID_lesson` int(10) DEFAULT NULL,
  `Name` text DEFAULT NULL COMMENT 'Name of the concept, theorem, axiom,...',
  `Content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lesson_detail`
--

INSERT INTO `lesson_detail` (`ID`, `ID_lesson`, `Name`, `Content`) VALUES
(1, 1, 'Sự kiện ngẫu nhiên', 'Sự kiện được hiểu như là một sự việc, một hiện tượng nào đó của cuộc sống tự nhiên và xã hội.\r\n\r\nKhi thực hiện một tập hợp điều kiện xác định, nói tắt là bộ điều kiện, gọi là một phép thử, có thể có nhiều kết cục khác nhau.'),
(2, 1, 'Phép toán và quan hệ của các sự kiện', 'Về mặt toán học, việc nghiên cứu quan hệ và phép toán trên tập các sự kiện cho phép ta xác định chúng thực chất hơn.\r\n(i) Tổng của A và B, ký hiệu là A + B, chỉ sự kiện khi có xuất hiện ít nhất một trong hai sự kiện trên.\r\n(ii) Tích của A và B, ký hiệu là AB, chỉ sự kiện khi có xuất hiện đồng thời cả hai sự kiện trên.\r\n(iii) Đối lập của A, ký hiệu là A̅, chỉ sự kiện không xuất hiện A. Rõ ràng đối lập có tính tương hỗ A̿ = A và A + A̅ = U, AA̅ = V, U̅ = V.\r\n(iv) Xung khắc: hai sự kiện A và B được gọi là xung khắc nếu chúng không thể đồng thời xảy ra, tức là AB = V.\r\n(v) Kéo theo, ký hiệu A => B, chỉ nếu xuất hiện A thì xuất hiện B.\r\n(vi) Tương đương, ký hiệu A = B, chỉ việc nếu xuất hiện A thì xuất hiện B và ngược lại.\r\n(vii) Hiệu của A và B, ký hiệu A-B (hoặc A\\B), chỉ sự kiện xuất hiện A nhưng không xuất hiện B, tức là A-B = AB̅.'),
(3, 1, 'Giải tích kết hợp', 'Việc đếm số các kết cục của một phép thử dựa vào mô hình: chọn hú họa ra k phần tử từ n phần tử cho trước. Nếu phân biệt thứ tự các phần tử chọn ra, ta có khái niệm chỉnh hợp; nếu thứ tự không phân biệt, ta có tổ hợp.\r\n(i) Chỉnh hợp: chỉnh hợp chập k từ n là một nhóm có thứ tự gồm k phần tử lấy từ n đã cho. Đó chính là một nhóm gồm k phần tử khác nhau được xếp theo thứ tự nhất định. Số các chỉnh hợp như vậy, ký hiệu là (k ≤ n).\r\n\r\nA_{n}^{k}=n(n-1)...(n-k+1)=\\frac{n!}{(n-k)!}\r\n\r\n(ii) Chỉnh hợp lặp: chỉnh hợp lặp chập k từ n là một nhóm có thứ tự gồm k phần tử có thể giống nhau lấy từ n đã cho. Đó\r\nchính là một nhóm gồm k phần tử có thể lặp lại và được xếp theo thứ tự nhất định, số các chỉnh hợp lặp như vậy, ký hiệu là\r\n\r\n\\mathrm{\\tilde{A}}_{n}^{k}=n^{k}\r\n\r\n(iii) Hoán vị: hoán vị của n là một nhóm gồm n phần tử được sắp xếp theo một thứ tự nào đó. Rõ ràng số các hoán vị như vậy, ký hiệu là P_{n}, chính là số các chỉnh \\mathrm{A}_{n}^{n} và\r\n\r\nP_{n}=n!\r\n\r\n(iv) Tổ hợp: tổ hợp chập k từ n là một nhóm (không phân biệt thứ tự) gồm k phần tử khác nhau lấy từ n đã cho. Số các\r\ntổ hợp như vậy, ký hiệu là (k ≤ n)\r\n\r\n\\mathrm{C}_{n}^{k}=\\frac{\\mathrm{A}_{n}^{k}}{k!}=\\frac{n!}{k!(n-k)!}\r\n'),
(4, 2, 'Định nghĩa cổ điển', 'Cho một phép thử với n kết cục đồng khả\r\nnăng, trong đó có m kết cục thuận lợi cho A, khi đó\r\n\r\nP(A)=\\frac{m}{n}=\\frac{\\text{số kết cục thuận lợi cho A}}{\\text{tổng số kết cục có thể}}\r\n\r\nĐịnh nghĩa trên được gọi là định nghĩa cổ điển của xác suất. Cách tính xác suất theo (2.1) có ưu điểm là tương đối đơn\r\ngiản và trực quan, tuy nhiên phạm vi áp dụng rất hạn chê chỉ cho các loại phép thử gồm hữu hạn kết cục đồng khả năng.\r\nTrong tính toán thường sử dụng các kết quả (1.1) - (1.4).\r\n'),
(5, 2, 'Định nghĩa thống kê', 'Điều kiện đồng khả năng của các kết cục một phép thử không phải lúc nào cũng được bảo đảm. Có nhiều hiện tượng xảy ra không theo các yêu cầu của định nghĩa cổ điển, chẳng hạn khi tính xác suất một đứa trẻ sắp sinh là con trai, ngày mai trời mưa vào lúc chính ngọ, v.v...\r\nCó một cách khác để xác định xác suất của một sự kiện. Giả sử tiến hành một loạt n_{1} phép thử cùng loại, nếu sự kiện A nào đó xuất hiện trong m_{1} phép thử thì ta gọi m_{1}/n_{1}, là tần suất xuất hiện A trong loạt phép thử đã cho. Tương tự với loại phép thử thứ hai, thứ ba... ta có các tần suất tương ứng m_{2}/n_{2}, m_{3}/n_{3},...\r\nTrên cơ sở quan sát lâu dài các thí nghiệm khác nhau người ta nhận thấy tần suất xuất hiện một sự kiện có tính ổn định, thay đổi rất ít trong các loạt phép thử khác nhau và dao động xung quanh một hằng số xác định. Sự khác biệt đó càng ít khi số phép thử tăng nhiều lên. Hơn nữa đối với các phép thử xét ở\r\nmục 2.1 hằng sô\" xác định đó trùng vối xác suất theo định nghĩa cổ điển. Đặc tính ổn định của tần suất khi số phép thử tăng lên khá lớn cho phép ta định nghía xác suất của sự kiện là trị số ổn định đó của tần suất xuất hiện sự kiện. Nhưng do hằng số đó chưa biết, nên người ta lấy ngay tần suất khi số phép thử đủ lớn làm xác suất của sự kiện. Cách hiểu như vậy được gọi là định nghĩa thống kê của xác suất.'),
(6, 2, 'Định nghĩa tiên đề', 'Các định nghĩa cổ điển và thống kê của xác suất có nhiều hạn chế để xây dựng một lý thuyết tổng quát. Khái niệm cổ điển không dùng được trong trường hợp không thể xây dựng một hệ thống đầy đủ các sự kiện đồng khả năng. Trong khi đó, tần suất chỉ là một giá trị xấp xỉ để đánh giá xác suất, chưa kể đòi hỏi là số quan sát phải rất lớn và giá trị tần suất tìm được phải lớn hơn nhiều sai số đo và cả sai số tính toán.\r\nChúng ta bắt đầu từ hệ thống các tiên đề dưới dạng do Kôn-mô-gô-rôp phát biểu. Các tiên đề đó (giông như các tiên đề\r\ntoán học khác) được thừa nhận là đúng đắn, tất nhiên căn cứ vào kinh nghiệm cuộc sống và hoạt động thực tiễn. Cách tiếp cận này liên hệ chặt chẽ lý thuyết xác suất với lý thuyết hàm số và tập hợp. Cách xác định xác suất theo tiên đề sẽ chứa trong nó các định nghĩa cổ điển và thống kê của xác suất như là các trường hợp riêng.\r\nTa quay trở lại không gian các sự kiện sơ cấp Ω (xem §1), còn bản thân các phần tử là gì không quan trọng. Tiếp theo\r\nxác định hệ thống <i>A</i> các tập  con của Ω, các phần tử của <i>A</i> được gọi là các sự kiện ngẫu nhiên. Ta đặt cho <i>A</i> các yêu cầu hợp lý sau:\r\n(i) <i>A</i> chứa Ω\r\n(ii) Nếu A và B ∈ <i>A</i> thì A̅,B̅, A+B ∈ <i>A</i>\r\nHệ thống <i>A</i> thỏa mãn các điều kiện trên được gọi là đại số <i>Bun</i>. \r\nTa gọi xác suất trên (Ω, <i>A</i>) là một hàm số xác định trên <i>A</i> có giá trị trong [0; 1] và thỏa mãn 3 tiên đề\r\n(T1)P(Ω) = l;\r\n(T2)P(A + B) = P(A) + P(B) (A, B xung khắc);\r\n(T3)Nếu dãy A_{n} có tính chất A_{j} => A_{i}, ∀ i \\leqslant j và\r\nA_{1}A_{2}...A_{n}=V, thì P(A_{n})\\longrightarrow 0\r\n(T4)Nếu dãy A_{n} có tính chất xung khắc từng đôi và\r\nA=\\sum_{n=1}^{\\infty }A_{n}\\in <i>A</i> thì P(A)=P(A_{1})+P(A_{+2})+...+P(A_{n})=\\sum_{n=1}^{\\infty }P(A_{n})\r\nTổ hợp {Ω, <i>A</i>, P} sau này thường được gọi là không gian xác suất.');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `ID` varchar(10) NOT NULL,
  `Name` text NOT NULL COMMENT 'Name of subjects (E.x:\r\nProbability and statistics,\r\nNumber Theory,\r\n...)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`ID`, `Name`) VALUES
('COMP1012', 'Lý thuyết đồ thị'),
('COMP1319', 'Lý thuyết số và logic học'),
('COMP1501', 'Xác suất thống kê và ứng dụng'),
('COMP1502', 'Quy hoạch tuyến tính và ứng dụng'),
('MATH1002', 'Giải tích 1'),
('MATH1010', 'Toán rời rạc'),
('MATH1108', 'Đại số tuyến tính');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chapter`
--
ALTER TABLE `chapter`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_chapter_subject` (`ID_subject`);

--
-- Indexes for table `exercise`
--
ALTER TABLE `exercise`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_exercise_lesson` (`ID_lesson`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_lesson_chapter` (`ID_chapter`);

--
-- Indexes for table `lesson_detail`
--
ALTER TABLE `lesson_detail`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_lessonDetail_lesson` (`ID_lesson`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `exercise`
--
ALTER TABLE `exercise`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `lesson_detail`
--
ALTER TABLE `lesson_detail`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chapter`
--
ALTER TABLE `chapter`
  ADD CONSTRAINT `fk_chapter_subject` FOREIGN KEY (`ID_subject`) REFERENCES `subject` (`ID`);

--
-- Constraints for table `exercise`
--
ALTER TABLE `exercise`
  ADD CONSTRAINT `fk_exercise_lesson` FOREIGN KEY (`ID_lesson`) REFERENCES `lesson` (`ID`);

--
-- Constraints for table `lesson`
--
ALTER TABLE `lesson`
  ADD CONSTRAINT `fk_lesson_chapter` FOREIGN KEY (`ID_chapter`) REFERENCES `chapter` (`ID`);

--
-- Constraints for table `lesson_detail`
--
ALTER TABLE `lesson_detail`
  ADD CONSTRAINT `fk_lessonDetail_lesson` FOREIGN KEY (`ID_lesson`) REFERENCES `lesson` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
