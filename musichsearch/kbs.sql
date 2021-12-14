-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2021 at 04:33 PM
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
-- Table structure for table `audio_store`
--

CREATE TABLE `audio_store` (
  `id` bigint(20) NOT NULL,
  `record` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add audio_store', 7, 'add_audio_store'),
(26, 'Can change audio_store', 7, 'change_audio_store'),
(27, 'Can delete audio_store', 7, 'delete_audio_store'),
(28, 'Can view audio_store', 7, 'view_audio_store');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Table structure for table `concept`
--

CREATE TABLE `concept` (
  `ID` int(10) NOT NULL,
  `ID_lesson` int(10) DEFAULT NULL,
  `Name` text DEFAULT NULL,
  `Content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'music_search', 'audio_store'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-12-04 04:02:45.866706'),
(2, 'auth', '0001_initial', '2021-12-04 04:02:46.178061'),
(3, 'admin', '0001_initial', '2021-12-04 04:02:46.252272'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-12-04 04:02:46.259271'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-12-04 04:02:46.267183'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-12-04 04:02:46.310370'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-12-04 04:02:46.341706'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-12-04 04:02:46.355458'),
(9, 'auth', '0004_alter_user_username_opts', '2021-12-04 04:02:46.362133'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-12-04 04:02:46.388530'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-12-04 04:02:46.391529'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-12-04 04:02:46.399531'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-12-04 04:02:46.412889'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-12-04 04:02:46.426595'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-12-04 04:02:46.440253'),
(16, 'auth', '0011_update_proxy_permissions', '2021-12-04 04:02:46.448182'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-12-04 04:02:46.462188'),
(18, 'music_search', '0001_initial', '2021-12-04 04:02:46.481622'),
(19, 'sessions', '0001_initial', '2021-12-04 04:02:46.505918');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(1, 1, 'Sự kiện ngẫu nhiên', 'Sự kiện được hiểu như là một sự việc, một hiện tượng nào đó của cuộc sống tự nhiên và xã hội.\r\nKhi thực hiện một tập hợp điều kiện xác định, nói tắt là bộ điều kiện, gọi là một phép thử, có thể có nhiều kết cục khác nhau.'),
(2, 1, 'Phép toán và quan hệ của các sự kiện', 'Về mặt toán học, việc nghiên cứu quan hệ và phép toán trên tập các sự kiện cho phép ta xác định chúng thực chất hơn.\r\n(i) Tổng của A và B, ký hiệu là A + B, chỉ sự kiện khi có xuất hiện ít nhất một trong hai sự kiện trên.\r\n(ii) Tích của A và B, ký hiệu là AB, chỉ sự kiện khi có xuất hiện đồng thời cả hai sự kiện trên.\r\n(iii) Đối lập của A, ký hiệu là A̅, chỉ sự kiện không xuất hiện A. Rõ ràng đối lập có tính tương hỗ A̿ = A và A + A̅ = U, AA̅ = V, U̅ = V.\r\n(iv) Xung khắc: hai sự kiện A và B được gọi là xung khắc nếu chúng không thể đồng thời xảy ra, tức là AB = V.\r\n(v) Kéo theo, ký hiệu A => B, chỉ nếu xuất hiện A thì xuất hiện B.\r\n(vi) Tương đương, ký hiệu A = B, chỉ việc nếu xuất hiện A thì xuất hiện B và ngược lại.\r\n(vii) Hiệu của A và B, ký hiệu A-B (hoặc A\\B), chỉ sự kiện xuất hiện A nhưng không xuất hiện B, tức là A-B = AB̅.'),
(3, 1, 'Giải tích kết hợp', 'Việc đếm số các kết cục của một phép thử dựa vào mô hình: chọn hú họa ra k phần tử từ n phần tử cho trước. Nếu phân biệt thứ tự các phần tử chọn ra, ta có khái niệm chỉnh hợp; nếu thứ tự không phân biệt, ta có tổ hợp.\r\n(i) Chỉnh hợp: chỉnh hợp chập k từ n là một nhóm có thứ tự gồm k phần tử lấy từ n đã cho. Đó chính là một nhóm gồm k phần tử khác nhau được xếp theo thứ tự nhất định. Số các chỉnh hợp như vậy, ký hiệu là (k ≤ n).\r\n\r\n$$A_{n}^{k}=n(n-1)...(n-k+1)=\\frac{n!}{(n-k)!}.$$\r\n\r\n(ii) Chỉnh hợp lặp: chỉnh hợp lặp chập k từ n là một nhóm có thứ tự gồm k phần tử có thể giống nhau lấy từ n đã cho. Đó chính là một nhóm gồm k phần tử có thể lặp lại và được xếp theo thứ tự nhất định, số các chỉnh hợp lặp như vậy, ký hiệu là\r\n\r\n$$\\mathrm{\\tilde{A}}_{n}^{k}=n^{k}.$$\r\n\r\n(iii) Hoán vị: hoán vị của n là một nhóm gồm n phần tử được sắp xếp theo một thứ tự nào đó. Rõ ràng số các hoán vị như vậy, ký hiệu là \\(P_{n}\\), chính là số các chỉnh \\(\\mathrm{A}_{n}^{n}\\) và \\(P_{n}=n!\\)\r\n(iv) Tổ hợp: tổ hợp chập k từ n là một nhóm (không phân biệt thứ tự) gồm k phần tử khác nhau lấy từ n đã cho. Số các tổ hợp như vậy, ký hiệu là (k ≤ n)\r\n$$\\mathrm{C}_{n}^{k}=\\frac{\\mathrm{A}_{n}^{k}}{k!}=\\frac{n!}{k!(n-k)!}.$$ '),
(4, 2, 'Định nghĩa cổ điển', 'Cho một phép thử với n kết cục đồng khả năng, trong đó có m kết cục thuận lợi cho A, khi đó $$P(A)=\\frac{m}{n}=\\frac{\\text{số kết cục thuận lợi cho A}}{\\text{tổng số kết cục có thể}}.$$\r\nĐịnh nghĩa trên được gọi là định nghĩa cổ điển của xác suất. Cách tính xác suất theo (2.1) có ưu điểm là tương đối đơn giản và trực quan, tuy nhiên phạm vi áp dụng rất hạn chê chỉ cho các loại phép thử gồm hữu hạn kết cục đồng khả năng.\\\\n '),
(5, 2, 'Định nghĩa thống kê', 'Điều kiện đồng khả năng của các kết cục một phép thử không phải lúc nào cũng được bảo đảm. Có nhiều hiện tượng xảy ra không theo các yêu cầu của định nghĩa cổ điển, chẳng hạn khi tính xác suất một đứa trẻ sắp sinh là con trai, ngày mai trời mưa vào lúc chính ngọ, v.v...\r\nCó một cách khác để xác định xác suất của một sự kiện. Giả sử tiến hành một loạt \\(n_{1}\\) phép thử cùng loại, nếu sự kiện \\(A\\) nào đó xuất hiện trong \\(m_{1}\\) phép thử thì ta gọi \\(m_{1}/n_{1}\\), là tần suất xuất hiện \\(A\\) trong loạt phép thử đã cho. Tương tự với loại phép thử thứ hai, thứ ba... ta có các tần suất tương ứng \\(m_{2}/n_{2}\\), \\(m_{3}/n_{3}\\),...\r\nTrên cơ sở quan sát lâu dài các thí nghiệm khác nhau người ta nhận thấy tần suất xuất hiện một sự kiện có tính ổn định, thay đổi rất ít trong các loạt phép thử khác nhau và dao động xung quanh một hằng số xác định. Sự khác biệt đó càng ít khi số phép thử tăng nhiều lên. Hơn nữa đối với các phép thử xét ở mục 2.1 hằng số xác định đó trùng vối xác suất theo định nghĩa cổ điển. Đặc tính ổn định của tần suất khi số phép thử tăng lên khá lớn cho phép ta định nghía xác suất của sự kiện là trị số ổn định đó của tần suất xuất hiện sự kiện. Nhưng do hằng số đó chưa biết, nên người ta lấy ngay tần suất khi số phép thử đủ lớn làm xác suất của sự kiện. Cách hiểu như vậy được gọi là định nghĩa thống kê của xác suất. '),
(6, 2, 'Định nghĩa tiên đề', 'Các định nghĩa cổ điển và thống kê của xác suất có nhiều hạn chế để xây dựng một lý thuyết tổng quát. Khái niệm cổ điển không dùng được trong trường hợp không thể xây dựng một hệ thống đầy đủ các sự kiện đồng khả năng. Trong khi đó, tần suất chỉ là một giá trị xấp xỉ để đánh giá xác suất, chưa kể đòi hỏi là số quan sát phải rất lớn và giá trị tần suất tìm được phải lớn hơn nhiều sai số đo và cả sai số tính toán.\r\nChúng ta bắt đầu từ hệ thống các tiên đề dưới dạng do Kôn-mô-gô-rôp phát biểu. Các tiên đề đó (giông như các tiên đề toán học khác) được thừa nhận là đúng đắn, tất nhiên căn cứ vào kinh nghiệm cuộc sống và hoạt động thực tiễn. Cách tiếp cận này liên hệ chặt chẽ lý thuyết xác suất với lý thuyết hàm số và tập hợp. Cách xác định xác suất theo tiên đề sẽ chứa trong nó các định nghĩa cổ điển và thống kê của xác suất như là các trường hợp riêng.\r\nTa quay trở lại không gian các sự kiện sơ cấp Ω (xem §1), còn bản thân các phần tử là gì không quan trọng. Tiếp theo xác định hệ thống \\(A\\) các tập  con của Ω, các phần tử của \\(A\\) được gọi là các sự kiện ngẫu nhiên. Ta đặt cho \\(A\\) các yêu cầu hợp lý sau:\r\n(i) \\(A\\) chứa Ω\r\n(ii) Nếu A và B ∈ \\(A\\) thì A̅,B̅, A+B ∈ \\(A\\)\r\nHệ thống \\(A\\) thỏa mãn các điều kiện trên được gọi là đại số \\(Bun\\). \r\nTa gọi xác suất trên (Ω, \\(A\\)) là một hàm số xác định trên \\(A\\) có giá trị trong [0; 1] và thỏa mãn 3 tiên đề\r\n(T1)P(Ω) = l;\r\n(T2)P(A + B) = P(A) + P(B) (A, B xung khắc);\r\n(T3)Nếu dãy \\(A_{n}\\) có tính chất \\( A_{j}\\) => \\(A_{i}\\), ∀ \\(i \\leqslant j\\) và \\(A_{1}A_{2}...A_{n}=V\\), thì \\(P(A_{n})\\longrightarrow 0\\)\r\n(T4)Nếu dãy \\(A_{n}\\) có tính chất xung khắc từng đôi và $$A=\\sum_{n=1}^{\\infty }A_{n}\\in A.$$ thì $$P(A)=P(A_{1})+P(A_{+2})+...+P(A_{n})=\\sum_{n=1}^{\\infty }P(A_{n}).$$\r\nTổ hợp {Ω, \\(A\\), P} sau này thường được gọi là không gian xác suất. '),
(7, 3, 'Khái niệm', 'Thực ra mọi xác suất P(A) đều là có điều kiện, vì sự kiện A xảy ra khi thực hiện một bộ điều kiện xác định. Tuy nhiên, nếu ngoài bộ điều kiện đó ra còn có thêm điều kiện khác thể hiện bằng việc xuất hiện B nào đó, thì người ta đưa ra một khái niệm mới: xác suất có điều kiện của A biết rằng đã xảy ra B, ký hiệu là P(A|B). Bằng trực giác ta cũng thấy rằng khi có B với P(B) > 0 thì nói chung “khả năng” xuất hiện A cũng thay đổi; đặc biệt nếu AB = V khả năng đó triệt tiêu, còn nếu B => A thì khả năng trở thành tất yếu. Vậy là, với điều kiện đã có B,\r\nngười ta xác định một cách tự nhiên khả năng xuất hiện A nào đó bằng một số tỷ lệ với P(AB), tức là số có dạng kP(AB), k > 0. Để xác định hằng số k đó, do P(A|B) = kP(AB) là một xác suất và ta chọn A = B, P(B|B) = 1 , nên kP(B)=1.Từ đó \\(k=\\frac{1}{P(B)}\\)\r\nĐịnh nghĩa 1. Giả sử trong một phép thử ta có P(B) > 0. Khi đó xác suất có điều kiện của sự kiện A nào đó, biết rằng đã\r\ncó B, sẽ là một số không âm, ký hiệu là:\r\n$$P(A|B)=\\frac{P(AB)}{P(B)}.$$\r\nĐịnh nghĩa 2. Ta nói rằng A và B độc lập (thống kê), nếu\r\nP(A|B) = P(A) hoặc P(B|A) = P(B).\r\nĐịnh nghĩa 3. Ta nói bộ sự kiện \\(A_{1}\\), \\(A_{2}\\),..., \\(A_{n}\\) độc lập (hay độc lập trong tổng thể) nếu\r\n$$P_{A_{i1}, A_{i2},..., A_{in}} = P(_{A_{i1}})P(_{A_{i2}})...P(_{A_{ik}}).$$\r\nvói mọi dãy (\\(i_{1}\\), \\(i_{k}\\)) gồm các số nguyên khác nhau lấy từ {1, 2,...n}.'),
(8, 3, 'Công thức cộng và nhân xác suất', 'l. Công thức nhân xác suất\r\n$$P(AB) = P(A)P(B|A) = P(B)P(A|B).$$\r\n(i) Nếu A, B độc lập thì P(AB) = P(A)P(B)\r\n(ii) Mở rộng cho tích n sự kiện\r\n$$P(A_{1}A_{2}...A_{n})=P(A_{1})P(A_{2}|A_{1})P(A_{3}|A_{1}A_{2})...P(A_{n}|A_{1}A_{2}...A_{n-1}).$$\r\n(iii) Nếu \\(A_{1}\\)\\(A_{2}\\)...\\(A_{n}\\) độc lập trong tổng thể, thì:\r\n$$P(\\prod_{i=1}^{n}A_{i})=\\prod_{i=1}^{n}P(A_{i}).$$\r\n2. Công thức cộng xác suất \r\nP(A + B) = P(A) + P(B) - P(AB).\r\n(i) Nếu A, B xung khắc, thì P(A + B) = P(A) + P(B).\r\n(ii) Mở rộng cho tổng n sự kiện\r\n$$P(\\sum_{i=1}^{n}A_{i})=\\sum_{i=1}^{n}P(A_{i})-\\sum_{i\\lt j}P(A_{i}A_{j})+\\sum_{i\\lt j\\lt k}P(A_{i}A_{j}A_{k})-...+(-1)^{n-1}P(A_{1}A_{2}...A_{n}).$$\r\n(iii) Nếu \\(A_{1}\\)\\(A_{2}\\)...\\(A_{n}\\) xung khắc từng đôi\r\n$$P(\\sum_{i=1}^{n})A_{i}=\\sum_{i=1}^{n}P(A_{i}).$$ '),
(9, 3, 'Công thức Béc-nu-li', 'Xét một dãy n phép thử độc lập giống nhau, trong mỗi phép thử chỉ có hai kết cục hoặc xảy ra A hoặc không và P(A) = p. P(A̅)= 1-p = q không phụ thuộc vào số thứ tự của phép thử. Những bài toán thỏa mãn các yêu cầu trên được gọi là tuân theo lược đồ Béc-nu-li và hay gặp trong nhiều lĩnh vực ứng dụng.\r\n$$P(B)=P_{n}(k)=\\mathrm{C}_{n}^{k}p^{k}q^{n-k}, k = 0,1,...n.$$\r\n '),
(10, 4, 'Khái niệm nhóm đầy đủ', 'Nhóm các sự kiện \\(A_{1}\\)\\(A_{2}\\)...\\(A_{n}\\)(n ≥ 2) của một phép thử được gọi là (hay tạo thành) một nhóm đầy đủ, nếu\r\n(i) \\(A_{i}A_{j}=V,\\forall i\\neq j\\) (xung khắc từng đôi)\r\n(ii) $$A_{1}+A_{2}+...+A_{n}=U.$$\r\nTheo định nghĩa này ở phép thử đang xét chỉ có thể xuất hiện một sự kiện trong số n sự kiện \\(A_{1}\\),...,\\(A_{n}\\) và phải có một sự kiện). Nhóm \\(A_{1}\\),...,\\(A_{n}\\) có các tính chất trên còn được gọi là một hệ thống đầy đủ.'),
(11, 4, 'Công thức xác suất đầy đủ', 'Giả sử ta có một nhóm đầy đủ các sự kiện \\(A_{1}\\),\\(A_{2}\\),...,\\(A_{n}\\) và đồng thời xét một sự kiện H nào đó. Nếu đã biết các \\(P(A_{i})\\) và \\(P(H|A_{i})\\), ta có thể tính được \\(P(H)\\). Rõ ràng từ giả thiết về nhóm đầy đủ:\r\n$$H=A_{1}+A_{2}+...+A_{n}=\\sum_{i=1}^{n}A_{i}H.$$\r\nTừ đó, \\(P(H)=P(\\sum_{i=1}^{n}A_{i}H)=\\sum_{i=1}^{n}P(A_{i}H)\\) (do xung khắc), và áp dụng công thức nhân:\r\n$$P(H)=\\sum_{i=1}^{n}P(A_{i})P(H|A_{i}).$$\r\nCông thức trên có tên gọi là công thức xác suất đầy đủ (hay xác suất toàn phần).'),
(12, 4, 'Công thức Bayes', 'Giả sử ta có một nhóm đầy đủ \\(A_{1}\\),\\(A_{2}\\),...,\\(A_{n}\\) sau đó có thêm sự kiện H nào đó. Đôi khi ta  xác định xác suất \\(P(A_{i}|H)\\), i là một số nào đó trong {1, 2, n}. Theo công thức nhân ta có\r\n$$P(A_{i}|H)=P(A_{i})P(H|A_{i})=P(H)P(A_{i}|H).$$\r\nTừ đó, \\(P(A_{i}|H)=\\frac{P(A_{i})P(H|A_{i})}{P(H)}\\) và thay vào\r\n$$P(A_{i}|H)=\\frac{P(A_{i})P(H|A_{i})}{\\sum_{i=1}^{n}P(A_{i})P(H|A_{i})}.$$\r\nCông thức trên có tên gọi là công thức Bayes.'),
(13, 5, 'Khái niệm', 'Tính toán bằng số vốn đã quen thuộc và dễ sử dụng trong ứng dụng, nhất là có dùng tới máy tính. Khi nghiên cứu các sự kiện ngẫu nhiên, rất bất tiện khi mô tả và làm tính với các sự kiện. \r\nKhái niệm biến số (đại lượng biến thiên) đã rất thông dụng trong giải tích toán. Chính vì thế ta tìm cách đưa vào khái niệm biến số ngẫu nhiên như là một đại lượng phụ thuộc vào kết cục của một phép thử ngẫu nhiên nào đó.\r\nThí dụ 1.1. Gieo một con xúc sắc. Nếu ta gọi biến ngẫu nhiên là \"số chấm xuất hiện\", rõ ràng nó phụ thuộc vào kết cục của phép thử và nhận các giá trị nguyên từ 1 đến 6.\r\nThí dụ 1.2. Nghiên cứu biến ngẫu nhiên “nhiệt độ” của một phản ứng hóa học trong một khoảng thời gian nào đó. Rõ ràng nhiệt độ đó nhận giá trị trong một khoảng [t; T], trong đó t và T là các nhiệt độ thấp nhất và cao nhất của phản ứng trong khoảng thời gian trên.\r\nVề mặt hình thức, có thể định nghĩa biến ngẫu nhiên như là một hàm số có giá trị thực xác định trên không gian các sự kiện sơ cấp (sao cho nghịch ảnh của một khoảng số là một sự kiện). Để phân biệt sau này ta kí hiệu X, Y,... là các biến ngẫu nhiên, còn x, y,... là giá trị của các biến ngẫu nhiên đó. Như vậy, X mang tính ngẫu nhiên, còn x là giá trị cụ thể quan sát được khi phép thử đã tiến hành (trong thống kê được gọi là thể hiện của X). '),
(14, 5, 'Phân loại', 'Biến ngẫu nhiên được gọi là rời rạc, nếu tập giá trị của nó là một tập hữu hạn hoặc vô hạn đếm được các phần tử. Thí dụ: Số điểm thi cửa một học sinh, số cuộc gọi điện thoại của một tổng đài trong một đơn vị thòi gian, số tai nạn giao thông,...\r\nBiến ngẫu nhiên được gọi là liên tục, nếu tập giá trị của nó lấp kín  khoảng trên trục số (số phần tử của tập giá trị là vô hạn không đếm được theo lý thuyết số). Thí dụ: huyết áp của một bệnh nhân, độ dài của chi tiết máy, tuổi thọ của một loại bóng đèn điện tử,...\r\nNhư vậy miền giá trị của một biến rời rạc sẽ là một dãy số \\(x_{1}, x_{2},...,x_{n},...\\) có thể hữu hạn hoặc vô hạn. Miền giá trị của một biến liên tục sẽ là một đoạn \\([a; b] \\subset R\\) hoặc là chính \\(R = (-\\infty , +\\infty)\\). '),
(15, 6, 'Bảng phân phối xác suất và hàm xác suất', 'Đối với biến ngẫu nhiên rời rạc, mỗi giá trị của nó được gắn với một xác suất đặc trưng cho khả năng biến ngẫu nhiên nhận giá trị đó \\(p_{i}=P(X=x_{i})\\). Như vậy ta đã xác định:\r\n$$\\begin{array} {|r|r|}\\hline X=x & x_{1} & x_{2} & ... & x_{n} & ... \\\\ \\hline p(x) & p_{1} & p_{2} & ... & p_{n} & ... \\\\ \\hline  \\end{array}.$$\r\ntrong đó {\\(x_{1},x_{2},...,x_{n},...\\)} là tập các giá trị của X (đã sắp xếp theo thứ tự tăng) '),
(16, 6, 'Hàm phân phối xác suất', 'Bảng phân phôi xác suất có một hạn chế cơ bản là chưa đủ tổng quát để đặc trưng cho một biến ngẫu nhiên tùy ý, nhất là trường hợp biến liên tục. Vì vậy người ta đưa ra khái niệm sau:\r\nĐịnh nghĩa 2. Hàm phân phối xác suất của biến ngẫu nhiên X, ký hiệu là \\(F(x)\\), được xác định như sau:\r\n$$F(x) = P(X<x), x\\in \\mathbb{R}.$$\r\nTừ định nghĩa trên, \\(F(x)\\) phản ánh độ tập trung xác suất ở bên phải của số thực X . Trong trường hợp biến ngẫu nhiên rời rạc, nó cho ta một hàm còn được gọi là hàm phân phôi tích lũy (hay xác suất tích lũy). \r\nHàm phân phối xác suất có \\(F(x)\\) vai trò quan trọng khi nghiên cứu các biến ngẫu nhiên liên tục. Nếu ta biết được hàm phân phối xác suất có nghĩa là xác định hoàn toàn biến ngẫu nhiên. Tuy nhiên trong thực tế cũng phải thấy rằng việc tìm được \\(F(x)\\) là rất khó, nếu không nói là hầu như không thể làm được.\r\nCó thể nêu ra một vài tính chất của hàm \\(F(x)\\):\r\n(i) \\(1\\geqslant F(x)\\geqslant 0\\)\r\n(ii) \\(F(x)\\) là một hàm không giảm, tức là nếu \\(x_{2}\\gt x_{1}\\) thì \\(F(x_{2})\\geqslant F(x_{1})\\).\r\n(iii) \\(P(\\alpha\\leqslant X\\leqslant \\beta)=F(\\beta)-F(\\alpha)\\)\r\nHệ quả hiển nhiên: nếu X liên tục và \\(F(x)\\) liên tục tại \\(\\alpha\\) thì \\(P(X=\\alpha)=0\\). \r\n(iv) \\(F(+\\infty )=1;F(-\\infty )=0\\) '),
(17, 6, 'Hàm mật độ xác suất', 'Hàm phân phối \\(F(x)\\) còn một hạn chế (mà bảng phân phối không có) là không cho biết rõ phân phối xác suất ở lân cận một điểm nào đó trên trục số. Vì vậy đối với các biến ngẫu nhiên liên tục, có \\(F(x)\\) khả vi, người ta đưa ra khái niệm sau đây.\r\nĐịnh nghĩa 3. Hàm mật độ xác suất của biến ngẫu nhiên X, ký hiệu là \\(f(x)\\), có hàm phân phối \\(F(x)\\) khả vi (trừ ở một số hữu hạn điểm gián đoạn bị chặn), được xác định bằng $$f(x) = F\'(x).$$ \r\nTừ công thức định nghĩa và các khái niệm đạo hàm và tích phân, ta có ngay do tích phân là phép toán ngược của đạo hàm $$F(x)=\\int_{-\\infty }^{x}f(t)dt.$$\r\nTừ đó ta lại có:\r\n$$P(\\alpha\\leqslant X\\lt \\beta)=\\int_{\\alpha}^{\\beta}f(x)dx.$$\r\nHàm mật độ xác suất của một biến liên tục có hai tính chất cơ bản giống như hàm xác suất ỏ mục trước là:\r\n(i) \\(f(x)\\geqslant 0,\\forall x\\)\r\n(ii) \\(\\int_{-\\infty }^{+\\infty }f(x)dx = 1\\) '),
(18, 7, 'Kỳ vọng', 'Định nghĩa 1: Kỳ vọng của biến ngẫu nhiên X, ký hiệu là EX, được xác định như sau:\r\n-nếu X là biến rời rạc có hàm xác suất \\(p(x_{i})=p_{i}\\), i=1, 2,... thì: $$EX=\\sum_{\\forall i}x_{i}p_{i}.$$\r\n-nếu X là biến liên tục có hàm mật độ \\(f(x),x\\in \\mathbb{R}\\) thì: $$EX=\\int_{-\\infty }^{\\infty }xf(x)dx.$$\r\nQua đó, ta thấy kỳ vọng chính là tổng có trọng số của tất cả các giá trị của X, hay còn là trị trung bình của biến ngẫu nhiên (phân biệt với trung bình cộng của các giá trị). Trong thực tế, nếu quan sát các giá trị của X nhiều lần và lấy trung bình cộng, thì khi số quan sát càng lớn số trung bình đó càng gần tới kỳ vọng EX, vì vậy kỳ vọng còn được gọi là trị trung bình của biến X mà không sợ nhầm lẫn. '),
(19, 7, 'Phương sai', '1. Dùng phép lấy kỳ vọng ở mục trước, ta có thể định nghĩa khái niệm phương sai.\r\nĐịnh nghĩa 2. Phương sai của biến ngẫu nhiên X, ký hiệu là VX. được định nghĩa như sau: $$VX=E[(X-EX)^{2}]\\;(3.3a).$$\r\nTrong tính toán, phụ thuộc vào X là rời rạc (với hàm xác suất \\(p(x)\\)) hay liên tục (với hàm mật độ \\(f(x)\\)), ta có hai công thức tính phương sai: $$VX=\\sum_{\\forall i}(x_{i}-EX)^{2}p_{i}.$$\r\nhoặc $$VX=\\int_{-\\infty }^{\\infty }(x-EX)^{2}f(x)dx\\;(3.3b).$$ \r\nTuy nhiên việc tính theo (3.3) khá phức tạp, vì vậy, dùng các tính chất của kỳ vọng, ta có thể biến đổi (3.2) về dạng tương đương, khá dễ dàng để tính toán $$VX=E(X^{2})-(EX)^{2}.$$\r\nvối các phương án tính ứng với X rời rạc hay liên tục như trong (3.3):\r\n$$VX=\\sum_{\\forall i}\\mathrm{x}_{i}^{2}p_{i}-(\\sum_{\\forall i}x_{i}p_{i})^{2}\\;(3.4a).$$ \r\n$$VX=\\int_{-\\infty }^{\\infty }x^{2}f(x)dx-(\\int_{-\\infty }^{\\infty }xf(x)dx)^{2}\\;(3.4b).$$\r\n2. Đê ý rằng phương sai VX luôn là một  không âm. Từ\r\nđịnh nghĩa ta cũng thấy rằng về mặt vật lý VX không cùng thứ nguyên (cùng đơn vị đo) đôi với X, vì vậy ta đưa vào khái niệm sau đây:\r\nĐịnh nghĩa 3. Độ lệch chuẩn của biến ngẫu nhiên X, ký hiệu là \\(\\sigma(X)\\), được định nghĩa như sau:\r\n$$\\sigma(X)=\\sqrt{VX}\\;(3.5).$$\r\nTừ định nghĩa (3.5), nhiều khi người ta ký hiệu phương sai là \\(\\sigma^{2}(X)\\) hoặc \\sigma^{2} (nếu đã biết rõ là phương sai của biến nào). Độ lệch chuẩn được dùng thường xuyên hơn phương sai do có cùng đơn vị đo với chính biến X.\r\n3. Cuối cùng ta phát biểu một số tính chất của phương sai và độ lệch chuẩn:\r\n(i) \\(Vc\\) = 0 (c-hằng số)\r\n(ii) \\(V(cX)=c^{2}VX;\\sigma(cX)=\\left| c \\right|\\sigma(X);\\)\r\n(iii) Nếu X, Y độc lập thì V(X+Y) = VX + VY;\r\n\\(\\sigma(X+Y)=\\sqrt{\\sigma^{2}(X)+\\sigma^{2}(Y)}\\) '),
(20, 7, 'Một số đặc số khác', '1 . Mốt là giá trị của biến ngẫu nhiên X có khả năng xuất hiện lổn nhất trong một lân cận nào đó của nó. Như vậy đôi với biến rời rạc mốt là giá trị của X ứng với xác suất lớn nhất, còn đối với biến liên tục mốt là giá trị làm hàm mật độ đạt max. Như vậy mốt có thể chỉ là cực đại địa phương và một biến ngẫu nhiên có thể có một mốt hoặc nhiều mốt.\r\n2. Trung vị là giá trị của biến ngẫu nhiên X chia phân phối thành hai phần có xác suất giống nhau, tức là nếu ký hiệu trung vị là \\(medX\\) thì: $$P(X\\lt medX)=P(X\\ge medX)=\\frac{1}{2}.$$\r\nTrung vị còn có tên gọi là phân vị 50% của phân phối. Phân vị là một điểm (giá trị của X) sao cho xác suất để biến ngẫu nhiên nhận giá trị bé hơn nó sẽ bằng số phần trăm cho trước của tổng xác suất phân phối.\r\n3. Mômen là khái niệm tổng quát hơn so với kỳ vọng và phương sai. Định nghĩa 4. Mômen cấp k đối vối a của biến ngẫu nhiên X là một số xác định như sau:\r\n$$v_{k}(a)=E[(X-a)^{k}]\\;(3.6).$$ '),
(21, 8, 'Phân phối đều', '1. Phân phối đều rời rạc\r\nĐịnh nghĩa 1. Biến ngẫu nhiên X được gọi là tuân theo luật đều rời rạc với tham số n, ký hiệu là \\(X\\sim U(n)\\) nếu X có bảng phân phối xác suất\r\n$$\\begin{array} {|r|r|}\\hline x & 1 & 2 & ... & n \\\\ \\hline p(x) & \\frac{1}{n} & \\frac{1}{n} & ... & \\frac{1}{n} \\\\ \\hline  \\end{array}..$$\r\nNhư vậy hàm xác suất sẽ có dạng \\(p(i)=\\frac{1}{n},i=\\overline{1,n}\\)\r\n2. Phân phối đều liên tục\r\nĐịnh nghĩa 2. Biến ngẫu nhiên X được gọi là tuân theo luật phân phối đều liên tục trên [a;b] ký hiệu là \\(X\\sim U([a;b])\\), nếu X có hàm mật độ (a < b):\r\n$$f(x) = \\left\\{ \\begin{array}{cl}\r\n\\frac{1}{b-a}, x\\in [a;b] \\\\\r\n0, x\\notin [a;b]\r\n\\end{array} \\right..$$ '),
(22, 8, 'Phân phối nhị thức', '1. Phân phối Béc-nu-li\r\nĐịnh nghĩa 3. Biến ngẫu nhiên X được gọi là tuân theo luật phân phối Béc-nu-li, ký hiệu là X ~ B(1,p) nếu hàm xác suất của nó có dạng: $$p(x)=p^{x}(1-p)^{1-x}\\;x = 0 và 1..$$ \r\n2. Phân phối nhị thức\r\nĐây là một trong các phân phối rất hay dùng trong thống kê hiện đại. ở chương I ta đã làm quen với lược đồ Béc-nu-li khi xét dãy n phép thử độc lập, giống nhau, trong mỗi phép thử sự kiện A xuất hiện với xác suất p. Nếu gọi X là số lần xuất hiện A trong dãy n phép thử đó, ta đã biết X có các giá trị từ 0 đến n với các xác suất tương ứng (q = 1-p):\r\n$$p(x)=P_{n}(x)=\\mathrm{C}_{n}^{x}p^{x}q^{n-x},x=\\overline{0,n}.$$\r\nCác điều kiện để có phân phôi nhị thức:\r\n- dãy các phép thử giống nhau, độc lập;\r\n- trong mỗi phép thử chỉ có 2 kết cục (có và không);\r\n- hai tham số hằng xác định: số các phép thử n và xác suất xuất hiện 1 trong 2 kết cục trên là p. '),
(23, 8, 'Phân phối Poa-xông', 'Định nghĩa 5. Biến ngẫu nhiên X được gọi là tuân theo luật phân phối Poa-xông, ký hiệu là X ~ \\(P(\\lambda)\\) nếu hàm xác suất của nó có dạng:\r\n$$p(x)=\\frac{\\lambda^{x}e^{-\\lambda}}{x!}\\; x=0,1,2,... \\;(4.5).$$\r\nPhân phối Poa-xông có nhiều ứng dụng trong lý thuyết phục vụ đám đông, kiểm tra chất lượng sản phẩm... Chẳng hạn số cuộc gọi điện thoại của một tổng đài trong 1 ngày, số lượng khách hàng của một nhà băng trong 1 giờ... đều là các biến ngẫu nhiên có phân phối Poa-xông. '),
(24, 8, 'Phân phối chuẩn', 'Đây là phân phối liên tục quan trọng và có ứng dụng rộng rãi nhất, còn có tên gọi là phân phối Gao-xơ,\r\nĐịnh nghĩa 9. Biến ngẫu nhiên X được gọi là tuân theo luật phân phối chuẩn, ký hiệu lầ X ~ N(a,\\(\\sigma^{2}\\)), nếu hàm mật độ của nó có dạng: $$f(x)=\\frac{1}{\\sigma\\sqrt{2\\Pi}}e^{-\\frac{(x-a)^{2}}{2\\sigma^{2}}},x\\in \\mathbb{R}.$$ '),
(25, 9, 'Các khái niệm cơ sở', '1 . Ở hai chương trước ta đã nghiên cứu bản chất xác suất của một biến ngẫu nhiên riêng rè. Nhưng trong thực tế nhiều khi phải xét đồng thời nhiều biến khác nhau có quan hệ tương hỗ và dẫn tối khái niệm véc tơ ngẫu nhiên hay biến ngẫu nhiên nhiều chiều. Những thí dụ về các biến nhiều chiểu rất phổ biến, chang hạn khi nghiên cứu một chi tiết máy, ta quan tâm đồng thòi đến nhiều khía cạnh khác nhau như trọng lượng, kích thước (riêng nó đã là nhiều chiều), chất lượng, chất liệu... Việc nghiên cứu riêng rẽ từng khía cạnh có thể cho ta các thông tin không đầy đủ. Để cho đơn giản, ta nghiên cứu biến ngẫu nhiên 2 chiều (X, Y), trong đó X và Y là các biến một chiều. Hầu hết các kết quả có thể mở rộng khá dễ dàng cho biến n chiều. Nếu X và y là rời rạc, ta có biến ngẫu nhiên hai chiều rời rạc; nếu chúng liên tục, ta có biến hai chiều liên tục. Sẽ phức tạp hơn một chút là một biến rời rạc và một biến liên tục mà ta không xét ở đây.\r\n2. Ta phát triển khái niệm hàm phân phối xác suất cho biến ngẫu nhiên hai chiều. Xét hai sự kiện A = {X < x} và B = {Y < y}.\r\nĐịnh nghĩa 1. Hàm phân phối xác suất của biến hai chiều\r\n(X, Y) được xác định như sau:\r\n$$F(x,y)=P(AB)=P(X\\lt x;Y\\lt y),x,y\\in \\mathbb{R}.$$\r\nTương tự như trường hợp một chiều, ta có thể dẫn ra một số tính chất của hàm phân phối hai chiều:\r\n(i) \\(1\\ge F(x,y)\\ge 0\\)\r\n(ii) \\(F(x, y)\\) không giảm theo từng đối số;\r\n(iii) \\(F(-\\infty ,y)=F(x;-\\infty )=0;F(+\\infty ;+\\infty )=1\\) (giá trị ±\\(\\infty\\) hiểu theo nghĩa lấy giới hạn);\r\n(iv) Với \\(x_{1}\\lt x_{2};y_{1}\\le y_{2}\\), ta luôn có\r\n$$P(x_{1}\\le X\\lt x_{2};y_{1}\\le Y\\lt y_{2})=F(x_{2},y_{2})-F(x_{2},y_{1})-F(x_{1},y_{2})+F(x_{1},y_{1}).$$\r\nĐịnh nghĩa 2. Hai biến ngẫu nhiên X và Y được gọi là độc lập nếu $$F(x,y)=F_{1}(x)F_{2}(y).$$ '),
(26, 9, 'Phân phối xác suất của biến ngẫu nhiên hai chiều rời rạc', '1. Giống như trường hợp một chiều ta tìm cách xác định biến hai chiều rời rạc qua bảng phân phối xác suất.\r\nĐịnh nghĩa 3. Bảng phân phối xác suất của biến (X, Y) rời rạc là\r\n$$\\begin{array} {|r|r|}\\hline \\textbf{x\\y} & y_{1} & y_{2} & ... & y_{j} & ... & y_{m} & \\sum_{j} \\\\ \\hline x_{1} & p_{11} & p_{12} & ... & p_{1j} & ... & p_{1m} & p_{1}(x_{1}) \\\\ \\hline x_{2} & p_{21} & p_{22} & ... & p_{2j} & ... & p_{2m} & p_{2}(x_{2}) \\\\ \\hline \\vdots  & \\vdots  & \\vdots  & ... & \\vdots  & ... & \\vdots  & \\vdots  \\\\ \\hline x_{i} & p_{i1} & p_{i2} & ... & p_{ij} & ... & p_{im} & p_{i}(x_{i}) \\\\ \\hline \\vdots  & \\vdots  & \\vdots  & ... & \\vdots  & ... & \\vdots  & \\vdots \\\\ \\hline x_{n} & p_{n1} & p_{n2} & ... & p_{nj} & ... & p_{nm} & p_{n}(x_{n}) \\\\ \\hline \\sum_{i} & p_{2}(y_{1}) & p_{2}(y_{2}) & ... & p_{2}(y_{j}) & ... & p_{2}(y_{m}) & 1 \\\\ \\hline  \\end{array}.$$\r\ntrong đó \\(p_{ij}=P(X=x_{i};Y=y_{j})\\) là xác suất đồng thời để X lấy giá trị \\(x_{i},i=\\overline{1,n}\\) và Y lấy giá trị \\(y_{j},j=\\overline{1,m}\\).Bảng này có thể trở thành vô hạn khi n, m nhận giá trị \\(\\infty \\). Tính chất:\r\n(i) \\(p_{ij}\\ge 0\\;\\forall i,j\\)\r\n(ii) \\(\\sum_{i}\\sum_{j}p_{ij}=1\\) (tổng hiểu theo nghĩa lấy theo \\(\\forall i,j\\)) '),
(28, 9, 'Phân phối xác suất của biến ngẫu nhiên hai chiểu liên tục', '1 . Khái niệm hàm phân phối xác suất của biến hai chiều (X, Y) liên tục đã được xét ở định nghĩa 1 (công thức (1.1). Ta sẽ đưa ra khái niệm hàm mật độ của (X, Y) như sau\r\nĐịnh nghĩa 4. Nếu hàm phân phối F(x, y) của biến hai chiều (X, Y) có dạng: $$F(x,y)=\\int_{-\\infty }^{x}\\int_{-\\infty }^{y}f(u,v)dudv,\\; (1.8a).$$\r\ntrong đó \\(f(x, y)\\) > 0, thì hàm \\(f(x, y)\\) được gọi là hàm mật độ của biến (X; Y) (hay hàm mật độ đồng thời của X và Y).\r\nVề mặt hình học, hàm \\(f(x, y)\\) có thể xem như là một mặt cong trong \\(\\mathrm{R}^{3}\\) và được gọi là mặt phân phối xác suất. Nếu \\(f(x, y)\\) liên tục theo cả hai biến thì:\r\n$$f(x, y)=\\frac{\\partial (x,y)}{\\partial x \\partial y}\\; (1.8b).$$\r\nTính chất:\r\n(i) \\(f(x, y)\\ge 0;\\)\r\n(ii) \\(\\int_{-\\infty }^{+\\infty }\\int_{-\\infty }^{+\\infty }f(x,y)dxdy=1\\)\r\n(iii) \\(P[(X,Y)\\in D]=\\int_D\\int f(x,y)dxdy\\) \r\n2. Tương tự như (1.2), hai biến ngẫu nhiên được gọi là độc lập, nếu $$f(x,y)=f_{1}(x)f_{2}(y)\\; (1.10).$$ \r\nNếu mật độ đồng thời của X và Y không bằng tích các mật độ biên \\(f_{1}\\) và \\(f_{2}\\), ta nói X và Y không độc lập. Trong trường hợp đó có thể đưa vào khái niệm hàm mật độ có điều kiện của thanh phần X biết Y = y, ký hiệu là $$\\varphi(x|y)=\\frac{f(x,y)}{f_{2}(y)}=\\frac{f(x,y)}{\\int_{-\\infty }^{+\\infty }f(x,y)dx}\\; (1.11).$$ '),
(29, 10, 'Các số đặc trưng của các biến thành phần', 'Các biến X và Y đã có các số đặc trưng quan trọng là kỳ vọng và phương sai. ở đây ta nhắc lại kết quả đã biết có để ý đến các khái niệm mới ở chương này, các công thức chỉ viết cho biến X, đối với Y hoàn toàn tương tự.\r\nNếu X là biến rời rạc:\r\n$$EX=\\sum_{i}x_{i}p_{1}(x_{i})=\\sum_{i}\\sum_{j}x_{i}p(x_{i},y_{j}).$$\r\n$$VX=\\sum_{i}(xi-EX)^{2}p_{1}(x_{i})=\\sum_{i}\\sum_{j}\\mathrm{x}_{i}^{2}p(x_{i},y_{j})-(EX)^{2}.$$ \r\nCòn nếu X là biến liên tục:\r\n$$EX=\\int_{-\\infty }^{+\\infty }xf_{1}(x)dx=\\int_{-\\infty }^{+\\infty }\\int_{-\\infty }^{+\\infty }x^{2}f(x,y)dxdy-(EX)^{2}.$$\r\n$$VX=\\int_{-\\infty }^{+\\infty }(x-EX)^{2}f_{1}(x)dx=\\int_{-\\infty }^{+\\infty }\\int_{-\\infty }^{+\\infty }x^{2}f(x,y)dxdy-(EX)^{2}.$$ \r\nMở rộng phép lấy kỳ vọng, ta có thể dẫn ra các công thức tổng quát hơn. Chẳng hạn nếu (X, Y) có phân phối đã biết và ta xác định biến mới \\(z=g(X, Y)\\), g là hàm đo được), khi đó:\r\n$$E\\text{{g(X, Y)}}=\\sum_{i}\\sum_{j}g(x_{i},y_{j})p(x_{i},y_{j})\\; (biến\\;rời\\;rạc).$$ \r\n$$=\\int_{\\forall x,y}\\int g(x,y)f(x,y)dxdy\\;(biến\\;liên\\;tục).\\;\\;(2.1).$$ \r\nKhi đó, để tính EX ta chỉ cần đặt \\(g = X\\) và thay vào công thức (2.1); để tính VX đặt \\(g=(X-EX)^{2}\\) '),
(30, 10, 'Hiệp phương sai và hệ số tương quan', 'Trong (2.1), nếu thay \\(g(X, Y) = (X - EX) (Y - EY)\\), ta có thể định nghĩa hiệp phương sai của hai biến X và Y, ký hiệu là \\(\\mu_{XY}\\)\r\n$$\\mu_{XY}=E[(X-EX)(Y-EY)]=E(XY)-EX.EY.\\;(2.2).$$\r\nChú ý là phép toán lấy \\(E\\) ở bên ngoài dấu ngoặc móc hiểu theo nghĩa (2.1) và không giông như trường hợp biến một chiều. Phụ thuộc vào (X, Y) là rời rạc hay liên tục, ta có\r\n$$\\mu_{XY}=\\sum_{i}\\sum_{j}x_{i}x_{j}p(x_{i}x_{j})-EX.EY.\\;(2.2a).$$\r\n$$\\mu_{XY}=\\int_{-\\infty }^{+\\infty }\\int_{-\\infty }^{+\\infty }xyf(x,y)dxdy-EX.EY.\\;(2.2b).$$\r\nDễ thấy phương sai là trường hợp riêng của hiệp phương sai khi \\(X=Y\\) và \\(VX=\\mu_{XY}\\). Hiệp phương sai được dùng làm độ đo quan hệ giữa hai biến X và Y; nếu chúng đồng biến cùng nhau thì hiệp phương sai dương, nếu chúng nghịch biến ta có hiệp phương sai âm.\r\nĐịnh nghĩa 1. Nếu \\(\\mu_{XY}=0\\), ta nói rằng X và Y không tương quan. Hệ số tương quan, ký hiệu là \\(\\rho_{XY}\\), được xác định như sau:\r\n$$\\rho_{XY}=\\frac{\\mu_{XY}}{\\sigma_{X}\\sigma_{Y}}.\\;(2.3).$$ '),
(31, 10, 'Các số đặc trưng có điểu kiện', 'Dùng các khái niệm xác suất có điều kiện (xem (1.6)) và hàm mật độ có điều kiện (xem (1.11)), ta có thể định nghĩa kỳ vọng có điều kiện của biến ngẫu nhiên \\(X\\) với \\(Y = y\\) là một giá trị xác định như sau:\r\n$$E(X|y_{k})=\\sum_{i}x_{i}P(X=x_{i}|Y-y_{k})\\;(X\\;rời\\;rạc),.$$\r\n$$E(X|y)=\\int_{-\\infty }^{+\\infty }x\\varphi(x|y)dx\\;(X\\;liên\\;tục).$$\r\nTương tự có thể định nghĩa \\(E(Y|x)\\) và các phương sai tương ứng. Tính chất:\r\n(i) với mọi \\(g\\) liên tục \\(E[g(X)Y|X]=g(X)E(Y|X);\\)\r\n(ii) \\(E(X_{1}+X_{2}|X)=E(X_{1}|X)+E(X_{2}|X);\\)\r\n(iii) Nếu \\(X, Y\\) độc lập \\(E(Y|X)=E(Y);\\)\r\n(iv) \\(E[E(Y|X)]=EY\\) '),
(32, 10, 'Phân phối chuẩn hai chiều', 'Để cho gọn, ta dùng các ký hiệu sau:\r\n$$a_{X}=EX;a_{Y}=EY;\\sigma^{2}_{X}=VX;\\sigma^{2}_{Y}=VY;\\rho=\\rho_{XY}\\;và\\;\\mu=\\mu_{XY}.$$\r\nĐịnh nghĩa 2. Biến ngẫu nhiên hai chiều \\((X, Y)\\) được gọi là tuân theo luật phân phổi chuẩn, ký hiệu là \\(\\mathscr{N}(a_{X},a_{Y},\\sigma^{2}_{X},\\sigma^{2}_{Y},\\rho)\\) nếu hàm mật độ đồng thời của X và Y có dạng\r\n$$f(x,y)=\\frac{1}{2\\Pi\\sigma_{X}\\sigma_{Y}\\sqrt{1-p^{2}}}\\times exp\\left\\{ -\\frac{1}{2(1-p^{2})}\\left[ (\\frac{x-a_{X}}{\\sigma_{X}})^{2}+\\frac{y-a_{Y}}{\\sigma_{Y}})^{2}-2\\rho\\frac{(x-a_{X})(y-a_{Y})}{\\sigma_{X}\\sigma_{Y}} \\right] \\right\\}.\\;(2.4).$$ '),
(33, 11, 'Hàm của một biến ngẫu nhiên', 'Nếu ta xác định \\(Z=g(X)\\) là một hàm của biến ngẫu nhiên \\(X\\) thì \\(Z\\) trở thành một biến ngẫu nhiên mới. Vấn đề đặt ra là tìm cách xác định luật phân phối của \\(Z\\) qua luật phân phối đã biết của \\(X\\) ở đây ta chỉ xét các trường hợp đơn giản khi hàm \\(g\\) không quá phức tạp. \r\nKhi \\(X\\) là biến ngẫu nhiên liên tục, vấn đề sẽ phức tạp hơn. Giả sử \\(X\\) có hàm mật độ \\(f(x)\\) đã biết và \\(Z=g(X)\\), trong đó \\(g\\) là hàm đơn điệu sao cho tồn tại hàm ngược duy nhất \\(X=\\psi(Z)=g^{-1}(Z)\\). Khi đó hàm mật độ của \\(\\varphi(z)\\) của biến \\(Z=g(X)\\) sẽ là:\r\n$$\\varphi(z)=f[\\psi(z)]\\left| \\psi\'(z) \\right|.\\;(3.1).$$\r\nTừ công thức (3.1) ta có hàm mật độ của Y = aX + b là:\r\n$$\\varphi(y)=f[\\psi(y)]\\left| \\psi\'(y) \\right|=\\frac{1}{\\left| a \\right|\\sigma\\sqrt{2\\Pi}}exp\\left\\{ -\\frac{[y-(am+b)]^{2}}{2(a\\sigma)^{2}} \\right\\}.$$\r\nĐó chính là hàm mật độ của luật phân phối chuẩn với hai tham số \\(EY=am+b\\;và\\;VY=a^{2}\\sigma^{2}\\). Như vậy một hàm tuyến tính của biến ngẫu nhiên chuẩn vẫn bảo toàn tính phân phối chuẩn. '),
(34, 11, 'Hàm của hai biến ngẫu nhiên', 'Xét biến ngẫu nhiên \\(Z=g(X, Y)\\), trong đó \\((X, Y)\\) là biến ngẫu nhiên 2 chiều đã biết luật phân phối xác suất. Nếu \\(g\\) là một hàm tùy ý thì bài toán xác định luật phân phối của \\(Z\\) qua luật phân phối của \\((X, Y)\\) sẽ rất phức tạp. Ta sẽ xét một trường hợp đơn giản khi \\(g(X, Y) = X+Y\\).\r\n1. Trường hợp các biến X, Y rời rạc\r\nTheo công thức xác suất đầy đủ (tổng lấy theo i sao cho \\(x_{i}+y_{i}=z_{k}\\))\r\n$$P(Z=z_{k})=\\sum_{i}P(X=x_{i})P(Y=z_{k}-x_{i}|X=x_{i}).$$\r\nNếu X và Y độc lập:\r\n$$P(Z=z_{k})=\\sum_{i}P(X=x_{i})P(Y=z_{k}-x_{i}).\\;(3.2).$$\r\n2. Trường hợp các biến X, Y liên tục\r\nGọi \\(\\phi(z)\\) là hàm phân phối của biến Z = X + Y, ta có\r\n$$\\phi(z)=P(Z\\lt z)=P(X+Y\\lt z).$$\r\n$$\\phi(z)=P((X,Y)\\in \\mathscr{D})=\\int_{\\mathscr{D}}\\int f(x,y)dxdy=\\int_{-\\infty }^{+\\infty }\\left\\{ \\int_{-\\infty }^{z-x}f(x,y)dy \\right\\}dx.$$\r\nLây đạo hàm hai vê theo \\(z\\) và gọi \\(\\phi(z)=\\phi\'(z)\\) là mật độ của Z:\r\n$$\\phi(z)=\\int_{-\\infty }^{+\\infty }f(x,z-x)dx.\\;(3.3a).$$\r\nTương tự nếu ta thay đối trình tự lấy tích phân:\r\n$$\\phi(z)=\\int_{-\\infty }^{+\\infty }f(z-y,y)dy.\\;(3.3b).$$\r\nTrong trường hợp riêng, khi X và Y độc lập, từ (3.3) ta có:\r\n$$\\phi(z)=\\int_{-\\infty }^{+\\infty }f_{1}(x)f_{2}(z-x)dx=\\int_{-\\infty }^{+\\infty }f_{1}(z-y)f_{2}(y)dy,\\;(3.4).$$\r\nTrong đó \\(f_{1}\\) và \\(f_{2}\\) là các hàm mật độ biên của X và Y tương ứng. Biêu thức (3.4) mô tả một phép toán liên hệ hai hàm \\(f_{1}\\) và \\(f_{2}\\): nó được gọi là tích chập, ký hiệu là \\(f_{1}\\)*\\(f_{2}\\). '),
(35, 11, 'Các số đặc trưng của hàm của các biến ngẫu nhiên', 'Khi muốn tính các số đặc trưng (kỳ vọng, phương sai,...) của biến ngẫu nhiên \\(X=g(X, Y)\\), đã biết luật phân phân phối xác suất của \\(Z\\), ta không gặp trở ngại gì lớn. Tuy nhiên việc xác định luật phân phối của \\(Z\\) khá phức tạp. Trong thực tế nhiều khi ta chỉ cần quan tâm đến các số đặc trưng của \\(Z\\) là đủ.\r\nChẳng hạn trong trường hợp khi X và Y là các biến rời rạc và đã biết phân phối đồng thời \\(p(x_{i};y_{j})\\)\r\n$$EZ=E[g(X,Y)]=\\sum_{i}\\sum_{j}g(x_{i};y_{j})p(x_{i};y_{j}).\\;(3.6a).$$\r\nNếu \\((X, Y)\\) liên tục có hàm mật độ \\(f(x, y)\\), thì\r\n$$EZ=\\int_{\\mathcal{R}^{2}}\\int g(x,y)f(x,y)dxdy.\\;(3.6b).$$ '),
(36, 12, 'Sự hội tụ của dãy biến ngẫu nhiên', '1. Hội tụ hầu chắc chắn\r\nTa nói rằng dãy biến ngẫu nhiên {\\(X_{n}\\)} hội tụ hầu chắc chắn (hay hội tụ mạnh) đến biến X ký hiệu là \\(X_{n}\\xrightarrow[n\\longrightarrow \\infty ]{\\text{hcc}}\\), nếu \\(P(\\lim_{n \\to \\infty }X_{n}\\neq X)=0\\)\r\nCó thể dùng một tiêu chuẩn khác để xác định hội tụ hầu chắc chắn: Điều kiện cần và đủ để \\(X_{n}\\xrightarrow[n\\to \\infty ]{hcc}X\\), là \\(\\forall \\varepsilon\\gt 0\\):\r\n$$P\\left( \\left\\{ \\sup_{m\\ge n} \\left| X_{m}-X \\right|\\gt \\varepsilon \\right\\} \\right) \\xrightarrow[n\\to \\infty ]{}0.\\;(4.1).$$\r\n2. Hội tụ theo xác suất\r\nTa nói rằng dãy {\\(X_{n}\\)} hội tụ theo xác suất đến X, ký hiệu \\(X_{n}\\xrightarrow[n\\to \\infty ]{XS}X\\), nếu\r\n$$\\forall \\varepsilon\\gt 0:P\\left( \\left\\{ \\left| X_{n}-X \\right|\\gt \\varepsilon \\right\\} \\right)\\xrightarrow[n\\to \\infty ]{\\text{}}0.\\;(4.2).$$\r\n3. Hội tụ theo luật\r\nTa nói rằng dãy {\\(X_{n}\\)} hội tụ theo luật đến X, ký hiệu \\(X_{n}\\xrightarrow[n\\to \\infty ]{L}X\\), nếu hàm phân phối \\(F_{n}(x)\\) của \\(X_{n}\\) hội tụ đến hàm phân phối \\(F(x)\\) của biến \\(X\\) tại mọi điểm liên tục của hàm \\(F(x)\\). \r\n4. Hội tụ trung binh cấp k\r\nTa nói rằng dãy {\\(X_{n}\\)} hội tụ theo luật đến X, ký hiệu \\(X_{n}\\xrightarrow[n\\to \\infty ]{tbk}X\\), nếu \\(E\\left[  \\left| X_{n} -X\\right|^{k}\\right]\\xrightarrow[n\\to \\infty ]{\\text{}}0\\) (với điều kiện kỳ vọng đó tồn tại). Hội tụ trung bình cấp k (thường hay dùng với k = 2 - hội tụ trung bình bình phương) kéo theo hội tụ theo xác suất. '),
(37, 12, 'Các định lý giới hạn', '1. Các định lý giới hạn Moa-vrơ - Láp-la-xơ\r\nSử dụng kết quả (4.3) dễ dàng suy ra định lý giới hạn địa phương Moa-vrơ - Láp-la-xơ (xem (3.13) chương I)\r\n$$P_{n}(k)\\approx \\frac{\\varphi(x_{k})}{\\sqrt{npq}},x_{k}=\\frac{k-np}{\\sqrt{npq}};\\varphi(x)=\\frac{1}{\\sqrt{2\\Pi}}e^{-\\frac{x^{2}}{2}};\\;(4.4).$$\r\nvà định lý giới hạn tích phân (xem (3.14) chương I, (4.18) chương II)\r\n$$P_{n}(k_{1},k_{2})\\approx \\phi(x_{2})-\\phi(x_{1}),x_{i}=\\frac{k_{i}-np}{\\sqrt{npq}},i=1,2,\\;(4.5).$$\r\n$$\\phi(x)=\\frac{1}{\\sqrt{2\\Pi}}\\int_{0}^{x}e^{-\\frac{t^{2}}{2}}=\\int_{0}^{x}\\varphi(t)dt..$$\r\nCông thức xấp xỉ (4.5) sẽ khá tốt khi np \\(\\ge \\) 5 hoặc nq \\(\\ge \\) 5. Nếu p càng gần 0,5 đồ thị của phân phối nhị thức càng rất gần chuẩn.\r\n2. Định lý giới hạn trung tâm\r\nLin-đơ-bớc - Lê-vi đã mở rộng định lý giới hạn Moa-vrơ - Láp-la-xơ từ năm 1922 và kết quả đó mang tên định lý giới hạn trung tâm: giả sử {\\(X_{n}\\)} là dãy các biến ngẫu nhiên độc lập có cùng phân phối với \\(EX_{n}=m\\) và \\(VX_{n}=\\sigma^{2}\\;\\forall \\), khi đó\r\n$$\\frac{\\overline{X}-m}{\\sigma}\\sqrt{n}\\xrightarrow[n\\to \\infty ]{\\text{L}}\\mathscr{N}(0;1)\\;với\\;\\overline{X}_{n}=\\frac{1}{n}\\sum_{i=1}^{n}X_{i}.\\;(4.6).$$\r\nÝ nghĩa của định lý giới hạn trung tâm là khi có nhiều nhân tố ngẫu nhiên tác động (sao cho không có nhân tố nào vượt trội lấn át các nhân tố khác) thì kết quả của chúng có dạng phân phối tiệm cận chuẩn. '),
(38, 12, 'Luật số lớn', 'Một lóp các định lý giới hạn đặc biệt có tên gọi là luật số lớn. Để ý là trong các kết quả sau này ta sử dụng khái niệm hội tụ theo xác suất (mạnh hơn (4.4) - (4.6) dùng hội tụ theo luật phân phối).\r\n1. Bất đẳng thức Trê-bư-sép\r\nĐịnh lý 1. Nếu biến ngẫu nhiên X có kỳ vọng \\(EX=a\\) và phương sai \\(VX=\\sigma^{2}\\) hữu hạn thì:\r\n$$PP\\left( \\left| X-a \\right|\\ge \\varepsilon \\right)\\lt \\frac{\\sigma^{2}}{\\varepsilon^{2}},\\;\\forall \\varepsilon\\gt 0.\\;(4.7).$$\r\n2. Luật số lớn Trê-bư-sép\r\nĐịnh lý 2. Nếu dãy các biến ngẫu nhiên \\(X_{1},X_{2},...,X_{n},...\\) độc lập có kỳ vọng hữu hạn và phương sai bị chặn đều (tức là \\(VX_{i}\\le C\\;\\forall i \\)), khi đó với mọi \\(\\varepsilon>0\\)\r\n$$\\lim_{n \\to \\infty } P\\left( \\left| \\frac{1}{n} \\sum_{i=1}^{n}X_{i}-\\frac{1}{n}\\sum_{i=1}^{n}EX_{i}\\right|\\lt \\varepsilon \\right)=1.\\;(4.9).$$\r\n3. Luật số lớn Béc-nu-li\r\nĐịnh lý 3. Nếu ta có dãy n phép thử độc lập Béc-nu-li, với p = P(A) và m là số lần xuất hiện A trong dãy phép thử đó, thì \\(\\forall \\varepsilon>0\\)\r\n$$\\lim_{n \\to \\infty } P\\left( \\left| \\frac{m}{n}-p \\right|\\lt \\varepsilon \\right)=1.\\;(4.11).$$ '),
(39, 13, 'Mẫu và tập đám đông', 'Trong công việc hàng ngày ta phải làm việc với các dãy số liệu. Chúng có thể là kết quả của việc đếm khi quan sát, của đo đạc nhờ các thiết bị đo, của tính toán trước đó... và cần được thu thập, lưu trữ và phân tích. Để làm được điều đó ta cần sắp xếp lại các số, tổng hợp và xử lý bước đầu nhằm tìm kiếm các thông tin quan trọng của tập số liệu. Phần công việc này và vấn đề thu thập các số liệu được mang tên gọi là thống kê mô tả.\r\nDãy số liệu thống kê thường được gọi là mẫu. Nó có nguồn gốc từ một tập lớn hơn mà ta sẽ gọi là tập đám đông hay tập nền. Chính vì thế mẫu sẽ mang thông tin nào đó về tập nền, mặc dù các thông tin đó có thể khác nhau ở những mẫu khác nhau. Sau này để cho xác định, ta giả sử rằng cả tập nền lẫn mẫu đều là tập các số cùng bản chất, đặc trưng cho một số khía cạnh nào đó của các đối tượng quan tâm. Các số đó chính là các giá trị khác nhau của một biến số. Nếu tập giá trị có thể có của biến số có số lượng hữu hạn, ta có biến rời rạc. Đối vối các biến liên tục, số lượng giá trị là vô hạn không đếm được và tập số liệu chỉ phản ánh tập nền với một độ chính xác nhất định.\r\nMuốn có đầy đủ thông tin về đối tượng nào đó, ta phải làm việc với tập nền. Tuy nhiên việc nghiên cứu tập nền sẽ vô cùng khó khăn vì:\r\n- do nó quá lớn dẫn đến đòi hỏi quá nhiều chi phí vật chất và thời gian;\r\n- do trình độ tổ chức và nghiên cứu hạn chế của đội ngũ khi làm việc với quy mô lớn, không nắm bắt và kiểm soát được quá trình nghiên cứu;\r\n- do nhiều khi không thể làm được nếu tập nền biến động nhanh, các phần tử thay đổi thường xuyên, v.v...\r\nNhư vậy việc nghiên cứu trên tập nền, trừ các tập đủ bé, thường không thể thực hiện được. Từ đó đặt ra vấn đề chọn\r\nmẫu và nghiên cứu trên tập mẫu. Nếu mẫu được chọn ngẫu nhiên và với số lượng đủ, chúng ta hy vọng rằng việc xử lý chúng sẽ cho ta kết quả vừa nhanh vừa đỡ tốn kém mà vẫn đạt được độ chính xác và tin cậy cần thiết. '),
(40, 13, 'Vấn đề chọn mẫu', 'Ta mong muốn mẫu có tính đại diện tốt cho tập nền bởi vì việc nghiên cứu với mẫu như vậy cho ta độ tin cậy cao. Hiện nay có nhiều phương pháp khác nhau để chọn mẫu, nhưng khó có thể nói rằng phương pháp nào là tốt nhất. Việc chọn phương pháp lấy mẫu phù hợp phụ thuộc vào chính tập đối tượng cụ thể và vào thói quen sở trường của nhà nghiên cứu. \r\n1. Chọn mẫu ngẫu nhiên\r\nTrong phương pháp chọn mẫu ngẫu nhiên, mỗi phần tử của tập nền đã có xác suất chọn xác định từ trước cả khi chọn mẫu. Mẫu ngẫu nhiên cho phép đánh giá khách quan hơn các đặc trưng của tập nền. Có 3 cách chọn như sau:\r\na) Chọn mẫu ngẫu nhiên đơn giản là phương pháp chọn mẫu có tính chất: mọi mẫu có cùng kích cỡ (cùng số phần tử) có cùng xác suất được chọn và mọi phần tử của tập nền có đồng khả năng lọt vào mẫu. Để việc chọn hoàn toàn ngẫu nhiên, ta có thể tiến hành theo kiểu bốc thăm hoặc dùng bảng\r\nsố ngẫu nhiên, ở đây để ý có hai phương thức chọn là không hoàn lại (mỗi phần tử chỉ được chọn một lần) và có hoàn lại.\r\nNếu số lượng phần tử của mẫu khá bé so vối tập nền thì kết quả lấy mẫu theo hai phương thức sai lệch không đáng kể. Do\r\ntính ngẫu nhiên nên mẫu có tính đại diện cao và tin cậy. Tuy nhiên phương pháp đòi hỏi phải biết toàn bộ tập nền và vì thế\r\nchi phí chọn mẫu khá lớn.\r\nb) Chọn mẫu phân nhóm: Đầu tiên ta chia tập nền thành các nhóm tương đối thuần nhất, sau đó từ mỗi nhóm trích ra một mẫu ngẫu nhiên; tập hợp tất cả các mẫu đó cho ta một mẫu (ngẫu nhiên) phân nhóm. Người ta dùng phương pháp này khi trong nội bộ tập nền có những sai khác lốn. Nhà nghiên cứu phải có hiểu biết nhất định về cấu trúc tập nền để phân chia nhóm hợp lý. Sau này mỗi nhóm sẽ có vai trò khác nhau phụ thuộc vào độ quan trọng của chúng trong tập nền. Hạn chế của phương pháp là tính chủ quan khi phân chia nhóm. Nhưng nó vẫn hay được dùng do cách thức đơn giản khi làm việc vối các nhóm đã khá bé và thuần nhất.\r\nc) Chọn mẫu chùm chính là chọn một mẫu ngẫu nhiên của các tập con của tập nền, được gọi là các chùm. Ta cũng giả sử rằng các phần tử của mỗi chùm mang tính đại diện cho tập nền. Ngoài ra ta cố gắng sao cho mỗi chùm vẫn có độ phân tán cao như tập nền và đồng đều nhau về quy mô. Chẳng hạn ta muốn nghiên cứu nhu cầu tiêu thụ một mặt hàng nào đó bằng phương pháp chọn mẫu chùm: đầu tiên ta chia thành phố thành các khu dân cư, sau đó chọn ra một số khu làm phần tử của mẫu, cuối cùng ta nghiên cứu tất cả các gia đình sống trong các khu dân được chọn. Phương pháp này cho ta tiết kiệm kinh phí và thòi gian (vì không phải di chuyển trên toàn thành phố), nhưng sai số có thể lớn hơn hai phương pháp trên.\r\n2. Chọn mẫu có suy luận\r\nPhương pháp chọn mẫu này dựa trên ý kiến các chuyên gia về đối tượng nghiên cứu. Như vậy việc chọn mẫu dựa trên hiểu biết và kinh nghiệm của một vài nhà chuyên môn. Tuy nhiên phương pháp này cũng có hạn chế cơ bản; Khi không có sự tham gia của các công cụ thống kê vào việc chọn mẫu tính khách quan rất khó được bảo đảm, từ đó kéo theo các kết luận mang nặng tính chủ quan. Tất nhiên điều đó không có nghĩa là không nên dùng các phương pháp chuyên gia. Rất rõ ràng chất lượng mẫu phụ thuộc nhiều vào trình độ của nhà nghiên cứu và kinh nghiệm của họ hy vọng trở thành một công cụ hữu hiệu. '),
(41, 13, 'Phân loại và mô tả số liệu mẫu', '1. Phân loại. Giả sử từ một tập nền có N phần tử, ta chọn ra một mẫu có kích thước n, các phần tử của mẫu được ký hiệu là \\(x_{i},i=\\overline{1,n}\\).Tập n giá trị \\(x_{1},x_{2},...,x_{n}\\) tạo ra một mẫu đơn. Nhiều khi trong mẫu có nhiều giá trị giông nhau: chẳng hạn giá trị \\(x_{1}\\) xuất hiện \\(n_{1}\\) lần, giá trị \\(x_{2}\\) xuất hiện \\(n_{2}\\) lần, giá trị \\(x_{k}\\) xuất hiện \\(n_{k}\\) lần; khi đó \\(n_{1}+n_{2}+...+n_{k}=n\\). \r\n2. Tần số và bảng tần số\r\nSố lần xuất hiện \\(x_{i}\\) hoặc một lớp thứ i nào đó, ký hiệu là \\(n_{i}\\), được gọi là tần số. Sau khi sắp xếp số liệu theo thứ tự tăng của giá trị mẫu, ta có thể xây dựng bảng tần số. Thông thường người ta hay biểu diễn phân phôi tần số\r\nbằng đồ thị để quan sát và nghiên cứu trực giác hơn. Có hai dạng biểu diễn đồ thị hay dùng là biểu đồ và đa giác tần số.\r\na) Biểu đồ\r\nBiểu đồ bao gồm các hình chữ nhật cạnh nhau có đáy bằng độ dài và chiều cao bằng số quan sát của lớp số liệu tương ứng.\r\nb) Đa giác tần số\r\nĐa giác tổn số là đường gấp khúc nối các điểm có hoành độ \\(x_{i}\\) và tung độ \\(n_{i}\\) (hoặc các điểm có hoành độ ở giữa lốp số liệu thứ i và tung độ \\(n_{i}\\)\r\n3. Tần suất và phân phối thực nghiệm\r\nTừ bảng tần số\r\n$$\\begin{array} {|r|r|}\\hline x_{i} & x_{1} & x_{2} & ... & x_{i} & ... & x_{k} \\\\ \\hline n_{i} & n_{1} & n_{2} & ... & n_{i} & ... & n_{k} \\\\ \\hline  \\end{array}.$$\r\nnếu ta đặt \\(f_{i}=\\frac{n_{i}}{n},i=\\overline{1,k},\\) là tần suất xuất hiện giá trị \\(x_{i}\\) ở trong mẫu thì ta có thể mô tả bảng tần suất tương ứng. Rõ ràng từ định nghĩa \\(f_{i}\\) ta có \\(f_{1}+f_{2}+...+f_{k}=1\\) và bảng tần suất đó là $$\\begin{array} {|r|r|}\\hline x_{i} & x_{1} & x_{2} & ... & x_{i} & ... & x_{k} \\\\ \\hline f_{i} & f_{1} & f_{2} & ... & f_{i} & ... & f_{k} \\\\ \\hline  \\end{array}.$$\r\nrất giống với bảng phân phối xác suất của một biến ngẫu nhiên rời rạc. '),
(42, 14, 'Mẫu ngẫu nhiên từ một tập nền', '1. Mẫu ngẫu nhiên\r\nTrong phân tích thông kê cổ điển người ta chấp nhận giả thiết rằng các phần tử của một tập đám đông nào đó đều được cảm sinh bởi một biến ngẫu nhiên gốc. Trong thực hành biến ngẫu nhiên gốc thường tuân theo luật phân phối chuẩn \\(\\mathscr{N}(a,\\sigma^{2})\\), hoặc chưa biết rõ dạng, hoặc chưa biết các tham số. Việc phân tích để xác định phân phôi của tập nền sẽ dựa trên các số liệu mẫu.\r\nGiả sử bây giờ ta tiến hành n phép thử độc lập để xác định các giá trị mẫu (biến ngẫu nhiên gốc của tập nền sẽ ký hiệu là X). Gọi \\(X_{i}\\) là biến ngẫu nhiên chỉ giá trị sẽ thu được ở phép thử thứ \\(i,i=\\overline{1,n}\\) rõ ràng các \\(X_{i}\\), sẽ tạo nên tập các biến ngẫu nhiên độc lập có cùng phân phối vối X. Sau khi thử nghiệm, mỗi \\(X_{i}\\) sẽ có một giá trị xác định\\(x_{i}\\), được gọi là các giá trị quan sát hay thể hiện của mẫu. Để đảm bảo tính đại diện của tập {\\(x_{1},...x_{n}\\)} cho tập nền, ta cần dựa trên khái niệm mẫu ngẫu nhiên.\r\nĐịnh nghĩa 1. Ta gọi mẫu ngẫu nhiên kích thước n từ tập nền có biến ngẫu nhiên gốc X là một tập các biến \\(X_{1},X_{2},...,X_{n}\\) thỏa mãn các điều kiện:\r\n(i) độc lập thống kê,\r\n(ii) có cùng phân phối xác suất với biến X.\r\n2. Thống kê\r\nĐịnh nghĩa 2. Một hàm nào đó \\(Y=g(X_{1},X_{2},...,X_{n})\\) phụ thuộc vào tập giá trị của mẫu ngẫu nhiên được gọi là một thống kê.\r\nChú ý thống kê là một hàm đo được (khái niệm của lý thuyết hàm) và không phụ thuộc vào các tham số chưa biết. Do \\(X_{i}\\) nhận các giá trị tương ứng \\(x_{i}\\), nên hàm \\(g(x_{1},...,x_{n})\\) cũng được gọi là thống kê. '),
(43, 14, 'Các đặc trưng mẫu', 'Từ nay về sau, trong các công thức liên quan đến đặc trưng mẫu, thay vì \\(X_{i}\\) ta hay dùng \\(x_{i}\\), do nhiều lý do. Thứ nhất, đó là các công thức tính toán làm việc trực tiếp với các quan sát mẫu cụ thể. Thứ hai, nếu dùng quá nhiều ký hiệu khác nhau sẽ gây nhầm lẫn (hơn nữa về mặt biện chứng trong ngẫu nhiên có tất định và ngược lại). Thứ ba, các công thức chủ yếu dùng để tính toán, còn trong các trường hợp chứng minh các tính chất lý thuyết, ta dễ dàng (và nên cũng để tránh nhầm) thay trở lại các giá trị mẫu \\(x_{i}\\) bằng \\(X_{i}\\).\r\nMột mẫu, như ta đã biết ở tiết 1 , có thể mô tả bằng bảng phân phối tần số hoặc bằng chính dãy số liệu\r\n$$a)\\;x_{1},x_{2},...x_{n}\\;(2.2).$$\r\n$$b)\\;\\begin{array} {|r|r|}\\hline x_{i} & x_{2} & ... & x_{k} \\\\ \\hline n_{i} & n_{2} & ... & n_{k} \\\\ \\hline  \\end{array}\\;\\;(n_{1}+n_{2}+...+n_{k}=n)\\;(2.3).$$\r\nTrong trường hợp mẫu lớp, nhiều khi thay khoảng giá tri bằng giá trị trung bình của khoảng; khi đó ta đưa về mẫu đơn dạng (2.3).\r\n1. Trung binh mẫu (hay kỳ vọng mẫu)\r\nNếu mẫu cho dưới dạng (2.2) thì trung bình mẫu ký hiệu là \\(\\overline{X}\\) được xác định như sau:\r\n$$\\overline{X}=\\frac{1}{n}\\sum_{i=1}^{n}x_{i}\\;(2.4).$$\r\nĐể ý là khi chứng minh lý thuyết, ta sẽ thay các \\(x_{i}\\) bằng \\(X_{i}\\) là biến ngẫu nhiên cảm sinh ra quan sát \\(x_{i}\\) có cùng phân phối với X gốc. Nếu số liệu cho dưới dạng (2.3), ta có\r\n$$\\overline{X}=\\frac{1}{n}\\sum_{i=1}^{k}x_{i}n_{i}\\;(2.5).$$\r\nVề mặt bản chất (2.4) và (2.5) là một (nếu \\(k=n\\), thì \\(n_{i}=1\\forall i\\)), mặc dù vậy trên hình thức ta vẫn để riêng dưới dạng hai công thức khác nhau.\r\nGiả sử biến ngẫu nhiên gốc X có \\(EX=a\\) và \\(VX=\\sigma^{2}\\) khi đó\r\n$$E\\overline{X}=a,V\\overline{X}=\\frac{\\sigma^{2}}{n}\\;(2.6).$$\r\nChú ý rằng nếu tập nền có kích thước bé (N bé) và ta chọn mẫu không hoàn lại, công thức \\(V\\overline{X}\\) trong (2.6) phải nhân thêm với thừa sô\' hiệu chỉnh \\((N-n)/(N-l)\\):\r\n$$V\\overline{X}=\\frac{\\sigma^{2}}{n}.\\frac{N-n}{N-1}\\;(2.7).$$ \r\n2. Phương sai mẫu\r\nNếu mẫu cho đưới dạng (2.2), phương sai mẫu, ký hiệu là \\(S^{2}\\) được xác định như sau:\r\n$$S^{2}=\\frac{1}{n}\\sum_{i=1}^{n}\\left( x_{i}-\\overline{X} \\right)^{2}\\;(2.8).$$\r\nvới \\(\\overline{X}\\) xác định theo (2.4). Nếu mẫu cho dưới dạng (2.3), ta có $$S^{2}=\\frac{1}{n}\\sum_{i=1}^{k}\\left( x_{i}-\\overline{X} \\right)^{2}n_{i};\\;(2.9).$$\r\nvới \\(\\overline{X}\\) xác định theo (2.5).\r\n3. Về luật phân phối của các đặc trưng mẫu\r\nNếu biến ngẫu nhiên gốc tuân theo luật phân phối chuẩn \\(X\\sim \\mathscr{N}(a,\\sigma^{2})\\) khi đó \\(\\overline{X}\\) và \\(S^{2}\\) độc lập với nhau và\r\n$$a)\\;\\overline{X}\\sim \\mathscr{N}(a,\\frac{\\sigma^{2}}{n})\\;hay\\;\\frac{\\overline{X}-a}{\\sigma}\\sqrt{n}\\sim \\mathscr{N}(0,1);\\;(2.13).$$\r\n$$b)\\;\\frac{nS^{2}}{\\sigma^{2}}=\\frac{(n-1)s^{2}}{\\sigma^{2}}=\\frac{\\sum_{i=1}^{n}\\left( x_{i}-\\overline{X} \\right)^{2}}{\\sigma^{2}}\\sim \\chi^{2}(n-1);\\;(2.14).$$\r\n$$c)\\;\\frac{\\overline{X}-a}{s}\\sqrt{n}=\\frac{\\overline{X}-a}{S}\\sqrt{n-1}\\sim t(n-1).\\;(2.15).$$\r\n$$d)\\;\\frac{\\mathrm{s}_{1}^{2}}{\\mathrm{s}_{2}^{2}}\\sim \\mathscr{T}(n-1;n_{2}-1)\\;(2.16).$$ ');
INSERT INTO `lesson_detail` (`ID`, `ID_lesson`, `Name`, `Content`) VALUES
(44, 14, 'Vấn để tính toán các đặc trưng mẫu', '1. Mẫu đơn\r\nNếu mẫu cho dưới dạng (2.2) \\(x_{1},x_{2},...,x_{n}\\) ta tính \\(\\overline{X}\\) và \\(S^{2}\\), \\(s^{2}\\) theo các công thức (2.4), (2.8) và (2.11). Trong nhiều trường hợp, người ta thay tổng trong (2.8) và (2.11) bằng $$\\sum_{i=1}^{n}\\mathrm{x}_{i}^{2}-n(\\overline{X})^{2}.$$ dễ tính hơn. Trung vị thực nghiệm chính là giá trị thứ \\(\\frac{n+1}{2}\\) của tập mẫu đã sắp xếp (nếu n lẻ thì đó là giá trị chính giữa dãy số liệu, nếu n chẵn ta lấy trung bình cộng của hai giá trị chính giữa).\r\nNếu mẫu cho dưới dạng (2.3), tức là các giá trị mẫu có tần số xuất hiện khác 1, khi đó ta dùng các công thức (2.5), (2.9) và (2.12). Trong cách tính trực tiếp, giống như ở trên ta thay tổng trong (2.9) và (2.12) bằng $$\\sum_{i=1}^{k}\\mathrm{x}_{i}^{2}n_{i}-n(\\overline{X})^{2}.$$\r\nTuy nhiên có thể dùng một cách tính rút gọn hơn theo các bước sau:\r\nB1. Chọn một giá trị trung bình tùy ý \\(x_{0}\\)\r\nB2. Gọi h là khoảng cách đều giữa hai số liệu liên tiếp và tính \\(d_{i}=\\frac{x_{i}-x_{0}}{h}\\)\r\nB3. Tính các tổng \\(\\sum_{i=1}^{k}d_{i}n_{i}\\;và\\;\\sum_{i=1}^{k}\\mathrm{d}_{i}^{2}n_{i}\\)\r\nB4. Tính \\(\\overline{X}=x_{0}+\\frac{h}{n}\\sum d_{i}n_{i};\\;(2.17)\\)\r\n\\(s^{2}=\\frac{h^{2}}{n-1}\\left[ \\sum \\mathrm{d}_{i}^{2}n_{i}-\\frac{(\\sum d_{i}n_{i})^{2}}{n}\\right]\\;(2.18a)\\)\r\nhoặc \\(S^{2}=\\frac{h^{2}}{n}\\left[ \\sum \\mathrm{d}_{i}^{2}n_{i}-\\frac{(\\sum d_{i}n_{i})^{2}}{n}\\right]\\;(2.18b)\\)\r\nHạn chế của cách tính này là thường đòi hỏi số liệu cách đều (nhưng trong nhiều bài toán thực tế lại chấp nhận được). Các kết quả trung gian được đưa vào một bảng tính nên việc kiểm tra lại kết quả khá dễ dàng và tiện lợi. \r\n2. Mẫu lớp\r\nMẫu lớp được cho dưới dạng\r\n$$\\frac{[x_{0},x_{1}][x_{1},x_{2}]...[x_{k-1},x_{k}]}{n_{1}\\;\\;\\;\\;\\;\\;\\;\\;n_{2}\\;\\;\\;\\;...\\;\\;\\;\\;\\;\\;\\;\\;n_{k}}\\;(2.19).$$\r\nTrong thực hành, đối với mốt và trung vị mẫu, người ta sử dụng các công thức sau đây (ký hiệu mốt và trung vị là Mod và Med)\r\n$$Mod=x_{mo}+\\frac{d_{t}}{d_{t}+d_{s}}h\\;(2.20).$$\r\n$$Med=x_{me}+\\frac{n/2-n_{tl}}{n_{me}}h\\;(2.21).$$ '),
(45, 15, 'Ước lượng tham số', 'Khái niệm ước lượng thường được dùng trong thực tế, chẳng hạn để đánh giá trình độ học sinh ta tính điểm trung bình. Đó là một ước lượng của điềm số học sinh ấy, nó dựa trên thông tin quá khứ là các điểm mà học sinh đã nhận được trong học kỳ.\r\nBài toán ước lượng tham số có thể phát biểu tổng quát như sau: Cho biến ngẫu nhiên gốc X có luật phân phối xác suất đã biết nhưng chưa biết tham số \\(\\theta\\) nào đó; ta phải xác định giá trị của \\(\\theta\\) dựa trên các thông tin thu được từ một mẫu quan sát \\(x_{1},x_{2},...,x_{n}\\) của X. Quá trình đi xác định một tham số \\(\\theta\\) chưa biết được gọi là quá trình ước lượng tham số. '),
(46, 15, 'Các tính chất của ước lượng điểm', 'Ở đây ta quan tâm đến ước lượng điểm của \\(\\theta\\) ký hiệu là \\(\\widehat{\\theta}=\\widehat{\\theta}(x_{1},x_{2},...,x_{n})\\) hay về mặt lý thuyết \\(\\widehat{\\theta}=\\widehat{\\theta}(X_{1},X_{2},...,X_{n})\\)\r\n1. Ước lượng không chệch\r\nĐịnh nghĩa 1. Thống kê \\(\\theta\\) được gọi là ước lượng không chệch của \\(\\theta\\) nếu \\(E\\;\\widehat{\\theta}=0\\)\r\nCó nghĩa là trung bình độ lệch của ước lượng so với giá trị thật bằng 0. Nếu độ lệch có trung bình khác 0, ta có ước lượng chệch. Một sai số nào đó có trung bình khác không sẽ được gọi là sai số hệ thống; ngược lại sẽ là sai số ngẫu nhiên. Như vậy một ước lượng sẽ được gọi là không chệch khi độ lệch so với giá trị thật (sai số ước lượng) là sai số ngẫu nhiên.\r\n2. Ước lượng vững\r\nĐịnh nghĩa 2. Thống kê \\(\\widehat{\\theta}\\) được gọi là ước lượng vững của \\(\\theta\\) nếu \\(\\theta(x_{1},...x_{n})\\xrightarrow[n\\to \\infty ]{XS}\\theta\\) \r\nSử dụng khái niệm hội tụ theo xác suất ở chương III, ta có thể thây rằng nếu \\(\\widehat{\\theta}\\) là ước lượng tiệm cận không chệch của \\(\\theta\\) (tức là \\(\\lim_{n \\to \\infty } E\\;\\widehat{\\theta}= 0\\)) và \\(\\lim_{n \\to \\infty } V\\;\\widehat{\\theta}= 0\\) thì \\(\\widehat{\\theta}\\) sẽ là ước lượng vững.\r\n3. Ước lượng hiệu quả\r\nTrong lớp các ước lượng không chệch của \\(\\theta\\) việc so sánh hai ước lượng theo nghĩa tổn thất đưa về so sánh hai phương sai.\r\nĐịnh nghĩa 3. Thống kê \\(\\widehat{\\theta}\\) được gọi là ước lượng hiệu quả của \\(\\theta\\) nếu nó là ước lượng không chệch có phương sai bé nhất.\r\nNgười ta đã chứng minh được rằng nếu \\(\\widehat{\\theta}\\) là ước lượng hiệu quả của \\(\\theta\\) thì phương sai của nó là\r\n$$V\\;\\widehat{\\theta}=\\frac{1}{nE\\left[ \\frac{\\partial lnf(x,\\theta)}{\\partial \\theta} \\right]^{2}}.\\;(3.2).$$ '),
(47, 15, 'Các phương pháp ước lượng', '1. Sử dụng các đặc trưng mẫu\r\nCách ước lượng này đưa về sử dụng các đặc trưng đã nhắc tới ở §2 là trung bình mẫu, phương sai mẫu hiệu chỉnh, độ lệch chuẩn mẫu hiệu chỉnh...\r\n2. Phương pháp mômen\r\nĐây là phương pháp thực nghiệm dựa trên sự kiện lý thuyết là các mô men mẫu của một tập mẫu ngẫu nhiên có biến gốc X hội tụ hầu chắc chắn về các mô men lý thuyết tương ứng của X. Như vậy nếu ký hiệu \\(\\theta\\) bây giò là véc tơ k chiều \\(\\theta=(\\theta_{1},...,\\theta_{k})\\), \\(m_{j}(\\theta)\\) là mô men lý thuyết cấp j, \\(m_{j}(e,n)\\) - mômen thực nghiệm cấp j, ước lượng theo phương pháp mô men của véc tơ tham số \\(\\theta\\) được tìm bằng cách giải hệ phương trình\r\n$$\\left\\{ \\begin{array}{cl}\r\nm_{1}(\\theta)=m_{1}(e,n)\\\\\r\n\\vdots \\\\\r\nm_{k}(\\theta)=m_{k}(e,n)\r\n\\end{array} \\right..$$\r\n3. Phương pháp hợp lý nhất\r\nNguyên lý hợp lý nhất là tìm giá trị của \\(\\theta\\)-hàm của quan sát \\((x_{1},...,x_{n})\\) sao cho bảo đảm xác suất thu được các quan sát đó lớn nhất. Giả sử biến gốc X có phân phối (hàm mật độ) là \\(f(x,\\theta)\\): khi đó hàm hợp lý, ký hiệu là \\(L(x,\\theta)\\), \\(x\\) ở đây là vecto (\\(x_{1},x_{2},...,.x_{n}\\)), \\(\\theta\\) cũng có thể là vecto \r\n$$L(x,\\theta)=\\prod_{i=1}^{n}f(x_{i},\\theta).\\;(3.3).$$ '),
(48, 16, 'Ước lượng khoảng', 'Ước lượng điểm có một nhược điểm cơ bản là không thể biết được độ chính xác cũng như xác suất để ước lượng đó chính xác. Nhất là khi kích thước mẫu nhỏ sự sai lệch của ước lượng so vói giá trị thật khá lớn và chỉ với một số khó đánh giá được khả năng mắc sai lầm khi ước lượng là bao nhiêu. Để khắc phục các hạn chế đó, người ta dựa vào khái niệm ước lượng bằng một khoảng giá trị. Rõ ràng ước lượng khoảng có độ tin cậy cao hơn nhiều và cho phép xác định khách quan sai số ước lượng. Tất nhiên một khoảng ước lượng vẫn có thê sai, giống như mọi ước lượng khác, nhưng khác với ước lượng điểm, xác suất sai lầm có thể biết và trong chừng mực nào đó có thể hy vọng kiểm soát được. Nói như vậy không có nghĩa là không nên dùng ước lượng điểm nữa. Nó vẫn cho ta một thông tin quan trọng và ước lượng khoảng sẽ được xây dựng xung quanh ước lượng điểm.\r\nTừ đó, để ước lượng một tham gia số \\(\\theta\\), phương pháp này chủ trương xây dựng một thông kê nào đó có luật phân phối xác định không phụ thuộc \\(\\theta\\) (nhưng thống kê lại phụ thuộc). Nếu dựa vào thông kê đó ta tìm được khoảng giá trị \\((\\theta_{1},\\theta_{2})\\) trong đó \\(\\theta_{1}\\;và\\;\\theta_{2}\\) phụ thuộc vào thống kê trên, sao cho với một xác suất cho trước tham số \\(\\theta\\) rơi vào khoảng đó, thì khoảng \\((\\theta_{1},\\theta_{2})\\) sẽ được gọi là khoảng tin cậy với độ tin cậy đã cho. Như vậy nếu đặt \\(1-\\alpha=\\gamma\\) là độ tin cậy cho trước, ta cần xác định \\(\\theta_{1}\\;và\\;\\theta_{2}\\) sao cho \r\n$$P(\\theta_{1}\\lt \\theta\\lt \\theta_{2})=1-\\alpha\\;(4.1).$$\r\nĐộ dài \\(\\theta_{1}-\\theta_{2}\\) sẽ được gọi là độ dài của khoảng tin cậy.\r\nĐể làm được điều đó quy tắc chung như sau: Đầu tiên tìm một thống kê \\(G=G(x_{1},...,x_{n},\\theta)\\) sao cho phân phôi của \\(G\\) xác định hoàn toàn (không chứa tham số \\(\\theta\\) nữa). Khi đó với độ tin cậy \\(1-\\alpha=\\gamma\\) cho trước ta tìm cặp giá trị \\(\\alpha_{1}\\;và\\;\\alpha_{2}\\) sao cho \\(\\alpha_{1}+\\alpha_{2}=\\alpha\\) (để ý tất cả chúng đều dương) và tương ứng với chúng là các phân vị \\(g_{a_{1}}\\;và\\;g_{1-a_{2}}\\) thỏa mãn điều kiện\r\n$$P(G\\lt g_{a_{1}})=\\alpha_{1}\\;và\\;P(G\\gt  g_{1-a_{2}})=\\alpha_{2}.\\;(4.2).$$ '),
(49, 16, 'Khoảng tin cậy cho kỳ vọng', 'Đầu tiên ta giả sử biến gốc \\(X\\sim \\mathscr{N}(a,\\sigma^{2})\\) và tham số a chưa biết, ngoài ra ta biết được mẫu quan sát được cảm sinh từ \\(X\\) là \\(x_{1},x_{2},...,x_{n}\\). Bài toán đặt ra là tìm khoảng tin cậy cho EX = a với độ tin cậy \\(1-\\alpha\\) cho trước.\r\n1. Bài toán 1 (phương sai \\(\\sigma^{2}=\\mathrm{\\sigma}_{0}^{2}\\) đã biết)\r\nTa chọn thống kê\r\n$$G=Z=\\frac{\\overline{X}-a}{\\sigma_{0}}\\sqrt{n}.\\;(4.4).$$ \r\nTừ giả thiết chuẩn của X ta thấy \\(Z\\sim \\mathscr{N}(0,1)\\). Chọn cặp \\(\\alpha_{1}\\;và\\;\\alpha_{2}\\) sao cho \\(\\alpha_{1}+\\alpha_{2}=\\alpha\\) và tìm các phân vị (xem (4.2)).\r\n\\(P(Z\\lt z_{a_{1}})=\\alpha_{1}\\), \\(P(Z\\lt z_{1-a_{2}})=1-\\alpha_{2}\\) \r\nDo phân vị chuẩn có tính chất \\(z_{a_{1}}=-z_{1-a_{1}}\\) nên\r\n$$P(-z_{1-a_{1}}\\lt Z\\lt z_{1-a_{2}})=1-\\alpha.\\;(4.5).$$ \r\nĐể ý đến (4.4) và giải hệ bất phương trình trong (4.5) đối với \\(\\alpha\\), ta thu được khoảng tin cậy cần tìm\r\n$$\\overline{X}-\\frac{\\sigma_{0}}{\\sqrt{n}}z_{1-a_{2}}\\lt \\alpha\\lt \\overline{X}+\\frac{\\sigma_{0}}{\\sqrt{n}}z_{1-a_{2}}\\;(4.6).$$\r\na) Khoảng tin cậy đối xứng:\r\n$$\\overline{X}-\\frac{\\sigma_{0}}{\\sqrt{n}}z_{b}\\lt \\alpha\\lt \\overline{X}+\\frac{\\sigma_{0}}{\\sqrt{n}}z_{b}\\;(4.7).$$\r\nb) Khoảng tin cậy phải:\r\n$$\\left( \\overline{X}-\\frac{\\sigma_{0}}{\\sqrt{n}}z_{b},+\\infty  \\right).\\;(4.8).$$\r\nc) Khoảng tin cậy trái:\r\n$$\\left(-\\infty , \\overline{X}+\\frac{\\sigma_{0}}{\\sqrt{n}}z_{b} \\right).\\;(4.9).$$\r\n2. Bài toán 2 (phương sai \\(\\sigma^{2}\\) chưa biết)\r\nTrong trường hợp này đầu tiên ta phải ước lượng \\(\\sigma^{2}\\) bằng phương sai mẫu hiệu chỉnh, sau đó chọn thống kê\r\n$$G=T=\\frac{\\overline{X}-a}{s}\\sqrt{n}.\\;(4.11).$$\r\nTheo (2.15) ta biết thống kê T tuân theo luật Stiu-đơn với n-1 bậc tự do, mặt khác hình dạng của mật độ phân phối này rất gần với chuẩn, nên cách ước lượng rất giống với bài toán 1. Ta tìm phân vị\r\n$$P(T\\lt t_{n-1.\\alpha_{1}})=\\alpha_{1};P(T\\lt t_{n-1.1-\\alpha_{2}})=1-\\alpha_{2}.$$\r\nvà do \\(\\alpha_{1}+\\alpha_{2}=\\alpha\\) nên $$P(T\\lt t_{n-1.\\alpha_{1}})=\\alpha_{1};P(T\\lt t_{n-1.1-\\alpha_{2}})=1-\\alpha_{2}.$$\r\na) Khoảng tin cậy đối xứng:\r\n$$\\left( \\overline{X}-\\frac{s}{\\sqrt{n}}t_{b}; \\overline{X}+\\frac{s}{\\sqrt{n}}t_{b}\\right).\\;(4.13).$$\r\nb) Khoảng tin cậy phải:\r\n$$\\left( \\overline{X}-\\frac{s}{\\sqrt{n}}t_{b}; +\\infty \\right).$$\r\nc) Khoảng tin cậy trái:\r\n$$\\left(-\\infty;\\overline{X}+\\frac{s}{\\sqrt{n}}t_{b}\\right).$$  '),
(50, 16, 'Khoảng tin cậy cho tỷ lệ', 'Nếu biến ngẫu nhiên gốc không tuân theo luật phân phối chuẩn, việc xác định khoảng tin cậy cho EX sẽ rất phức tạp và đòi hỏi các kỹ thuật hiện đại hơn. Tuy nhiên trong trường hợp n đủ lớn, cả hai thống kê Z trong (4.4) và T trong (4.11) đều có phân phôi xấp xỉ chuẩn \\(\\mathscr{N}(0,1)\\). Do đó các thủ tục ước lượng khoảng làm giống như bài toán 1 đã nói đến ở mục trên.\r\nTa xét một trường hợp cụ thể khi dấu hiệu \\(X\\sim \\mathscr{B}(1,p)\\) (phân phối Béc-nu-li). Khi đó nếu ta chọn ra phần tử từ tập nền (theo dạng mẫu ngẫu nhiên) thì số lần xuất hiện dấu hiệu quan tâm \\(X_{i}\\) cùng phân phối với \\(X\\). Như vậy \\(\\overline{X}=\\frac{1}{n}\\sum_{i=1}^{n}X_{i}\\) chính\r\nlà tần suất ước lượng điểm của xác suất hay tỉ ]ệ p = EX. Mặt khác từ kết quả chương II, \\(n\\overline{X}\\) sẽ có phân phối nhị thức \\(\\mathscr{B}(n,p)\\) từ đó\\(E\\overline{X}=p\\;và\\;V\\overline{X}=\\frac{p(1-p)}{n}\\). Nếu ta chọn thống kê (với \\(f=\\frac{m}{n}\\) là tần suất mẫu xuất hiện dấu hiệu quan tâm)\r\n$$Z=\\frac{f-p}{\\sqrt{p(1-p)}}\\sqrt{n}.\\;(4.14).$$\r\nthì khi n khá lớn\\(Z\\xrightarrow[\\;\\;\\;\\;\\;\\;\\;\\;\\;]{L}\\mathscr{N}(0,1)\\).\r\nBài toán 3 (tìm thấy khoảng tin cậy \\(1-\\alpha\\) cho tỷ lệ (xác suất))\r\nDựa vào (4.14) ta có hai cách đi tìm khoảng tin cậy khi n đủ lớn.\r\n1) Theo cách làm ở trên chọn \\(\\alpha_{1}=\\alpha_{2}=\\frac{\\alpha}{2}\\) = — (xem bài toán 1) và từ (4.5) - (4.6) ta có $$-z_{b}\\lt \\frac{f-p}{\\sqrt{p(1-p)}}\\sqrt{n}\\lt z_{b}.$$\r\nvới \\(z_{b}=z_{1-\\frac{a}{2}}\\) (khoảng tin cậy đôl xứng). Giải hệ bất phương trình trên đối với p\r\n\\(n(f-p)^{2}\\lt p(1-p)\\mathrm{z}_{b}^{2}\\)\r\n\\(\\Leftrightarrow (n+\\mathrm{z}_{b}^{2})p^{2}-(2nf+\\mathrm{z}_{b}^{2})p+nf^{2}\\lt 0\\)\r\nGiải và tìm nghiệm phương trình bậc 2 ở vế trái, ta có 2 nghiệm\r\n$$p_{1},p_{2}=\\frac{nf+\\frac{1}{2}\\mathrm{z}_{b}^{2}\\;\\pm z_{b}\\sqrt{nf(1-f)+\\frac{1}{4}\\mathrm{z}_{b}^{2}}}{n+\\mathrm{z}_{b}^{2}}.\\;(4.15).$$\r\nvà khoảng tin cậy cần tìm sẽ là (\\(p_{1},p_{2}\\)) với \\(p_{1}<p_{2}\\). Tuy nhiên việc tính toán theo (4.15) sẽ khá khó khăn.\r\n2. Ta tìm ước lượng khoảng gần đúng theo cách khác. Để ý nếu n khá lốn, thống kê\r\n$$Z=\\frac{f-p}{\\sqrt{f(1-f)}}\\sqrt{n}\\xrightarrow[\\;\\;\\;\\;\\;]{L}\\mathscr{N} (0,1).$$\r\nvới \\(VX=p(1-p)\\) được thay bằng ước lượng điểm \\(f(l-f)\\).\r\nTừ đó (xem (4.7) - (4.9))\r\na) Khoảng tin cậy đối xứng: \\(z_{b}=z_{1-\\frac{\\alpha}{2}}\\)\r\n$$\\left( f-z_{b}\\sqrt{\\frac{f(1-f)}{n}};f+z_{b}\\sqrt{\\frac{f(1-f)}{n}} \\right).\\;(4.16).$$\r\nb) Khoảng tin cậy phải: \\(z_{b}=z_{1-\\alpha}\\) và\r\n$$\\left( f-z_{b}\\sqrt{\\frac{f(1-f)}{n};+\\infty } \\right).\\;(4.17a).$$\r\nc) Khoảng tin cậy trái: với \\(z_{b}\\) như trên \r\n$$\\left(-\\infty ;f+z_{b}\\sqrt{\\frac{f(1-f)}{n}}\\right).\\;(4.17b).$$\r\nCuối cùng, nếu ký hiệu \\(\\varepsilon\\) là độ chính xác của ước lượng khoảng đốì xứng, ta có quan hệ (xem (4.10)):\r\n$$\\varepsilon^{2}=\\frac{f(1-f)}{n}\\mathrm{z}_{1-\\frac{\\alpha}{2}}^{2}.$$ '),
(51, 16, 'Khoảng tin cậy cho phương sai', 'Bài toán 4. Giả sử \\(X\\sim \\mathscr{N}(a,\\sigma^{2})\\) và độ tin cậy \\(1-\\alpha\\) đã cho. Ta cần xác định khoảng tin cậy tương ứng cho \\(VX=\\sigma^{2}\\) dựa trên mẫu \\(x_{1},x_{2},...,x_{n}\\) được cảm sinh bởi biến gốc X. \r\nQuy trình xây dựng khoảng tin cậy dựa trên sự kiện $$\\chi^{2}=\\frac{(n-1)s^{2}}{\\sigma^{2}}=\\frac{\\sum_{i=1}^{n}\\left(x_{i}-\\overline{X}\\right)^{2}}{\\sigma^{2}}\\sim \\chi^{2}(n-1);\\;(4.18).$$\r\n$$\\chi^{2}=\\frac{\\sum_{i=1}^{n}\\left(x_{i}-a\\right)^{2}}{\\sigma^{2}}\\sim \\chi^{2}(n);\\;(4.19).$$\r\nTừ đó ta làm giống như trong mục 4.2, chia bài toán thành hai trường hợp:\r\n1) Nếu \\(a=\\alpha_{0}\\) đã biết, sử dụng thông kê (4.19) và chọn \\(\\alpha_{1}\\),\\(\\alpha_{2}\\) sao cho \\(\\alpha_{1}+\\alpha_{2}=\\alpha\\), sau đó tìm các phân vị\r\n$$P(\\chi^{2}\\lt \\mathrm{\\chi}_{n,a_{1}}^{2})=\\alpha_{1};P(\\chi^{2}\\lt \\mathrm{\\chi}_{n,1-a_{a}}^{2})=1-\\alpha_{2}.$$\r\nTừ đó suy ra khoảng tin cậy \\(1-\\alpha\\)  của \\(\\sigma^{2}\\) là \r\n$$\\left( \\frac{\\sum_{i=1}^{n}(x_{i}-a_{0})^{2}}{\\mathrm{\\chi}_{n,1-a_{2}}^{2}};\\frac{\\sum_{i=1}^{n}(x_{i}-a_{0})^{2}}{\\mathrm{\\chi}_{n,a_{1}}^{2}} \\right).\\;(4.20).$$\r\na) Nếu \\(\\alpha_{1}=\\alpha_{2}=\\frac{\\alpha}{2}\\) \r\n$$\\left( \\frac{\\sum_{i=1}^{n}(x_{i}-a_{0})^{2}}{\\mathrm{\\chi}_{n,1-\\frac{a}{2}}^{2}};\\frac{\\sum_{i=1}^{n}(x_{i}-a_{0})^{2}}{\\mathrm{\\chi}_{n,\\frac{a}{2}}^{2}} \\right).\\;(4.21).$$\r\nb) Nếu \\(\\alpha_{1}=0,\\alpha_{2}=\\alpha\\)\r\n$$\\left( \\frac{\\sum_{i=1}^{n}(x_{i}-a_{0})^{2}}{\\mathrm{\\chi}_{n,1-a}^{2}};+\\infty \\right).\\;(4.21a).$$\r\nc) Nếu \\(\\alpha_{1}=\\alpha,\\alpha_{2}=0\\)\r\n$$\\left(-\\infty ;\\frac{\\sum_{i=1}^{n}(x_{i}-a_{0})^{2}}{\\mathrm{\\chi}_{n,a}^{2}}\\right).\\;(4.21b).$$\r\n2) Nếu a chưa biết, ta thay nó bằng ước lượng \\(\\overline{X}\\) và sử dụng thống kê (4.18). Cách làm giống như ở trên và bạn đọc tự tìm ra kết quả. ');

-- --------------------------------------------------------

--
-- Table structure for table `lesson_related`
--

CREATE TABLE `lesson_related` (
  `ID_1` int(10) NOT NULL,
  `ID_2` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

-- --------------------------------------------------------

--
-- Table structure for table `theorem`
--

CREATE TABLE `theorem` (
  `ID` int(10) NOT NULL,
  `ID_lesson` int(10) DEFAULT NULL,
  `Name` text DEFAULT NULL,
  `Content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audio_store`
--
ALTER TABLE `audio_store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `chapter`
--
ALTER TABLE `chapter`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_chapter_subject` (`ID_subject`);

--
-- Indexes for table `concept`
--
ALTER TABLE `concept`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_concept_lesson` (`ID_lesson`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

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
-- Indexes for table `lesson_related`
--
ALTER TABLE `lesson_related`
  ADD KEY `fk_lessonRelated_lesson_1` (`ID_1`),
  ADD KEY `fk_lessonRelated_lesson_2` (`ID_2`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `theorem`
--
ALTER TABLE `theorem`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_theorem_lesson` (`ID_lesson`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audio_store`
--
ALTER TABLE `audio_store`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `concept`
--
ALTER TABLE `concept`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `theorem`
--
ALTER TABLE `theorem`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `chapter`
--
ALTER TABLE `chapter`
  ADD CONSTRAINT `fk_chapter_subject` FOREIGN KEY (`ID_subject`) REFERENCES `subject` (`ID`);

--
-- Constraints for table `concept`
--
ALTER TABLE `concept`
  ADD CONSTRAINT `fk_concept_lesson` FOREIGN KEY (`ID_lesson`) REFERENCES `lesson` (`ID`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

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

--
-- Constraints for table `lesson_related`
--
ALTER TABLE `lesson_related`
  ADD CONSTRAINT `fk_lessonRelated_lesson_1` FOREIGN KEY (`ID_1`) REFERENCES `lesson` (`ID`),
  ADD CONSTRAINT `fk_lessonRelated_lesson_2` FOREIGN KEY (`ID_2`) REFERENCES `lesson` (`ID`);

--
-- Constraints for table `theorem`
--
ALTER TABLE `theorem`
  ADD CONSTRAINT `fk_theorem_lesson` FOREIGN KEY (`ID_lesson`) REFERENCES `lesson` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
