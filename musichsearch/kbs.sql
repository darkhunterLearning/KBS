-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2021 at 12:59 PM
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
(1, 1, 'Sự kiện ngẫu nhiên', 'Sự kiện được hiểu như là một sự việc, một hiện tượng nào đó của cuộc sống tự nhiên và xã hội.\\\\nKhi thực hiện một tập hợp điều kiện xác định, nói tắt là bộ điều kiện, gọi là một phép thử, có thể có nhiều kết cục khác nhau.'),
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
(26, 9, 'Phân phối xác suất của biến ngẫu nhiên hai chiều rời rạc', '1. Giống như trường hợp một chiều ta tìm cách xác định biến hai chiều rời rạc qua bảng phân phối xác suất.\r\nĐịnh nghĩa 3. Bảng phân phối xác suất của biến (X, Y) rời rạc là\r\n$$\\begin{array} {|r|r|}\\hline \\textbf{x\\y} & y_{1} & y_{2} & ... & y_{j} & ... & y_{m} & \\sum_{j} \\\\ \\hline x_{1} & p_{11} & p_{12} & ... & p_{1j} & ... & p_{1m} & p_{1}(x_{1}) \\\\ \\hline x_{2} & p_{21} & p_{22} & ... & p_{2j} & ... & p_{2m} & p_{2}(x_{2}) \\\\ \\hline \\vdots  & \\vdots  & \\vdots  & ... & \\vdots  & ... & \\vdots  & \\vdots  \\\\ \\hline x_{i} & p_{i1} & p_{i2} & ... & p_{ij} & ... & p_{im} & p_{i}(x_{i}) \\\\ \\hline \\vdots  & \\vdots  & \\vdots  & ... & \\vdots  & ... & \\vdots  & \\vdots \\\\ \\hline x_{n} & p_{n1} & p_{n2} & ... & p_{nj} & ... & p_{nm} & p_{n}(x_{n}) \\\\ \\hline \\sum_{i} & p_{2}(y_{1}) & p_{2}(y_{2}) & ... & p_{2}(y_{j}) & ... & p_{2}(y_{m}) & 1 \\\\ \\hline  \\end{array}.$$\r\ntrong đó \\(p_{ij}=P(X=x_{i};Y=y_{j})\\) là xác suất đồng thời để X lấy giá trị \\(x_{i},i=\\overline{1,n}\\) và Y lấy giá trị \\(y_{j},j=\\overline{1,m}\\).Bảng này có thể trở thành vô hạn khi n, m nhận giá trị \\(\\infty \\). Tính chất:\r\n(i) \\(p_{ij}\\ge 0\\;\\forall i,j\\)\r\n(ii) \\(\\sum_{i}\\sum_{j}p_{ij}=1\\) (tổng hiểu theo nghĩa lấy theo \\(\\forall i,j\\)) ');

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
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

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
