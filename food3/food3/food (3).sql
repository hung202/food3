-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 30, 2021 lúc 02:26 PM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `food`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cr_addons`
--

CREATE TABLE `cr_addons` (
  `addon_id` int(11) NOT NULL,
  `addon_name` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `addon_image` varchar(50) DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cr_addons`
--

INSERT INTO `cr_addons` (`addon_id`, `addon_name`, `price`, `description`, `addon_image`, `status`) VALUES
(42, '\"hành\" tây', '10.00', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'addon_42.jpg', 'Active'),
(43, 'Hồ tiêu', '15.00', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'addon_43.jpg', 'Active'),
(44, 'muối', '15.00', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'addon_44.jpg', 'Active'),
(46, 'chanh ', '10.00', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'addon_46.jpg', 'Active'),
(47, '*ứt', '10.00', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'addon_47.jpg', 'Active'),
(48, 'tương cà', '15.00', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'addon_48.jpg', 'Active'),
(49, 'nước mắm', '12.00', 'nồng đậm tình người - hơi thở biển cả tổng hợp 14 thức', 'addon_49.jpg', 'Active'),
(50, 'tương ớt', '0.25', 'cay lắm \r\ncó làm dc gì ko\r\nko!', 'addon_50.jpg', 'Active');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cr_calendar_timezones`
--

CREATE TABLE `cr_calendar_timezones` (
  `CountryCode` char(2) NOT NULL,
  `Coordinates` char(15) NOT NULL,
  `TimeZone` char(32) NOT NULL,
  `Comments` varchar(85) NOT NULL,
  `UTC_offset` char(8) NOT NULL,
  `UTC_DST_offset` char(8) NOT NULL,
  `Notes` varchar(79) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cr_calendar_timezones`
--

INSERT INTO `cr_calendar_timezones` (`CountryCode`, `Coordinates`, `TimeZone`, `Comments`, `UTC_offset`, `UTC_DST_offset`, `Notes`) VALUES
('CI', '+0519-00402', 'Africa/Abidjan', '', '+00:00', '+00:00', ''),
('GH', '+0533-00013', 'Africa/Accra', '', '+00:00', '+00:00', ''),
('ET', '+0902+03842', 'Africa/Addis_Ababa', '', '+03:00', '+03:00', ''),
('DZ', '+3647+00303', 'Africa/Algiers', '', '+01:00', '+01:00', ''),
('ER', '+1520+03853', 'Africa/Asmara', '', '+03:00', '+03:00', ''),
('', '', 'Africa/Asmera', '', '+03:00', '+03:00', 'Link to Africa/Asmara'),
('ML', '+1239-00800', 'Africa/Bamako', '', '+00:00', '+00:00', ''),
('CF', '+0422+01835', 'Africa/Bangui', '', '+01:00', '+01:00', ''),
('GM', '+1328-01639', 'Africa/Banjul', '', '+00:00', '+00:00', ''),
('GW', '+1151-01535', 'Africa/Bissau', '', '+00:00', '+00:00', ''),
('MW', '-1547+03500', 'Africa/Blantyre', '', '+02:00', '+02:00', ''),
('CG', '-0416+01517', 'Africa/Brazzaville', '', '+01:00', '+01:00', ''),
('BI', '-0323+02922', 'Africa/Bujumbura', '', '+02:00', '+02:00', ''),
('EG', '+3003+03115', 'Africa/Cairo', '', '+02:00', '+02:00', 'DST has been canceled since 2011'),
('MA', '+3339-00735', 'Africa/Casablanca', '', '+00:00', '+01:00', ''),
('ES', '+3553-00519', 'Africa/Ceuta', 'Ceuta & Melilla', '+01:00', '+02:00', ''),
('GN', '+0931-01343', 'Africa/Conakry', '', '+00:00', '+00:00', ''),
('SN', '+1440-01726', 'Africa/Dakar', '', '+00:00', '+00:00', ''),
('TZ', '-0648+03917', 'Africa/Dar_es_Salaam', '', '+03:00', '+03:00', ''),
('DJ', '+1136+04309', 'Africa/Djibouti', '', '+03:00', '+03:00', ''),
('CM', '+0403+00942', 'Africa/Douala', '', '+01:00', '+01:00', ''),
('EH', '+2709-01312', 'Africa/El_Aaiun', '', '+00:00', '+00:00', ''),
('SL', '+0830-01315', 'Africa/Freetown', '', '+00:00', '+00:00', ''),
('BW', '-2439+02555', 'Africa/Gaborone', '', '+02:00', '+02:00', ''),
('ZW', '-1750+03103', 'Africa/Harare', '', '+02:00', '+02:00', ''),
('ZA', '-2615+02800', 'Africa/Johannesburg', '', '+02:00', '+02:00', ''),
('SS', '+0451+03136', 'Africa/Juba', '', '+03:00', '+03:00', ''),
('UG', '+0019+03225', 'Africa/Kampala', '', '+03:00', '+03:00', ''),
('SD', '+1536+03232', 'Africa/Khartoum', '', '+03:00', '+03:00', ''),
('RW', '-0157+03004', 'Africa/Kigali', '', '+02:00', '+02:00', ''),
('CD', '-0418+01518', 'Africa/Kinshasa', 'west Dem. Rep. of Congo', '+01:00', '+01:00', ''),
('NG', '+0627+00324', 'Africa/Lagos', '', '+01:00', '+01:00', ''),
('GA', '+0023+00927', 'Africa/Libreville', '', '+01:00', '+01:00', ''),
('TG', '+0608+00113', 'Africa/Lome', '', '+00:00', '+00:00', ''),
('AO', '-0848+01314', 'Africa/Luanda', '', '+01:00', '+01:00', ''),
('CD', '-1140+02728', 'Africa/Lubumbashi', 'east Dem. Rep. of Congo', '+02:00', '+02:00', ''),
('ZM', '-1525+02817', 'Africa/Lusaka', '', '+02:00', '+02:00', ''),
('GQ', '+0345+00847', 'Africa/Malabo', '', '+01:00', '+01:00', ''),
('MZ', '-2558+03235', 'Africa/Maputo', '', '+02:00', '+02:00', ''),
('LS', '-2928+02730', 'Africa/Maseru', '', '+02:00', '+02:00', ''),
('SZ', '-2618+03106', 'Africa/Mbabane', '', '+02:00', '+02:00', ''),
('SO', '+0204+04522', 'Africa/Mogadishu', '', '+03:00', '+03:00', ''),
('LR', '+0618-01047', 'Africa/Monrovia', '', '+00:00', '+00:00', ''),
('KE', '-0117+03649', 'Africa/Nairobi', '', '+03:00', '+03:00', ''),
('TD', '+1207+01503', 'Africa/Ndjamena', '', '+01:00', '+01:00', ''),
('NE', '+1331+00207', 'Africa/Niamey', '', '+01:00', '+01:00', ''),
('MR', '+1806-01557', 'Africa/Nouakchott', '', '+00:00', '+00:00', ''),
('BF', '+1222-00131', 'Africa/Ouagadougou', '', '+00:00', '+00:00', ''),
('BJ', '+0629+00237', 'Africa/Porto-Novo', '', '+01:00', '+01:00', ''),
('ST', '+0020+00644', 'Africa/Sao_Tome', '', '+00:00', '+00:00', ''),
('', '', 'Africa/Timbuktu', '', '+00:00', '+00:00', 'Link to Africa/Bamako'),
('LY', '+3254+01311', 'Africa/Tripoli', '', '+01:00', '+02:00', ''),
('TN', '+3648+01011', 'Africa/Tunis', '', '+01:00', '+01:00', ''),
('NA', '-2234+01706', 'Africa/Windhoek', '', '+01:00', '+02:00', ''),
('', '', 'AKST9AKDT', '', '−09:00', '−08:00', 'Link to America/Anchorage'),
('US', '+515248-1763929', 'America/Adak', 'Aleutian Islands', '−10:00', '−09:00', ''),
('US', '+611305-1495401', 'America/Anchorage', 'Alaska Time', '−09:00', '−08:00', ''),
('AI', '+1812-06304', 'America/Anguilla', '', '−04:00', '−04:00', ''),
('AG', '+1703-06148', 'America/Antigua', '', '−04:00', '−04:00', ''),
('BR', '-0712-04812', 'America/Araguaina', 'Tocantins', '−03:00', '−03:00', ''),
('AR', '-3436-05827', 'America/Argentina/Buenos_Aires', 'Buenos Aires (BA, CF)', '−03:00', '−03:00', ''),
('AR', '-2828-06547', 'America/Argentina/Catamarca', 'Catamarca (CT), Chubut (CH)', '−03:00', '−03:00', ''),
('', '', 'America/Argentina/ComodRivadavia', '', '−03:00', '−03:00', 'Link to America/Argentina/Catamarca'),
('AR', '-3124-06411', 'America/Argentina/Cordoba', 'most locations (CB, CC, CN, ER, FM, MN, SE, SF)', '−03:00', '−03:00', ''),
('AR', '-2411-06518', 'America/Argentina/Jujuy', 'Jujuy (JY)', '−03:00', '−03:00', ''),
('AR', '-2926-06651', 'America/Argentina/La_Rioja', 'La Rioja (LR)', '−03:00', '−03:00', ''),
('AR', '-3253-06849', 'America/Argentina/Mendoza', 'Mendoza (MZ)', '−03:00', '−03:00', ''),
('AR', '-5138-06913', 'America/Argentina/Rio_Gallegos', 'Santa Cruz (SC)', '−03:00', '−03:00', ''),
('AR', '-2447-06525', 'America/Argentina/Salta', '(SA, LP, NQ, RN)', '−03:00', '−03:00', ''),
('AR', '-3132-06831', 'America/Argentina/San_Juan', 'San Juan (SJ)', '−03:00', '−03:00', ''),
('AR', '-3319-06621', 'America/Argentina/San_Luis', 'San Luis (SL)', '−03:00', '−03:00', ''),
('AR', '-2649-06513', 'America/Argentina/Tucuman', 'Tucuman (TM)', '−03:00', '−03:00', ''),
('AR', '-5448-06818', 'America/Argentina/Ushuaia', 'Tierra del Fuego (TF)', '−03:00', '−03:00', ''),
('AW', '+1230-06958', 'America/Aruba', '', '−04:00', '−04:00', ''),
('PY', '-2516-05740', 'America/Asuncion', '', '−04:00', '−03:00', ''),
('CA', '+484531-0913718', 'America/Atikokan', 'Eastern Standard Time - Atikokan, Ontario and Southampton I, Nunavut', '−05:00', '−05:00', ''),
('', '', 'America/Atka', '', '−10:00', '−09:00', 'Link to America/Adak'),
('BR', '-1259-03831', 'America/Bahia', 'Bahia', '−03:00', '−03:00', ''),
('MX', '+2048-10515', 'America/Bahia_Banderas', 'Mexican Central Time - Bahia de Banderas', '−06:00', '−05:00', ''),
('BB', '+1306-05937', 'America/Barbados', '', '−04:00', '−04:00', ''),
('BR', '-0127-04829', 'America/Belem', 'Amapa, E Para', '−03:00', '−03:00', ''),
('BZ', '+1730-08812', 'America/Belize', '', '−06:00', '−06:00', ''),
('CA', '+5125-05707', 'America/Blanc-Sablon', 'Atlantic Standard Time - Quebec - Lower North Shore', '−04:00', '−04:00', ''),
('BR', '+0249-06040', 'America/Boa_Vista', 'Roraima', '−04:00', '−04:00', ''),
('CO', '+0436-07405', 'America/Bogota', '', '−05:00', '−05:00', ''),
('US', '+433649-1161209', 'America/Boise', 'Mountain Time - south Idaho & east Oregon', '−07:00', '−06:00', ''),
('', '', 'America/Buenos_Aires', '', '−03:00', '−03:00', 'Link to America/Argentina/Buenos_Aires'),
('CA', '+690650-1050310', 'America/Cambridge_Bay', 'Mountain Time - west Nunavut', '−07:00', '−06:00', ''),
('BR', '-2027-05437', 'America/Campo_Grande', 'Mato Grosso do Sul', '−04:00', '−03:00', ''),
('MX', '+2105-08646', 'America/Cancun', 'Central Time - Quintana Roo', '−06:00', '−05:00', ''),
('VE', '+1030-06656', 'America/Caracas', '', '−04:30', '−04:30', ''),
('', '', 'America/Catamarca', '', '−03:00', '−03:00', 'Link to America/Argentina/Catamarca'),
('GF', '+0456-05220', 'America/Cayenne', '', '−03:00', '−03:00', ''),
('KY', '+1918-08123', 'America/Cayman', '', '−05:00', '−05:00', ''),
('US', '+415100-0873900', 'America/Chicago', 'Central Time', '−06:00', '−05:00', ''),
('MX', '+2838-10605', 'America/Chihuahua', 'Mexican Mountain Time - Chihuahua away from US border', '−07:00', '−06:00', ''),
('', '', 'America/Coral_Harbour', '', '−05:00', '−05:00', 'Link to America/Atikokan'),
('', '', 'America/Cordoba', '', '−03:00', '−03:00', 'Link to America/Argentina/Cordoba'),
('CR', '+0956-08405', 'America/Costa_Rica', '', '−06:00', '−06:00', ''),
('CA', '+4906-11631', 'America/Creston', 'Mountain Standard Time - Creston, British Columbia', '−07:00', '−07:00', ''),
('BR', '-1535-05605', 'America/Cuiaba', 'Mato Grosso', '−04:00', '−03:00', ''),
('CW', '+1211-06900', 'America/Curacao', '', '−04:00', '−04:00', ''),
('GL', '+7646-01840', 'America/Danmarkshavn', 'east coast, north of Scoresbysund', '+00:00', '+00:00', ''),
('CA', '+6404-13925', 'America/Dawson', 'Pacific Time - north Yukon', '−08:00', '−07:00', ''),
('CA', '+5946-12014', 'America/Dawson_Creek', 'Mountain Standard Time - Dawson Creek & Fort Saint John, British Columbia', '−07:00', '−07:00', ''),
('US', '+394421-1045903', 'America/Denver', 'Mountain Time', '−07:00', '−06:00', ''),
('US', '+421953-0830245', 'America/Detroit', 'Eastern Time - Michigan - most locations', '−05:00', '−04:00', ''),
('DM', '+1518-06124', 'America/Dominica', '', '−04:00', '−04:00', ''),
('CA', '+5333-11328', 'America/Edmonton', 'Mountain Time - Alberta, east British Columbia & west Saskatchewan', '−07:00', '−06:00', ''),
('BR', '-0640-06952', 'America/Eirunepe', 'W Amazonas', '−04:00', '−04:00', ''),
('SV', '+1342-08912', 'America/El_Salvador', '', '−06:00', '−06:00', ''),
('', '', 'America/Ensenada', '', '−08:00', '−07:00', 'Link to America/Tijuana'),
('BR', '-0343-03830', 'America/Fortaleza', 'NE Brazil (MA, PI, CE, RN, PB)', '−03:00', '−03:00', ''),
('', '', 'America/Fort_Wayne', '', '−05:00', '−04:00', 'Link to America/Indiana/Indianapolis'),
('CA', '+4612-05957', 'America/Glace_Bay', 'Atlantic Time - Nova Scotia - places that did not observe DST 1966-1971', '−04:00', '−03:00', ''),
('GL', '+6411-05144', 'America/Godthab', 'most locations', '−03:00', '−02:00', ''),
('CA', '+5320-06025', 'America/Goose_Bay', 'Atlantic Time - Labrador - most locations', '−04:00', '−03:00', ''),
('TC', '+2128-07108', 'America/Grand_Turk', '', '−05:00', '−04:00', ''),
('GD', '+1203-06145', 'America/Grenada', '', '−04:00', '−04:00', ''),
('GP', '+1614-06132', 'America/Guadeloupe', '', '−04:00', '−04:00', ''),
('GT', '+1438-09031', 'America/Guatemala', '', '−06:00', '−06:00', ''),
('EC', '-0210-07950', 'America/Guayaquil', 'mainland', '−05:00', '−05:00', ''),
('GY', '+0648-05810', 'America/Guyana', '', '−04:00', '−04:00', ''),
('CA', '+4439-06336', 'America/Halifax', 'Atlantic Time - Nova Scotia (most places), PEI', '−04:00', '−03:00', ''),
('CU', '+2308-08222', 'America/Havana', '', '−05:00', '−04:00', ''),
('MX', '+2904-11058', 'America/Hermosillo', 'Mountain Standard Time - Sonora', '−07:00', '−07:00', ''),
('US', '+394606-0860929', 'America/Indiana/Indianapolis', 'Eastern Time - Indiana - most locations', '−05:00', '−04:00', ''),
('US', '+411745-0863730', 'America/Indiana/Knox', 'Central Time - Indiana - Starke County', '−06:00', '−05:00', ''),
('US', '+382232-0862041', 'America/Indiana/Marengo', 'Eastern Time - Indiana - Crawford County', '−05:00', '−04:00', ''),
('US', '+382931-0871643', 'America/Indiana/Petersburg', 'Eastern Time - Indiana - Pike County', '−05:00', '−04:00', ''),
('US', '+375711-0864541', 'America/Indiana/Tell_City', 'Central Time - Indiana - Perry County', '−06:00', '−05:00', ''),
('US', '+384452-0850402', 'America/Indiana/Vevay', 'Eastern Time - Indiana - Switzerland County', '−05:00', '−04:00', ''),
('US', '+384038-0873143', 'America/Indiana/Vincennes', 'Eastern Time - Indiana - Daviess, Dubois, Knox & Martin Counties', '−05:00', '−04:00', ''),
('US', '+410305-0863611', 'America/Indiana/Winamac', 'Eastern Time - Indiana - Pulaski County', '−05:00', '−04:00', ''),
('', '', 'America/Indianapolis', '', '−05:00', '−04:00', 'Link to America/Indiana/Indianapolis'),
('CA', '+682059-1334300', 'America/Inuvik', 'Mountain Time - west Northwest Territories', '−07:00', '−06:00', ''),
('CA', '+6344-06828', 'America/Iqaluit', 'Eastern Time - east Nunavut - most locations', '−05:00', '−04:00', ''),
('JM', '+1800-07648', 'America/Jamaica', '', '−05:00', '−05:00', ''),
('', '', 'America/Jujuy', '', '−03:00', '−03:00', 'Link to America/Argentina/Jujuy'),
('US', '+581807-1342511', 'America/Juneau', 'Alaska Time - Alaska panhandle', '−09:00', '−08:00', ''),
('US', '+381515-0854534', 'America/Kentucky/Louisville', 'Eastern Time - Kentucky - Louisville area', '−05:00', '−04:00', ''),
('US', '+364947-0845057', 'America/Kentucky/Monticello', 'Eastern Time - Kentucky - Wayne County', '−05:00', '−04:00', ''),
('', '', 'America/Knox_IN', '', '−06:00', '−05:00', 'Link to America/Indiana/Knox'),
('BQ', '+120903-0681636', 'America/Kralendijk', '', '−04:00', '−04:00', 'Link to America/Curacao'),
('BO', '-1630-06809', 'America/La_Paz', '', '−04:00', '−04:00', ''),
('PE', '-1203-07703', 'America/Lima', '', '−05:00', '−05:00', ''),
('US', '+340308-1181434', 'America/Los_Angeles', 'Pacific Time', '−08:00', '−07:00', ''),
('', '', 'America/Louisville', '', '−05:00', '−04:00', 'Link to America/Kentucky/Louisville'),
('SX', '+180305-0630250', 'America/Lower_Princes', '', '−04:00', '−04:00', 'Link to America/Curacao'),
('BR', '-0940-03543', 'America/Maceio', 'Alagoas, Sergipe', '−03:00', '−03:00', ''),
('NI', '+1209-08617', 'America/Managua', '', '−06:00', '−06:00', ''),
('BR', '-0308-06001', 'America/Manaus', 'E Amazonas', '−04:00', '−04:00', ''),
('MF', '+1804-06305', 'America/Marigot', '', '−04:00', '−04:00', 'Link to America/Guadeloupe'),
('MQ', '+1436-06105', 'America/Martinique', '', '−04:00', '−04:00', ''),
('MX', '+2550-09730', 'America/Matamoros', 'US Central Time - Coahuila, Durango, Nuevo León, Tamaulipas near US border', '−06:00', '−05:00', ''),
('MX', '+2313-10625', 'America/Mazatlan', 'Mountain Time - S Baja, Nayarit, Sinaloa', '−07:00', '−06:00', ''),
('', '', 'America/Mendoza', '', '−03:00', '−03:00', 'Link to America/Argentina/Mendoza'),
('US', '+450628-0873651', 'America/Menominee', 'Central Time - Michigan - Dickinson, Gogebic, Iron & Menominee Counties', '−06:00', '−05:00', ''),
('MX', '+2058-08937', 'America/Merida', 'Central Time - Campeche, Yucatán', '−06:00', '−05:00', ''),
('US', '+550737-1313435', 'America/Metlakatla', 'Metlakatla Time - Annette Island', '−08:00', '−08:00', ''),
('MX', '+1924-09909', 'America/Mexico_City', 'Central Time - most locations', '−06:00', '−05:00', ''),
('PM', '+4703-05620', 'America/Miquelon', '', '−03:00', '−02:00', ''),
('CA', '+4606-06447', 'America/Moncton', 'Atlantic Time - New Brunswick', '−04:00', '−03:00', ''),
('MX', '+2540-10019', 'America/Monterrey', 'Mexican Central Time - Coahuila, Durango, Nuevo León, Tamaulipas away from US border', '−06:00', '−05:00', ''),
('UY', '-3453-05611', 'America/Montevideo', '', '−03:00', '−02:00', ''),
('CA', '+4531-07334', 'America/Montreal', 'Eastern Time - Quebec - most locations', '−05:00', '−04:00', ''),
('MS', '+1643-06213', 'America/Montserrat', '', '−04:00', '−04:00', ''),
('BS', '+2505-07721', 'America/Nassau', '', '−05:00', '−04:00', ''),
('US', '+404251-0740023', 'America/New_York', 'Eastern Time', '−05:00', '−04:00', ''),
('CA', '+4901-08816', 'America/Nipigon', 'Eastern Time - Ontario & Quebec - places that did not observe DST 1967-1973', '−05:00', '−04:00', ''),
('US', '+643004-1652423', 'America/Nome', 'Alaska Time - west Alaska', '−09:00', '−08:00', ''),
('BR', '-0351-03225', 'America/Noronha', 'Atlantic islands', '−02:00', '−02:00', ''),
('US', '+471551-1014640', 'America/North_Dakota/Beulah', 'Central Time - North Dakota - Mercer County', '−06:00', '−05:00', ''),
('US', '+470659-1011757', 'America/North_Dakota/Center', 'Central Time - North Dakota - Oliver County', '−06:00', '−05:00', ''),
('US', '+465042-1012439', 'America/North_Dakota/New_Salem', 'Central Time - North Dakota - Morton County (except Mandan area)', '−06:00', '−05:00', ''),
('MX', '+2934-10425', 'America/Ojinaga', 'US Mountain Time - Chihuahua near US border', '−07:00', '−06:00', ''),
('PA', '+0858-07932', 'America/Panama', '', '−05:00', '−05:00', ''),
('CA', '+6608-06544', 'America/Pangnirtung', 'Eastern Time - Pangnirtung, Nunavut', '−05:00', '−04:00', ''),
('SR', '+0550-05510', 'America/Paramaribo', '', '−03:00', '−03:00', ''),
('US', '+332654-1120424', 'America/Phoenix', 'Mountain Standard Time - Arizona', '−07:00', '−07:00', ''),
('HT', '+1832-07220', 'America/Port-au-Prince', '', '−05:00', '−04:00', ''),
('', '', 'America/Porto_Acre', '', '−04:00', '−04:00', 'Link to America/Rio_Branco'),
('BR', '-0846-06354', 'America/Porto_Velho', 'Rondonia', '−04:00', '−04:00', ''),
('TT', '+1039-06131', 'America/Port_of_Spain', '', '−04:00', '−04:00', ''),
('PR', '+182806-0660622', 'America/Puerto_Rico', '', '−04:00', '−04:00', ''),
('CA', '+4843-09434', 'America/Rainy_River', 'Central Time - Rainy River & Fort Frances, Ontario', '−06:00', '−05:00', ''),
('CA', '+624900-0920459', 'America/Rankin_Inlet', 'Central Time - central Nunavut', '−06:00', '−05:00', ''),
('BR', '-0803-03454', 'America/Recife', 'Pernambuco', '−03:00', '−03:00', ''),
('CA', '+5024-10439', 'America/Regina', 'Central Standard Time - Saskatchewan - most locations', '−06:00', '−06:00', ''),
('CA', '+744144-0944945', 'America/Resolute', 'Central Standard Time - Resolute, Nunavut', '−06:00', '−05:00', ''),
('BR', '-0958-06748', 'America/Rio_Branco', 'Acre', '−04:00', '−04:00', ''),
('', '', 'America/Rosario', '', '−03:00', '−03:00', 'Link to America/Argentina/Cordoba'),
('BR', '-0226-05452', 'America/Santarem', 'W Para', '−03:00', '−03:00', ''),
('MX', '+3018-11452', 'America/Santa_Isabel', 'Mexican Pacific Time - Baja California away from US border', '−08:00', '−07:00', ''),
('CL', '-3327-07040', 'America/Santiago', 'most locations', '−04:00', '−03:00', ''),
('DO', '+1828-06954', 'America/Santo_Domingo', '', '−04:00', '−04:00', ''),
('BR', '-2332-04637', 'America/Sao_Paulo', 'S & SE Brazil (GO, DF, MG, ES, RJ, SP, PR, SC, RS)', '−03:00', '−02:00', ''),
('GL', '+7029-02158', 'America/Scoresbysund', 'Scoresbysund / Ittoqqortoormiit', '−01:00', '+00:00', ''),
('US', '+364708-1084111', 'America/Shiprock', 'Mountain Time - Navajo', '−07:00', '−06:00', 'Link to America/Denver'),
('US', '+571035-1351807', 'America/Sitka', 'Alaska Time - southeast Alaska panhandle', '−09:00', '−08:00', ''),
('BL', '+1753-06251', 'America/St_Barthelemy', '', '−04:00', '−04:00', 'Link to America/Guadeloupe'),
('CA', '+4734-05243', 'America/St_Johns', 'Newfoundland Time, including SE Labrador', '−03:30', '−02:30', ''),
('KN', '+1718-06243', 'America/St_Kitts', '', '−04:00', '−04:00', ''),
('LC', '+1401-06100', 'America/St_Lucia', '', '−04:00', '−04:00', ''),
('VI', '+1821-06456', 'America/St_Thomas', '', '−04:00', '−04:00', ''),
('VC', '+1309-06114', 'America/St_Vincent', '', '−04:00', '−04:00', ''),
('CA', '+5017-10750', 'America/Swift_Current', 'Central Standard Time - Saskatchewan - midwest', '−06:00', '−06:00', ''),
('HN', '+1406-08713', 'America/Tegucigalpa', '', '−06:00', '−06:00', ''),
('GL', '+7634-06847', 'America/Thule', 'Thule / Pituffik', '−04:00', '−03:00', ''),
('CA', '+4823-08915', 'America/Thunder_Bay', 'Eastern Time - Thunder Bay, Ontario', '−05:00', '−04:00', ''),
('MX', '+3232-11701', 'America/Tijuana', 'US Pacific Time - Baja California near US border', '−08:00', '−07:00', ''),
('CA', '+4339-07923', 'America/Toronto', 'Eastern Time - Ontario - most locations', '−05:00', '−04:00', ''),
('VG', '+1827-06437', 'America/Tortola', '', '−04:00', '−04:00', ''),
('CA', '+4916-12307', 'America/Vancouver', 'Pacific Time - west British Columbia', '−08:00', '−07:00', ''),
('', '', 'America/Virgin', '', '−04:00', '−04:00', 'Link to America/St_Thomas'),
('CA', '+6043-13503', 'America/Whitehorse', 'Pacific Time - south Yukon', '−08:00', '−07:00', ''),
('CA', '+4953-09709', 'America/Winnipeg', 'Central Time - Manitoba & west Ontario', '−06:00', '−05:00', ''),
('US', '+593249-1394338', 'America/Yakutat', 'Alaska Time - Alaska panhandle neck', '−09:00', '−08:00', ''),
('CA', '+6227-11421', 'America/Yellowknife', 'Mountain Time - central Northwest Territories', '−07:00', '−06:00', ''),
('AQ', '-6617+11031', 'Antarctica/Casey', 'Casey Station, Bailey Peninsula', '+11:00', '+08:00', ''),
('AQ', '-6835+07758', 'Antarctica/Davis', 'Davis Station, Vestfold Hills', '+05:00', '+07:00', ''),
('AQ', '-6640+14001', 'Antarctica/DumontDUrville', 'Dumont-d\'Urville Station, Terre Adelie', '+10:00', '+10:00', ''),
('AQ', '-5430+15857', 'Antarctica/Macquarie', 'Macquarie Island Station, Macquarie Island', '+11:00', '+11:00', ''),
('AQ', '-6736+06253', 'Antarctica/Mawson', 'Mawson Station, Holme Bay', '+05:00', '+05:00', ''),
('AQ', '-7750+16636', 'Antarctica/McMurdo', 'McMurdo Station, Ross Island', '+12:00', '+13:00', ''),
('AQ', '-6448-06406', 'Antarctica/Palmer', 'Palmer Station, Anvers Island', '−04:00', '−03:00', ''),
('AQ', '-6734-06808', 'Antarctica/Rothera', 'Rothera Station, Adelaide Island', '−03:00', '−03:00', ''),
('AQ', '-9000+00000', 'Antarctica/South_Pole', 'Amundsen-Scott Station, South Pole', '+12:00', '+13:00', 'Link to Antarctica/McMurdo'),
('AQ', '-690022+0393524', 'Antarctica/Syowa', 'Syowa Station, E Ongul I', '+03:00', '+03:00', ''),
('AQ', '-7824+10654', 'Antarctica/Vostok', 'Vostok Station, Lake Vostok', '+06:00', '+06:00', ''),
('SJ', '+7800+01600', 'Arctic/Longyearbyen', '', '+01:00', '+02:00', 'Link to Europe/Oslo'),
('YE', '+1245+04512', 'Asia/Aden', '', '+03:00', '+03:00', ''),
('KZ', '+4315+07657', 'Asia/Almaty', 'most locations', '+06:00', '+06:00', ''),
('JO', '+3157+03556', 'Asia/Amman', '', '+03:00', '+03:00', ''),
('RU', '+6445+17729', 'Asia/Anadyr', 'Moscow+08 - Bering Sea', '+12:00', '+12:00', ''),
('KZ', '+4431+05016', 'Asia/Aqtau', 'Atyrau (Atirau, Gur\'yev), Mangghystau (Mankistau)', '+05:00', '+05:00', ''),
('KZ', '+5017+05710', 'Asia/Aqtobe', 'Aqtobe (Aktobe)', '+05:00', '+05:00', ''),
('TM', '+3757+05823', 'Asia/Ashgabat', '', '+05:00', '+05:00', ''),
('', '', 'Asia/Ashkhabad', '', '+05:00', '+05:00', 'Link to Asia/Ashgabat'),
('IQ', '+3321+04425', 'Asia/Baghdad', '', '+03:00', '+03:00', ''),
('BH', '+2623+05035', 'Asia/Bahrain', '', '+03:00', '+03:00', ''),
('AZ', '+4023+04951', 'Asia/Baku', '', '+04:00', '+05:00', ''),
('TH', '+1345+10031', 'Asia/Bangkok', '', '+07:00', '+07:00', ''),
('LB', '+3353+03530', 'Asia/Beirut', '', '+02:00', '+03:00', ''),
('KG', '+4254+07436', 'Asia/Bishkek', '', '+06:00', '+06:00', ''),
('BN', '+0456+11455', 'Asia/Brunei', '', '+08:00', '+08:00', ''),
('', '', 'Asia/Calcutta', '', '+05:30', '+05:30', 'Link to Asia/Kolkata'),
('MN', '+4804+11430', 'Asia/Choibalsan', 'Dornod, Sukhbaatar', '+08:00', '+08:00', ''),
('CN', '+2934+10635', 'Asia/Chongqing', 'central China - Sichuan, Yunnan, Guangxi, Shaanxi, Guizhou, etc.', '+08:00', '+08:00', 'Covering historic Kansu-Szechuan time zone.'),
('', '', 'Asia/Chungking', '', '+08:00', '+08:00', 'Link to Asia/Chongqing'),
('LK', '+0656+07951', 'Asia/Colombo', '', '+05:30', '+05:30', ''),
('', '', 'Asia/Dacca', '', '+06:00', '+06:00', 'Link to Asia/Dhaka'),
('SY', '+3330+03618', 'Asia/Damascus', '', '+02:00', '+03:00', ''),
('BD', '+2343+09025', 'Asia/Dhaka', '', '+06:00', '+06:00', ''),
('TL', '-0833+12535', 'Asia/Dili', '', '+09:00', '+09:00', ''),
('AE', '+2518+05518', 'Asia/Dubai', '', '+04:00', '+04:00', ''),
('TJ', '+3835+06848', 'Asia/Dushanbe', '', '+05:00', '+05:00', ''),
('PS', '+3130+03428', 'Asia/Gaza', 'Gaza Strip', '+02:00', '+03:00', ''),
('CN', '+4545+12641', 'Asia/Harbin', 'Heilongjiang (except Mohe), Jilin', '+08:00', '+08:00', 'Covering historic Changpai time zone.'),
('PS', '+313200+0350542', 'Asia/Hebron', 'West Bank', '+02:00', '+03:00', ''),
('HK', '+2217+11409', 'Asia/Hong_Kong', '', '+08:00', '+08:00', ''),
('MN', '+4801+09139', 'Asia/Hovd', 'Bayan-Olgiy, Govi-Altai, Hovd, Uvs, Zavkhan', '+07:00', '+07:00', ''),
('VN', '+1045+10640', 'Asia/Ho_Chi_Minh', '', '+07:00', '+07:00', ''),
('RU', '+5216+10420', 'Asia/Irkutsk', 'Moscow+05 - Lake Baikal', '+09:00', '+09:00', ''),
('', '', 'Asia/Istanbul', '', '+02:00', '+03:00', 'Link to Europe/Istanbul'),
('ID', '-0610+10648', 'Asia/Jakarta', 'Java & Sumatra', '+07:00', '+07:00', ''),
('ID', '-0232+14042', 'Asia/Jayapura', 'west New Guinea (Irian Jaya) & Malukus (Moluccas)', '+09:00', '+09:00', ''),
('IL', '+3146+03514', 'Asia/Jerusalem', '', '+02:00', '+03:00', ''),
('AF', '+3431+06912', 'Asia/Kabul', '', '+04:30', '+04:30', ''),
('RU', '+5301+15839', 'Asia/Kamchatka', 'Moscow+08 - Kamchatka', '+12:00', '+12:00', ''),
('PK', '+2452+06703', 'Asia/Karachi', '', '+05:00', '+05:00', ''),
('CN', '+3929+07559', 'Asia/Kashgar', 'west Tibet & Xinjiang', '+08:00', '+08:00', 'Covering historic Kunlun time zone.'),
('NP', '+2743+08519', 'Asia/Kathmandu', '', '+05:45', '+05:45', ''),
('', '', 'Asia/Katmandu', '', '+05:45', '+05:45', 'Link to Asia/Kathmandu'),
('IN', '+2232+08822', 'Asia/Kolkata', '', '+05:30', '+05:30', 'Note: Different zones in history, see Time in India.'),
('RU', '+5601+09250', 'Asia/Krasnoyarsk', 'Moscow+04 - Yenisei River', '+08:00', '+08:00', ''),
('MY', '+0310+10142', 'Asia/Kuala_Lumpur', 'peninsular Malaysia', '+08:00', '+08:00', ''),
('MY', '+0133+11020', 'Asia/Kuching', 'Sabah & Sarawak', '+08:00', '+08:00', ''),
('KW', '+2920+04759', 'Asia/Kuwait', '', '+03:00', '+03:00', ''),
('', '', 'Asia/Macao', '', '+08:00', '+08:00', 'Link to Asia/Macau'),
('MO', '+2214+11335', 'Asia/Macau', '', '+08:00', '+08:00', ''),
('RU', '+5934+15048', 'Asia/Magadan', 'Moscow+08 - Magadan', '+12:00', '+12:00', ''),
('ID', '-0507+11924', 'Asia/Makassar', 'east & south Borneo, Sulawesi (Celebes), Bali, Nusa Tenggara, west Timor', '+08:00', '+08:00', ''),
('PH', '+1435+12100', 'Asia/Manila', '', '+08:00', '+08:00', ''),
('OM', '+2336+05835', 'Asia/Muscat', '', '+04:00', '+04:00', ''),
('CY', '+3510+03322', 'Asia/Nicosia', '', '+02:00', '+03:00', ''),
('RU', '+5345+08707', 'Asia/Novokuznetsk', 'Moscow+03 - Novokuznetsk', '+07:00', '+07:00', ''),
('RU', '+5502+08255', 'Asia/Novosibirsk', 'Moscow+03 - Novosibirsk', '+07:00', '+07:00', ''),
('RU', '+5500+07324', 'Asia/Omsk', 'Moscow+03 - west Siberia', '+07:00', '+07:00', ''),
('KZ', '+5113+05121', 'Asia/Oral', 'West Kazakhstan', '+05:00', '+05:00', ''),
('KH', '+1133+10455', 'Asia/Phnom_Penh', '', '+07:00', '+07:00', ''),
('ID', '-0002+10920', 'Asia/Pontianak', 'west & central Borneo', '+07:00', '+07:00', ''),
('KP', '+3901+12545', 'Asia/Pyongyang', '', '+09:00', '+09:00', ''),
('QA', '+2517+05132', 'Asia/Qatar', '', '+03:00', '+03:00', ''),
('KZ', '+4448+06528', 'Asia/Qyzylorda', 'Qyzylorda (Kyzylorda, Kzyl-Orda)', '+06:00', '+06:00', ''),
('MM', '+1647+09610', 'Asia/Rangoon', '', '+06:30', '+06:30', ''),
('SA', '+2438+04643', 'Asia/Riyadh', '', '+03:00', '+03:00', ''),
('', '', 'Asia/Saigon', '', '+07:00', '+07:00', 'Link to Asia/Ho_Chi_Minh'),
('RU', '+4658+14242', 'Asia/Sakhalin', 'Moscow+07 - Sakhalin Island', '+11:00', '+11:00', ''),
('UZ', '+3940+06648', 'Asia/Samarkand', 'west Uzbekistan', '+05:00', '+05:00', ''),
('KR', '+3733+12658', 'Asia/Seoul', '', '+09:00', '+09:00', ''),
('CN', '+3114+12128', 'Asia/Shanghai', 'east China - Beijing, Guangdong, Shanghai, etc.', '+08:00', '+08:00', 'Covering historic Chungyuan time zone.'),
('SG', '+0117+10351', 'Asia/Singapore', '', '+08:00', '+08:00', ''),
('TW', '+2503+12130', 'Asia/Taipei', '', '+08:00', '+08:00', ''),
('UZ', '+4120+06918', 'Asia/Tashkent', 'east Uzbekistan', '+05:00', '+05:00', ''),
('GE', '+4143+04449', 'Asia/Tbilisi', '', '+04:00', '+04:00', ''),
('IR', '+3540+05126', 'Asia/Tehran', '', '+03:30', '+04:30', ''),
('', '', 'Asia/Tel_Aviv', '', '+02:00', '+03:00', 'Link to Asia/Jerusalem'),
('', '', 'Asia/Thimbu', '', '+06:00', '+06:00', 'Link to Asia/Thimphu'),
('BT', '+2728+08939', 'Asia/Thimphu', '', '+06:00', '+06:00', ''),
('JP', '+353916+1394441', 'Asia/Tokyo', '', '+09:00', '+09:00', ''),
('', '', 'Asia/Ujung_Pandang', '', '+08:00', '+08:00', 'Link to Asia/Makassar'),
('MN', '+4755+10653', 'Asia/Ulaanbaatar', 'most locations', '+08:00', '+08:00', ''),
('', '', 'Asia/Ulan_Bator', '', '+08:00', '+08:00', 'Link to Asia/Ulaanbaatar'),
('CN', '+4348+08735', 'Asia/Urumqi', 'most of Tibet & Xinjiang', '+08:00', '+08:00', 'Covering historic Sinkiang-Tibet time zone.'),
('LA', '+1758+10236', 'Asia/Vientiane', '', '+07:00', '+07:00', ''),
('RU', '+4310+13156', 'Asia/Vladivostok', 'Moscow+07 - Amur River', '+11:00', '+11:00', ''),
('RU', '+6200+12940', 'Asia/Yakutsk', 'Moscow+06 - Lena River', '+10:00', '+10:00', ''),
('RU', '+5651+06036', 'Asia/Yekaterinburg', 'Moscow+02 - Urals', '+06:00', '+06:00', ''),
('AM', '+4011+04430', 'Asia/Yerevan', '', '+04:00', '+04:00', ''),
('PT', '+3744-02540', 'Atlantic/Azores', 'Azores', '−01:00', '+00:00', ''),
('BM', '+3217-06446', 'Atlantic/Bermuda', '', '−04:00', '−03:00', ''),
('ES', '+2806-01524', 'Atlantic/Canary', 'Canary Islands', '+00:00', '+01:00', ''),
('CV', '+1455-02331', 'Atlantic/Cape_Verde', '', '−01:00', '−01:00', ''),
('', '', 'Atlantic/Faeroe', '', '+00:00', '+01:00', 'Link to Atlantic/Faroe'),
('FO', '+6201-00646', 'Atlantic/Faroe', '', '+00:00', '+01:00', ''),
('', '', 'Atlantic/Jan_Mayen', '', '+01:00', '+02:00', 'Link to Europe/Oslo'),
('PT', '+3238-01654', 'Atlantic/Madeira', 'Madeira Islands', '+00:00', '+01:00', ''),
('IS', '+6409-02151', 'Atlantic/Reykjavik', '', '+00:00', '+00:00', ''),
('GS', '-5416-03632', 'Atlantic/South_Georgia', '', '−02:00', '−02:00', ''),
('FK', '-5142-05751', 'Atlantic/Stanley', '', '−03:00', '−03:00', ''),
('SH', '-1555-00542', 'Atlantic/St_Helena', '', '+00:00', '+00:00', ''),
('', '', 'Australia/ACT', '', '+10:00', '+11:00', 'Link to Australia/Sydney'),
('AU', '-3455+13835', 'Australia/Adelaide', 'South Australia', '+09:30', '+10:30', ''),
('AU', '-2728+15302', 'Australia/Brisbane', 'Queensland - most locations', '+10:00', '+10:00', ''),
('AU', '-3157+14127', 'Australia/Broken_Hill', 'New South Wales - Yancowinna', '+09:30', '+10:30', ''),
('', '', 'Australia/Canberra', '', '+10:00', '+11:00', 'Link to Australia/Sydney'),
('AU', '-3956+14352', 'Australia/Currie', 'Tasmania - King Island', '+10:00', '+11:00', ''),
('AU', '-1228+13050', 'Australia/Darwin', 'Northern Territory', '+09:30', '+09:30', ''),
('AU', '-3143+12852', 'Australia/Eucla', 'Western Australia - Eucla area', '+08:45', '+08:45', ''),
('AU', '-4253+14719', 'Australia/Hobart', 'Tasmania - most locations', '+10:00', '+11:00', ''),
('', '', 'Australia/LHI', '', '+10:30', '+11:00', 'Link to Australia/Lord_Howe'),
('AU', '-2016+14900', 'Australia/Lindeman', 'Queensland - Holiday Islands', '+10:00', '+10:00', ''),
('AU', '-3133+15905', 'Australia/Lord_Howe', 'Lord Howe Island', '+10:30', '+11:00', ''),
('AU', '-3749+14458', 'Australia/Melbourne', 'Victoria', '+10:00', '+11:00', ''),
('', '', 'Australia/North', '', '+09:30', '+09:30', 'Link to Australia/Darwin'),
('', '', 'Australia/NSW', '', '+10:00', '+11:00', 'Link to Australia/Sydney'),
('AU', '-3157+11551', 'Australia/Perth', 'Western Australia - most locations', '+08:00', '+08:00', ''),
('', '', 'Australia/Queensland', '', '+10:00', '+10:00', 'Link to Australia/Brisbane'),
('', '', 'Australia/South', '', '+09:30', '+10:30', 'Link to Australia/Adelaide'),
('AU', '-3352+15113', 'Australia/Sydney', 'New South Wales - most locations', '+10:00', '+11:00', ''),
('', '', 'Australia/Tasmania', '', '+10:00', '+11:00', 'Link to Australia/Hobart'),
('', '', 'Australia/Victoria', '', '+10:00', '+11:00', 'Link to Australia/Melbourne'),
('', '', 'Australia/West', '', '+08:00', '+08:00', 'Link to Australia/Perth'),
('', '', 'Australia/Yancowinna', '', '+09:30', '+10:30', 'Link to Australia/Broken_Hill'),
('', '', 'Brazil/Acre', '', '−04:00', '−04:00', 'Link to America/Rio_Branco'),
('', '', 'Brazil/DeNoronha', '', '−02:00', '−02:00', 'Link to America/Noronha'),
('', '', 'Brazil/East', '', '−03:00', '−02:00', 'Link to America/Sao_Paulo'),
('', '', 'Brazil/West', '', '−04:00', '−04:00', 'Link to America/Manaus'),
('', '', 'Canada/Atlantic', '', '−04:00', '−03:00', 'Link to America/Halifax'),
('', '', 'Canada/Central', '', '−06:00', '−05:00', 'Link to America/Winnipeg'),
('', '', 'Canada/East-Saskatchewan', '', '−06:00', '−06:00', 'Link to America/Regina'),
('', '', 'Canada/Eastern', '', '−05:00', '−04:00', 'Link to America/Toronto'),
('', '', 'Canada/Mountain', '', '−07:00', '−06:00', 'Link to America/Edmonton'),
('', '', 'Canada/Newfoundland', '', '−03:30', '−02:30', 'Link to America/St_Johns'),
('', '', 'Canada/Pacific', '', '−08:00', '−07:00', 'Link to America/Vancouver'),
('', '', 'Canada/Saskatchewan', '', '−06:00', '−06:00', 'Link to America/Regina'),
('', '', 'Canada/Yukon', '', '−08:00', '−07:00', 'Link to America/Whitehorse'),
('', '', 'CET', '', '+01:00', '+02:00', ''),
('', '', 'Chile/Continental', '', '−04:00', '−03:00', 'Link to America/Santiago'),
('', '', 'Chile/EasterIsland', '', '−06:00', '−05:00', 'Link to Pacific/Easter'),
('', '', 'CST6CDT', '', '−06:00', '−05:00', ''),
('', '', 'Cuba', '', '−05:00', '−04:00', 'Link to America/Havana'),
('', '', 'EET', '', '+02:00', '+03:00', ''),
('', '', 'Egypt', '', '+02:00', '+02:00', 'Link to Africa/Cairo'),
('', '', 'Eire', '', '+00:00', '+01:00', 'Link to Europe/Dublin'),
('', '', 'EST', '', '−05:00', '−05:00', ''),
('', '', 'EST5EDT', '', '−05:00', '−04:00', ''),
('', '', 'Etc./GMT', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Etc./GMT+0', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Etc./UCT', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Etc./Universal', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Etc./UTC', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Etc./Zulu', '', '+00:00', '+00:00', 'Link to UTC'),
('NL', '+5222+00454', 'Europe/Amsterdam', '', '+01:00', '+02:00', ''),
('AD', '+4230+00131', 'Europe/Andorra', '', '+01:00', '+02:00', ''),
('GR', '+3758+02343', 'Europe/Athens', '', '+02:00', '+03:00', ''),
('', '', 'Europe/Belfast', '', '+00:00', '+01:00', 'Link to Europe/London'),
('RS', '+4450+02030', 'Europe/Belgrade', '', '+01:00', '+02:00', ''),
('DE', '+5230+01322', 'Europe/Berlin', '', '+01:00', '+02:00', 'In 1945, the Trizone did not follow Berlin\'s switch to DST, see Time in Germany'),
('SK', '+4809+01707', 'Europe/Bratislava', '', '+01:00', '+02:00', 'Link to Europe/Prague'),
('BE', '+5050+00420', 'Europe/Brussels', '', '+01:00', '+02:00', ''),
('RO', '+4426+02606', 'Europe/Bucharest', '', '+02:00', '+03:00', ''),
('HU', '+4730+01905', 'Europe/Budapest', '', '+01:00', '+02:00', ''),
('MD', '+4700+02850', 'Europe/Chisinau', '', '+02:00', '+03:00', ''),
('DK', '+5540+01235', 'Europe/Copenhagen', '', '+01:00', '+02:00', ''),
('IE', '+5320-00615', 'Europe/Dublin', '', '+00:00', '+01:00', ''),
('GI', '+3608-00521', 'Europe/Gibraltar', '', '+01:00', '+02:00', ''),
('GG', '+4927-00232', 'Europe/Guernsey', '', '+00:00', '+01:00', 'Link to Europe/London'),
('FI', '+6010+02458', 'Europe/Helsinki', '', '+02:00', '+03:00', ''),
('IM', '+5409-00428', 'Europe/Isle_of_Man', '', '+00:00', '+01:00', 'Link to Europe/London'),
('TR', '+4101+02858', 'Europe/Istanbul', '', '+02:00', '+03:00', ''),
('JE', '+4912-00207', 'Europe/Jersey', '', '+00:00', '+01:00', 'Link to Europe/London'),
('RU', '+5443+02030', 'Europe/Kaliningrad', 'Moscow-01 - Kaliningrad', '+03:00', '+03:00', ''),
('UA', '+5026+03031', 'Europe/Kiev', 'most locations', '+02:00', '+03:00', ''),
('PT', '+3843-00908', 'Europe/Lisbon', 'mainland', '+00:00', '+01:00', ''),
('SI', '+4603+01431', 'Europe/Ljubljana', '', '+01:00', '+02:00', 'Link to Europe/Belgrade'),
('GB', '+513030-0000731', 'Europe/London', '', '+00:00', '+01:00', ''),
('LU', '+4936+00609', 'Europe/Luxembourg', '', '+01:00', '+02:00', ''),
('ES', '+4024-00341', 'Europe/Madrid', 'mainland', '+01:00', '+02:00', ''),
('MT', '+3554+01431', 'Europe/Malta', '', '+01:00', '+02:00', ''),
('AX', '+6006+01957', 'Europe/Mariehamn', '', '+02:00', '+03:00', 'Link to Europe/Helsinki'),
('BY', '+5354+02734', 'Europe/Minsk', '', '+03:00', '+03:00', ''),
('MC', '+4342+00723', 'Europe/Monaco', '', '+01:00', '+02:00', ''),
('RU', '+5545+03735', 'Europe/Moscow', 'Moscow+00 - west Russia', '+04:00', '+04:00', ''),
('', '', 'Europe/Nicosia', '', '+02:00', '+03:00', 'Link to Asia/Nicosia'),
('NO', '+5955+01045', 'Europe/Oslo', '', '+01:00', '+02:00', ''),
('FR', '+4852+00220', 'Europe/Paris', '', '+01:00', '+02:00', ''),
('ME', '+4226+01916', 'Europe/Podgorica', '', '+01:00', '+02:00', 'Link to Europe/Belgrade'),
('CZ', '+5005+01426', 'Europe/Prague', '', '+01:00', '+02:00', ''),
('LV', '+5657+02406', 'Europe/Riga', '', '+02:00', '+03:00', ''),
('IT', '+4154+01229', 'Europe/Rome', '', '+01:00', '+02:00', ''),
('RU', '+5312+05009', 'Europe/Samara', 'Moscow+00 - Samara, Udmurtia', '+04:00', '+04:00', ''),
('SM', '+4355+01228', 'Europe/San_Marino', '', '+01:00', '+02:00', 'Link to Europe/Rome'),
('BA', '+4352+01825', 'Europe/Sarajevo', '', '+01:00', '+02:00', 'Link to Europe/Belgrade'),
('UA', '+4457+03406', 'Europe/Simferopol', 'central Crimea', '+02:00', '+03:00', ''),
('MK', '+4159+02126', 'Europe/Skopje', '', '+01:00', '+02:00', 'Link to Europe/Belgrade'),
('BG', '+4241+02319', 'Europe/Sofia', '', '+02:00', '+03:00', ''),
('SE', '+5920+01803', 'Europe/Stockholm', '', '+01:00', '+02:00', ''),
('EE', '+5925+02445', 'Europe/Tallinn', '', '+02:00', '+03:00', ''),
('AL', '+4120+01950', 'Europe/Tirane', '', '+01:00', '+02:00', ''),
('', '', 'Europe/Tiraspol', '', '+02:00', '+03:00', 'Link to Europe/Chisinau'),
('UA', '+4837+02218', 'Europe/Uzhgorod', 'Ruthenia', '+02:00', '+03:00', ''),
('LI', '+4709+00931', 'Europe/Vaduz', '', '+01:00', '+02:00', ''),
('VA', '+415408+0122711', 'Europe/Vatican', '', '+01:00', '+02:00', 'Link to Europe/Rome'),
('AT', '+4813+01620', 'Europe/Vienna', '', '+01:00', '+02:00', ''),
('LT', '+5441+02519', 'Europe/Vilnius', '', '+02:00', '+03:00', ''),
('RU', '+4844+04425', 'Europe/Volgograd', 'Moscow+00 - Caspian Sea', '+04:00', '+04:00', ''),
('PL', '+5215+02100', 'Europe/Warsaw', '', '+01:00', '+02:00', ''),
('HR', '+4548+01558', 'Europe/Zagreb', '', '+01:00', '+02:00', 'Link to Europe/Belgrade'),
('UA', '+4750+03510', 'Europe/Zaporozhye', 'Zaporozh\'ye, E Lugansk / Zaporizhia, E Luhansk', '+02:00', '+03:00', ''),
('CH', '+4723+00832', 'Europe/Zurich', '', '+01:00', '+02:00', ''),
('', '', 'GB', '', '+00:00', '+01:00', 'Link to Europe/London'),
('', '', 'GB-Eire', '', '+00:00', '+01:00', 'Link to Europe/London'),
('', '', 'GMT', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'GMT+0', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'GMT-0', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'GMT0', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Greenwich', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Hong Kong', '', '+08:00', '+08:00', 'Link to Asia/Hong_Kong'),
('', '', 'HST', '', '−10:00', '−10:00', ''),
('', '', 'Iceland', '', '+00:00', '+00:00', 'Link to Atlantic/Reykjavik'),
('MG', '-1855+04731', 'Indian/Antananarivo', '', '+03:00', '+03:00', ''),
('IO', '-0720+07225', 'Indian/Chagos', '', '+06:00', '+06:00', ''),
('CX', '-1025+10543', 'Indian/Christmas', '', '+07:00', '+07:00', ''),
('CC', '-1210+09655', 'Indian/Cocos', '', '+06:30', '+06:30', ''),
('KM', '-1141+04316', 'Indian/Comoro', '', '+03:00', '+03:00', ''),
('TF', '-492110+0701303', 'Indian/Kerguelen', '', '+05:00', '+05:00', ''),
('SC', '-0440+05528', 'Indian/Mahe', '', '+04:00', '+04:00', ''),
('MV', '+0410+07330', 'Indian/Maldives', '', '+05:00', '+05:00', ''),
('MU', '-2010+05730', 'Indian/Mauritius', '', '+04:00', '+04:00', ''),
('YT', '-1247+04514', 'Indian/Mayotte', '', '+03:00', '+03:00', ''),
('RE', '-2052+05528', 'Indian/Reunion', '', '+04:00', '+04:00', ''),
('', '', 'Iran', '', '+03:30', '+04:30', 'Link to Asia/Tehran'),
('', '', 'Israel', '', '+02:00', '+03:00', 'Link to Asia/Jerusalem'),
('', '', 'Jamaica', '', '−05:00', '−05:00', 'Link to America/Jamaica'),
('', '', 'Japan', '', '+09:00', '+09:00', 'Link to Asia/Tokyo'),
('', '', 'JST-9', '', '+09:00', '+09:00', 'Link to Asia/Tokyo'),
('', '', 'Kwajalein', '', '+12:00', '+12:00', 'Link to Pacific/Kwajalein'),
('', '', 'Libya', '', '+02:00', '+02:00', 'Link to Africa/Tripoli'),
('', '', 'MET', '', '+01:00', '+02:00', ''),
('', '', 'Mexico/BajaNorte', '', '−08:00', '−07:00', 'Link to America/Tijuana'),
('', '', 'Mexico/BajaSur', '', '−07:00', '−06:00', 'Link to America/Mazatlan'),
('', '', 'Mexico/General', '', '−06:00', '−05:00', 'Link to America/Mexico_City'),
('', '', 'MST', '', '−07:00', '−07:00', ''),
('', '', 'MST7MDT', '', '−07:00', '−06:00', ''),
('', '', 'Navajo', '', '−07:00', '−06:00', 'Link to America/Denver'),
('', '', 'NZ', '', '+12:00', '+13:00', 'Link to Pacific/Auckland'),
('', '', 'NZ-CHAT', '', '+12:45', '+13:45', 'Link to Pacific/Chatham'),
('WS', '-1350-17144', 'Pacific/Apia', '', '+13:00', '+14:00', ''),
('NZ', '-3652+17446', 'Pacific/Auckland', 'most locations', '+12:00', '+13:00', ''),
('NZ', '-4357-17633', 'Pacific/Chatham', 'Chatham Islands', '+12:45', '+13:45', ''),
('FM', '+0725+15147', 'Pacific/Chuuk', 'Chuuk (Truk) and Yap', '+10:00', '+10:00', ''),
('CL', '-2709-10926', 'Pacific/Easter', 'Easter Island & Sala y Gomez', '−06:00', '−05:00', ''),
('VU', '-1740+16825', 'Pacific/Efate', '', '+11:00', '+11:00', ''),
('KI', '-0308-17105', 'Pacific/Enderbury', 'Phoenix Islands', '+13:00', '+13:00', ''),
('TK', '-0922-17114', 'Pacific/Fakaofo', '', '+13:00', '+13:00', ''),
('FJ', '-1808+17825', 'Pacific/Fiji', '', '+12:00', '+13:00', ''),
('TV', '-0831+17913', 'Pacific/Funafuti', '', '+12:00', '+12:00', ''),
('EC', '-0054-08936', 'Pacific/Galapagos', 'Galapagos Islands', '−06:00', '−06:00', ''),
('PF', '-2308-13457', 'Pacific/Gambier', 'Gambier Islands', '−09:00', '−09:00', ''),
('SB', '-0932+16012', 'Pacific/Guadalcanal', '', '+11:00', '+11:00', ''),
('GU', '+1328+14445', 'Pacific/Guam', '', '+10:00', '+10:00', ''),
('US', '+211825-1575130', 'Pacific/Honolulu', 'Hawaii', '−10:00', '−10:00', ''),
('UM', '+1645-16931', 'Pacific/Johnston', 'Johnston Atoll', '−10:00', '−10:00', ''),
('KI', '+0152-15720', 'Pacific/Kiritimati', 'Line Islands', '+14:00', '+14:00', ''),
('FM', '+0519+16259', 'Pacific/Kosrae', 'Kosrae', '+11:00', '+11:00', ''),
('MH', '+0905+16720', 'Pacific/Kwajalein', 'Kwajalein', '+12:00', '+12:00', ''),
('MH', '+0709+17112', 'Pacific/Majuro', 'most locations', '+12:00', '+12:00', ''),
('PF', '-0900-13930', 'Pacific/Marquesas', 'Marquesas Islands', '−09:30', '−09:30', ''),
('UM', '+2813-17722', 'Pacific/Midway', 'Midway Islands', '−11:00', '−11:00', ''),
('NR', '-0031+16655', 'Pacific/Nauru', '', '+12:00', '+12:00', ''),
('NU', '-1901-16955', 'Pacific/Niue', '', '−11:00', '−11:00', ''),
('NF', '-2903+16758', 'Pacific/Norfolk', '', '+11:30', '+11:30', ''),
('NC', '-2216+16627', 'Pacific/Noumea', '', '+11:00', '+11:00', ''),
('AS', '-1416-17042', 'Pacific/Pago_Pago', '', '−11:00', '−11:00', ''),
('PW', '+0720+13429', 'Pacific/Palau', '', '+09:00', '+09:00', ''),
('PN', '-2504-13005', 'Pacific/Pitcairn', '', '−08:00', '−08:00', ''),
('FM', '+0658+15813', 'Pacific/Pohnpei', 'Pohnpei (Ponape)', '+11:00', '+11:00', ''),
('', '', 'Pacific/Ponape', '', '+11:00', '+11:00', 'Link to Pacific/Pohnpei'),
('PG', '-0930+14710', 'Pacific/Port_Moresby', '', '+10:00', '+10:00', ''),
('CK', '-2114-15946', 'Pacific/Rarotonga', '', '−10:00', '−10:00', ''),
('MP', '+1512+14545', 'Pacific/Saipan', '', '+10:00', '+10:00', ''),
('', '', 'Pacific/Samoa', '', '−11:00', '−11:00', 'Link to Pacific/Pago_Pago'),
('PF', '-1732-14934', 'Pacific/Tahiti', 'Society Islands', '−10:00', '−10:00', ''),
('KI', '+0125+17300', 'Pacific/Tarawa', 'Gilbert Islands', '+12:00', '+12:00', ''),
('TO', '-2110-17510', 'Pacific/Tongatapu', '', '+13:00', '+13:00', ''),
('', '', 'Pacific/Truk', '', '+10:00', '+10:00', 'Link to Pacific/Chuuk'),
('UM', '+1917+16637', 'Pacific/Wake', 'Wake Island', '+12:00', '+12:00', ''),
('WF', '-1318-17610', 'Pacific/Wallis', '', '+12:00', '+12:00', ''),
('', '', 'Pacific/Yap', '', '+10:00', '+10:00', 'Link to Pacific/Chuuk'),
('', '', 'Poland', '', '+01:00', '+02:00', 'Link to Europe/Warsaw'),
('', '', 'Portugal', '', '+00:00', '+01:00', 'Link to Europe/Lisbon'),
('', '', 'PRC', '', '+08:00', '+08:00', 'Link to Asia/Shanghai'),
('', '', 'PST8PDT', '', '−08:00', '−07:00', ''),
('', '', 'ROC', '', '+08:00', '+08:00', 'Link to Asia/Taipei'),
('', '', 'ROK', '', '+09:00', '+09:00', 'Link to Asia/Seoul'),
('', '', 'Singapore', '', '+08:00', '+08:00', 'Link to Asia/Singapore'),
('', '', 'Turkey', '', '+02:00', '+03:00', 'Link to Europe/Istanbul'),
('', '', 'UCT', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Universal', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'US/Alaska', '', '−09:00', '−08:00', 'Link to America/Anchorage'),
('', '', 'US/Aleutian', '', '−10:00', '−09:00', 'Link to America/Adak'),
('', '', 'US/Arizona', '', '−07:00', '−07:00', 'Link to America/Phoenix'),
('', '', 'US/Central', '', '−06:00', '−05:00', 'Link to America/Chicago'),
('', '', 'US/East-Indiana', '', '−05:00', '−04:00', 'Link to America/Indiana/Indianapolis'),
('', '', 'US/Eastern', '', '−05:00', '−04:00', 'Link to America/New_York'),
('', '', 'US/Hawaii', '', '−10:00', '−10:00', 'Link to Pacific/Honolulu'),
('', '', 'US/Indiana-Starke', '', '−06:00', '−05:00', 'Link to America/Indiana/Knox'),
('', '', 'US/Michigan', '', '−05:00', '−04:00', 'Link to America/Detroit'),
('', '', 'US/Mountain', '', '−07:00', '−06:00', 'Link to America/Denver'),
('', '', 'US/Pacific', '', '−08:00', '−07:00', 'Link to America/Los_Angeles'),
('', '', 'US/Pacific-New', '', '−08:00', '−07:00', 'Link to America/Los_Angeles'),
('', '', 'US/Samoa', '', '−11:00', '−11:00', 'Link to Pacific/Pago_Pago'),
('', '', 'UTC', '', '+00:00', '+00:00', ''),
('', '', 'W-SU', '', '+04:00', '+04:00', 'Link to Europe/Moscow'),
('', '', 'WET', '', '+00:00', '+01:00', ''),
('', '', 'Zulu', '', '+00:00', '+00:00', 'Link to UTC');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cr_card_images`
--

CREATE TABLE `cr_card_images` (
  `card_image_id` int(11) NOT NULL,
  `image_name` varchar(20) DEFAULT NULL,
  `alt_text` varchar(50) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cr_card_images`
--

INSERT INTO `cr_card_images` (`card_image_id`, `image_name`, `alt_text`, `status`) VALUES
(2, 'card_131.png', 'techcombank', 'Active'),
(3, 'card_597.jpg', 'vietcombank', 'Active'),
(4, 'card_632.png', 'MB', 'Active'),
(11, 'card_621.jpg', 'bidv', 'Active');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cr_cities`
--

CREATE TABLE `cr_cities` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(512) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cr_cities`
--

INSERT INTO `cr_cities` (`city_id`, `city_name`, `status`) VALUES
(531, 'Hồ Chí Minh', 'Active'),
(532, 'An Giang', 'Active'),
(533, 'Bà Rịa – Vũng Tàu', 'Active'),
(534, 'Bạc Liêu', 'Active'),
(535, 'Bắc Giang', 'Active'),
(536, 'Bắc Kạn', 'Active'),
(537, 'Bắc Ninh', 'Active'),
(538, 'Bến Tre', 'Active'),
(539, 'Bình Dương', 'Active'),
(540, 'Bình Định', 'Active'),
(541, 'Bình Phước', 'Active'),
(542, 'Bình Thuận', 'Active'),
(543, 'Cà Mau', 'Active'),
(544, 'Cao Bằng', 'Active'),
(545, 'Cần Thơ', 'Active'),
(546, 'Đà Nẵng', 'Active'),
(547, 'Đắk Lắk', 'Active'),
(548, 'Đắk Nông', 'Active'),
(549, 'Điện Biên', 'Active'),
(550, 'Đồng Nai', 'Active'),
(551, 'Đồng Tháp', 'Active'),
(552, 'Gia Lai', 'Active'),
(553, '  Hà Giang', 'Active'),
(554, 'Hà Nam', 'Active'),
(555, 'Hà Nội', 'Active'),
(556, 'Hà Tĩnh', 'Active'),
(557, 'Hải Dương', 'Active'),
(558, 'Hải Phòng', 'Active'),
(559, 'Hậu Giang', 'Active'),
(560, 'Hòa Bình', 'Active'),
(561, 'Hưng Yên', 'Active'),
(562, 'Khánh Hòa', 'Active'),
(563, 'Kiên Giang', 'Active'),
(564, 'Kon Tum', 'Active'),
(565, 'Lai Châu', 'Active'),
(566, 'Lạng Sơn', 'Active'),
(567, 'Lào Cai', 'Active'),
(568, 'Lâm Đồng', 'Active'),
(569, 'Long An', 'Active'),
(570, 'Nam Định', 'Active'),
(571, 'Nghệ An', 'Active'),
(572, 'Ninh Bình', 'Active'),
(573, 'Ninh Thuận', 'Active'),
(574, 'Phú Thọ', 'Active'),
(575, 'Phú Yên', 'Active'),
(576, 'Quảng Bình', 'Active'),
(577, 'Quảng Nam', 'Active'),
(578, 'Quảng Ngãi', 'Active'),
(579, 'Quảng Ninh', 'Active'),
(580, 'Quảng Trị', 'Active'),
(581, 'Sóc Trăng', 'Active'),
(582, 'Sơn La', 'Active'),
(583, 'Tây Ninh', 'Active'),
(584, 'Thái Bình', 'Active'),
(585, 'Thái Nguyên', 'Active'),
(586, 'Thanh Hóa', 'Active'),
(587, 'Thừa Thiên Huế', 'Active'),
(588, 'Tiền Giang', 'Active'),
(589, 'Trà Vinh', 'Active'),
(590, ' Tuyên Quang', 'Active'),
(591, 'Vĩnh Long', 'Active'),
(592, 'Vĩnh Phúc', 'Active'),
(593, 'Yên Bái', 'Active');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cr_country`
--

CREATE TABLE `cr_country` (
  `id` int(11) UNSIGNED NOT NULL,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `nicename` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cr_country`
--

INSERT INTO `cr_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4, 93),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', 8, 355),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12, 213),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16, 1684),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', 20, 376),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24, 244),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660, 1264),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', NULL, NULL, 0),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28, 1268),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32, 54),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51, 374),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533, 297),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36, 61),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40, 43),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31, 994),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44, 1242),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48, 973),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50, 880),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52, 1246),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112, 375),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56, 32),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84, 501),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', 204, 229),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60, 1441),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64, 975),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68, 591),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70, 387),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72, 267),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL, 0),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76, 55),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL, 246),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96, 673),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100, 359),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854, 226),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108, 257),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116, 855),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120, 237),
(38, 'CA', 'CANADA', 'Canada', 'CAN', 124, 1),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132, 238),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136, 1345),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140, 236),
(42, 'TD', 'CHAD', 'Chad', 'TCD', 148, 235),
(43, 'CL', 'CHILE', 'Chile', 'CHL', 152, 56),
(44, 'CN', 'CHINA', 'China', 'CHN', 156, 86),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL, 61),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL, 672),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170, 57),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', 174, 269),
(49, 'CG', 'CONGO', 'Congo', 'COG', 178, 242),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180, 242),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184, 682),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188, 506),
(53, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', 384, 225),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', 191, 385),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', 192, 53),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196, 357),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203, 420),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', 208, 45),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262, 253),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212, 1767),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214, 1809),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218, 593),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818, 20),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222, 503),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226, 240),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232, 291),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', 233, 372),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231, 251),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238, 500),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234, 298),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242, 679),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', 246, 358),
(73, 'FR', 'FRANCE', 'France', 'FRA', 250, 33),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254, 594),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258, 689),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL, 0),
(77, 'GA', 'GABON', 'Gabon', 'GAB', 266, 241),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270, 220),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268, 995),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', 276, 49),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', 288, 233),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292, 350),
(83, 'GR', 'GREECE', 'Greece', 'GRC', 300, 30),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304, 299),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308, 1473),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312, 590),
(87, 'GU', 'GUAM', 'Guam', 'GUM', 316, 1671),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320, 502),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', 324, 224),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624, 245),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', 328, 592),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', 332, 509),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL, 0),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336, 39),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340, 504),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344, 852),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348, 36),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', 352, 354),
(99, 'IN', 'INDIA', 'India', 'IND', 356, 91),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360, 62),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364, 98),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368, 964),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', 372, 353),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376, 972),
(105, 'IT', 'ITALY', 'Italy', 'ITA', 380, 39),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388, 1876),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', 392, 81),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', 400, 962),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398, 7),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', 404, 254),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296, 686),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', 408, 850),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410, 82),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414, 965),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417, 996),
(116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', 418, 856),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', 428, 371),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422, 961),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426, 266),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430, 231),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434, 218),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438, 423),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440, 370),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442, 352),
(125, 'MO', 'MACAO', 'Macao', 'MAC', 446, 853),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450, 261),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454, 265),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458, 60),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462, 960),
(131, 'ML', 'MALI', 'Mali', 'MLI', 466, 223),
(132, 'MT', 'MALTA', 'Malta', 'MLT', 470, 356),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584, 692),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474, 596),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478, 222),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480, 230),
(137, 'YT', 'MAYOTTE', 'Mayotte', NULL, NULL, 269),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', 484, 52),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583, 691),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498, 373),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', 492, 377),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496, 976),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500, 1664),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504, 212),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508, 258),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104, 95),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516, 264),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', 520, 674),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524, 977),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528, 31),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530, 599),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540, 687),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554, 64),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558, 505),
(155, 'NE', 'NIGER', 'Niger', 'NER', 562, 227),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566, 234),
(157, 'NU', 'NIUE', 'Niue', 'NIU', 570, 683),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574, 672),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580, 1670),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', 578, 47),
(161, 'OM', 'OMAN', 'Oman', 'OMN', 512, 968),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586, 92),
(163, 'PW', 'PALAU', 'Palau', 'PLW', 585, 680),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL, 970),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', 591, 507),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598, 675),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600, 595),
(168, 'PE', 'PERU', 'Peru', 'PER', 604, 51),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608, 63),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612, 0),
(171, 'PL', 'POLAND', 'Poland', 'POL', 616, 48),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620, 351),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630, 1787),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', 634, 974),
(175, 'RE', 'REUNION', 'Reunion', 'REU', 638, 262),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', 642, 40),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643, 70),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646, 250),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654, 290),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659, 1869),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662, 1758),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666, 508),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882, 684),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674, 378),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678, 239),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682, 966),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686, 221),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL, 381),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690, 248),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694, 232),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702, 65),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703, 421),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705, 386),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90, 677),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706, 252),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710, 27),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL, 0),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', 724, 34),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144, 94),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', 736, 249),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740, 597),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744, 47),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748, 268),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752, 46),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756, 41),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760, 963),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158, 886),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762, 992),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834, 255),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', 764, 66),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL, 670),
(213, 'TG', 'TOGO', 'Togo', 'TGO', 768, 228),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772, 690),
(215, 'TO', 'TONGA', 'Tonga', 'TON', 776, 676),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780, 1868),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788, 216),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', 792, 90),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795, 7370),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796, 1649),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798, 688),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', 800, 256),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804, 380),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784, 971),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826, 44),
(226, 'US', 'UNITED STATES', 'United States', 'USA', 840, 1),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL, 1),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858, 598),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860, 998),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548, 678),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862, 58),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704, 84),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92, 1284),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850, 1340),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876, 681),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732, 212),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887, 967),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894, 260),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263),
(240, 'RS', 'SERBIA', 'Serbia', 'SRB', 688, 381),
(241, 'AP', 'ASIA PACIFIC REGION', 'Asia / Pacific Region', '0', 0, 0),
(242, 'ME', 'MONTENEGRO', 'Montenegro', 'MNE', 499, 382),
(243, 'AX', 'ALAND ISLANDS', 'Aland Islands', 'ALA', 248, 358),
(244, 'BQ', 'BONAIRE, SINT EUSTATIUS AND SABA', 'Bonaire, Sint Eustatius and Saba', 'BES', 535, 599),
(245, 'CW', 'CURACAO', 'Curacao', 'CUW', 531, 599),
(246, 'GG', 'GUERNSEY', 'Guernsey', 'GGY', 831, 44),
(247, 'IM', 'ISLE OF MAN', 'Isle of Man', 'IMN', 833, 44),
(248, 'JE', 'JERSEY', 'Jersey', 'JEY', 832, 44),
(249, 'XK', 'KOSOVO', 'Kosovo', '---', 0, 381),
(250, 'BL', 'SAINT BARTHELEMY', 'Saint Barthelemy', 'BLM', 652, 590),
(251, 'MF', 'SAINT MARTIN', 'Saint Martin', 'MAF', 663, 590),
(252, 'SX', 'SINT MAARTEN', 'Sint Maarten', 'SXM', 534, 1),
(253, 'SS', 'SOUTH SUDAN', 'South Sudan', 'SSD', 728, 211);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cr_currency`
--

CREATE TABLE `cr_currency` (
  `currency_code_alpha` char(3) NOT NULL,
  `currency_code_numeric` varchar(3) DEFAULT NULL,
  `currency_name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `cr_currency`
--

INSERT INTO `cr_currency` (`currency_code_alpha`, `currency_code_numeric`, `currency_name`) VALUES
('AFN', '971', 'Afghani'),
('DZD', '12', 'Algerian Dinar'),
('ARS', '32', 'Argentine Peso'),
('AMD', '51', 'Armenian Dram'),
('AWG', '533', 'Aruban Guilder'),
('AUD', '36', 'Australian Dollar'),
('AZN', '944', 'Azerbaijanian Manat'),
('BSD', '44', 'Bahamian Dollar'),
('BHD', '48', 'Bahraini Dinar'),
('THB', '764', 'Baht'),
('PAB', '590', 'Balboa'),
('BBD', '52', 'Barbados Dollar'),
('BYR', '974', 'Belarussian Ruble'),
('BZD', '84', 'Belize Dollar'),
('BMD', '60', 'Bermudian Dollar (customarily known as Bermuda Dollar)'),
('VEF', '937', 'Bolivar Fuerte'),
('BOB', '68', 'Boliviano'),
('XBA', '955', 'Bond Markets Units European Composite Unit (EURCO)'),
('BRL', '986', 'Brazilian Real'),
('BND', '96', 'Brunei Dollar'),
('BGN', '975', 'Bulgarian Lev'),
('BIF', '108', 'Burundi Franc'),
('CAD', '124', 'Canadian Dollar'),
('CVE', '132', 'Cape Verde Escudo'),
('KYD', '136', 'Cayman Islands Dollar'),
('GHS', '936', 'Cedi'),
('XOF', '952', 'CFA Franc BCEAO'),
('XAF', '950', 'CFA Franc BEAC'),
('XPF', '953', 'CFP Franc'),
('CLP', '152', 'Chilean Peso'),
('XTS', '963', 'Codes specifically reserved for testing purposes'),
('COP', '170', 'Colombian Peso'),
('KMF', '174', 'Comoro Franc'),
('CDF', '976', 'Congolese Franc'),
('BAM', '977', 'Convertible Marks'),
('NIO', '558', 'Cordoba Oro'),
('CRC', '188', 'Costa Rican Colon'),
('HRK', '191', 'Croatian Kuna'),
('CUP', '192', 'Cuban Peso'),
('CZK', '203', 'Czech Koruna'),
('GMD', '270', 'Dalasi'),
('DKK', '208', 'Danish Krone'),
('MKD', '807', 'Denar'),
('DJF', '262', 'Djibouti Franc'),
('STD', '678', 'Dobra'),
('DOP', '214', 'Dominican Peso'),
('VND', '704', 'Dong'),
('XCD', '951', 'East Caribbean Dollar'),
('EGP', '818', 'Egyptian Pound'),
('SVC', '222', 'El Salvador Colon'),
('ETB', '230', 'Ethiopian Birr'),
('EUR', '978', 'Euro'),
('XBB', '956', 'European Monetary Unit (E.M.U.-6)'),
('XBD', '958', 'European Unit of Account 17 (E.U.A.-17)'),
('XBC', '957', 'European Unit of Account 9 (E.U.A.-9)'),
('FKP', '238', 'Falkland Islands Pound'),
('FJD', '242', 'Fiji Dollar'),
('HUF', '348', 'Forint'),
('GIP', '292', 'Gibraltar Pound'),
('XAU', '959', 'Gold'),
('HTG', '332', 'Gourde'),
('PYG', '600', 'Guarani'),
('GNF', '324', 'Guinea Franc'),
('GWP', '624', 'Guinea-Bissau Peso'),
('GYD', '328', 'Guyana Dollar'),
('HKD', '344', 'Hong Kong Dollar'),
('UAH', '980', 'Hryvnia'),
('ISK', '352', 'Iceland Krona'),
('INR', '356', 'Indian Rupee'),
('IRR', '364', 'Iranian Rial'),
('IQD', '368', 'Iraqi Dinar'),
('JMD', '388', 'Jamaican Dollar'),
('JOD', '400', 'Jordanian Dinar'),
('KES', '404', 'Kenyan Shilling'),
('PGK', '598', 'Kina'),
('LAK', '418', 'Kip'),
('EEK', '233', 'Kroon'),
('KWD', '414', 'Kuwaiti Dinar'),
('MWK', '454', 'Kwacha'),
('AOA', '973', 'Kwanza'),
('MMK', '104', 'Kyat'),
('GEL', '981', 'Lari'),
('LVL', '428', 'Latvian Lats'),
('LBP', '422', 'Lebanese Pound'),
('ALL', '8', 'Lek'),
('HNL', '340', 'Lempira'),
('SLL', '694', 'Leone'),
('LRD', '430', 'Liberian Dollar'),
('LYD', '434', 'Libyan Dinar'),
('SZL', '748', 'Lilangeni'),
('LTL', '440', 'Lithuanian Litas'),
('LSL', '426', 'Loti'),
('MGA', '969', 'Malagasy Ariary'),
('MYR', '458', 'Malaysian Ringgit'),
('TMT', '934', 'Manat'),
('MUR', '480', 'Mauritius Rupee'),
('MZN', '943', 'Metical'),
('MXN', '484', 'Mexican Peso'),
('MXV', '979', 'Mexican Unidad de Inversion (UDI)'),
('MDL', '498', 'Moldovan Leu'),
('MAD', '504', 'Moroccan Dirham'),
('BOV', '984', 'Mvdol'),
('NGN', '566', 'Naira'),
('ERN', '232', 'Nakfa'),
('NAD', '516', 'Namibia Dollar'),
('NPR', '524', 'Nepalese Rupee'),
('ANG', '532', 'Netherlands Antillian Guilder'),
('ILS', '376', 'New Israeli Sheqel'),
('RON', '946', 'New Leu'),
('TWD', '901', 'New Taiwan Dollar'),
('NZD', '554', 'New Zealand Dollar'),
('BTN', '64', 'Ngultrum'),
('KPW', '408', 'North Korean Won'),
('NOK', '578', 'Norwegian Krone'),
('PEN', '604', 'Nuevo Sol'),
('MRO', '478', 'Ouguiya'),
('TOP', '776', 'Pa\'anga'),
('PKR', '586', 'Pakistan Rupee'),
('XPD', '964', 'Palladium'),
('MOP', '446', 'Pataca'),
('CUC', '931', 'Peso Convertible'),
('UYU', '858', 'Peso Uruguayo'),
('PHP', '608', 'Philippine Peso'),
('XPT', '962', 'Platinum'),
('GBP', '826', 'Pound Sterling'),
('BWP', '72', 'Pula'),
('QAR', '634', 'Qatari Rial'),
('GTQ', '320', 'Quetzal'),
('ZAR', '710', 'Rand'),
('OMR', '512', 'Rial Omani'),
('KHR', '116', 'Riel'),
('MVR', '462', 'Rufiyaa'),
('IDR', '360', 'Rupiah'),
('RUB', '643', 'Russian Ruble'),
('RWF', '646', 'Rwanda Franc'),
('SHP', '654', 'Saint Helena Pound'),
('SAR', '682', 'Saudi Riyal'),
('XDR', '960', 'SDR'),
('RSD', '941', 'Serbian Dinar'),
('SCR', '690', 'Seychelles Rupee'),
('XAG', '961', 'Silver'),
('SGD', '702', 'Singapore Dollar'),
('SBD', '90', 'Solomon Islands Dollar'),
('KGS', '417', 'Som'),
('SOS', '706', 'Somali Shilling'),
('TJS', '972', 'Somoni'),
('LKR', '144', 'Sri Lanka Rupee'),
('SDG', '938', 'Sudanese Pound'),
('SRD', '968', 'Surinam Dollar'),
('SEK', '752', 'Swedish Krona'),
('CHF', '756', 'Swiss Franc'),
('SYP', '760', 'Syrian Pound'),
('BDT', '50', 'Taka'),
('WST', '882', 'Tala'),
('TZS', '834', 'Tanzanian Shilling'),
('KZT', '398', 'Tenge'),
('XXX', '999', 'Codes assigned for transactions where no currency is involved'),
('TTD', '780', 'Trinidad and Tobago Dollar'),
('MNT', '496', 'Tugrik'),
('TND', '788', 'Tunisian Dinar'),
('TRY', '949', 'Turkish Lira'),
('AED', '784', 'UAE Dirham'),
('UGX', '800', 'Uganda Shilling'),
('XFU', NULL, 'UIC-Franc'),
('COU', '970', 'Unidad de Valor Real'),
('CLF', '990', 'Unidades de fomento'),
('UYI', '940', 'Uruguay Peso en Unidades Indexadas'),
('USD', '840', 'US Dollar'),
('USN', '997', 'US Dollar (Next day)'),
('USS', '998', 'US Dollar (Same day)'),
('UZS', '860', 'Uzbekistan Sum'),
('VUV', '548', 'Vatu'),
('CHE', '947', 'WIR Euro'),
('CHW', '948', 'WIR Franc'),
('KRW', '410', 'Won'),
('YER', '886', 'Yemeni Rial'),
('JPY', '392', 'Yen'),
('CNY', '156', 'Yuan Renminbi'),
('ZMK', '894', 'Zambian Kwacha'),
('ZWL', '932', 'Zimbabwe Dollar'),
('PLN', '985', 'Zloty');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cr_email_settings`
--

CREATE TABLE `cr_email_settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `smtp_host` varchar(512) NOT NULL,
  `smtp_port` int(10) NOT NULL,
  `smtp_user` varchar(512) NOT NULL,
  `smtp_password` varchar(512) NOT NULL,
  `api_key` varchar(512) NOT NULL,
  `mail_config` enum('webmail','mandrill') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cr_email_settings`
--

INSERT INTO `cr_email_settings` (`id`, `smtp_host`, `smtp_port`, `smtp_user`, `smtp_password`, `api_key`, `mail_config`) VALUES
(1, 'your sever smtp host', 587, 'your server smtp user', '123456789', '', 'webmail');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cr_email_templates`
--

CREATE TABLE `cr_email_templates` (
  `id` int(11) UNSIGNED NOT NULL,
  `subject` varchar(512) NOT NULL,
  `email_template` varchar(10000) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cr_email_templates`
--

INSERT INTO `cr_email_templates` (`id`, `subject`, `email_template`, `status`) VALUES
(7, 'registration', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__SITE_LOGO__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Welcome to __SITE_TITLE__ </strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dear <strong>__USER__NAME__</strong>,&nbsp;</p>\r\n\r\n<p>You have successfully Registered in&nbsp;<strong>__SITE_TITLE__</strong></p>\r\n\r\n<p><strong>Your credentials</strong></p>\r\n\r\n<p>Email<strong>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;__EMAIL__</strong></p>\r\n\r\n<p>Password<strong>&nbsp; __PASSWORD__</strong></p>\r\n\r\n<p>We are really excited that you decide to try our services,welcome and thank you for the trust!!</p>\r\n\r\n<p>Please click this link for <strong>__ACCOUNT_ACTIVATOIN_LINK__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp;<strong>__ANDROID__</strong>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong>__IOS__</strong>&nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Regards,</strong>&nbsp;<br />\r\n<br />\r\n<strong>__SITE_TITLE__</strong> | Restaurant System</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Active'),
(8, 'fb_google_registration_template', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>__SITE_LOGO__</strong> &nbsp; &nbsp;</p>\r\n\r\n<h2><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Welcome&nbsp;to&nbsp;__SITE_TITLE__</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Dear __USER_NAME__&nbsp;,</strong></p>\r\n\r\n<p>You have Successfully Registered in <strong>__SITE_TITLE__</strong></p>\r\n\r\n<p>Email &nbsp; &nbsp; &nbsp;: &nbsp;<strong>__EMAIL__</strong></p>\r\n\r\n<p>Password : <strong>__PASSWORD__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__ANDROID__ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; __IOS__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Regards,</strong>&nbsp;<br />\r\nCustomer Support</p>\r\n\r\n<p><strong>__SITE_TITLE__</strong>&nbsp;| Restaurant System</p>\r\n', 'Active'),
(57, 'when_user_order_booked_template_mail_to_user', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__SITE_LOGO__</strong></p>\r\n\r\n<h2><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Welcome&nbsp;to&nbsp;__SITE_TITLE__ </strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dear <strong>__USER_NAME__</strong>,&nbsp;</p>\r\n\r\n<p>You have successfully Booked an order in&nbsp;<strong>__SITE_TITLE__</strong></p>\r\n\r\n<p><strong>ORDER DETAILS</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>No of Items Booked &nbsp; &nbsp;&nbsp;<strong>__NO_OF_ITEMS__</strong></p>\r\n\r\n<p>Order Booked Time &nbsp; &nbsp;&nbsp;<strong>__ORDER_TIME__</strong></p>\r\n\r\n<p>Total Cost &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>__TOTAL_COST__</strong></p>\r\n\r\n<p>Payment Mode &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__PAYMENT_MODE__</strong></p>\r\n\r\n<p>Message &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__CUSTOMER_MESSAGE__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are really excited that you decide to try our services,welcome and thank you for the trust!!</p>\r\n\r\n<p>For any assistance or questions&nbsp;feel free to contact us at <strong>__CONTACT_US__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__ANDROID__</strong>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <strong>__IOS__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Regards,</strong>&nbsp;<br />\r\nCustomer Support<br />\r\n<strong>__SITE_TITLE__</strong> | Restaurant System</p>\r\n\r\n<p><strong>__COPY_RIGHTS__</strong></p>\r\n', 'Active'),
(58, 'when_user_order_booked_template_mail_to_admin', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__SITE_LOGO__</strong></p>\r\n\r\n<h2><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Welcome&nbsp;to __SITE_TITLE__ </strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hello Dear Admin,&nbsp;</p>\r\n\r\n<p><strong>__USER_NAME__&nbsp;</strong>has&nbsp;successfully Booked an order</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>USER DETAILS</strong></p>\r\n\r\n<p>Name &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__USER_NAME__</strong></p>\r\n\r\n<p>Email &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__EMAIL__</strong></p>\r\n\r\n<p>Phone &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__PHONE__</strong></p>\r\n\r\n<p>House number&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>__HOUSE__NO__</strong></p>\r\n\r\n<p>Street &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>__STREET__NAME__</strong></p>\r\n\r\n<p>Landmark &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>__LAND_MARK__</strong></p>\r\n\r\n<p>Locality &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>__LOCALITY__</strong></p>\r\n\r\n<p>City &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong>__CITY__</strong></p>\r\n\r\n<p>PINCode &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>__PIN_CODE__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>ORDER DETAILS</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>No of Items Booked &nbsp; &nbsp;&nbsp;<strong>__NO_OF_ITEMS__</strong></p>\r\n\r\n<p>Order Booked Time &nbsp; &nbsp;&nbsp;<strong>__ORDER_TIME__</strong></p>\r\n\r\n<p>Total Cost &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>__TOTAL_COST__</strong></p>\r\n\r\n<p>Payment Mode &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__PAYMENT_MODE__</strong></p>\r\n\r\n<p>Customer Message &nbsp; &nbsp;<strong>__CUSTOMER_MESSAGE__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are really excited that you decide to try our services,welcome and thank you for the trust!!</p>\r\n\r\n<p>For any assistance or questions&nbsp;feel free to contact us at <strong>__CONTACT_US__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__ANDROID__</strong>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>&nbsp;&nbsp;&nbsp; __IOS__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Regards,</strong>&nbsp;<br />\r\nCustomer Support<br />\r\n<strong>__SITE_TITLE__</strong> | Restaurent System</p>\r\n\r\n<p><strong>__COPY_RIGHTS__</strong></p>\r\n', 'Active'),
(59, 'order_status_changed', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <strong>__SITE_LOGO__</strong>&nbsp; &nbsp;&nbsp;</p>\r\n\r\n<h2><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Welcome&nbsp;to&nbsp;__SITE_TITLE__</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Dear __NAME__</strong><strong> </strong><strong>,</strong></p>\r\n\r\n<p>Your Order No <strong>__ORDER__NO__ &nbsp;</strong>status has changed</p>\r\n\r\n<p><strong>ORDER DETAILS</strong></p>\r\n\r\n<p>No of Items Booked &nbsp; &nbsp;&nbsp;<strong>__NO_OF_ITEMS__</strong></p>\r\n\r\n<p>Order Booked Time &nbsp; &nbsp;&nbsp;<strong>__ORDER_TIME__</strong></p>\r\n\r\n<p>Total Cost &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>__TOTAL_COST__</strong></p>\r\n\r\n<p>Payment Mode &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__PAYMENT_MODE__</strong></p>\r\n\r\n<p>Message<strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;__MESSAGE__</strong></p>\r\n\r\n<p>Status &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong>__STATUS__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>For any assistance or questions, feel free to contact us at <strong>__CONTACT__EMAIL__</strong>&nbsp; or call us at <strong>__CONTACT__NO__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>__ANDROID__</strong>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>__IOS__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Regards,</strong>&nbsp;<br />\r\nCustomer Support</p>\r\n\r\n<p><strong>__SITE_TITLE__</strong></p>\r\n\r\n<p><strong>__COPY_RIGHTS__</strong></p>\r\n', 'Active'),
(60, 'order_cancelled', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong>__SITE_LOGO__</strong>&nbsp; &nbsp;&nbsp;</p>\r\n\r\n<h2><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; Welcome to __SITE_TITLE__</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Dear __NAME__</strong><strong> </strong><strong>,</strong></p>\r\n\r\n<p><strong>__ITEM_NAME__&nbsp;</strong>is deleted form Order <strong>__ORDER_NO__ </strong>, for details please login and check the order history.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>For any assistance or questions, feel free to contact us at <strong>__CONTACT__EMAIL__</strong>&nbsp; or call us at <strong>__CONTACT__NO__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__ANDROID__</strong>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>__IOS__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Regards,</strong>&nbsp;<br />\r\nCustomer Support</p>\r\n\r\n<p><strong>__SITE_TITLE__</strong></p>\r\n\r\n<p><strong>__COPY_RIGHTS__</strong></p>\r\n', 'Active'),
(61, 'forgot_password', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__SITE_LOGO__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong>Welcome to __SITE_TITLE__</strong></h2>\r\n\r\n<p>A new password was requested for the user <strong>__EMAIL__</strong>,&nbsp;</p>\r\n\r\n<p>Please click on the link to set your&nbsp;password&nbsp;___RESET_YOUR_PASSWORD___</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Regards,</strong>&nbsp;<br />\r\n<br />\r\n<strong>__SITE_TITLE__</strong> | Restaurant System</p>\r\n', 'Active'),
(62, 'contact_query', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__SITE_LOGO__</strong></p>\r\n\r\n<p><strong>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></p>\r\n\r\n<h2><strong>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Welcome to __SITE_TITLE__</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hello Admin,</p>\r\n\r\n<p><strong>__USER__</strong>&nbsp;would like to contact you.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>USER DETAILS</strong></p>\r\n\r\n<p><strong>Name &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong><strong>__USER_NAME__</strong></p>\r\n\r\n<p><strong>Email</strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>__EMAIL__</strong></p>\r\n\r\n<p><strong>Subject</strong>&nbsp; &nbsp; &nbsp;&nbsp;<strong>__SUBJECT__</strong></p>\r\n\r\n<p><strong>Message</strong>&nbsp;&nbsp; &nbsp;&nbsp;<strong>__MESSAGE__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Regards,</strong>&nbsp;<br />\r\n<br />\r\n<strong>__SITE_TITLE__</strong> | Restaurant System</p>\r\n', 'Active');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cr_faqs`
--

CREATE TABLE `cr_faqs` (
  `id` int(11) UNSIGNED NOT NULL,
  `fc_id` int(11) DEFAULT NULL,
  `question` varchar(500) NOT NULL,
  `answer` varchar(10000) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cr_faqs`
--

INSERT INTO `cr_faqs` (`id`, `fc_id`, `question`, `answer`, `status`) VALUES
(1, 1, 'What time is breakfast served from?', 'Breakfast is served from gate opening time until 10:45am', 'Active'),
(2, 2, 'Can a coupon code from Coupons by Restaurant.com be used more than one time?', 'Each coupon code offered through Coupons by Restaurant.com has its own unique terms of use.  Therefore, some of the coupon codes can be used multiple times and others could be restricted to one time per customer. Please refer to the terms and conditions', 'Active'),
(3, 2, 'What can I do if a code that I found on Coupons by Restaurant.com does not work?', 'We apologize for this experience. The coupon codes and offers featured on Coupons by Restaurant.com are managed by each individual merchant. Before reporting a coupon code not working, please check to see that your shopping cart meets the terms of use for the coupon code on the merchant’s website. You can contact the merchant if you believe the coupon code should work to rectify.', 'Active'),
(4, 2, 'Can I Order Only using my points', 'Yes.', 'Active'),
(7, 1, 'Test Question', 'Test Question ', 'Active'),
(8, 2, 'How Can I Use Points?', 'You gifted +20 Points for Registration.', 'Active'),
(9, 2, 'Can I Pay with my Credit Card ?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\r\n', 'Active'),
(10, 1, 'How to book an order for my friend ?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took ', 'Active'),
(11, 3, 'How can I Cancel my Order ?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took ', 'Active'),
(12, 1, 'My Delivered food is not good, How to Report?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took ', 'Active'),
(13, 4, 'Demo Bill', 'mgXdN7rZnAmgXdN7rZnAmgXdN7rZnAmgXdN7rZnAmgXdN7rZnAmgXdN7rZnAmgXdN7rZnAmgXdN7rZnAmgXdN7rZnAmgXdN7rZnA', 'Active');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cr_faq_categories`
--

CREATE TABLE `cr_faq_categories` (
  `fc_id` int(11) UNSIGNED NOT NULL,
  `category` varchar(50) NOT NULL,
  `status` enum('Active','Inactive') DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cr_faq_categories`
--

INSERT INTO `cr_faq_categories` (`fc_id`, `category`, `status`, `created`, `updated`) VALUES
(1, 'General', 'Active', NULL, '2017-10-04 18:45:46'),
(2, 'Trust & Safety', 'Active', '2017-10-04 18:46:38', NULL),
(3, 'Services', 'Active', '2017-10-04 18:46:46', NULL),
(4, 'Billing', 'Active', '2017-10-04 18:46:53', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cr_groups`
--

CREATE TABLE `cr_groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cr_groups`
--

INSERT INTO `cr_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'user', 'General User'),
(3, 'kitchen_manager', 'Kitchen Manager'),
(4, 'delivery_manager', 'Delivery Manager');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cr_items`
--

CREATE TABLE `cr_items` (
  `item_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `item_name` varchar(50) DEFAULT NULL,
  `item_cost` decimal(10,0) DEFAULT NULL,
  `item_type_id` int(11) DEFAULT NULL,
  `item_image_name` varchar(50) DEFAULT NULL,
  `item_description` varchar(500) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `is_most_selling_item` enum('Yes','No') NOT NULL DEFAULT 'No',
  `product_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cr_items`
--

INSERT INTO `cr_items` (`item_id`, `menu_id`, `item_name`, `item_cost`, `item_type_id`, `item_image_name`, `item_description`, `status`, `is_most_selling_item`, `product_id`) VALUES
(8, 5, 'Cream Of Tomato Soup', '125', 1, 'item_8.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'No', '4chdlezzqBwUdW3T'),
(9, 5, 'Sweet Corn Vegetable Soup', '125', 1, 'item_9.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'No', 'uFXoNlxfVHIb0Isu'),
(10, 5, 'Hot-N-Sour Vegetable Soup', '125', 1, 'item_10.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'No', 'lPOMuDCaFyvjLo25'),
(11, 5, 'Clear Chicken Noodle Soup', '134', 1, 'item_11.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'tPj70XdLflnVuVGV'),
(13, 5, ' Soup ngô ngọt ', '134', 1, 'item_13.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'LI4BfXNA81VsMcEy'),
(18, 8, 'bắp non Manchurian', '229', 1, 'item_18.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'No', 'JBcUwv2OPHuISRXo'),
(24, 8, ' Đùi gà', '309', 1, 'item_24.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'No', 'Hz9gz73b9wv0ojGx'),
(31, 8, ' Chả giò gà', '175', 1, 'item_31.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'No', 'ljHYUAmkHXtZpGEw'),
(33, 8, 'Con cá mặn', '358', 1, 'item_33.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', '6ESwBMNB892mi8ZK'),
(35, 8, 'Gà không lối thoát', '309', 1, 'item_35.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'ihi2hKdoiNENTI9Q'),
(85, 11, 'Masala Kulcha', '67', 1, 'item_85.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', 'mlYrtjJ2W9Ma5cQJ'),
(89, 11, ' Dứa Raita', '84', 1, 'item_89.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', 'BI2usCnFBzf7SvGR'),
(92, 11, 'Fruit Chat Salad', '75', 1, 'item_92.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', 'oKaWMDcO37MLtTd9'),
(93, 11, ' Salad nga ngố  (99% vodka)', '75', 1, 'item_93.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', '7qSttbNOp8UTfl9J'),
(94, 11, 'Salad rau củ', '50', 1, 'item_94.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', 'wZg9d8OX6ajqtCpr'),
(95, 11, 'Salad Dưa chuột', '50', 1, 'item_95.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', 's8abanqGmAZHmYRY'),
(111, 14, 'Kem dâu', '125', 3, 'item_111.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', 'yuKC6iEOwFGb8Z2U'),
(121, 14, ' Dứa Vanilla', '150', 3, 'item_121.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', 'k8ZhhdwTj2uhSn2w'),
(122, 14, 'Vainilla Hot Chocolate', '150', 3, 'item_122.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', 'MvB8C1bYOL2xBpKm'),
(127, 14, ' Kem Strawberry ', '125', 3, 'item_127.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the', 'Active', 'Yes', 'njKKD6emzPJH2B3F'),
(129, 14, 'Salad trái cây', '125', 3, 'item_129.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the', 'Active', 'Yes', 'hejlaDNQTXXLYRQL'),
(130, 13, 'Nước dứa', '84', 3, 'item_130.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been tkju', 'Active', 'No', 'g0ILzhjACH0TUsdM'),
(132, 13, 'Nước chanh ngọt', '84', 1, 'item_132.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the', 'Active', 'No', 'fvUUiVi7SJRbcVk9'),
(133, 13, ' Sữa lắc Chocolate ', '84', 3, 'item_133.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the', 'Active', 'No', 'MtKCQtCT13mLmGXI'),
(134, 13, '  Sữa lắc Strawberry ', '84', 3, 'item_134.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the', 'Active', 'No', '2scaDBXVLoxnAYnN'),
(135, 13, '  Sữa lắc Butterscotch ', '84', 3, 'item_135.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the', 'Active', 'No', 'HxPYhSrYLUkyb86T'),
(137, 13, 'Cold Coffee', '84', 3, 'item_137.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the', 'Active', 'No', 'qYtuaHGlw3PwS29a'),
(141, 13, 'Fanta', '42', 3, 'item_141.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the', 'Active', 'No', 'qPyNhgmt1NhSLdl2'),
(148, 10, 'Cà ri gà', '90', 1, 'item_148.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'No', 'u12PIIrYQvNXPMCR'),
(154, 21, 'gà Mexico', '250', 1, 'item_154.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'No', 'SWxafg1Bmd5AWCjj'),
(167, 13, 'Nước cam', '84', 3, 'item_167.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the', 'Active', 'Yes', 'RI8ypkihxFz9jb1b'),
(856768, 21, 'Pizzal rau tươi', '250', 1, 'item_856768.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'MzG19S24QAIdjr9f'),
(856769, 21, 'Pizzal gà nướng', '300', 41, 'item_856769.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'D666uYbBv6pLB2vO'),
(856770, 21, ' Pizzas chesee', '300', 1, 'item_856770.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'r2GrK8lb9u4ib4Ee'),
(856771, 13, ' Hot Chocolate', '100', 1, 'item_856771.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'wdvPMqey1gs4iCoz'),
(856772, 13, 'Trà xanh', '100', 1, 'item_856772.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'Lno1NMYBSNB1o2Tb'),
(856773, 13, 'Sinh tố củ dền', '1200', 1, 'item_856773.jpg', 'màu sắc tuyệt trần : \"tiết canh\"', 'Active', 'Yes', 'WEqiuLXlsFgQHLGT'),
(856775, 10, ' Cà ri trứng', '100', 1, 'item_856775.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'ufKUl2K9EhystRHx'),
(856776, 10, ' Khoai tây hầm', '100', 1, 'item_856776.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'nv9IHk2OXBlXLQG5'),
(856778, 10, 'Gà bơ', '159', 41, 'item_856778.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'zeP6EHLcJxzUD6Pz'),
(856779, 10, ' Cà ri củ dền', '149', 1, 'item_856779.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'NgNX6kl4vimPlHWb'),
(856780, 14, 'Bánh quy vị cam', '99', 1, 'item_856780.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'MUB8zO9fUxNFwhdT'),
(856782, 5, ' Soup cá ', '149', 41, 'item_856782.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'wmKKO7oofrQsmypx'),
(856783, 5, 'Soups ngô khoai', '119', 1, 'item_856783.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', '6jzb7Dc54yoHQs5D'),
(856784, 8, '\"BÓNG\" phomal', '99', 1, 'item_856784.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'BhhjsBOQOSdibcyn'),
(856785, 41, 'Red Bull', '100', 3, 'item_856785.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'No', 'T8L5C2h9TFjYzqsg'),
(856786, 13, 'Sports drink', '300', 1, 'item_856786.jpg', 'Find the great collection of 191 beverages recipes and dishes ', 'Active', 'Yes', 'pYawpIPbtfcAIAUK'),
(856787, 13, 'Sốt Kiwi ', '260', 1, 'item_856787.jpg', 'sfsdfsdfsadfsdfsdff', 'Active', 'Yes', 'raSGg6TZOWvy0AOK'),
(856788, 21, 'Pizzal rau củ', '49', 1, 'item_856788.jpg', 'test ', 'Active', 'Yes', 'BT0AOyoC58Ls9M9b'),
(856789, 21, 'pizzal ba gà', '57', 1, 'item_856789.jpg', ' giành cho đặc vụ ', 'Active', 'Yes', 'IrezVOPlCCcqoqNW'),
(856790, 21, 'Pizzas gà Ý', '57', 1, 'item_856790.jpg', 'gay', 'Active', 'Yes', 'YVEiJqgTYhPLpZJb'),
(856791, 21, ' PIzzas Hương vị quê hương', '67', 1, 'item_856791.jpg', 'chay', 'Active', 'Yes', 'du9tZP4PMPHVrdID'),
(856792, 5, 'Súp hải sản', '1500', 1, 'item_856792.jpg', 'Món súp được nấu với nguyên liệu chủ yếu là hải sản', 'Active', 'Yes', 'MwXXN3HIa7gLHGfP'),
(856793, 42, 'Bánh mì cay', '30', 1, 'item_856793.jpg', 'Bánh mì pate cay hải phòng ăn cùng hoa cải và phóng lợn', 'Active', 'Yes', 'uM9QwImYxsxPPJrN'),
(856794, 42, 'Bánh gai', '1500', 1, 'item_856794.jpg', 'Món banh có màu đen của sự hắc ám bên trong chứa sự ngọt ngào với màu của ánh sáng', 'Active', 'Yes', 'ImTa7SBpmAueNunD'),
(856795, 43, 'Bún Đậu Mắm Tôm', '1000', 1, 'item_856795.jpg', 'Món bún được ăn với mắm tôm đéo phải nước mắm', 'Active', 'Yes', 'm1lmQ2ID1f55Wgm3'),
(856796, 43, 'Bún Riêu Cua', '1000', 1, 'item_856796.jpg', 'Bún riêu cua là một món ăn truyền thống Việt Nam, có nguồn gốc ở miền nam Việt Nam', 'Active', 'Yes', 'kWvRNbmNMn3AupUL'),
(856798, 43, 'Bún Cá', '1000', 1, 'item_856798.jpg', 'Bún ăn với cá ', 'Active', 'Yes', 'DgNlpFlNKzg14WB2'),
(856803, 44, 'Cơm Tấm', '25', 1, 'item_856803.jpg', 'Cơm tấm', 'Active', 'Yes', 'ywAMyxaT0zRAE7UQ'),
(856804, 43, 'Mì Quảng', '25', 1, 'item_856804.jpg', 'mì xứ quảng', 'Active', 'Yes', 'HyL3FsfhJFuMOnwN'),
(856805, 18, 'mực nướng', '25', 1, 'item_856805.jpg', 'mặn', 'Active', 'Yes', 'l290aU7o5snthIuf'),
(856806, 8, 'bánh xèo', '25', 1, 'item_856806.jpg', 'yeb...', 'Active', 'Yes', 'jyg5E9qkFzveGgJe'),
(856807, 45, 'Lẩu ốc', '25', 1, 'item_856807.jpg', '....\r\n', 'Active', 'Yes', '2KGIH95t94fImHLQ'),
(856808, 43, 'Bún chả', '25', 1, 'item_856808.jpg', 'bun cha', 'Active', 'Yes', 'sx37ktKqIWUfggxX'),
(856809, 42, 'Bánh Cuốn', '25', 1, 'item_856809.jpg', '....', 'Active', 'Yes', '0PzqGNAU3i5Mufj9'),
(856810, 8, 'Hủ tiếu', '25', 1, 'item_856810.jpg', '....', 'Active', 'Yes', 'zrcbXB0FxrcusRld'),
(856811, 43, 'Cao lầu', '25', 1, 'item_856811.jpg', '...', 'Active', 'Yes', 'Hf9M7VLbpoKmqRvd'),
(856812, 8, 'Gỏi cuốn', '25', 1, 'item_856812.jpg', '...', 'Active', 'Yes', 'JWbYnrW04THJhUjN');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cr_item_addons`
--

CREATE TABLE `cr_item_addons` (
  `item_addon_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `addon_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cr_item_addons`
--

INSERT INTO `cr_item_addons` (`item_addon_id`, `item_id`, `addon_id`) VALUES
(229, 856787, 43),
(231, 856787, 46),
(232, 135, 46),
(233, 135, 47),
(234, 856803, 48),
(235, 856803, 49),
(236, 856803, 50),
(237, 856804, 42),
(238, 856804, 46),
(239, 856804, 50),
(240, 856805, 47),
(241, 856805, 48),
(242, 856805, 50),
(243, 856806, 48),
(244, 856806, 50),
(245, 856807, 43),
(246, 856807, 44),
(247, 856808, 43),
(248, 856808, 50),
(249, 856809, 42),
(250, 856809, 46),
(251, 856809, 49),
(252, 856810, 44),
(253, 856810, 46),
(254, 856811, 44),
(255, 856812, 43);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cr_item_options`
--

CREATE TABLE `cr_item_options` (
  `item_option_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cr_item_options`
--

INSERT INTO `cr_item_options` (`item_option_id`, `item_id`, `option_id`, `price`) VALUES
(40, 856785, 38, '50.00'),
(41, 856787, 4, '280.00'),
(42, 856787, 9, '270.00'),
(43, 135, 21, '160.00'),
(44, 135, 4, '140.00'),
(45, 135, 37, '80.00'),
(46, 856807, 19, '0.25'),
(47, 856803, 19, '0.25'),
(48, 856803, 21, '0.25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cr_item_types`
--

CREATE TABLE `cr_item_types` (
  `item_type_id` int(11) NOT NULL,
  `item_type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cr_item_types`
--

INSERT INTO `cr_item_types` (`item_type_id`, `item_type`) VALUES
(1, 'Veg'),
(3, 'Khác'),
(41, 'Non-Veg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cr_languagewords`
--

CREATE TABLE `cr_languagewords` (
  `lang_id` bigint(22) NOT NULL,
  `phrase_for` enum('App','Web') NOT NULL DEFAULT 'Web',
  `lang_key` varchar(512) DEFAULT NULL,
  `english` longtext DEFAULT NULL,
  `vit_nam` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cr_languagewords`
--

INSERT INTO `cr_languagewords` (`lang_id`, `phrase_for`, `lang_key`, `english`, `vit_nam`) VALUES
(0, 'Web', 'Fast Delivery', 'Fast Delivery', NULL),
(2, 'Web', 'hello', 'Hello', NULL),
(6, 'Web', 'admin_dashboard', 'Admin Dashboard', 'Trang tổng quan dành cho quản trị viên'),
(7, 'Web', 'profile', 'Profile', NULL),
(8, 'Web', 'sign_out', 'Sign Out', NULL),
(9, 'Web', 'home', 'Home', NULL),
(10, 'Web', 'users', 'Users', NULL),
(11, 'Web', 'view_all_users', 'View All Users', NULL),
(15, 'Web', 'create', 'Create', 'tạo'),
(37, 'Web', 'pages', 'Pages', NULL),
(38, 'Web', 'dynamic_pages', 'Dynamic pages', 'Trang động (dynamic_pages)'),
(39, 'Web', 'faqs', 'FAQs', 'Câu hỏi thường gặp (faqs)'),
(41, 'Web', 'email_templates', 'Email Templates', 'Mẫu email'),
(42, 'App', 'language_settings', 'Language Settings', 'Cài đặt ngôn ngữ'),
(43, 'App', 'view_languages', 'View Languages', NULL),
(44, 'App', 'add_language', 'Add Language', 'Thêm ngôn ngữ'),
(45, 'App', 'view_phrases', 'View Phrases', NULL),
(46, 'App', 'my_profile', 'My Profile', 'Hồ sơ'),
(47, 'App', 'change_password', 'Change Password', 'Thay đổi mật khẩu'),
(48, 'Web', 'sign_out', 'Sign Out', NULL),
(49, 'Web', 'total_payments', 'Total Payments', NULL),
(50, 'Web', 'users_information', 'Users Information', NULL),
(51, 'Web', 'any_other_stats', 'Any other stats', 'Bất kỳ thống kê nào khác'),
(52, 'Web', 'add_new_record', 'Add New Record', 'Thêm bản ghi mới'),
(53, 'Web', 'delete_selected', 'Delete Selected', 'Xóa đã chọn'),
(54, 'Web', 'delete', 'Delete', 'xóa'),
(58, 'Web', 'actions', 'Actions', 'hành động'),
(59, 'Web', 'warning', 'Warning', NULL),
(60, 'Web', 'are_you_sure_to_delete', 'Are you sure to delete', 'Bạn có chắc chắn xóa'),
(61, 'Web', 'no', 'No', NULL),
(62, 'Web', 'yes', 'Yes', NULL),
(63, 'Web', 'are_you_sure_to_delete_selected_records', 'Are you sure to delete selected records', 'Bạn có chắc chắn xóa các bản ghi đã chọn không'),
(64, 'Web', 'please_select_records_to_be_deleted', 'Please select records to be deleted', NULL),
(65, 'Web', 'Confirm', 'Confirm', 'Xác nhận'),
(66, 'Web', 'Are_you_sure_to_activate_selected_records', 'Are you sure to activate selected records', 'Bạn có chắc chắn kích hoạt các bản ghi đã chọn không'),
(67, 'Web', 'Please_select_records_to_be_activated', 'Please select records to be activated', NULL),
(68, 'Web', 'are_you_sure_to_deactivate_selected_records', 'Are you sure to deactivate selected records', 'Bạn có chắc chắn hủy kích hoạt các bản ghi đã chọn'),
(69, 'Web', 'please_select_records_to_be_deactivated', 'Please select records to be deactivated', NULL),
(70, 'Web', 'information', 'Information', NULL),
(71, 'Web', 'view_details', 'View Details', NULL),
(72, 'Web', 'edit', 'Edit', 'Chỉnh sửa'),
(73, 'Web', 'go_to_list', 'Go To List', 'Đi tới danh sách'),
(75, 'Web', 'please_upload_only_jpg_or_png_images', 'Please upload only jpg or png images', NULL),
(76, 'Web', 'add', 'Add', 'Thêm'),
(78, 'Web', 'cancel', 'Cancel', 'hủy bỏ'),
(79, 'Web', 'please_upload_atleast_one_image', 'Please Upload Atleas One Image', NULL),
(80, 'Web', 'all_users', 'All Users', 'Tất cả người dùng'),
(81, 'Web', 'photo', 'Photo', NULL),
(82, 'Web', 'username', 'Username', NULL),
(83, 'Web', 'email', 'Email', 'Email (thư điện tử)'),
(84, 'Web', 'phone', 'Phone', NULL),
(85, 'Web', 'date_of_registration', 'Date of registration', 'Ngày đăng ký'),
(86, 'Web', 'address', 'Address', 'địa chỉ'),
(87, 'Web', 'status', 'Status', NULL),
(88, 'Web', 'active', 'Active', 'hoạt động'),
(92, 'Web', 'record_added_successfully', 'Record Added Successfully', NULL),
(93, 'Web', 'success', 'Success', NULL),
(95, 'Web', 'description', 'Description', 'Mô tả'),
(97, 'Web', 'inactive', 'Inactive', NULL),
(100, 'Web', 'user', 'User', NULL),
(103, 'Web', 'no_records_available', 'No records available', NULL),
(104, 'Web', 'select_Phone_Code', 'Select Phone Code', NULL),
(105, 'Web', 'Sign_In', 'Sign In', NULL),
(106, 'Web', 'With_Your_Account', 'With Your Account', NULL),
(107, 'Web', 'Password', 'Password', NULL),
(108, 'Web', 'Forgot_your_password', 'Forgot your password?', 'Quên mật khẩu?'),
(109, 'Web', 'register', 'Register', NULL),
(111, 'Web', 'Register_As', 'Register As', NULL),
(112, 'Web', 'First_Name', 'First Name', 'first_name'),
(113, 'Web', 'first_name', 'First Name', 'first_name'),
(114, 'Web', 'Last_Name', 'Last Name', NULL),
(115, 'Web', 'last_name', 'Last Name', NULL),
(116, 'Web', 'must_be_at_least', 'Must be at least', NULL),
(117, 'Web', 'characters', 'Characters', 'ký tự'),
(118, 'Web', 'Confirm_Password', 'Confirm Password', 'Xác nhận mật khẩu'),
(119, 'Web', 'confirm_password', 'Confirm Password', 'Xác nhận mật khẩu'),
(120, 'Web', 'pin_code', 'Pin code', NULL),
(121, 'Web', 'Phone_Number', 'Phone Number', NULL),
(122, 'Web', 'Create_an_Account', 'Create an Account', 'Tạo tài khoản'),
(123, 'Web', 'logged_in_successfully', 'Logged in successfully', NULL),
(124, 'Web', 'Record_Not_Added', 'Record Not Added', NULL),
(125, 'Web', 'error', 'Error', 'lỗi'),
(126, 'Web', 'Record_Deleted_Successfully', 'Record Deleted Successfully', NULL),
(128, 'Web', 'Activate_Selected', 'Activate Selected', 'Kích hoạt đã chọn '),
(129, 'Web', 'activate', 'Activate', 'Kích hoạt '),
(130, 'Web', 'Deactivate_Selected', 'Deactivate Selected', 'Deactivate_Selected'),
(131, 'Web', 'deactivate', 'Deactivate', 'hủy kích hoạt'),
(132, 'Web', 'Service_Name', 'Service Name', NULL),
(133, 'Web', 'Cost_Type', 'Cost Type', 'Loại chi phí'),
(134, 'Web', 'price', 'Price', NULL),
(141, 'Web', 'the', 'The', NULL),
(143, 'Web', '_already_exists', ' already exists', NULL),
(145, 'Web', 'update', 'Update', NULL),
(147, 'Web', 'Record_Updated_Successfully', 'Record Updated Successfully', NULL),
(149, 'Web', 'Record_Not_Updated', 'Record Not Updated', NULL),
(150, 'Web', 'Selected_Records_Deleted_Successfully', 'Selected Records Deleted Successfully', NULL),
(151, 'Web', 'category', 'Category', 'thể loại'),
(152, 'Web', 'type', 'Type', NULL),
(154, 'Web', 'image', 'Image', NULL),
(156, 'Web', 'view_more', 'View More', NULL),
(157, 'Web', 'Record_Already_Added', 'Record Already Added', NULL),
(158, 'Web', 'info', 'Info', NULL),
(159, 'Web', 'Add_Phrase', 'Add Phrase', 'Thêm cụm từ '),
(160, 'Web', 'Lang_Id', 'Lang Id', NULL),
(161, 'Web', 'Lang_Key', 'Lang Key', NULL),
(162, 'Web', 'english', 'English', 'Tiếng anh'),
(163, 'Web', 'brazil', 'Brazil', 'VietNam'),
(164, 'Web', 'please_enter_language_key', 'Please enter language key', NULL),
(165, 'Web', 'submit', 'Submit', NULL),
(166, 'Web', 'Master_Settings', 'Master Settings', 'Cài đặt nâng cao'),
(167, 'Web', 'Site_Settings', 'Site Settings', NULL),
(168, 'Web', 'Email_Settings', 'Email Settings', 'Cài đặt Email (Email_Settings)'),
(174, 'Web', 'House_Number', 'House Number', 'Số nhà'),
(175, 'Web', 'Flat_Number', 'Flat Number', 'Flat_Number'),
(177, 'Web', 'Street_Name', 'Street Name', NULL),
(179, 'Web', 'city', 'City', 'Thành phố '),
(180, 'Web', 'state', 'State', NULL),
(181, 'Web', 'landmark', 'Landmark', 'Mô tả chi tiết địa chỉ'),
(182, 'Web', 'zipcode', 'Zipcode', NULL),
(186, 'Web', 'please_Enter_City', 'Please Enter City', NULL),
(187, 'Web', 'please_Enter_State', 'Please Enter State', NULL),
(188, 'Web', 'please_Enter_Landmark', 'Please Enter Landmark', NULL),
(189, 'Web', 'please_Enter_Zip_Code', 'Please Enter Zip Code', NULL),
(190, 'Web', 'You_do_not_have_permission_to_access_this_page', 'You do not have permission to access this page', NULL),
(191, 'Web', 'Group', 'Group', 'Nhóm'),
(192, 'Web', 'phone_code', 'Phone code', NULL),
(195, 'App', 'view_language', 'View Language', NULL),
(196, 'Web', 'language', 'Language', 'Ngôn ngữ'),
(197, 'Web', 'Add_Language_Words', 'Add Language Words', 'Thêm ngôn ngữ'),
(201, 'Web', 'House_numer', 'House numer', NULL),
(203, 'Web', 'No_Details_Found', 'No Details Found', NULL),
(204, 'Web', 'Selected_Records_Activated_Successfully', 'Selected Records Activated Successfully', NULL),
(205, 'Web', 'Selected_Records_Deactivated_Successfully', 'Selected Records Deactivated Successfully', NULL),
(206, 'Web', 'View_User_Details', 'View User Details', NULL),
(208, 'Web', 'gender', 'Gender', 'giới tính'),
(209, 'Web', 'user_belongs_group', 'User belongs group', NULL),
(211, 'Web', 'Create_User', 'Create User', 'Tạo người dùng'),
(212, 'Web', 'Add_User', 'Add User', 'Thêm người dùng'),
(213, 'Web', 'Profile_Pic', 'Profile Pic', NULL),
(215, 'Web', 'please_login_to_continue', 'Please login to continue', NULL),
(216, 'Web', 'Phone_Number', 'Phone Number', NULL),
(217, 'Web', 'first__name', 'First  name', 'first__name'),
(218, 'Web', 'mobile_number', 'Mobile number', NULL),
(219, 'Web', 'please_Enter_First_Name', 'Please Enter First Name', NULL),
(220, 'Web', 'please_Enter_Email', 'Please Enter Email', NULL),
(221, 'Web', 'please_Enter_Password', 'Please Enter Password', NULL),
(222, 'Web', 'please_Enter_Phone_Code', 'Please Enter Phone Code', NULL),
(223, 'Web', 'please_Enter_Phone_Number', 'Please Enter Phone Number', NULL),
(224, 'Web', 'Password_must_be_atleast_8_characters', 'Password must be atleast 8 characters', NULL),
(225, 'Web', 'please_Enter_Confirm_Password', 'Please Enter Confirm Password', NULL),
(226, 'Web', 'Confirm_Password_is_not_same_as_password', 'Confirm Password is not same as password', 'Xác nhận Mật khẩu không giống với mật khẩu'),
(227, 'Web', 'Minimum_8_digits', 'Minimum 8 digits', NULL),
(228, 'Web', 'Maximum_11_digits', 'Maximum 11 digits', NULL),
(229, 'Web', 'Lang_Key', 'Lang Key', NULL),
(230, 'Web', 'test_phrase', 'Test Phrase', NULL),
(231, 'Web', 'add_phrases', 'Add Phrases', 'Thêm cụm từ'),
(232, 'Web', 'please_enter_language_key_in_english', 'Please enter language key in english', NULL),
(233, 'Web', 'Update_Phrase', 'Update Phrase', NULL),
(234, 'Web', 'View_Phrase_Details', 'View Phrase Details', NULL),
(235, 'Web', 'App_Settings', 'App Settings', 'Cài đặt ứng dụng'),
(236, 'Web', 'Paypal_Settings', 'Paypal Settings', NULL),
(237, 'Web', 'SMS_Settings', 'SMS Settings', NULL),
(238, 'Web', 'SMS_Templates', 'SMS Templates', NULL),
(239, 'Web', 'success_phrases_updated_successfuly', 'Success phrases updated successfuly', NULL),
(241, 'Web', 'Update_User', 'Update User', NULL),
(242, 'Web', 'welcome_to_Admin_Dashboard', 'Welcome to Admin Dashboard', NULL),
(244, 'Web', 'Change_Password', 'Change Password', 'Thay đổi mật khẩu'),
(245, 'Web', 'Current_Password', 'Current Password', 'Mật khẩu hiện tại'),
(246, 'Web', 'New_Password', 'New Password', NULL),
(247, 'Web', 'password_changed_successfully', 'Password changed successfully', NULL),
(248, 'Web', 'List_of_All_Users', 'List of All Users', NULL),
(252, 'Web', 'List_of_Users', 'List of Users', NULL),
(253, 'Web', 'User_Group', 'User Group', NULL),
(254, 'Web', 'Phrase_For', 'Phrase For', NULL),
(255, 'App', 'App', 'App', 'Ứng dụng'),
(256, 'App', 'Web', 'Web', NULL),
(262, 'Web', 'Update_App_Settings', 'Update App Settings', NULL),
(263, 'Web', 'Site_Title', 'Site Title', NULL),
(264, 'Web', 'Site_Name', 'Site Name', NULL),
(265, 'Web', 'country', 'Country', 'quốc gia'),
(266, 'Web', 'PIN_Code', 'Pin code', NULL),
(267, 'Web', 'land_line', 'Land line', NULL),
(268, 'Web', 'fax', 'Fax', 'Fax '),
(269, 'Web', 'Portal_Email', 'Portal Email', NULL),
(270, 'Web', 'Site_Language', 'Site Language', NULL),
(271, 'Web', 'Design_By', 'Design By', 'Được thiết kế bởi'),
(272, 'Web', 'Rights_reserved_content', 'Rights reserved content', NULL),
(273, 'Web', 'currency', 'Currency', 'tiền tệ'),
(274, 'Web', 'Currency_Symbol', 'Currency Symbol', 'Ký hiệu tiền tệ'),
(275, 'Web', 'latitude', 'Latitude', NULL),
(276, 'Web', 'longitude', 'Longitude', NULL),
(277, 'Web', 'Ios_Url', 'Ios Url', NULL),
(278, 'Web', 'Android_Url', 'Android Url', 'Url Android'),
(279, 'Web', 'Facebook_Api', 'Facebook Api', 'Facebook Api '),
(280, 'Web', 'Google_Api', 'Google Api', 'Google Analytics'),
(281, 'Web', 'SMS_Notifications', 'SMS Notifications', NULL),
(282, 'Web', 'on', 'On', NULL),
(283, 'Web', 'off', 'Off', NULL),
(284, 'Web', 'Push_Notifications', 'Push Notifications', NULL),
(285, 'Web', 'Site_Logo', 'Site Logo', NULL),
(286, 'Web', 'Add_Etemplates', 'Add Etemplates', 'Thêm Etemplates'),
(287, 'Web', 'View_Etemplates', 'View Etemplates', NULL),
(288, 'Web', 'Add_Email_Templates', 'Add Email Templates', 'Thêm mẫu email'),
(289, 'Web', 'View_Email_Templates', 'View Email Templates', NULL),
(290, 'Web', 'Country_Code', 'Country Code', 'Mã quốc gia'),
(291, 'Web', 'Please_upload_only_jpg_or_png_or_svg_images', 'Please upload only jpg or png or svg images', NULL),
(292, 'Web', 'please_enter_Site_Title', 'Please enter Site Title', NULL),
(293, 'Web', 'please_enter_Site_Name', 'Please enter Site Name', NULL),
(294, 'Web', 'please_enter_Address', 'Please enter Address', NULL),
(295, 'Web', 'please_enter_Country', 'Please enter Country', NULL),
(296, 'Web', 'please_enter_Country_Code', 'Please enter Country Code', NULL),
(297, 'Web', 'please_enter_Pincode', 'Please enter Pincode', NULL),
(298, 'Web', 'please_enter_Phone', 'Please enter Phone', NULL),
(299, 'Web', 'please_enter_Landline', 'Please enter Landline', NULL),
(300, 'Web', 'please_enter_Fax', 'Please enter Fax', NULL),
(301, 'Web', 'please_Enter_Portal_Email', 'Please Enter Portal Email', NULL),
(302, 'Web', 'please_select_Site_Language', 'Please select Site Language', NULL),
(303, 'Web', 'please_enter_Design_by', 'Please enter Design by', NULL),
(304, 'Web', 'please_enter_Rights_reserved_content', 'Please enter Rights reserved content', NULL),
(305, 'Web', 'please_select_Currency', 'Please select Currency', NULL),
(306, 'Web', 'please_enter_Currency_Symbol', 'Please enter Currency Symbol', NULL),
(307, 'Web', 'please_enter_Latitude', 'Please enter Latitude', NULL),
(308, 'Web', 'please_enter_Longitude', 'Please enter Longitude', NULL),
(309, 'Web', 'please_enter_Ios_Url', 'Please enter Ios Url', NULL),
(310, 'Web', 'please_enter_Android_Url', 'Please enter Android Url', NULL),
(312, 'Web', 'Template_Subject', 'Template Subject', NULL),
(313, 'Web', 'From_Eamil', 'From Eamil', 'Từ Email'),
(314, 'Web', 'Template_Status', 'Template Status', NULL),
(315, 'Web', 'Template_Content', 'Template Content', NULL),
(316, 'Web', 'From_Name', 'From Name', 'Từ Tên'),
(317, 'Web', 'Update_Email_Templates', 'Update Email Templates', NULL),
(318, 'Web', 'please_Enter_Template_Key', 'Please Enter Template Key', NULL),
(319, 'Web', 'please_Enter_Template_Content', 'Please Enter Template Content', NULL),
(320, 'Web', 'please_Enter_From_Email', 'Please Enter From Email', NULL),
(321, 'Web', 'please_Enter_From_Name', 'Please Enter From Name', NULL),
(322, 'Web', 'Please_Enter_Valid_Email', 'Please Enter Valid Email', NULL),
(323, 'Web', 'Email_Template_Details', 'Email Template Details', 'Chi tiết Mẫu Email '),
(324, 'Web', 'Template_created', 'Template created', NULL),
(325, 'Web', 'Template_Updated', 'Template Updated', NULL),
(326, 'Web', 'change_language', 'Change Language', 'Thay đổi ngôn ngữ'),
(327, 'Web', 'From_Email', 'From Email', 'Từ Email'),
(328, 'Web', 'Language_successfully_changed_to', 'Language successfully changed to', NULL),
(329, 'Web', 'TextArea', 'TextArea', NULL),
(330, 'Web', 'Add_SMS_Templates', 'Add SMS Templates', 'Thêm Mẫu SMS '),
(331, 'Web', 'View_SMS_Templates', 'View SMS Templates', NULL),
(332, 'Web', 'Update_Email_Settings', 'Update Email Settings', NULL),
(333, 'Web', 'Web_Mail', 'Web Mail', NULL),
(334, 'Web', 'mandrill', 'Mandrill', NULL),
(335, 'Web', 'Host', 'Host', NULL),
(336, 'Web', 'Api_Key', 'Api Key', 'Khóa Api (Api_Key)'),
(337, 'Web', 'subject', 'Subject', NULL),
(338, 'Web', 'SMS_Template', 'SMS Template', NULL),
(339, 'Web', 'Port', 'Port', NULL),
(340, 'Web', 'Please_enter_Api_Key', 'Please enter Api Key', NULL),
(341, 'Web', 'please_enter_Host', 'Please enter Host', NULL),
(342, 'Web', 'please_enter_Port', 'Please enter Port', NULL),
(343, 'Web', 'SMS_Template_Details', 'SMS Template Details', NULL),
(344, 'Web', 'sms_template_id', 'Sms template id', NULL),
(345, 'Web', 'Update_SMS_Templates', 'Update SMS Templates', NULL),
(346, 'Web', 'Mail_Config', 'Mail Config', NULL),
(347, 'Web', 'please_Enter_Subject', 'Please Enter Subject', NULL),
(348, 'Web', 'please_Enter_SMS_Template', 'Please Enter SMS Template', NULL),
(349, 'Web', 'Password_must_be_atleast_6_characters', 'Password must be atleast 6 characters', NULL),
(350, 'Web', 'Update_Paypal_Settings', 'Update Paypal Settings', NULL),
(352, 'Web', 'PayPal_Environment_Production', 'PayPal Environment Production', NULL),
(353, 'Web', 'PayPal_Environment_Sandbox', 'PayPal Environment Sandbox', NULL),
(354, 'Web', 'merchantName', 'MerchantName', NULL),
(355, 'Web', 'merchant_PrivacyPolicy_URL', 'Merchant PrivacyPolicy URL', NULL),
(356, 'Web', 'merchant_UserAgreement_URL', 'Merchant UserAgreement URL', NULL),
(357, 'Web', 'account_type', 'Account Type', 'Loại tài khoản'),
(358, 'Web', 'Please_Enter_PayPal_Environment_Production', 'Please Enter PayPal Environment Production', NULL),
(359, 'Web', 'Please_Enter_PayPal_Environment_Sandbox', 'Please Enter PayPal Environment Sandbox', NULL),
(360, 'Web', 'Please_Enter_Merchant_Name', 'Please Enter Merchant Name', NULL),
(361, 'Web', 'Please_Enter_Merchant_PrivacyPolicy_URL', 'Please Enter Merchant PrivacyPolicy URL', NULL),
(362, 'Web', 'Please_Enter_Merchant_UserAgreement_URL', 'Please Enter Merchant UserAgreement URL', NULL),
(363, 'Web', 'PayPal_Environment_Production', 'PayPal Environment Production', NULL),
(364, 'Web', 'PayPal_Environment_Sandbox', 'PayPal Environment Sandbox', NULL),
(365, 'Web', 'merchant_Name', 'Merchant Name', NULL),
(366, 'Web', 'merchant_Privacy_Policy_URL', 'Merchant Privacy Policy URL', NULL),
(367, 'Web', 'merchant_User_Agreement_URL', 'Merchant User Agreement URL', NULL),
(368, 'Web', 'Sms_Gateways', 'Sms Gateways', NULL),
(369, 'Web', 'Sms_Gateway_Name', 'Sms Gateway Name', NULL),
(370, 'Web', 'is_Default', 'Is Default', NULL),
(371, 'Web', 'Make_Default', 'Make Default', NULL),
(372, 'Web', 'Info_Updated_Successfully', 'Info Updated Successfully', NULL),
(373, 'Web', 'SMS_Gate_Ways', 'SMS Gate Ways', NULL),
(374, 'Web', 'User_Name', 'User Name', NULL),
(375, 'Web', 'From_No', 'From No', 'Từ số thứ tự'),
(376, 'Web', 'API_Id', 'API Id', 'Id API (API_Id)'),
(378, 'Web', 'you_are_not_authorized_to_perform_this_action', 'You are not authorized to perform this action', NULL),
(382, 'Web', 'Add_Pages', 'Add Pages', 'Thêm trang'),
(383, 'Web', 'View_Pages', 'View Pages', NULL),
(384, 'Web', 'Page_Name', 'Page Name', NULL),
(385, 'Web', 'Meta_Tag', 'Meta Tag', NULL),
(386, 'Web', 'Meta_Description', 'Meta Description', NULL),
(387, 'Web', 'Seo_Keywords', 'Seo Keywords', NULL),
(388, 'Web', 'please_Enter_Page_Name', 'Please Enter Page Name', NULL),
(389, 'Web', 'please_Enter_Description', 'Please Enter Description', NULL),
(390, 'Web', 'account_information_successfully_updated', 'Account information successfully updated', 'Thông tin tài khoản được cập nhật thành công'),
(391, 'Web', 'View_Page_Details', 'View Page Details', NULL),
(392, 'Web', 'Update_Pages', 'Update Pages', NULL),
(397, 'Web', 'old_password_is_wrong', '##Old password is wrong##', NULL),
(401, 'Web', 'Please_Select_Service', 'Please Select Service', NULL),
(402, 'Web', 'service_id', 'Service id', NULL),
(404, 'Web', 'No_Changes_Done', 'No Changes Done', NULL),
(405, 'Web', 'Reset_your_Password', 'Reset your Password', NULL),
(407, 'Web', 'appartments', 'Appartments', 'Các khoang (appartments)'),
(408, 'Web', 'Account_Successfully_Created_and_Activation_Email_Sent', 'Account Successfully Created and Activation Email Sent', 'Đã tạo thành công tài khoản và đã gửi email kích hoạt'),
(409, 'Web', 'your_account_activated_successfully_please_login', 'Your account activated successfully please login', NULL),
(410, 'Web', 'Url_for_Design_By', 'Url for Design By', NULL),
(411, 'Web', 'End_Users', 'End Users', 'Người dùng cuối'),
(412, 'Web', 'Total_End_Users', 'Total End Users', NULL),
(413, 'Web', 'Total_Users', 'Total Users', NULL),
(414, 'Web', 'Web_Phrases', 'Web Phrases', NULL),
(415, 'Web', 'App_Phrases', 'App Phrases', 'App_Phrases'),
(416, 'Web', 'New_Users_Information', 'New Users Information', NULL),
(417, 'Web', 'ago', 'Ago', 'trước'),
(418, 'Web', 'View_All', 'View All', NULL),
(421, 'Web', 'one_signal_server_api_key', 'One signal server api key', NULL),
(422, 'Web', 'one_signal_app_id', 'One signal app id', NULL),
(423, 'Web', 'one_signal_server_api_key', 'One signal server api key', NULL),
(424, 'Web', 'one_signal_app_id', 'One signal app id', NULL),
(427, 'App', 'Invalid_Operation', 'Invalid Operation', NULL),
(428, 'App', 'loginSuccess', 'Login Success', NULL),
(429, 'Web', 'Total_Appartments', 'Total Appartments', NULL),
(432, 'Web', 'please_Enter_Street_Name', 'Please Enter Street Name', NULL),
(434, 'Web', 'MSG_NO_ENTRY', 'MSG NO ENTRY', NULL),
(435, 'Web', 'Buy_now', 'Buy now', 'Mua ngay bây giờ'),
(436, 'Web', 'id', 'Id', NULL),
(437, 'Web', 'PayPal_Email', 'PayPal Email', NULL),
(438, 'Web', 'Please_Enter_Paypal_Email', 'Please Enter Paypal Email', NULL),
(439, 'Web', 'You_have_cancelled_your_transaction', 'You have cancelled your transaction', NULL),
(440, 'Web', 'Payment_success_Transaction_Id_', 'Payment success Transaction Id ', NULL),
(441, 'Web', 'Wrong_operation', 'Wrong operation', NULL),
(442, 'Web', 'My_Susbscriptions', 'My Susbscriptions', NULL),
(443, 'Web', 'My_Subscriptions', 'My Subscriptions', NULL),
(445, 'Web', 'Amount_Paid', 'Amount Paid', 'Số tiền đã trả'),
(447, 'Web', 'subscribe_date', 'Subscribe date', NULL),
(449, 'App', 'registration', 'Registration', NULL),
(450, 'App', 'registration_completed_successfully_OTP_sent_to_mobile', 'Registration completed successfully OTP sent to mobile', NULL),
(451, 'App', 'registration_completed_successfully_activation_email_sent', 'Registration completed successfully activation email sent', NULL),
(452, 'Web', 'please_login_to_access_this_page', 'Please login to access this page', NULL),
(453, 'Web', 'category_name', 'Category name', 'Tên danh mục'),
(454, 'Web', 'please_enter_Category_Name', 'Please enter Category Name', NULL),
(455, 'Web', 'phrases', 'Phrases', 'Cụm từ'),
(456, 'Web', 'view_menu', 'View Menu', NULL),
(457, 'Web', 'menu_name', 'Menu Name', NULL),
(458, 'Web', 'punch_line', 'Punch Line', NULL),
(459, 'Web', 'menu_image', 'Menu Image', NULL),
(460, 'Web', 'view_items', 'View Items', NULL),
(461, 'Web', 'item_name', 'Item Name', NULL),
(462, 'Web', 'item_cost', 'Item Cost', NULL),
(463, 'Web', 'item_type', 'Item Type', NULL),
(464, 'Web', 'item_image', 'Item Image', NULL),
(465, 'Web', 'dashboard', 'Dashboard', 'Bảng điều khiển'),
(466, 'Web', 'menu', 'Menu', NULL),
(467, 'Web', 'items', 'Items', 'Món ăn'),
(468, 'Web', 'addon_name', 'Addon Name', 'addon_name'),
(469, 'Web', 'addon_image', 'Addon Image', 'addon_image'),
(470, 'Web', 'view_addons', 'View Addons', NULL),
(471, 'Web', 'addons', 'Add-ons', 'Gia vị bổ sung '),
(472, 'Web', 'view_options', 'View Options', NULL),
(473, 'Web', 'name', 'Name', NULL),
(474, 'Web', 'options', 'Options', 'Tùy chọn'),
(475, 'Web', 'view_offers', 'View Offers', NULL),
(476, 'Web', 'offer_name', 'Offer Name', NULL),
(477, 'Web', 'offer_cost', 'Offer Cost', NULL),
(478, 'Web', 'offer_start_date', 'Offer Start Date', NULL),
(479, 'Web', 'offer_valid_date', 'Offer Valid Date', NULL),
(480, 'Web', 'no_of_items', 'No Of Items', NULL),
(481, 'Web', 'serve_no_of_people', 'Serve No Of People', NULL),
(482, 'Web', 'offers', 'Offers', 'Khuyến mãi'),
(483, 'Web', 'view_cities', 'View Cities', NULL),
(484, 'Web', 'city_name', 'City Name', 'Tên thành phố '),
(485, 'Web', 'view_service_provide_locations', 'View Service Provide Locations', NULL),
(486, 'Web', 'locality', 'Locality', NULL),
(487, 'Web', 'languages', 'Languages', 'Ngôn ngữ'),
(488, 'Web', 'location_master', 'Location Master', 'Bậc thầy chỉ điểm'),
(489, 'Web', 'cities', 'Cities', 'Thành phố '),
(490, 'Web', 'service_provide_locations', 'Service Provide Locations', 'Dịch Vụ Địa Phương'),
(491, 'Web', 'contact_email', 'Contact Email', 'Email liên hệ '),
(492, 'Web', 'restaurant_timings', 'Restaurant Timings', NULL),
(493, 'Web', 'from', 'From', 'từ'),
(494, 'Web', 'to', 'To', NULL),
(495, 'Web', 'notifications', 'Notifications', NULL),
(496, 'Web', 'rights_reserved', 'Rights Reserved', NULL),
(497, 'Web', 'site_title_is_required', 'Site title is required', NULL),
(498, 'Web', 'site_name_is_required', 'Site name is required', NULL),
(499, 'Web', 'address_is_required', 'Address is required', 'Địa chỉ là bắt buộc'),
(500, 'Web', 'city_is_required', 'City is required', 'Thành phố '),
(501, 'Web', 'state_is_required', 'State is required', NULL),
(502, 'Web', 'country_is_required', 'Country is required', 'Quốc gia là bắt buộc '),
(503, 'Web', 'pincode_is_required', 'Pincode is required', NULL),
(504, 'Web', 'latitude_is_required', 'Latitude is required', NULL),
(505, 'Web', 'longitude_is_required', 'Longitude is required', NULL),
(506, 'Web', 'phone_number_is_required', 'Phone number is required', NULL),
(507, 'Web', 'landline_number_is_required', 'Landline number is required', NULL),
(508, 'Web', 'fax_is_required', 'Fax is required', 'Fax là bắt buộc'),
(509, 'Web', 'contact_email_is_required', 'Contact email is required', 'Email liên hệ '),
(510, 'Web', 'site_language_is_required', 'Site language is required', NULL),
(511, 'Web', 'currency_is_required', 'Currency is required', 'Đơn vị tiền tệ là bắt buộc'),
(512, 'Web', 'currency_symbol_is_required', 'Currency symbol is required', 'Ký hiệu tiền tệ là bắt buộc'),
(513, 'Web', 'restaurant_from_time_is_required', 'Restaurant from time is required', NULL),
(514, 'Web', 'restaurant_to_time_is_required', 'Restaurant to time is required', NULL),
(515, 'Web', 'design_by_is_required', 'Design by is required', 'yêu câu Được thiết kế bởi'),
(516, 'Web', 'rights_reserved_is_required', 'Rights reserved is required', NULL),
(517, 'Web', 'date_format', 'Date Format', 'Định dạng ngày'),
(518, 'Web', 'site_country', 'Site Country', NULL),
(519, 'Web', 'time_zone', 'Time Zone', NULL),
(520, 'Web', 'site_country_is_required', 'Site Country Is Required', NULL),
(521, 'Web', 'time_zone_is_required', 'Time Zone Is Required', NULL),
(522, 'Web', 'file_is_not_valid', 'File Is Not Valid', 'Tệp không hợp lệ'),
(523, 'Web', 'from_time', 'From Time', 'Từ thời gian'),
(524, 'Web', 'to_time', 'To Time', NULL),
(525, 'Web', 'merchant_name', 'Merchant Name', NULL),
(526, 'Web', 'merchant_privacy_policy_url', 'Merchant Privacy Policy URL', NULL),
(527, 'Web', 'merchant_user_agreement_url', 'Merchant User Agreement URL', NULL),
(528, 'Web', 'select', 'Select', NULL),
(529, 'Web', 'sandbox', 'Sandbox', NULL),
(530, 'Web', 'production', 'Production', NULL),
(531, 'Web', 'paypal_environment_production_required', 'Paypal Environment Production Required', NULL),
(532, 'Web', 'paypal_environment_sandbox_required', 'Paypal Environment Sandbox Required', NULL),
(533, 'Web', 'merchant_name_required', 'Merchant Name Required', NULL),
(534, 'Web', 'merchant_privacy_policy_url_required', 'Merchant Privacy Policy Url Required', NULL),
(535, 'Web', 'merchant_user_agreement_url_required', 'Merchant User Agreement Url Required', NULL),
(536, 'Web', 'currency_required', 'Currency Required', 'Yêu cầu đơn vị tiền tệ'),
(537, 'Web', 'account_type_required', 'Account Type Required', 'Loại tài khoản Bắt buộc '),
(538, 'Web', 'status_required', 'Status Required', NULL),
(539, 'Web', 'details_updated_successfully', 'Details Updated Successfully', 'Đã cập nhật thông tin chi tiết thành công'),
(540, 'Web', 'payu_settings', 'Payu Settings', NULL),
(541, 'Web', 'merchant_key', 'Merchant Key', NULL),
(542, 'Web', 'salt', 'Salt', NULL),
(543, 'Web', 'live_url', 'Live Url', NULL),
(544, 'Web', 'test_url', 'Test Url', NULL),
(545, 'Web', 'merchant_key_required', 'Merchant Key Required', NULL),
(546, 'Web', 'salt_required', 'Salt Required', NULL),
(547, 'Web', 'live_url_required', 'Live Url Required', NULL),
(548, 'Web', 'test_url_required', 'Test Url Required', NULL),
(549, 'Web', 'smtp_host', 'Smtp Host', NULL),
(550, 'Web', 'smtp_port', 'Smtp Port', NULL),
(551, 'Web', 'smtp_user', 'Smtp User', NULL),
(552, 'Web', 'smtp_password', 'Smtp Password', NULL),
(553, 'Web', 'smtp_host_required', 'Smtp Host Required', NULL),
(554, 'Web', 'smtp_port_required', 'Smtp Port Required', NULL),
(555, 'Web', 'smtp_user_required', 'Smtp User Required', NULL),
(556, 'Web', 'smtp_password_required', 'Smtp Password Required', NULL),
(557, 'Web', 'action', 'Action', 'hành động'),
(558, 'Web', 'updated_successfully', 'Updated Successfully', NULL),
(559, 'Web', 'push_notification_settings', 'Push Notification Settings', NULL),
(560, 'Web', 'one_signal_server_api_key_required', 'One Signal Server Api Key Required', NULL),
(561, 'Web', 'one_signal_app_id_required', 'One Signal App Id Required', NULL),
(562, 'Web', 'email_template', 'Email Template', 'Mẫu Emai'),
(563, 'Web', 'edit_email_template', 'Edit Email Template', 'Chỉnh sửa Mẫu Email '),
(564, 'Web', 'subject_required', 'Subject Required', NULL),
(565, 'Web', 'email_template_required', 'Email Template Required', 'Yêu cầu mẫu email'),
(566, 'Web', 'edit_sms_template', 'Edit Sms Template', 'Chỉnh sửa Mẫu Sms (edit_sms_template)'),
(567, 'Web', 'sms_template_required', 'Sms Template Required', NULL),
(568, 'Web', 'add_menu', 'Add Menu', 'Thêm Menu'),
(569, 'Web', 'records_saved_successfully', 'Records Saved Successfully', NULL),
(570, 'Web', 'edit_menu', 'Edit Menu', 'Chỉnh sửa Menu (edit_menu)'),
(571, 'Web', 'save', 'Save', NULL),
(572, 'Web', 'add_multi_records', 'Add Multi Records', 'Thêm nhiều bản ghi '),
(573, 'Web', 'add_single_record', 'Add Single Record', 'Thêm Bản ghi Đơn'),
(574, 'Web', 'menu_name_required', 'Menu Name Required', NULL),
(575, 'Web', 'punch_line_required', 'Punch Line Required', NULL),
(576, 'Web', 'description_required', 'Description Required', 'Yêu cầu mô tả'),
(577, 'Web', 'menu_image_required', 'Menu Image Required', NULL),
(578, 'Web', 'details_saved_successfully', 'Details Saved Successfully', 'Đã lưu chi tiết thành công '),
(579, 'Web', 'menu_image_is_not_valid_file', 'Menu Image Is Not Valid File', NULL),
(580, 'Web', 'add_addon', 'Add Addon', 'Thêm Addon'),
(581, 'Web', 'addon_name_required', 'Addon Name Required', 'addon_name_required'),
(582, 'Web', 'price_required', 'Price Required', NULL),
(583, 'Web', 'addon_image_is_not_valid_file', 'Addon Image Is Not Valid File', 'addon_image không hợp lệ'),
(584, 'Web', 'edit_addon', 'Edit Addon', 'Chỉnh sửa tiện ích bổ sung'),
(585, 'Web', 'add_option', 'Add Option', 'Thêm tùy chọn'),
(586, 'Web', 'option_name', 'Option Name', NULL),
(587, 'Web', 'option_name_required', 'Option Name Required', NULL),
(588, 'Web', 'edit_option', 'Edit Option', 'Chỉnh sửa tùy chọn (edit_option)'),
(589, 'Web', 'language_name_required', 'Language Name Required', NULL),
(590, 'Web', 'MSG_LANGUAGE_ADDED', 'MSG LANGUAGE ADDED', NULL),
(592, 'Web', 'edit_phrase', 'Edit Phrase', 'Chỉnh sửa cụm từ (edit_phrase)'),
(593, 'Web', 'test', 'Test', NULL),
(594, 'Web', 'phrase_for_required', 'Phrase For Required', NULL),
(595, 'Web', 'lang_key_required', 'Lang Key Required', NULL),
(596, 'Web', 'add_cities', 'Add Cities', 'Thêm thành phố '),
(597, 'Web', 'add_city', 'Add City', 'Thêm thành phố '),
(598, 'Web', 'city_name_required', 'City Name Required', 'Tên thành phố '),
(599, 'Web', 'add_service_provide_location', 'Add Service Provide Location', 'Thêm dịch vụ cung cấp vị trí'),
(600, 'Web', 'edit_service_provide_location', 'Edit Service Provide Location', 'Chỉnh sửa Dịch vụ Cung cấp Vị trí (edit_service_provide_location)'),
(601, 'Web', 'city_required', 'City Required', 'Yêu cầu thành phố'),
(602, 'Web', 'locality_required', 'Locality Required', NULL),
(603, 'Web', 'pincode_required', 'Pincode Required', NULL),
(604, 'Web', 'add_page', 'Add Page', 'Thêm trang'),
(605, 'Web', 'edit_page', 'Edit Page', 'Chỉnh sửa trang (edit_page)'),
(606, 'Web', 'CRUD_operations_disabled_in_DEMO_version', 'CRUD Operations Disabled In DEMO Version', 'Hoạt động CRUD bị vô hiệu hóa trong phiên bản DEMO'),
(607, 'Web', 'add_item', 'Add Item', 'Thêm mục'),
(608, 'Web', 'edit_item', 'Edit Item', 'Chỉnh sửa mục (edit_item)'),
(609, 'Web', 'veg', 'Veg', NULL),
(610, 'Web', 'nonveg', 'Non-veg', NULL),
(611, 'Web', 'other', 'Other', NULL),
(612, 'Web', 'menu_required', 'Menu Required', NULL),
(613, 'Web', 'item_name_required', 'Item Name Required', NULL),
(614, 'Web', 'item_cost_required', 'Item Cost Required', NULL),
(615, 'Web', 'item_type_required', 'Item Type Required', NULL),
(616, 'Web', 'item_description_required', 'Item Description Required', NULL),
(617, 'Web', 'item_image_is_not_valid_file', 'Item Image Is Not Valid File', NULL),
(618, 'Web', 'item_description', 'Item Description', NULL),
(619, 'Web', 'add_items', 'Add Items', 'Thêm mục'),
(620, 'Web', 'cost', 'Cost', 'giá thành'),
(621, 'Web', 'item_details', 'Item Details', NULL),
(622, 'Web', 'add_remove', 'Add Remove', 'Thêm Xóa'),
(623, 'Web', 'select_atleast_one_option', 'Select Atleast One Option', NULL),
(624, 'Web', 'name_required', 'Name Required', NULL),
(625, 'Web', 'please_enter_proper_value_for_price_field', 'Please Enter Proper Value For Price Field', NULL),
(626, 'Web', 'already_existed', 'Already Existed', 'Đã tồn tại'),
(627, 'Web', 'select_option', 'Select Option', NULL),
(628, 'Web', 'note_to_add_a_record_click_on_plus_button', 'Note: To add a record click on the (+) button', NULL),
(631, 'Web', 'MSG_LANGUAGE_DELETED', 'MSG LANGUAGE DELETED', NULL),
(632, 'Web', 'add_offer', 'Add Offer', 'Thêm ưu đãi'),
(633, 'Web', 'offer_end_date', 'Offer End Date', NULL),
(634, 'Web', 'offer_conditions', 'Offer Conditions', NULL),
(635, 'Web', 'offer_image_name', 'Offer Image Name', NULL),
(636, 'Web', 'offer_name_required', 'Offer Name Required', NULL),
(637, 'Web', 'offer_cost_required', 'Offer Cost Required', NULL),
(638, 'Web', 'offer_start_date_required', 'Offer Start Date Required', NULL),
(639, 'Web', 'offer_valid_date_required', 'Offer Valid Date Required', NULL),
(640, 'Web', 'serve_no_of_people_required', 'Serve No Of People Required', NULL),
(641, 'Web', 'offer_image_is_not_valid_file', 'Offer Image Is Not Valid File', NULL),
(642, 'Web', 'offer_conditions_required', 'Offer Conditions Required', NULL),
(643, 'Web', 'gallary', 'Gallery', 'Từ thời gian'),
(644, 'Web', 'add_images', 'Add Images', 'Thêm hình ảnh'),
(645, 'Web', 'alt_text', 'Alt Text', 'Văn bản thay thế'),
(646, 'Web', 'alternative_text', 'Alternative Text', 'Văn bản thay thế'),
(647, 'Web', 'edit_image', 'Edit Image', 'Chỉnh sửa hình ảnh (edit_image)'),
(648, 'Web', 'alternative_text_required', 'Alternative Text Required', 'Văn bản Thay thế Bắt buộc'),
(649, 'Web', 'image_is_not_valid_file', 'Image Is Not Valid File', NULL),
(650, 'Web', 'update_profile', 'Update Profile', NULL),
(651, 'Web', 'quantity', 'Quantity', NULL),
(652, 'Web', 'item_required', 'Item Required', NULL),
(653, 'Web', 'quantity_required', 'Quantity Required', NULL),
(654, 'Web', 'please_enter_numbers_only', 'Please Enter Numbers Only', NULL),
(655, 'Web', 'edit_offer', 'Edit Offer', 'Chỉnh sửa phiếu mua hàng (edit_offer)'),
(656, 'Web', 'view_faqs', 'View Faqs', NULL),
(657, 'Web', 'question', 'Question', NULL),
(658, 'Web', 'answer', 'Answer', 'câu trả lời'),
(659, 'Web', 'add_faq', 'Add Faq', 'Thêm câu hỏi thường gặp'),
(660, 'Web', 'question_required', 'Question Required', NULL),
(661, 'Web', 'answer_required', 'Answer Required', 'Yêu cầu trả lời'),
(662, 'Web', 'edit_faq', 'Edit Faq', 'Chỉnh sửa câu hỏi thường gặp'),
(663, 'Web', 'add_faqs', 'Add Faqs', 'Thêm câu hỏi thường gặp'),
(664, 'Web', 'social_networks', 'Social Networks', NULL),
(665, 'Web', 'facebook', 'Facebook', 'Facebook'),
(666, 'Web', 'twitter', 'Twitter', NULL),
(667, 'Web', 'google_plus', 'Google Plus', 'Google Plus'),
(668, 'Web', 'linked_in', 'Linked In', NULL),
(669, 'Web', 'instagram', 'Instagram', NULL),
(670, 'Web', 'pinterest', 'Pinterest', NULL),
(671, 'Web', 'facebook_url_not_valid', 'Facebook Url Not Valid', 'Url Facebook không hợp lệ '),
(672, 'Web', 'twitter_url_not_valid', 'Twitter Url Not Valid', NULL),
(673, 'Web', 'google_plus_url_not_valid', 'Google Plus Url Not Valid', 'Google Plus Url không hợp lệ'),
(674, 'Web', 'linked_in_url_not_valid', 'Linked In Url Not Valid', NULL),
(675, 'Web', 'instagram_url_not_valid', 'Instagram Url Not Valid', NULL),
(676, 'Web', 'pinterest_url_not_valid', 'Pinterest Url Not Valid', NULL),
(677, 'Web', 'tumblr', 'Tumblr', NULL),
(678, 'Web', 'tumblr_url_not_valid', 'Tumblr Url Not Valid', NULL),
(679, 'Web', 'day', 'Day', 'Ngày '),
(680, 'Web', 'opened', 'Opened', NULL),
(681, 'Web', 'closed', 'Closed', 'Đóng cửa'),
(682, 'Web', 'opening_hours', 'Opening Hours', NULL),
(683, 'Web', 'login', 'Login', NULL),
(684, 'Web', 'contact_us', 'Contact Us', 'Liên hệ với chúng tôi'),
(685, 'Web', 'loyality_points', 'Loyality Points', 'Điểm thành viên'),
(686, 'Web', 'points_settings', 'Points Settings', 'Cài đặt điểm tích lũy'),
(687, 'Web', 'user_reward_points', 'User Reward Points', 'điểm tích lũy người dùng'),
(688, 'Web', 'points_logs', 'Points Logs', NULL),
(689, 'Web', 'reports', 'Reports', 'Báo cáo'),
(690, 'Web', 'from_date', 'From Date', 'Từ ngày '),
(691, 'Web', 'to_date', 'To Date', NULL),
(692, 'Web', 'from_date_required', 'From Date Required', 'Ngày bắt buộc'),
(693, 'Web', 'to_date_required', 'To Date Required', NULL),
(694, 'Web', 'master_settings', 'Master Settings', 'Cài đặt nâng cao'),
(695, 'Web', 'app_settings', 'App Settings', 'Cài đặt ứng dụng'),
(696, 'Web', 'points_label_redeem_placeholder', 'Points Label Redeem Placeholder', 'nhãn điểm thưởng'),
(697, 'Web', 'points_label_earn', 'Points Label Earn', 'điểm nhận được'),
(698, 'Web', 'points_label_template', 'Points Label Template', 'Mẫu'),
(699, 'Web', 'maximum_earning_points_for_customer', 'Maximum Earning Points For Customer', NULL),
(700, 'Web', 'points_earn_apply_only_on_the_following_payment_option', 'Points Earn Apply Only On The Following Payment Option', NULL),
(701, 'Web', 'cash_on_delivery', 'Cash On Delivery', 'Thu tiền khi giao hàng'),
(702, 'Web', 'paypal', 'Paypal', NULL),
(703, 'Web', 'stripe', 'Stripe', NULL),
(704, 'Web', 'earning_points_conversion_settings', 'Earning Points Conversion Settings', 'Cài đặt chuyển đổi kiếm điểm'),
(705, 'Web', 'earning_point', 'Earning Points', 'Điểm kiếm được'),
(706, 'Web', 'earning_point_value_in_R', 'Earning Point Value In R$', 'Giá trị điểm kiếm được tính bằng R '),
(707, 'Web', 'redeeming_points_conversion_settings', 'Redeeming Points Conversion Settings', 'quy đổi cài đặt chuyển đổi điểm'),
(708, 'Web', 'redeeming_point', 'Redeeming Point', 'đổi điểm'),
(709, 'Web', 'redeeming_point_value_in_R', 'Redeeming Point Value In R$', NULL),
(710, 'Web', 'disabled_redeeming', 'Disabled Redeeming', 'Quy đổi bị vô hiệu hóa'),
(711, 'Web', 'points_earned_for_actions', 'Points Earned For Actions', 'điểm nhận được mỗi hành động'),
(712, 'Web', 'reward_points_for_account_signup', 'Reward Points For Account Signup', 'điểm nhận được khi tạo tài khoản thành công'),
(713, 'Web', 'reward_points_for_restaurant_review', 'Reward Points For Restaurant Review', NULL),
(714, 'Web', 'reward_points_for_first_order', 'Reward Points For First Order', NULL),
(715, 'Web', 'reward_points_for_sharing_app', 'Reward Points For Sharing App', 'điểm nhận được khí share app'),
(716, 'Web', 'points_expiry', 'Points Expiry', NULL),
(717, 'Web', 'points_expire_at_the_end_of_the_next_year_after_you_earned_them', 'Points Expire At The End Of The Next Year After You Earned Them', NULL),
(718, 'Web', 'points_never_expire', 'Points Never Expire', NULL),
(719, 'Web', 'minimum_points_can_be_used', 'Minimum Points Can Be Used', 'mininum'),
(720, 'Web', 'maximum_points_can_be_used', 'Maximum Points Can Be Used', 'số điểm tích lũy lớn nhất có thể đạt được'),
(721, 'Web', 'enabled_points_system', 'Enabled Points System', 'Hệ thống điểm đã kích hoạt '),
(722, 'Web', 'required', 'Required', NULL),
(723, 'Web', 's_no', 'S No', NULL),
(724, 'Web', 'customer_name', 'Customer Name', 'Tên khách hàng'),
(725, 'Web', 'customer_phone', 'Customer Phone', 'Điện thoại của khách hàng'),
(726, 'Web', 'no_of_items_booked', 'No Of Items Booked', NULL),
(727, 'Web', 'order_cost', 'Order Cost', NULL),
(728, 'Web', 'booked_date_time', 'Booked Date Time', 'thời gian đặt hàng'),
(729, 'Web', 'payment', 'Payment', NULL),
(730, 'Web', 'paid_amount', 'Paid Amount', NULL),
(731, 'Web', 'booked_date', 'Booked Date', 'Ngày đặt hàng'),
(732, 'Web', 'total_amount', 'Total Amount', NULL),
(733, 'Web', 'no_customers_available', 'No Customers Available', NULL),
(734, 'Web', 'client_wise_reports', 'Client Wise Reports', 'Báo cáo Khách hàng'),
(735, 'Web', 'customer', 'Customer', 'Khách hàng'),
(736, 'Web', 'customer_required', 'Customer Required', 'Khách hàng Bắt buộc '),
(737, 'Web', 'location_wise_reports', 'Location Wise Reports', NULL),
(738, 'Web', 'item_wise_reports', 'Item Wise Reports', NULL),
(739, 'Web', 'item', 'Item', 'Món ăn'),
(740, 'Web', 'date_wise_reports', 'Date Wise Reports', 'Báo cáo ngày  (date_wise_reports)'),
(741, 'Web', 'updated_successfully', 'Updated Successfully', NULL),
(742, 'Web', 'calendar', 'Calendar', 'Lịch '),
(743, 'Web', 'point_settings', 'Point Settings', NULL),
(744, 'Web', 'points_label_redeem_placeholder', 'Points Label Redeem Placeholder', 'nhãn điểm thưởng'),
(745, 'Web', 'points_label_earn', 'Points Label Earn', NULL),
(746, 'Web', 'points_label_template', 'Points Label Template', 'Mẫu'),
(747, 'Web', 'maximum_earning_points_for_customer', 'Maximum Earning Points For Customer', NULL),
(748, 'Web', 'points_earn_apply_only_on_the_following_payment_options', 'Points Earn Apply Only On The Following Payment Options', NULL),
(749, 'Web', 'earning_point', 'Earning Points', 'Điểm kiếm được'),
(750, 'Web', 'earning_point_value_in_', 'Earning Point Value In ', 'Kiếm được giá trị điểm trong'),
(751, 'Web', 'redeeming_points_conversion_settings', 'Redeeming Points Conversion Settings', 'quy đổi cài đặt chuyển đổi điểm'),
(752, 'Web', 'redeeming_point', 'Redeeming Point', 'đổi điểm'),
(754, 'Web', 'disabled_redeeming', 'Disabled Redeeming', 'Quy đổi bị vô hiệu hóa'),
(755, 'Web', 'redeeming_point_value_in_', 'Redeeming Point Value In', NULL),
(756, 'Web', 'points_earned_for_actions', 'Points Earned For Actions', 'điểm nhận được mỗi hành động'),
(757, 'Web', 'reward_points_for_restaurant_review', 'Reward Points For Restaurant Review', NULL),
(758, 'Web', 'reward_points_for_first_order', 'Reward Points For First Order', NULL),
(759, 'Web', 'reward_points_for_sharing_app', 'Reward Points For Sharing App', 'điểm nhận được khí share app'),
(760, 'Web', 'points_expiry', 'Points Expiry', NULL),
(761, 'Web', 'points_expire_at_the_end_of_the_next_year_after_you_earned_them', 'Points Expire At The End Of The Next Year After You Earned Them', NULL),
(762, 'Web', 'points_never_expire', 'Points Never Expire', NULL),
(763, 'Web', 'minimum_points_can_be_used', 'Minimum Points Can Be Used', 'mininum'),
(764, 'Web', 'maximum_points_can_be_used', 'Maximum Points Can Be Used', 'số điểm tích lũy lớn nhất có thể đạt được'),
(765, 'Web', 'enabled_points_system', 'Enabled Points System', 'Hệ thống điểm đã kích hoạt'),
(766, 'Web', 'points_label_redeem_placeholder_required', 'Points Label Redeem Placeholder Required', NULL),
(767, 'Web', 'points_label_earn_required', 'Points Label Earn Required', NULL),
(768, 'Web', 'points_label_template_required', 'Points Label Template Required', 'Mẫu'),
(769, 'Web', 'maximum_earning_points_for_customer_required', 'Maximum Earning Points For Customer Required', NULL),
(770, 'Web', 'payment_options_required', 'Payment Options Required', NULL),
(771, 'Web', 'earning_point_required', 'Earning Point Required', 'Kiếm điểm cho khách hàng cho một đơn đặt hàng'),
(772, 'Web', 'earning_point_value_required', 'Earning Point Value Required', 'Yêu cầu giá trị điểm kiếm được'),
(773, 'Web', 'redeeming_point_required', 'Redeeming Point Required', NULL),
(774, 'Web', 'redeeming_point_value_required', 'Redeeming Point Value Required', NULL),
(775, 'Web', 'points_for_restaurant_review_required', 'Points For Restaurant Review Required', NULL),
(776, 'Web', 'points_for_first_order_required', 'Points For First Order Required', NULL),
(777, 'Web', 'points_for_sharing_app_required', 'Points For Sharing App Required', NULL),
(778, 'Web', 'points_expiry_required', 'Points Expiry Required', NULL),
(779, 'Web', 'minimum_points_can_be_used_required', 'Minimum Points Can Be Used Required', 'mininum'),
(780, 'Web', 'maximum_points_can_be_used_required', 'Maximum Points Can Be Used Required', NULL),
(781, 'Web', 'reward_points_for_account_signup', 'Reward Points For Account Signup', 'điểm nhận được khi tạo tài khoản thành công'),
(782, 'Web', 'reward_points_for_account_signup_required', 'Reward Points For Account Signup Required', NULL),
(783, 'Web', 'earning_point_value', 'Earning Point Value', 'Giá trị điểm kiếm được'),
(784, 'Web', 'redeeming_point_value', 'Redeeming Point Value', NULL),
(785, 'Web', 'points_for_restaurant_review', 'Points For Restaurant Review', NULL),
(786, 'Web', 'points_for_first_order', 'Points For First Order', NULL),
(787, 'Web', 'points_for_sharing_app', 'Points For Sharing App', NULL),
(788, 'Web', 'total_points', 'Total Points', NULL),
(789, 'Web', 'referral_settings', 'Referral Settings', 'Cài đặt ưu đãi'),
(790, 'Web', 'referral_enabled', 'Referral Enabled', NULL),
(791, 'Web', 'points_for_refer_anyone', 'Points For Refer Anyone', NULL),
(792, 'Web', 'points_for_referred_by_anyone', '	Points For Referred By Anyone', NULL),
(793, 'Web', 'points_for_refer_anyone_required', 'Points For Refer Anyone Required', NULL),
(794, 'Web', 'points_for_referred_by_anyone_required', 'Points For Referred By Anyone Required', NULL),
(795, 'Web', 'points_for_refer_anyone', 'Points For Refer Anyone', NULL),
(796, 'Web', 'points_for_referring_person', '	Points For Referring Person', NULL),
(797, 'Web', 'points_for_referred_person', '	points for referred person', NULL),
(798, 'Web', 'fevicon', 'Favicon', 'fevicon'),
(799, 'Web', 'view_customers', 'View Customers', NULL),
(800, 'Web', 'designed_by', 'Designed By', 'Được thiết kế bởi'),
(801, 'Web', 'orders', 'Orders', 'Đặt Hàng'),
(802, 'Web', 'refferal_users', 'Refferal Users', NULL),
(803, 'Web', 'order', 'Order', 'Đặt Hàng'),
(804, 'Web', 'login_register', 'Login Register', NULL),
(805, 'Web', 'loginregister', 'Login-register', NULL),
(806, 'Web', 'email_required', 'Email Required', 'Yêu cầu email (email_required)'),
(807, 'Web', 'password_required', 'Password Required', NULL),
(808, 'Web', 'forgot_password', 'Forgot Password', 'Quên mật khẩu'),
(809, 'Web', 'login_through_facebook', 'Login Through Facebook', NULL),
(810, 'Web', 'login_through_google', 'Login Through Google', NULL),
(811, 'Web', 'first_name_required', 'First Name Required', 'first_name bắt buộc'),
(812, 'Web', 'last_name_required', 'Last Name Required', NULL),
(813, 'Web', 'phone_required', 'Phone Required', NULL),
(814, 'Web', 'confirm_password_required', 'Confirm Password Required', 'Xác nhận yêu cầu mật khẩu'),
(815, 'Web', 'password_confirm_password_should_be_same', 'Password Confirm Password Should Be Same', NULL),
(816, 'Web', 'min_length6', 'Min Length6', NULL),
(817, 'Web', 'min_length_6', 'Min Length 6', NULL),
(818, 'Web', 'min_length_should_be_6', 'Min Length Should Be 6', NULL),
(819, 'Web', 'login_signup', 'Login Signup', NULL),
(820, 'Web', 'reset_password', 'Reset Password', NULL),
(821, 'Web', 'follow_us', 'Follow Us', 'Theo dõi chúng tôi (follow_us)'),
(822, 'Web', 'about_us', 'About Us', 'About Us'),
(823, 'Web', 'message', 'Message', NULL),
(824, 'Web', 'message_required', 'Message Required', NULL),
(825, 'Web', 'contact_query', 'Contact Query', 'Truy vấn liên hệ '),
(826, 'Web', 'your_contact_request_not_sent_due_to_some_technical_issue_please_contact_us_after_some_time_thankyou', 'Your Contact Request Not Sent Due To Some Technical Issue Please Contact Us After Some Time Thankyou', NULL),
(827, 'Web', 'my_orders', 'My Orders', 'Đơn hàng của tôi'),
(828, 'Web', 'my_points', 'My Points', 'Điểm'),
(829, 'Web', 'my_account', 'My Account', 'Tôi'),
(830, 'Web', 'logout', 'Logout', NULL),
(831, 'Web', 'logged_out_successfully', 'Logged Out Successfully', NULL),
(832, 'Web', 'profile_updated_successfully', 'Profile Updated Successfully', NULL),
(833, 'Web', 'profile_image', 'Profile Image', NULL),
(834, 'Web', 'old_password', 'Old Password', NULL),
(835, 'Web', 'new_password', 'New Password', NULL),
(836, 'Web', 'new_confirm_password', 'New Confirm Password', NULL),
(837, 'Web', 'old_password_required', 'Old Password Required', NULL),
(838, 'Web', 'new_password_required', 'New Password Required', NULL),
(839, 'Web', 'new_confirm_password_required', 'New Confirm Password Required', NULL),
(840, 'Web', 'current_password', 'Current Password', 'Mật khẩu hiện tại'),
(841, 'Web', 'record_not_found', 'Record Not Found', NULL),
(842, 'Web', 'profile_image_is_not_valid_file', 'Profile Image Is Not Valid File', NULL),
(843, 'Web', 'change', 'Change', 'thay đổi'),
(844, 'Web', 'signup', 'Signup', NULL),
(845, 'Web', 'referral_code', 'Referral Code', NULL),
(846, 'Web', 'user_points', 'User Points', NULL),
(847, 'Web', 'login_into_facebook', 'Login Into Facebook', NULL),
(848, 'Web', 'login_into_google', 'Login Into Google', NULL),
(849, 'Web', 'customers', 'Customers', 'Khách hàng'),
(850, 'Web', 'Our_Links', 'Our Links', NULL),
(851, 'Web', 'view_card_images', 'View Card Images', NULL),
(852, 'Web', 'card_image', 'Card image', 'Hình ảnh thẻ'),
(853, 'Web', 'add_card', 'Add Card', 'Thêm thẻ'),
(854, 'Web', 'card_image_is_not_valid_file', 'Card image is not valid file', 'Hình ảnh thẻ không phải là tệp hợp lệ'),
(855, 'Web', 'edit_card', 'Edit card', 'Chỉnh sửa thẻ'),
(856, 'Web', 'street', 'Street', 'Địa chỉ'),
(857, 'Web', 'house_no_required', 'House no required', NULL),
(858, 'Web', 'street_required', 'Street required', NULL),
(859, 'Web', 'landmark_required', 'Landmark required', NULL),
(860, 'Web', 'add_address', 'Add address', 'Thêm địa chỉ'),
(861, 'Web', 'house_no', 'House no', 'Số nhà'),
(862, 'Web', 'address_saved_successfully', 'Address saved successfully', 'Địa chỉ đã được lưu thành công'),
(863, 'Web', 'address_deleted_successfully', 'Address deleted successfully', 'Đã xóa địa chỉ thành công'),
(864, 'Web', 'addresses', 'Addresses', 'Địa chỉ'),
(865, 'Web', 'delivery_fee', 'Delivery Fee', 'Phí giao hàng'),
(866, 'Web', 'delivery_from_time', 'Delivery From Time', 'Giao hàng từ thời gian'),
(867, 'Web', 'delivery_to_time', 'Delivery to Time', 'Giao hàng đến thời gian'),
(868, 'Web', 'delivery_time_units', 'Delivery Time Units', 'Đơn vị thời gian giao hàng '),
(869, 'Web', 'minutes', 'Minutes', NULL),
(870, 'Web', 'hours', 'Hours', NULL),
(871, 'Web', 'payment_type_required', 'Payment type required', NULL),
(872, 'Web', 'payment_methods', 'Payment Methods', NULL),
(873, 'Web', 'online', 'Online', NULL),
(874, 'Web', 'cash_on_delivery', 'Cash On Delivery', 'Thu tiền khi giao hàng'),
(875, 'Web', 'card_on_delivery', 'Card on Delivery', 'Thẻ ngân hàng trong nước (online hoặc quẹt thẻ)'),
(876, 'Web', 'payment_methods_required', 'Payment Methods Required', NULL),
(877, 'Web', 'site_logo_file_is_not_valid', 'Site logo file is not valid', NULL);
INSERT INTO `cr_languagewords` (`lang_id`, `phrase_for`, `lang_key`, `english`, `vit_nam`) VALUES
(878, 'Web', 'fevicon_file_is_not_valid', 'Fevicon file is not valid', 'Tệp Fevicon không hợp lệ'),
(879, 'Web', 'no_payment_methods_available', 'No Payment Methods Available', NULL),
(880, 'Web', 'paypal_email_required', 'Paypal email required', NULL),
(881, 'Web', 'country_code_is_required', 'Country code is required', 'Mã quốc gia là bắt buộc'),
(882, 'Web', 'for_app', 'For app', NULL),
(883, 'Web', 'app_details', 'App details', 'Chi tiết ứng dụng'),
(884, 'Web', 'paypal_details_for_app', 'Paypal details for app', NULL),
(885, 'Web', 'is_most_selling_item', 'Is Most Selling item', NULL),
(886, 'Web', 'order_successfully_saved', 'Order successfully saved', NULL),
(887, 'Web', 'most_selling_items', 'Most Selling Items', NULL),
(888, 'Web', 'view_orders', 'View Orders', NULL),
(889, 'Web', 'order_no', 'Order No', NULL),
(890, 'Web', 'order_date', 'Order Date', NULL),
(891, 'Web', 'order_time', 'Order Time', NULL),
(892, 'Web', 'new_orders', 'New Orders', 'Đơn hàng mới'),
(893, 'Web', 'under_process_orders', 'Under Process Orders', 'Đang Chế Biến'),
(894, 'Web', 'out_to_deliver_orders', 'Out to Deliver Orders', 'đang giao đơn hàng'),
(895, 'Web', 'delivered_orders', 'Delivered Orders', 'đơn hàng đã giao'),
(896, 'Web', 'cancelled_orders', 'Cancelled Orders', 'Đơn hàng đã Hủy'),
(897, 'Web', 'view_order', 'View Order', NULL),
(898, 'Web', 'delivery_cost', 'Delivery Cost', 'Chi phí giao hàng'),
(899, 'Web', 'is_points_redeemed', 'Is Points Redeemed', NULL),
(900, 'Web', 'option', 'Option', 'Tùy chọn'),
(901, 'Web', 'item_quantity', 'Item Quantity', NULL),
(902, 'Web', 'total_cost', 'Total Cost', NULL),
(903, 'Web', 'is_deleted', 'Is Deleted', NULL),
(904, 'Web', 'order_items', 'Order Items', NULL),
(905, 'Web', 'order_addons', 'Order Addons', NULL),
(906, 'Web', 'order_offers', 'Order Offers', NULL),
(907, 'Web', 'offer_quantity', 'Offer Quantity', NULL),
(908, 'Web', 'no_of_products', 'No of Products', NULL),
(909, 'Web', 'order_update', 'Order update', NULL),
(910, 'Web', 'update_order_status', 'Update order status', NULL),
(911, 'Web', 'processing', 'Processing', 'đang chế biến'),
(912, 'Web', 'out_to_deliver', 'Out to Deliver', 'đang giao hàng'),
(913, 'Web', 'delivered', 'Delivered', 'đã giao'),
(914, 'Web', 'cancelled', 'Cancelled', 'đã hủy'),
(915, 'Web', 'please_select_order_status', 'Please select order status', NULL),
(916, 'Web', 'order_status_updated_successfully', 'Order status updated successfully', NULL),
(917, 'Web', 'order_status', 'Order status', NULL),
(918, 'Web', 'email_not_send_to_user', 'Email not send to user', 'Email không được gửi tới người dùng (email_not_send_to_user)'),
(919, 'Web', 'process', 'Process', NULL),
(920, 'Web', 'earning_points_for_customer_for_an_order', 'Earning Points for Customer for an Order', 'Kiếm điểm cho khách hàng cho một đơn đặt hàng'),
(921, 'Web', 'print', 'Print', NULL),
(922, 'Web', 'stripe_cards', 'Stripe Cards', NULL),
(923, 'Web', 'point_logs_of', 'Point Logs of', NULL),
(924, 'Web', 'points', 'Points', NULL),
(925, 'Web', 'transaction_type', 'Transaction Type', NULL),
(926, 'Web', 'referral_users', 'Referral Users', NULL),
(927, 'Web', 'refer_user', 'Refer User', NULL),
(928, 'Web', 'referred_by', 'Referred by', NULL),
(929, 'Web', 'date', 'Date', 'ngày tháng'),
(930, 'Web', 'user_arleady_existed_with_this_email_id', 'User arleady existed with this email id', NULL),
(931, 'Web', 'please_enter_valid_email_id', 'Please enter valid email id', NULL),
(932, 'Web', 'no_user_found_with_this_referral_code', 'No user found with this referral code', NULL),
(933, 'Web', 'orders_overview', 'Orders Overview', 'Xem lịch'),
(934, 'Web', 'no_items_available_please_contact_administration', 'No items available please contact administration', NULL),
(935, 'Web', 'show_all', 'Show all', NULL),
(936, 'Web', 'add_to_cart', 'Add to cart', 'Thêm vào giỏ'),
(937, 'Web', 'order_can_not_be_booked_please_follow_restaurant_timings', 'Order can not be booked please follow restaurant timings', NULL),
(938, 'Web', 'get_languageword', 'Get language word', 'Nhận từ ngôn ngữ'),
(939, 'Web', 'thank_you', 'Thank you', NULL),
(940, 'Web', 'your_order_is_received_we_will_contact_you_soon', 'Your order is received we will contact you soon', NULL),
(941, 'Web', 'sms_sent_to_user', 'Sms sent to user', NULL),
(942, 'Web', 'order_item_deleted_successfully', 'Order item deleted successfully', NULL),
(943, 'Web', 'Activation_Email_Sent', 'Activation Email Sent', 'Email kích hoạt đã được gửi'),
(944, 'Web', 'arabic', 'Arabic', 'Tiếng Ả Rập'),
(945, 'Web', 'dutch', 'Dutch', 'Tiếng Hà Lan '),
(946, 'Web', 'records_not_saved', 'Records not saved', NULL),
(947, 'Web', 'email_sent_to_user', 'Email sent to user', 'Email đã được gửi đến người dùng (email_sent_to_user)'),
(948, 'Web', 'customer_wise_reports', 'Customer Wise Reports', 'Báo cáo khách hàng(customer_wise_reports)'),
(949, 'Web', 'please_enter_valid_value', 'Please enter valid value', NULL),
(950, 'Web', 'facebook_app_id', 'Facebook App id', 'Id ứng dụng Facebook '),
(951, 'Web', 'facebook_app_secret', 'Facebook App Secret', 'Bí mật ứng dụng Facebook'),
(952, 'Web', 'facebook_app_id_required', 'Facebook app id required', 'Cần có id ứng dụng Facebook'),
(953, 'Web', 'facebook_app_secret_required', 'Facebook App Secret Required', 'Yêu cầu bí mật ứng dụng Facebook'),
(954, 'Web', 'order_addon_item_deleted_successfully', 'Order addon item deleted successfully', NULL),
(955, 'Web', 'units', 'Units', NULL),
(956, 'Web', 'profile_image_updated_successfully', 'Profile image updated successfully', NULL),
(957, 'Web', 'language_code', 'Language Code', NULL),
(958, 'Web', 'language_code_required', 'Language code required', NULL),
(959, 'Web', 'title_required', 'Title required', NULL),
(960, 'Web', 'language_required', 'Language required', NULL),
(961, 'Web', 'ios_urlxss_clean', 'Ios url|xss clean', NULL),
(962, 'Web', 'android_urlxss_clean', 'Android url|xss clean', 'Url Android | xss clean'),
(963, 'Web', 'points_for_referred_person', '	points for referred person', NULL),
(964, 'Web', 'view_item_types', 'View Item Types', NULL),
(965, 'Web', 'add_item_type', 'Add Item Type', 'Thêm loại sản phẩm'),
(966, 'Web', 'add_item_types', 'Add Item Types', 'Thêm loại mặt hàng'),
(967, 'Web', 'no_items_available', 'No items available', NULL),
(968, 'Web', 'item_types', 'Item Types', 'Kiểu món ăn'),
(969, 'Web', 'email_sms_not_send_to_user', 'Email sms not send to user', 'Email sms không được gửi tới người dùng'),
(970, 'Web', 'order_offer_item_deleted_successfully', 'Order offer item deleted successfully', NULL),
(971, 'Web', 'edit_item_type', 'Edit item type', 'Chỉnh sửa loại mục (edit_item_type)'),
(972, 'Web', 'total_orders_amount', 'Total orders amount', NULL),
(973, 'Web', 'total_items_amount', 'Total items amount', NULL),
(974, 'Web', 'no_of_points_redeemed', 'No of points redeemed', NULL),
(975, 'Web', 'points_value', 'Points value', NULL),
(976, 'Web', 'google_client_id', 'Google Client id', 'Id ứng dụng khách Google'),
(977, 'Web', 'google_client_secret', 'Google Client Secret', 'Bí mật ứng dụng khách của Google '),
(978, 'Web', 'google_client_id_required', 'Google Client Id Required', 'Id ứng dụng khách Google'),
(979, 'Web', 'google_client_secret_required', 'Google Client Secret Required', 'Yêu cầu bí mật ứng dụng khách của Google'),
(980, 'Web', 'no_offers_available_please_contact_administration', 'No offers available please contact administration', NULL),
(981, 'Web', 'Account_is_inactive', 'Account is inactive', 'Tài khoản không hoạt động'),
(982, 'Web', 'login_success', 'Login success', NULL),
(983, 'Web', 'Incorrect_Login', 'Incorrect Login', NULL),
(984, 'Web', 'Password_Successfully_Changed', 'Password Successfully Changed', NULL),
(985, 'Web', 'Old_password_is_wrong', '##Old password is wrong##', NULL),
(986, 'Web', 'restaurant_opening_hours', 'Restaurant opening hours', NULL),
(987, 'Web', 'No_Orders', 'No Orders', NULL),
(988, 'Web', 'Order_Details', 'Order Details', NULL),
(989, 'Web', 'admin_panel', 'Admin panel', 'Bảng điều khiển quản trị '),
(990, 'Web', 'product_details', 'Product details', NULL),
(991, 'Web', 'sub_total', 'Sub total', NULL),
(992, 'Web', 'grand_total', 'Grand total', 'Tổng cộng'),
(993, 'Web', 'points_redeemed', 'Points redeemed', NULL),
(994, 'Web', 'points_discount', 'Points discount', NULL),
(995, 'Web', 'address_details', 'Address details', 'Chi tiết địa chỉ'),
(996, 'Web', 'new_address', 'New address', NULL),
(997, 'Web', 'house_number_required', 'House number required', NULL),
(998, 'Web', 'pincode', 'PIN Code', NULL),
(999, 'Web', 'addons', 'Add-ons', 'Gia vị bổ sung '),
(1000, 'Web', 'points_earned_for_buy_an_item_order', 'Points earned for buy an item order', NULL),
(1001, 'Web', 'home_images', 'Home Images', NULL),
(1002, 'Web', 'add_image', 'Add image', 'Thêm hình ảnh'),
(1003, 'Web', 'image_uploaded_successfully', 'Image uploaded successfully', NULL),
(1004, 'Web', 'image_status_updated_successfully', 'Image status updated successfully', NULL),
(1005, 'Web', 'back', 'Back', 'quay lại'),
(1006, 'Web', 'points_redeemed_for_buy_an_item_order', 'Points redeemed for buy an item order', NULL),
(1007, 'Web', 'please_provide_delivery_address_details', 'Please provide delivery address details', NULL),
(1008, 'Web', 'saved_addresses', 'Saved addresses', NULL),
(1009, 'App', 'referal_code', 'Referal Code', NULL),
(1010, 'App', 'sign_up', 'Sign up', NULL),
(1011, 'App', 'cart_list', 'Cart List', 'Danh sách giỏ hàng '),
(1012, 'App', 'new_user', 'New User', NULL),
(1013, 'App', 'terms_and_conditions', 'Terms and Conditions', NULL),
(1014, 'App', 'version', 'Version', NULL),
(1015, 'App', 'confirm_new_password', 'Confirm New Password', 'Xác nhận mật khẩu mới'),
(1016, 'App', 'no_orders_found', 'No Orders Found', NULL),
(1017, 'App', 'order_history', 'Order History', NULL),
(1018, 'App', 'order_details', 'Order Details', NULL),
(1019, 'App', 'order_products', 'Order Products', NULL),
(1020, 'App', 'offer_products', 'Offer Products', NULL),
(1021, 'App', 'time', 'Time', NULL),
(1022, 'App', 'payment_type', 'Payment Type', NULL),
(1023, 'App', 'order_address', 'Order Address', NULL),
(1025, 'Web', 'order_address', 'Order Address', NULL),
(1026, 'App', 'home', 'Home', NULL),
(1027, 'App', 'first_name', 'First Name', 'first_name'),
(1028, 'App', 'last_name', 'Last Name', NULL),
(1029, 'App', 'email', 'Email', 'Email (thư điện tử)'),
(1030, 'App', 'phone', 'Phone', NULL),
(1031, 'App', 'password', 'Password', NULL),
(1032, 'App', 'confirm_password', 'Confirm Password', 'Xác nhận mật khẩu'),
(1033, 'App', 'logout', 'Logout', NULL),
(1034, 'App', 'login', 'Login', NULL),
(1036, 'App', 'about_us', 'About Us', ' About Us'),
(1037, 'App', 'change_langauage', 'Change Language', 'Thay đổi ngôn ngữ'),
(1038, 'App', 'forgot_password', 'Forgot Password', 'Quên mật khẩu'),
(1039, 'App', 'address', 'Address', 'địa chỉ'),
(1040, 'App', 'fax', 'Fax', 'Fax '),
(1041, 'App', 'current_password', 'Current Password', 'Mật khẩu hiện tại'),
(1042, 'App', 'new_password', 'New Password', NULL),
(1043, 'App', 'change', 'Change', 'thay đổi'),
(1044, 'App', 'delivered', 'Delivered', 'đã giao'),
(1045, 'App', 'cancelled', 'Cancelled', 'đã hủy'),
(1046, 'App', 'processing', 'Processing', 'đang chế  biến'),
(1047, 'App', 'addons', 'Add-ons', 'Gia vị bổ sung '),
(1048, 'App', 'offers', 'Offers', 'Khuyến mãi'),
(1049, 'App', 'cost', 'Cost', 'giá thành'),
(1050, 'App', 'order_no', 'Order No', NULL),
(1051, 'App', 'points_redeemed', 'Points redeemed', NULL),
(1052, 'App', 'no_of_points_redeemed', 'No of points redeemed', NULL),
(1053, 'App', 'order_status', 'Order status', NULL),
(1055, 'Web', 'first name', 'First name', 'First name'),
(1056, 'Web', 'Incorrect Login', 'Incorrect Login', NULL),
(1057, 'Web', 'profile_picture', 'Profile picture', NULL),
(1058, 'Web', 'please_upload_profile_picture', 'Please upload profile picture', NULL),
(1059, 'Web', 'please_upload_valid_profile_picture', 'Please upload valid profile picture', NULL),
(1060, 'Web', 'phone_number_required', 'Phone number required', NULL),
(1061, 'Web', 'min_length_should_be 6', 'Min length should be 6', NULL),
(1062, 'Web', 'Activation Email Sent', 'Activation Email Sent', 'Email kích hoạt đã được gửi'),
(1063, 'Web', 'points_for_registration', 'Points for registration', NULL),
(1064, 'Web', 'points_for_referred_user', 'Points for referred user', NULL),
(1065, 'Web', 'points_for_referred_by_user', 'Points for referred by user', NULL),
(1066, 'Web', 'earning_points_conversion_settings', 'Earning Points Conversion Settings', 'Cài đặt chuyển đổi kiếm điểm '),
(1067, 'Web', 'add-ons', 'Add-ons', 'Gia vị bổ sung '),
(1068, 'Web', 'points_earned_for_first_order', 'Points earned for first order', NULL),
(1069, 'Web', 'delivery_address', 'Delivery address', 'Địa chỉ giao hàng'),
(1070, 'Web', 'payment_method', 'Payment method', NULL),
(1071, 'Web', 'add_ons', 'Add ons', 'Thêm tiện ích'),
(1072, 'Web', 'points_returned_for_cancelled_an_item_order', 'Points returned for cancelled an item order', NULL),
(1073, 'Web', 'ios_url|xss_clean', 'Ios url|xss clean', NULL),
(1074, 'Web', 'android_url|xss_clean', 'Android url|xss clean', 'Url Android | xss clean'),
(1075, 'Web', '	points_for_referring_person', 'points for referring person', 'điểm cho người giới thiệu '),
(1076, 'Web', '	points_for_referred_person', 'points for referred person', 'điểm cho người được giới thiệu '),
(1077, 'Web', 'login success', 'Login success', NULL),
(1078, 'Web', 'No Orders', 'No Orders', NULL),
(1079, 'Web', 'Order Details', 'Order Details', 'Chi tiết đơn hàng'),
(1080, 'Web', 'Address deleted successfully', 'Address deleted successfully', 'Đã xóa địa chỉ thành công'),
(1081, 'Web', 'Address added successfully', 'Address added successfully', 'Đã thêm địa chỉ thành công'),
(1082, 'App', 'add_address', 'Add address', 'Thêm địa chỉ'),
(1083, 'App', 'save', 'Save', NULL),
(1084, 'App', 'pincode', 'Pincode', NULL),
(1085, 'App', 'locality', 'Locality', NULL),
(1086, 'App', 'city', 'City', 'Thành phố '),
(1087, 'App', 'landmark', 'Landmark', 'Mô tả chi tiết địa chỉ'),
(1088, 'App', 'street', 'Street', 'Địa chỉ'),
(1089, 'App', 'cancel', 'Cancel', 'hủy bỏ'),
(1090, 'App', 'delete', 'Delete', 'xóa'),
(1091, 'App', 'do_you_want_to_delete_address', 'Do you want to delete address', 'Bạn có muốn xóa địa chỉ không'),
(1092, 'App', 'order_offers', 'Order Offers', NULL),
(1093, 'App', 'user_profile', 'User Profile', NULL),
(1094, 'App', 'house_no', 'House No', 'Số nhà'),
(1095, 'App', 'select_language', 'Select Language', NULL),
(1096, 'App', 'change_language', 'Change Language', 'Thay đổi ngôn ngữ'),
(1097, 'Web', 'Lang Key', 'Lang Key', NULL),
(1098, 'Web', 'max_size', 'Max size', NULL),
(1099, 'Web', 'home_slider_images', 'Home slider images', NULL),
(1100, 'App', 'menu', 'Menu', NULL),
(1101, 'Web', 'greek', 'Greek', 'Tiếng Hy Lạp'),
(1102, 'Web', 'forgot password email not found', 'Forgot password email not found', 'Email quên mật khẩu không tìm thấy'),
(1103, 'Web', 'your_contact_request_sent_successfully', 'Your contact request sent successfully', NULL),
(1104, 'Web', '	points_for_referred_by_anyone', 'points for referred by anyone', 'điểm cho bất kỳ ai được giới thiệu '),
(1105, 'Web', 'have_account', 'Have account', NULL),
(1106, 'Web', 'pusher_notification_settings', 'Pusher Notification Settings', NULL),
(1107, 'Web', 'APP_ID', 'APP ID', 'ID APP'),
(1108, 'Web', 'KEY', 'KEY', NULL),
(1109, 'Web', 'SECRET', 'SECRET', NULL),
(1110, 'Web', 'pusher_app_id_required', 'Pusher app id required', NULL),
(1111, 'Web', 'pusher_key_required', 'Pusher key required', NULL),
(1112, 'Web', 'pusher_secret_required', 'Pusher secret required', NULL),
(1113, 'Web', 'pusher_notifications', 'Pusher notifications', NULL),
(1114, 'Web', 'new_order', 'New order', 'Đơn hàng mới'),
(1115, 'Web', 'you_have_new_order_would_you_like_to_view', 'You have new order would you like to view', NULL),
(1116, 'Web', 'Offer Products', 'Offer Products', NULL),
(1117, 'Web', 'portuguese', 'Portuguese', NULL),
(1118, 'Web', 'earning points conversion settings', 'Earning points conversion settings', 'Cài đặt chuyển đổi kiếm điểm'),
(1119, 'Web', 'registration completed successfully activation email sent', 'Registration completed successfully activation email sent', NULL),
(1120, 'Web', 'Account is inactive', 'Account is inactive', 'Tài khoản không hoạt động'),
(1121, 'App', 'no_items_in_cart', 'No items in cart', NULL),
(1122, 'App', 'add_items', 'Add Items', 'Thêm mục'),
(1123, 'App', 'offer_details', 'Offer Details', NULL),
(1124, 'App', 'order', 'Order', 'Đặt Hàng'),
(1125, 'Web', 'please_select_llanguage', 'Please select llanguage', NULL),
(1126, 'Web', 'please_select_language', 'Please select language', NULL),
(1127, 'Web', 'are_you_sure_to_delete_address', 'Are you sure to delete address', 'Bạn có chắc chắn xóa địa chỉ không'),
(1128, 'App', 'sub_total', 'Sub total', NULL),
(1129, 'App', 'delivery_fee', 'Delivery fee', 'Phí giao hàng'),
(1130, 'App', 'total', 'Total', NULL),
(1131, 'App', 'payment', 'Payment', NULL),
(1132, 'App', 'online', 'Online', NULL),
(1133, 'App', 'cash', 'Cash', 'tiền mặt'),
(1134, 'App', 'proceed', 'Proceed', NULL),
(1135, 'App', 'cost_details', 'Cost Details', 'Chi tiết Chi phí'),
(1136, 'App', 'place_order', 'Place Order', NULL),
(1137, 'App', 'phone_number', 'Phone number', NULL),
(1138, 'App', 'date', 'Date', 'ngày tháng'),
(1139, 'App', 'select_address', 'Select Address', NULL),
(1140, 'App', 'no_address_added', 'No address added', NULL),
(1141, 'App', 'redeem_points', 'Redeem Points', NULL),
(1142, 'App', 'add_new_address', 'Add New Address', 'Thêm địa chỉ mới'),
(1143, 'App', 'would_you_like_to_reedeem_points', 'Would you like to redeem points', NULL),
(1144, 'App', 'points_value', 'Points Value', NULL),
(1145, 'Web', 'logged in successfully', 'Logged in successfully', NULL),
(1146, 'Web', 'Service Cities', 'Service Cities', NULL),
(1147, 'Web', 'Thanks for your rating', 'Thanks for your rating', NULL),
(1148, 'Web', 'Thanks for updated rating', 'Thanks for updated rating', NULL),
(1149, 'App', 'loading', 'Loading', NULL),
(1150, 'App', 'item_added_to_cart', 'Item added to cart', NULL),
(1151, 'App', 'already_added_to_cart', 'Already added to cart', 'Đã được thêm vào giỏ hàng'),
(1152, 'App', 'specify_date', 'Specify Date', NULL),
(1153, 'App', 'our_location', 'Our Location', NULL),
(1154, 'App', 'points', 'Points', NULL),
(1155, 'App', 'my_points', 'My points', NULL),
(1156, 'App', 'rate_this_order', 'Rate this order', NULL),
(1157, 'Web', 'registration completed successfully password sent to email', 'Registration completed successfully password sent to email', NULL),
(1158, 'App', 'done', 'Done', 'Hoàn thành'),
(1159, 'App', 'phone_required', 'Phone required', NULL),
(1160, 'App', 'payment_status', 'Payment status', NULL),
(1161, 'App', 'thanks_for_your_order', 'Thanks for your order', NULL),
(1162, 'App', 'your_order_of', 'Your order of', NULL),
(1163, 'App', 'has_been_successfully_booked', 'has been successfully booked', NULL),
(1164, 'Web', 'kitchen_managers', 'Kitchen Managers', 'Quản bếp'),
(1165, 'Web', 'add_record', 'Add record', 'Thêm bản ghi'),
(1166, 'Web', 'add_kitchen_manager', 'Add Kitchen Manager', 'Thêm Quản lý bếp'),
(1167, 'Web', 'user_already_exists', 'User already exists', NULL),
(1168, 'Web', 'edit_kitchen_manager', 'Edit Kitchen Manager', 'Chỉnh sửa Quản lý bếp (edit_kitchen_manager)'),
(1169, 'Web', 'delivery_managers', 'Delivery Managers', 'Người quản lý giao hàng'),
(1170, 'Web', 'add_delivery_manager', 'Add Delivery Manager', 'Thêm Trình quản lý phân phối'),
(1171, 'Web', 'user_record_created_successfully', 'User record created successfully', NULL),
(1172, 'Web', 'edit_delivery_manager', 'Edit Delivery Manager', 'Chỉnh sửa Trình quản lý phân phối'),
(1173, 'Web', 'assigned_cities', 'Assigned cities', 'Các thành phố được chỉ định (phân_công_phục)'),
(1174, 'Web', 'message_to_customer', 'Message to customer', 'Nhắn tin đến người dùng'),
(1175, 'Web', 'kitchen_manager', 'Kitchen Manager', 'Quản bếp'),
(1176, 'Web', 'delivery_manager', 'Delivery Manager', 'Người quản lý giao hàng'),
(1177, 'Web', 'kitchen_manager_dashboard', 'Kitchen Manager Dashboard', NULL),
(1178, 'Web', 'kitchen_manager_has_been_sent_an_order_to_delivery_manager', 'Kitchen Manager has been sent an Order to Delivery Manager', NULL),
(1179, 'Web', 'would_you_like_to_view', 'Would you like to view', NULL),
(1180, 'Web', 'please_select_delivery_manager', 'Please select delivery manager', NULL),
(1181, 'Web', 'delivery_manager_dashboard', 'Delivery Manager Dashboard', 'Trang tổng quan của Trình quản lý phân phối'),
(1182, 'Web', 'delivery_manager_has_been_updated_an_order_as_delivered', 'Delivery Manager has been updated an order as delivered', 'Trình quản lý giao hàng đã được cập nhật một đơn đặt hàng là đã được giao'),
(1183, 'Web', 'kitchen_manager_has_been_sent_an_order', 'Kitchen Manager has been sent an order', NULL),
(1184, 'Web', 'contact_details', 'Contact details', 'Chi tiết liên hệ'),
(1185, 'Web', 'visit_us', 'Visit us', NULL),
(1186, 'Web', 'email_us', 'Email us', 'Gửi email cho chúng tôi'),
(1187, 'Web', 'call_us', 'Call us', 'Gọi cho chúng tôi'),
(1188, 'Web', 'links', 'Links', NULL),
(1189, 'Web', 'site_map', 'Site map', NULL),
(1190, 'Web', 'hot_and_spicy', 'Hot & Spicy', NULL),
(1191, 'Web', 'delicious_food', 'DELICIOUS FOOD', 'MÓN NGON'),
(1192, 'Web', 'our_menu', 'Our Menu', NULL),
(1193, 'Web', 'get_connected_with_us', 'Get connected with us', 'Được kết nối với chúng tôi'),
(1194, 'Web', 'opening_time', 'OPENING TIME', NULL),
(1195, 'Web', 'send', 'Send', NULL),
(1196, 'Web', 'invalid_email', 'Invalid email', NULL),
(1197, 'Web', 'view_menu_categories', 'View menu categories', NULL),
(1198, 'Web', 'add_menu_category', 'Add menu category', 'Thêm danh mục menu'),
(1199, 'Web', 'category_name_required', 'Category name required', 'Tên danh mục bắt buộc'),
(1200, 'Web', 'edit_menu_category', 'Edit menu category', 'Chỉnh sửa danh mục menu (edit_menu_category)'),
(1201, 'Web', 'menu_categories', 'Menu categories', NULL),
(1202, 'Web', 'select_menu_category', 'Select menu category', NULL),
(1203, 'Web', 'menu_category', 'Menu category', NULL),
(1204, 'Web', 'menu_category_required', 'Menu category required', NULL),
(1205, 'Web', 'your orders', 'Your orders', NULL),
(1206, 'Web', 'my address', 'My address', 'Địa chỉ của tôi'),
(1207, 'Web', 'No service localities', 'No service localities', NULL),
(1208, 'Web', 'street_name_required', 'Street name required', NULL),
(1209, 'Web', 'how_it_works', 'How it works', 'Cách thức hoạt động'),
(1210, 'Web', 'privacy_and_policy', 'Privacy and policy', NULL),
(1211, 'Web', 'terms_conditions', 'Terms conditions', NULL),
(1212, 'Web', 'privacy_policy', 'Privacy policy', NULL),
(1213, 'Web', 'site_url', 'Site url', NULL),
(1214, 'Web', 'menu_image_url', 'Menu image url', NULL),
(1215, 'Web', 'item_image_url', 'Item image url', NULL),
(1216, 'Web', 'addon_image_url', 'Addon image url', 'addon_image_url'),
(1217, 'Web', 'offer_image_url', 'Offer image url', NULL),
(1218, 'Web', 'site_url_required', 'Site url required', NULL),
(1219, 'Web', 'menu_image_url_required', 'Menu image url required', NULL),
(1220, 'Web', 'item_image_url_required', 'Item image url required', NULL),
(1221, 'Web', 'addon_image_url_required', 'Addon image url required', 'addon_image_url_required'),
(1222, 'Web', 'offer_image_url_required', 'Offer image url required', NULL),
(1223, 'Web', 'service_url', 'Service url', NULL),
(1224, 'Web', 'menu_image_thumb_url', 'Menu image thumb url', NULL),
(1225, 'Web', 'item_image_thumb_url', 'Item image thumb url', NULL),
(1226, 'Web', 'addon_image_thumb_url', 'Addon image thumb url', 'addon_image_thumb_url'),
(1227, 'Web', 'offer_image_thumb_url', 'Offer image thumb url', NULL),
(1228, 'Web', 'tinify_settings', 'Tinify settings', NULL),
(1229, 'Web', 'use_tinify', 'Use tinify', NULL),
(1230, 'Web', 'tinify_API_KEY', 'Tinify API KEY', NULL),
(1231, 'Web', 'download_app', 'Download app', 'Tải xuống ứng dụng'),
(1232, 'Web', 'Send message', 'Send message', NULL),
(1233, 'Web', 'enable_redeeming', 'Enable redeeming', 'Bật đổi quà'),
(1234, 'Web', 'faqs_categories', 'Faqs categories', 'Danh mục câu hỏi thường gặp '),
(1235, 'Web', 'add_faq_category', 'Add faq category', 'Thêm danh mục câu hỏi thường gặp'),
(1236, 'Web', 'faq_category_required', 'Faq category required', 'Yêu cầu danh mục câu hỏi '),
(1237, 'Web', 'edit_faq_category', 'Edit faq category', 'Chỉnh sửa danh mục câu hỏi thường gặp'),
(1238, 'Web', 'select_category', 'Select category', NULL),
(1239, 'Web', 'category_required', 'Category required', 'Danh mục bắt buộc'),
(1240, 'Web', 'no_categories_available', 'No categories available', NULL),
(1241, 'Web', 'search_dish', 'Search dish', 'Tìm Kiếm'),
(1242, 'Web', 'order_online', 'Order online', NULL),
(1243, 'Web', 'home_delivery', 'Home delivery', 'Giao Hàng Tận Nhà'),
(1244, 'Web', 'get_in_touch', 'Get in touch', 'Liên hệ'),
(1245, 'Web', 'for_enquiries_or_suggestions', 'For enquiries or suggestions', 'Đối với các thắc mắc hoặc đề xuất'),
(1246, 'Web', 'send_message', 'Send message', NULL),
(1247, 'Web', 'popular_items', 'Popular items', NULL),
(1248, 'Web', 'no_offers_available', 'No offers available', NULL),
(1249, 'Web', 'home_page_site_logo', 'Home page site logo', NULL),
(1250, 'Web', 'other_pages_site_logo', 'Other pages site logo', NULL),
(1251, 'Web', 'home_page_site_logo_file_is_not_valid', 'Home page site logo file is not valid', NULL),
(1252, 'Web', 'inner_pages_site_logo_file_is_not_valid', 'Inner pages site logo file is not valid', NULL),
(1253, 'Web', 'or_signup_with', 'Or signup with', NULL),
(1254, 'Web', 'forgot_password?', 'Forgot password?', 'Quên mật khẩu?'),
(1255, 'Web', 'or_login_through', 'Or login through', NULL),
(1256, 'Web', 'or_signup_through', 'Or signup through', NULL),
(1257, 'Web', 'no_faqs_available', 'No faqs available', NULL),
(1258, 'Web', '\n                            language_required ', '\n                            language required ', 'ngôn ngữ bắt buộc'),
(1259, 'Web', '\n                            language_code_required ', '\n                            language code required ', 'mã ngôn ngữ bắt buộc'),
(1260, 'Web', 'would_you_like_to_use_tinify_settings_for_images?', 'Would you like to use tinify settings for images?', NULL),
(1261, 'Web', 'would_you_like_to_use_tinify_for_image_compression?', 'Would you like to use tinify for image compression?', NULL),
(1262, 'Web', 'would_you_like_to_use_tinify_for_create_image_thumbnails?', 'Would you like to use tinify for create image thumbnails?', NULL),
(1263, 'Web', 'tinify_used_for', 'Tinify used for', NULL),
(1264, 'Web', 'images_in_current_month', 'Images in current month', NULL),
(1265, 'Web', 'is_popular_item', 'Is popular item', NULL),
(1266, 'Web', 'is_it_popular_item', 'Is it popular item', NULL),
(1267, 'Web', 'item_price', 'Item price', NULL),
(1268, 'Web', 'item_price_required', 'Item price required', NULL),
(1269, 'Web', 'my_addresses', 'My addresses', 'Địa chỉ của tôi'),
(1270, 'Web', 'offer_price', 'Offer price', NULL),
(1271, 'Web', 'default', 'Default', 'mặc định '),
(1272, 'Web', 'select_city', 'Select city', NULL),
(1273, 'Web', 'offer_price_required', 'Offer price required', NULL),
(1274, 'Web', 'address_added_successfully', 'Address added successfully', 'Đã thêm địa chỉ thành công'),
(1275, 'Web', 'payment_details', 'Payment details', NULL),
(1276, 'Web', 'items_total', 'Items total', NULL),
(1277, 'Web', 'delivery_charges', 'Delivery charges', 'Phí giao hàng'),
(1278, 'Web', 'payment_mode', 'Payment mode', NULL),
(1279, 'Web', 'delivery_details', 'Delivery details', 'Chi tiết giao hàng'),
(1280, 'Web', 'balance', 'Balance', 'số dư'),
(1281, 'Web', 'delete_address', 'Delete address', 'Xóa địa chỉ '),
(1282, 'Web', 'default_address', 'Default address', 'Địa chỉ mặc định '),
(1283, 'Web', 'default_address_updated', 'Default address updated', 'Đã cập nhật địa chỉ mặc định'),
(1284, 'Web', 'home_page_caption', 'Home page caption', NULL),
(1285, 'Web', 'home_page_tagline', 'Home page tagline', NULL),
(1286, 'Web', 'home_page_caption_required', 'Home page caption required', NULL),
(1287, 'Web', 'home_page_image', 'Home page image', NULL),
(1288, 'Web', 'home_page_image_file_is_not_valid', 'Home page image file is not valid', NULL),
(1289, 'Web', 'special_food_items', 'Special food items', 'Món ăn đặc biệt'),
(1290, 'Web', 'we_have_the_glory_beginning_in_restaurant_business', 'We have the glory beginning in restaurant business', '(≖_≖ ) ┻━┻ ︵ヽ(`▭´)ﾉ︵﻿ ┻━┻(ㆆ_ㆆ)(╥﹏╥)'),
(1291, 'Web', 'default_address_set_successfully', 'Default address set successfully', 'Đã đặt thành công địa chỉ mặc định'),
(1292, 'Web', 'choose', 'Choose', 'Chọn'),
(1293, 'Web', 'home_page_settings', 'Home page settings', NULL),
(1294, 'Web', 'load_more', 'Load more', NULL),
(1295, 'Web', 'available_for_android_and_ios', 'Available for android and ios', 'Có sẵn cho android và ios '),
(1296, 'Web', 'order_faster_with_mobile_app', 'Order faster with mobile app', NULL),
(1297, 'Web', 'clean_and_minimal_interface', 'Clean and minimal interface', 'Giao diện gọn gàng và tối giản'),
(1298, 'Web', 'enjoy_the_native_app_experience', 'Enjoy the native app experience', 'Tận hưởng trải nghiệm ứng dụng gốc'),
(1299, 'Web', 'seo_settings', 'Seo settings', NULL),
(1300, 'Web', 'meta_keyword', 'Meta keyword', NULL),
(1301, 'Web', 'google_analytics', 'Google analytics', 'Google Analytics'),
(1302, 'Web', 'your_cart', 'Your cart', 'Giỏ Hàng'),
(1303, 'Web', 'checkout', 'Checkout', 'thanh toán'),
(1304, 'Web', 'view', 'View', NULL),
(1305, 'Web', 'customize', 'Customize', 'tùy chỉnh'),
(1306, 'Web', 'select_delivery_address', 'Select delivery address', NULL),
(1307, 'Web', 'we_are_the_world_class_food_providers_with_the_highest_quality_of_food_services', 'We are the world class food providers with the highest quality of food services', NULL),
(1308, 'Web', 'deliver_to_this_address', 'Deliver to this address', 'Gửi đến địa chỉ này'),
(1309, 'Web', 'would_you_like_to_redeem_your_earned_points?', 'Would you like to redeem your earned points?', NULL),
(1310, 'Web', 'you_have_20_points', 'You have 20 points', NULL),
(1311, 'Web', 'you_have_', 'You have ', NULL),
(1312, 'Web', 'redeem', 'Redeem', NULL),
(1313, 'Web', 'continue', 'Continue', 'Tiếp tục'),
(1314, 'Web', 'no_items_in_your_cart', 'No items in your cart', 'Không có hàng trong giỏ'),
(1315, 'Web', 'please_provide_delivery_address', 'Please provide delivery address', NULL),
(1316, 'Web', 'please_select_payment_method', 'Please select payment method', NULL),
(1317, 'Web', 'details', 'Details', 'Chi tiết'),
(1318, 'Web', 'are_you_sure_to_delete_address?', 'Are you sure to delete address?', 'Bạn có chắc chắn muốn xóa địa chỉ? '),
(1319, 'Web', 'are_you_sure_to_make_this_address_as_your_default_address?', 'Are you sure to make this address as your default address?', 'Bạn có chắc chắn đặt địa chỉ này làm địa chỉ mặc định của mình không?'),
(1320, 'Web', 'are_you_sure_to_change_this_address_as_your_default_address?', 'Are you sure to change this address as your default address?', 'Bạn có chắc chắn thay đổi địa chỉ này làm địa chỉ mặc định của mình không?'),
(1321, 'Web', 'are_you_sure_to_set_this_address_as_your_default_address?', 'Are you sure to set this address as your default address?', 'Bạn có chắc chắn đặt địa chỉ này làm địa chỉ mặc định của mình không?'),
(1322, 'Web', 'order_successful', 'Order successful', NULL),
(1323, 'Web', 'your_order_no_is', 'Your order no is', NULL),
(1324, 'Web', 'you_will_get', 'You will get', NULL),
(1325, 'Web', 'points_if_this_order_is_delivered_to_you_successfully', 'Points if this order is delivered to you successfully', NULL),
(1326, 'Web', 'admin_has_been_sent_an_order', 'Admin has been sent an order', 'Quản trị viên đã được gửi một đơn đặt hàng'),
(1327, 'Web', 'delivery_manager_has_been_updated_an_order_status_as_delivered', 'Delivery manager has been updated an order status as delivered', 'Người quản lý giao hàng đã được cập nhật trạng thái đơn hàng là đã giao'),
(1328, 'Web', 'please_select_valid_dates', 'Please select valid dates', NULL),
(1329, 'Web', 'ordered_online', 'Ordered online', 'Đặt Hàng Trực Tuyến'),
(1330, 'Web', 'dishes_served', 'Dishes served', 'Các món ăn được phục vụ'),
(1331, 'Web', 'home_delivered', 'Home delivered', NULL),
(1332, 'Web', 'search', 'Search', 'Tìm Kiếm'),
(1333, 'Web', 'you_can_redeem_maximum_of_', 'You can redeem maximum of ', NULL),
(1334, 'Web', 'documentation', 'Documentation', 'Tài liệu '),
(1335, 'Web', 'Activation Email Sent. Please check your inbox or spam', 'Activation Email Sent. Please check your inbox or spam', 'Đã gửi Email kích hoạt. Vui lòng kiểm tra hộp thư đến hoặc thư rác của bạn'),
(1336, 'Web', 'delivered_date', 'Delivered date', 'đã giao'),
(1337, 'Web', 'Fresh food', 'Fresh food', 'Thực phẩm tươi sống'),
(1338, 'Web', 'experienced chefs', 'Experienced chefs', 'Kinh nghiệm đầu bếp'),
(1339, 'Web', 'Accepted_Payments', 'Accepted Payments', 'Các khoản thanh toán được chấp nhận (Accepted_Payments)'),
(1340, 'Web', 'For Android', 'For Android', 'Đối với Android'),
(1341, 'Web', 'Visit Playstore Store', 'Visit Playstore Store', NULL),
(1342, 'Web', 'For IOS', 'For IOS', 'Đối với IOS'),
(1343, 'Web', 'Visit Apple Store', 'Visit Apple Store', NULL),
(1344, 'Web', 'CI_VERSION', 'CI VERSION', 'PHIÊN BẢN CI'),
(1345, 'Web', 'contact_map', 'Contact map', 'Bản đồ liên hệ'),
(1346, 'Web', 'contact_map_script', 'Contact map script', 'Tập lệnh bản đồ liên hệ'),
(1347, 'Web', 'vn', 'vn', ''),
(1348, 'Web', 'vit_nam', 'Vit nam', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cr_language_codes`
--

CREATE TABLE `cr_language_codes` (
  `code_id` int(11) NOT NULL,
  `language` varchar(20) CHARACTER SET latin1 NOT NULL,
  `code` varchar(10) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cr_language_codes`
--

INSERT INTO `cr_language_codes` (`code_id`, `language`, `code`) VALUES
(1, 'english', 'en'),
(16, 'vit_nam', 'Vi?t Nam');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cr_login_attempts`
--

CREATE TABLE `cr_login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cr_loyality_points`
--

CREATE TABLE `cr_loyality_points` (
  `lp_id` int(11) NOT NULL,
  `points_enabled` enum('Yes','No') NOT NULL DEFAULT 'No',
  `points_label_redeem_placeholder` varchar(50) NOT NULL,
  `points_label_earn` varchar(50) NOT NULL,
  `points_label_template` varchar(50) NOT NULL,
  `maximum_earning_points_for_customer` varchar(50) NOT NULL,
  `earning_point` varchar(50) NOT NULL,
  `earning_point_value` decimal(10,2) NOT NULL,
  `redeeming_point` varchar(50) NOT NULL,
  `redeeming_point_value` decimal(10,2) NOT NULL,
  `disabled_redeeming` enum('Yes','No') NOT NULL DEFAULT 'No',
  `reward_points_for_account_signup` varchar(20) NOT NULL,
  `points_for_restaurant_review` varchar(20) NOT NULL,
  `points_for_first_order` varchar(20) NOT NULL,
  `points_for_sharing_app` varchar(20) NOT NULL,
  `minimum_points_can_be_used` varchar(20) NOT NULL,
  `maximum_points_can_be_used` varchar(20) NOT NULL,
  `enable_redeeming` enum('Yes','No') NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cr_loyality_points`
--

INSERT INTO `cr_loyality_points` (`lp_id`, `points_enabled`, `points_label_redeem_placeholder`, `points_label_earn`, `points_label_template`, `maximum_earning_points_for_customer`, `earning_point`, `earning_point_value`, `redeeming_point`, `redeeming_point_value`, `disabled_redeeming`, `reward_points_for_account_signup`, `points_for_restaurant_review`, `points_for_first_order`, `points_for_sharing_app`, `minimum_points_can_be_used`, `maximum_points_can_be_used`, `enable_redeeming`) VALUES
(1, 'Yes', 'subaru Duck', 'Points', 'You earned {points} points', '20', '10', '2.00', '10', '2.00', 'No', '20', '0', '30', '20', '20', '30', 'Yes');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cr_menu`
--

CREATE TABLE `cr_menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(256) DEFAULT NULL,
  `punch_line` varchar(256) DEFAULT NULL,
  `description` varchar(512) DEFAULT NULL,
  `menu_image_name` varchar(50) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cr_menu`
--

INSERT INTO `cr_menu` (`menu_id`, `menu_name`, `punch_line`, `description`, `menu_image_name`, `status`) VALUES
(5, 'Soups', 'Favourite Soups', 'Here You  will find all sorts of soups', 'menu_5.jpg', 'Active'),
(8, 'Khai Vị', 'Khai Vị', 'Khai Vị', 'menu_8.jpg', 'Active'),
(10, ' Cà ri', ' Cà ri', '\r\nCà ri', 'menu_10.jpg', 'Active'),
(11, 'Salads', 'Salads', 'All types of Salads', 'menu_11.jpg', 'Active'),
(13, 'Đồ uống', 'Đồ uống', 'Đồ uống', 'menu_13.jpg', 'Active'),
(14, 'Tráng Miệng', 'Tráng Miệng Lạnh', 'Tráng Miệng Lạnh', 'menu_14.jpg', 'Active'),
(18, 'Đồ Nướng', 'Đồ Nướng', 'Đồ Nướng', 'menu_18.jpg', 'Active'),
(21, 'Pizzas', 'Pizza', 'Pizza\'s', 'menu_21.jpg', 'Active'),
(28, 'Burger', 'Burgers', 'oh! what a tasty', 'menu_28.jpg', 'Active'),
(35, 'Sandwiches', 'Sandwiches', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ', 'menu_35.jpg', 'Active'),
(41, 'Soft Drinks', 'Soft Drinks', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'menu_41.jpg', 'Inactive'),
(42, 'Bánh', 'Bánh', 'Bánh', 'menu_42.jpg', 'Active'),
(43, 'Bún', 'Bún', 'Bún', 'menu_43.jpg', 'Active'),
(44, 'Cơm', 'cơm', 'tinh túy của châu á', 'menu_44.jpg', 'Active'),
(45, 'Lẩu', 'Lẩu', 'lẩu', 'menu_45.jpg', 'Active');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cr_offers`
--

CREATE TABLE `cr_offers` (
  `offer_id` int(11) NOT NULL,
  `offer_name` varchar(50) DEFAULT NULL,
  `offer_cost` decimal(10,2) DEFAULT NULL,
  `offer_start_date` date DEFAULT NULL,
  `offer_valid_date` date DEFAULT NULL,
  `offer_conditions` varchar(500) DEFAULT NULL,
  `no_of_products` int(11) DEFAULT NULL,
  `offer_image_name` varchar(50) DEFAULT NULL,
  `date_of_offer_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `product_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cr_offers`
--

INSERT INTO `cr_offers` (`offer_id`, `offer_name`, `offer_cost`, `offer_start_date`, `offer_valid_date`, `offer_conditions`, `no_of_products`, `offer_image_name`, `date_of_offer_created`, `status`, `product_id`) VALUES
(60, 'Special Pizzas offer', '454.00', '2021-10-31', '2021-11-21', 'sdf sfsdfd', 3, NULL, '2021-11-29 03:02:55', 'Active', 'hscOrETUl7TdKmWc'),
(66, 'Diwali Offer', '90.00', '2021-10-31', '2021-12-30', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 2, 'offer_66.png', '2021-11-29 03:01:56', 'Active', 'MRsgtO7aZ2tNIKdZ'),
(67, 'VN vô địch', '50.00', '2021-11-29', '2021-12-12', '...', 2, 'offer_67.jpg', '2021-11-30 03:01:28', 'Active', 'aaGbMmMUVIzk4vzW');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cr_offer_products`
--

CREATE TABLE `cr_offer_products` (
  `offer_product_id` int(11) NOT NULL,
  `offer_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(50) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `item_name` varchar(50) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cr_offer_products`
--

INSERT INTO `cr_offer_products` (`offer_product_id`, `offer_id`, `menu_id`, `menu_name`, `item_id`, `item_name`, `quantity`) VALUES
(975, 66, 41, 'Soft Drinks', 856785, 'Red Bull', 1),
(976, 66, 8, 'Starters', 18, 'Baby Corn Manchurian', 2),
(977, 60, 21, 'Pizzas', 856769, 'Barbeque Chicken', 1),
(978, 60, 21, 'Pizzas', 152, 'Country Special', 1),
(979, 60, 21, 'Pizzas', 856768, 'Fresh Veggie', 1),
(983, 67, 43, 'Bún', 0, '', 1),
(984, 67, 44, 'Cơm', 0, '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cr_options`
--

CREATE TABLE `cr_options` (
  `option_id` int(11) NOT NULL,
  `option_name` varchar(50) NOT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cr_options`
--

INSERT INTO `cr_options` (`option_id`, `option_name`, `status`) VALUES
(4, 'Large', 'Active'),
(9, 'Medium', 'Active'),
(14, 'Single', 'Active'),
(19, 'Family Pack', 'Active'),
(20, 'Jumbo Pack', 'Active'),
(21, 'Extra Large', 'Active'),
(37, 'Small', 'Active'),
(38, '500 ml', 'Active');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cr_orders`
--

CREATE TABLE `cr_orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_date` date DEFAULT NULL,
  `order_time` varchar(20) DEFAULT NULL,
  `total_cost` decimal(10,2) DEFAULT NULL,
  `delivery_fee` float(10,2) DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `house_no` varchar(50) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `landmark` varchar(200) DEFAULT NULL,
  `locality` varchar(200) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `pincode` varchar(20) DEFAULT NULL,
  `is_points_redeemed` enum('Yes','No') NOT NULL DEFAULT 'No',
  `no_of_points_redeemed` int(11) DEFAULT NULL,
  `points_value` float(10,2) DEFAULT NULL,
  `message` varchar(100) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('delivered','process','cancelled','new','out_to_deliver') NOT NULL DEFAULT 'new',
  `payment_type` enum('online','cashCard','cash') DEFAULT NULL,
  `payment_card` varchar(100) DEFAULT NULL,
  `payment_gateway` varchar(20) DEFAULT NULL,
  `no_of_items` int(11) NOT NULL,
  `paid_date` varchar(50) DEFAULT NULL,
  `paid_amount` decimal(10,2) DEFAULT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  `payer_id` varchar(50) DEFAULT NULL,
  `payer_email` varchar(50) DEFAULT NULL,
  `payer_name` varchar(50) DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT NULL,
  `date_updated` date DEFAULT NULL,
  `device_id` varchar(200) DEFAULT NULL,
  `rating_value` int(11) DEFAULT NULL,
  `is_admin_sent_to_km` enum('Yes','No') DEFAULT NULL,
  `km_id` int(11) DEFAULT NULL,
  `km_received_datetime` datetime DEFAULT NULL,
  `is_admin_sent_to_dm` enum('Yes','No') DEFAULT NULL,
  `is_km_sent_to_dm` enum('Yes','No') DEFAULT NULL,
  `sent_km_id` int(11) DEFAULT NULL,
  `dm_id` int(11) DEFAULT NULL,
  `dm_received_datetime` datetime DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `delivered_status` enum('admin','km','dm') DEFAULT NULL COMMENT 'Delivered Status updated by whom',
  `delivered_status_datetime` datetime DEFAULT NULL,
  `cancelled_status` enum('admin','km','dm') DEFAULT NULL COMMENT 'Cancelled Status updated by whom',
  `cancelled_status_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cr_orders`
--

INSERT INTO `cr_orders` (`order_id`, `user_id`, `order_date`, `order_time`, `total_cost`, `delivery_fee`, `customer_name`, `phone`, `house_no`, `street`, `landmark`, `locality`, `city`, `city_id`, `pincode`, `is_points_redeemed`, `no_of_points_redeemed`, `points_value`, `message`, `date_created`, `status`, `payment_type`, `payment_card`, `payment_gateway`, `no_of_items`, `paid_date`, `paid_amount`, `transaction_id`, `payer_id`, `payer_email`, `payer_name`, `payment_status`, `date_updated`, `device_id`, `rating_value`, `is_admin_sent_to_km`, `km_id`, `km_received_datetime`, `is_admin_sent_to_dm`, `is_km_sent_to_dm`, `sent_km_id`, `dm_id`, `dm_received_datetime`, `last_updated_by`, `last_updated`, `delivered_status`, `delivered_status_datetime`, `cancelled_status`, `cancelled_status_datetime`) VALUES
(266, 106, '2021-11-27', '21:26 PM', '58.00', 1.00, 'Thắng Phạm', '0769234431', '1111', 'đấy', 'địa chỉ đấy', 'quận bìu thế', 'Hồ Chí Minh', 531, '98961+5', 'No', NULL, NULL, '', '2021-11-27 14:26:37', 'process', 'cash', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-27', NULL, NULL, 'Yes', 107, '2021-11-29 09:57:29', NULL, NULL, NULL, NULL, NULL, 1, '2021-11-29 09:57:29', NULL, NULL, NULL, NULL),
(267, 106, '2021-11-29', '09:25 AM', '28.50', 1.00, 'Thắng Phạm', '0769234431', '1111', 'b r o f o o d', 'đâsdsa', 'Quốc Oai', 'Hà Nội', 555, '123456', 'No', NULL, NULL, 'hết hàng', '2021-11-29 02:25:07', 'out_to_deliver', 'cash', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-11-29 09:28:17', NULL, NULL, NULL, NULL),
(268, 106, '2021-11-29', '09:56 AM', '464.25', 1.00, 'Thắng Phạm', '0769234431', '1111', 'b r o f o o d', 'đâsdsa', 'Quốc Oai', 'Hà Nội', 555, '123456', 'No', NULL, NULL, NULL, '2021-11-29 02:56:51', 'new', 'cash', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(269, 109, '2021-11-29', '14:40 PM', '1588.00', 1.00, 'from the pát', '498949165161', 'ko cos nha', 'jungle', 'địa chỉ đấy', 'Quốc Oai', 'Hà Nội', 555, '123456', 'No', NULL, NULL, '', '2021-11-29 07:40:15', 'cancelled', 'cashCard', 'bidv', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-11-29 15:05:14', NULL, NULL, 'admin', '2021-11-29 15:05:14'),
(270, 109, '2021-11-29', '15:06 PM', '525.00', 1.00, 'from the pát', '498949165161', 'ko cos nha', 'jungle', 'địa chỉ đấy', 'Quốc Oai', 'Hà Nội', 555, '123456', 'No', NULL, NULL, '', '2021-11-29 08:06:44', 'delivered', 'cashCard', 'vietcombank', NULL, 4, '2021-11-29', '525.00', NULL, NULL, NULL, NULL, NULL, '2021-11-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-11-29 15:11:04', 'admin', '2021-11-29 15:11:04', NULL, NULL),
(271, 113, '2021-11-30', '14:12 PM', '4501.00', 1.00, 'umbral knight', '0365265058', '1111', 'b r o f o o d', 'địa chỉ đấy', 'Quốc Oai', 'Hà Nội', 555, '123456', 'No', NULL, NULL, 'ăn ít thôi', '2021-11-30 07:12:46', 'process', 'cashCard', 'bidv', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30', NULL, NULL, 'Yes', 107, '2021-11-30 14:13:40', NULL, NULL, NULL, NULL, NULL, 1, '2021-11-30 14:13:40', NULL, NULL, NULL, NULL),
(272, 112, '2021-11-30', '14:25 PM', '276.00', 1.00, 'test1 knight', '498949165161', '1111', 'trên cây', 'cau', 'no where', 'An Giang', 532, '123456', 'No', NULL, NULL, NULL, '2021-11-30 07:25:01', 'new', 'cashCard', 'techcombank', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(273, 109, '2021-11-30', '15:19 PM', '91.00', 1.00, 'from the pát', '498949165161', 'ko cos nha', 'jungle', 'địa chỉ đấy', 'Quốc Oai', 'Hà Nội', 555, '123456', 'No', NULL, NULL, '', '2021-11-30 08:19:16', 'out_to_deliver', 'cash', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30', NULL, NULL, 'Yes', 107, '2021-11-30 15:20:14', 'No', 'Yes', 107, 100, '2021-11-30 19:40:26', 107, '2021-11-30 19:40:26', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cr_order_addons`
--

CREATE TABLE `cr_order_addons` (
  `oa_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `addon_name` varchar(50) NOT NULL,
  `addon_image` varchar(50) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `final_cost` decimal(10,2) DEFAULT NULL,
  `common_id` int(10) NOT NULL,
  `is_deleted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cr_order_addons`
--

INSERT INTO `cr_order_addons` (`oa_id`, `order_id`, `item_id`, `addon_name`, `addon_image`, `price`, `quantity`, `final_cost`, `common_id`, `is_deleted`) VALUES
(16, 267, 856803, 'tương cà', 'addon_48.jpg', '15.00', 1, '15.00', 78, 0),
(17, 267, 856803, 'nước mắm', 'addon_49.jpg', '12.00', 1, '12.00', 78, 0),
(18, 267, 856803, 'tương ớt', 'addon_50.jpg', '0.25', 1, '0.25', 78, 0),
(19, 268, 856812, 'Hồ tiêu', 'addon_43.jpg', '15.00', 2, '30.00', 12, 0),
(20, 268, 856806, 'tương ớt', 'addon_50.jpg', '0.25', 1, '0.25', 30, 0),
(21, 269, 856809, '\"hành\" tây', 'addon_42.jpg', '10.00', 1, '10.00', 96, 0),
(22, 269, 856809, 'chanh ', 'addon_46.jpg', '10.00', 1, '10.00', 96, 0),
(23, 269, 856809, 'nước mắm', 'addon_49.jpg', '12.00', 1, '12.00', 96, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cr_order_offers`
--

CREATE TABLE `cr_order_offers` (
  `order_offer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `offer_id` int(11) NOT NULL,
  `offer_name` varchar(50) NOT NULL,
  `offer_cost` decimal(10,2) NOT NULL,
  `offer_quantity` int(11) NOT NULL,
  `offer_final_cost` decimal(10,2) NOT NULL,
  `offer_start_date` date NOT NULL,
  `offer_valid_date` date NOT NULL,
  `offer_conditions` varchar(100) NOT NULL,
  `no_of_products` int(11) NOT NULL,
  `offer_image_name` varchar(50) DEFAULT NULL,
  `is_deleted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cr_order_offer_products`
--

CREATE TABLE `cr_order_offer_products` (
  `order_offer_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `offer_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `item_name` varchar(100) NOT NULL,
  `item_quantity` varchar(10) NOT NULL,
  `is_deleted` int(11) NOT NULL,
  `common_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cr_order_products`
--

CREATE TABLE `cr_order_products` (
  `op_id` int(11) NOT NULL,
  `is_deleted` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `item_name` varchar(50) NOT NULL,
  `item_image_name` varchar(50) DEFAULT NULL,
  `size_id` varchar(20) NOT NULL COMMENT 'option_id of options table',
  `size_name` varchar(20) NOT NULL,
  `item_size_id` varchar(20) NOT NULL COMMENT 'item_option_id of item_options table',
  `size_price` varchar(20) DEFAULT NULL,
  `final_cost` decimal(10,2) DEFAULT NULL,
  `item_qty` int(11) NOT NULL,
  `item_cost` decimal(10,2) DEFAULT NULL,
  `common_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cr_order_products`
--

INSERT INTO `cr_order_products` (`op_id`, `is_deleted`, `order_id`, `item_id`, `menu_id`, `item_name`, `item_image_name`, `size_id`, `size_name`, `item_size_id`, `size_price`, `final_cost`, `item_qty`, `item_cost`, `common_id`) VALUES
(97, 0, 266, 856789, 21, 'pizzal ba gà', 'item_856789.jpg', '', '', '', '', '57.00', 1, '57.00', '69'),
(98, 0, 267, 856803, 44, 'Cơm Tấm', 'item_856803.jpg', '21', 'Extra Large', '48', '0.25', '27.50', 1, '0.25', '78'),
(99, 0, 268, 856812, 8, 'Gỏi cuốn', 'item_856812.jpg', '', '', '', '', '80.00', 2, '25.00', '12'),
(100, 0, 268, 856806, 8, 'bánh xèo', 'item_856806.jpg', '', '', '', '', '25.25', 1, '25.00', '30'),
(101, 0, 268, 33, 8, 'Con cá mặn', 'item_33.jpg', '', '', '', '', '358.00', 1, '358.00', '46'),
(102, 0, 269, 856809, 42, 'Bánh Cuốn', 'item_856809.jpg', '', '', '', '', '57.00', 1, '25.00', '96'),
(103, 0, 269, 856794, 42, 'Bánh gai', 'item_856794.jpg', '', '', '', '', '1500.00', 1, '1500.00', '90'),
(104, 0, 269, 856793, 42, 'Bánh mì cay', 'item_856793.jpg', '', '', '', '', '30.00', 1, '30.00', '21'),
(105, 0, 270, 856780, 14, 'Bánh quy vị cam', 'item_856780.jpg', '', '', '', '', '99.00', 1, '99.00', '01'),
(106, 0, 270, 129, 14, 'Salad trái cây', 'item_129.jpg', '', '', '', '', '125.00', 1, '125.00', '79'),
(107, 0, 270, 122, 14, 'Vainilla Hot Chocolate', 'item_122.jpg', '', '', '', '', '150.00', 1, '150.00', '53'),
(108, 0, 270, 121, 14, ' Dứa Vanilla', 'item_121.jpg', '', '', '', '', '150.00', 1, '150.00', '52'),
(109, 0, 271, 856794, 42, 'Bánh gai', 'item_856794.jpg', '', '', '', '', '4500.00', 3, '1500.00', '32'),
(110, 1, 272, 95, 11, 'Salad Dưa chuột', 'item_95.jpg', '', '', '', '', '50.00', 1, '50.00', '61'),
(111, 0, 272, 129, 14, 'Salad trái cây', 'item_129.jpg', '', '', '', '', '125.00', 1, '125.00', '38'),
(112, 0, 272, 122, 14, 'Vainilla Hot Chocolate', 'item_122.jpg', '', '', '', '', '150.00', 1, '150.00', '08'),
(113, 0, 273, 148, 10, 'Cà ri gà', 'item_148.jpg', '', '', '', '', '90.00', 1, '90.00', '94');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cr_pages`
--

CREATE TABLE `cr_pages` (
  `id` int(11) UNSIGNED NOT NULL,
  `slug` varchar(50) NOT NULL,
  `name` varchar(512) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cr_pages`
--

INSERT INTO `cr_pages` (`id`, `slug`, `name`, `description`, `status`) VALUES
(1, 'about-us', 'About Us', '<p>Chẳng cần phải là người sành ăn, bất cứ ai cũng có thể chọn cho mình những quán ăn “ruột” để thưởng thức những món ăn khoái khẩu, ngon miệng và hấp dẫn.<br />\r\nTrong danh sách địa chỉ ẩm thực của tôi, <strong>NHÀ HÀNG ẨM THỰC BRO FOOD</strong> luôn là một điểm đến yêu thích và không thể bỏ qua mỗi khi có dịp.<br />\r\nDù mới đi vào hoạt động hơn 1 tháng qua nhưng nơi đây đã là một địa chỉ lý tưởng để thưởng thức các đặc sản rừng, hải sản tươi ngon nhất.</p>\r\n\r\n<p><img alt=\"\" src=\"http://nhahanganhtuyet.com/anhtuyet/images/nhahang/anuong/hai-san/tom-hap.jpg\" /></p>\r\n\r\n<p>    Mặc dù nằm trong khu vực có nhiều nhà hàng, quán ăn lớn, nổi tiếng nhưng <strong>NHÀ HÀNG ẨM THỰC BRO FOOD </strong>lúc nào cũng đông khách, điều này cho thấy quán không chỉ làm hài lòng người thưởng thức mỗi lần ghé đến mà còn nhận được sự ủng hộ, tin tưởng và đồng hành của quý khách hàng trong suốt chặng đường phát triển của mình.</p>\r\n', 'Active'),
(2, 'how-it-works', 'How It Works', '<p>Chẳng cần phải là người sành ăn, bất cứ ai cũng có thể chọn cho mình những quán ăn “ruột” để thưởng thức những món ăn khoái khẩu, ngon miệng và hấp dẫn.<br />\r\nTrong danh sách địa chỉ ẩm thực của tôi, <strong>NHÀ HÀNG ẨM THỰC BRO FOOD</strong> luôn là một điểm đến yêu thích và không thể bỏ qua mỗi khi có dịp.<br />\r\nDù mới đi vào hoạt động hơn 1 tháng qua nhưng nơi đây đã là một địa chỉ lý tưởng để thưởng thức các đặc sản rừng, hải sản tươi ngon nhất.</p>\r\n\r\n<p><img alt=\"\" src=\"http://nhahanganhtuyet.com/anhtuyet/images/nhahang/anuong/hai-san/tom-hap.jpg\" /></p>\r\n\r\n<p>    Mặc dù nằm trong khu vực có nhiều nhà hàng, quán ăn lớn, nổi tiếng nhưng <strong>NHÀ HÀNG ẨM THỰC BRO FOOD</strong> lúc nào cũng đông khách, điều này cho thấy quán không chỉ làm hài lòng người thưởng thức mỗi lần ghé đến mà còn nhận được sự ủng hộ, tin tưởng và đồng hành của quý khách hàng trong suốt chặng đường phát triển của mình.</p>\r\n', 'Active'),
(3, 'terms-conditions', 'Terms and Conditions', '<pre>\r\n. Quyền sở hữu và Quyền tài sản\r\n\r\nViệc sử dụng trang web này không cấp cho bạn bất kỳ quyền sở hữu hoặc quyền lợi nào đối với bất kỳ nội dung, giao diện trực quan, đồ họa, thiết kế, biên soạn, thông tin, mã máy tính, sản phẩm, phần mềm, dịch vụ và tất cả các yếu tố khác mà bạn có thể truy cập từ trang web.\r\n\r\nBạn được phép tải xuống một bản sao duy nhất của nội dung đã mua / được tải xuống miễn phí có trên trang web cho mục đích sử dụng cá nhân, phi thương mại của bạn, miễn là bạn duy trì bản quyền và các thông báo khác có trong nội dung đó. Điều này không bao gồm các sản phẩm có sẵn với giấy phép cao cấp. Vui lòng tham khảo trang giấy phép của chúng tôi để biết thêm thông tin.</pre>\r\n', 'Active'),
(4, 'privacy-policy', 'Privacy and Policys', '<p><span class=\"marker\"><strong>Privacy Policy template for website usage</strong></span></p>\r\n\r\n<p>Welcome to our website. If you continue to browse and use this website, you are agreeing to comply with and be bound by the following terms and conditions of use, which together with our privacy policy govern [business name]&#39;s relationship with you in relation to this website. If you disagree with any part of these terms and conditions, please do not use our website.</p>\r\n\r\n<p>The term &#39;[business name]&#39; or &#39;us&#39; or &#39;we&#39; refers to the owner of the website whose registered office is [address]. Our company registration number is [company registration number and place of registration]. The term &#39;you&#39; refers to the user or viewer of our website.</p>\r\n\r\n<p>The use of this website is subject to the following terms of use:</p>\r\n\r\n<ul>\r\n <li>The content of the pages of this website is for your general information and use only. It is subject to change without notice.</li>\r\n <li>This website uses cookies to monitor browsing preferences. If you do allow cookies to be used, the following personal information may be stored by us for use by third parties: [insert list of information].</li>\r\n <li>Neither we nor any third parties provide any warranty or guarantee as to the accuracy, timeliness, performance, completeness or suitability of the information and materials found or offered on this website for any particular purpose. You acknowledge that such information and materials may contain inaccuracies or errors and we expressly exclude liability for any such inaccuracies or errors to the fullest extent permitted by law.</li>\r\n <li>Your use of any information or materials on this website is entirely at your own risk, for which we shall not be liable. It shall be your own responsibility to ensure that any products, services or information available through this website meet your specific requirements.</li>\r\n <li>This website contains material which is owned by or licensed to us. This material includes, but is not limited to, the design, layout, look, appearance and graphics. Reproduction is prohibited other than in accordance with the copyright notice, which forms part of these terms and conditions.</li>\r\n <li>All trade marks reproduced in this website which are not the property of, or licensed to, the operator are acknowledged on the website.</li>\r\n <li>Unauthorised use of this website may give rise to a claim for damages and/or be a criminal offence.</li>\r\n <li>From time to time this website may also include links to other websites. These links are provided for your convenience to provide further information. They do not signify that we endorse the website(s). We have no responsibility for the content of the linked website(s).</li>\r\n <li>Your use of this website and any dispute arising out of such use of the website is subject to the laws of England, Northern Ireland, Scotland and Wales.</li>\r\n</ul>\r\n\r\n<p> </p>\r\n', 'Active');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cr_paypal_settings`
--

CREATE TABLE `cr_paypal_settings` (
  `id` int(11) NOT NULL,
  `PayPalEnvironmentProduction` varchar(512) NOT NULL,
  `PayPalEnvironmentSandbox` varchar(512) NOT NULL,
  `merchantName` varchar(512) NOT NULL,
  `merchantPrivacyPolicyURL` varchar(512) NOT NULL,
  `merchantUserAgreementURL` varchar(512) NOT NULL,
  `currency` varchar(512) NOT NULL,
  `account_type` enum('sandbox','production') NOT NULL DEFAULT 'sandbox',
  `paypal_email` varchar(100) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cr_paypal_settings`
--

INSERT INTO `cr_paypal_settings` (`id`, `PayPalEnvironmentProduction`, `PayPalEnvironmentSandbox`, `merchantName`, `merchantPrivacyPolicyURL`, `merchantUserAgreementURL`, `currency`, `account_type`, `paypal_email`, `status`) VALUES
(1, 'PayPal Environment Production', 'PayPal Environment Sandbox', 'Merchant Name', 'Merchant Privacy Policy URL', 'Merchant User Agreement URL', 'USD', 'sandbox', 'restaurant@contact.com', 'Active');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cr_referral_settings`
--

CREATE TABLE `cr_referral_settings` (
  `settings_id` int(11) NOT NULL,
  `referral_enabled` enum('Yes','No') NOT NULL DEFAULT 'No',
  `points_for_refer_anyone` int(10) DEFAULT NULL,
  `points_for_referred_by_anyone` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cr_referral_settings`
--

INSERT INTO `cr_referral_settings` (`settings_id`, `referral_enabled`, `points_for_refer_anyone`, `points_for_referred_by_anyone`) VALUES
(1, 'Yes', 20, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cr_referral_users`
--

CREATE TABLE `cr_referral_users` (
  `referral_id` int(11) NOT NULL,
  `refer_user_id` int(11) UNSIGNED NOT NULL,
  `refer_user_points` int(11) DEFAULT NULL,
  `refer_by` int(11) UNSIGNED NOT NULL,
  `refer_by_points` int(11) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cr_restaurant_timings`
--

CREATE TABLE `cr_restaurant_timings` (
  `id` int(11) NOT NULL,
  `day` enum('monday','tuesday','wednesday','thursday','friday','saturday','sunday') DEFAULT NULL,
  `status` varchar(10) NOT NULL,
  `from_time` char(34) DEFAULT NULL,
  `to_time` char(34) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cr_restaurant_timings`
--

INSERT INTO `cr_restaurant_timings` (`id`, `day`, `status`, `from_time`, `to_time`) VALUES
(1, 'monday', 'closed', '09:00', '16:00'),
(2, 'tuesday', 'opened', '10:00', '17:00'),
(3, 'wednesday', 'opened', '11:00', '18:00'),
(4, 'thursday', 'closed', '12:00', '19:00'),
(5, 'friday', 'opened', '13:00', '20:00'),
(6, 'saturday', 'closed', '14:00', '21:00'),
(7, 'sunday', 'opened', '15:00', '22:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cr_seo_settings`
--

CREATE TABLE `cr_seo_settings` (
  `id` int(11) NOT NULL,
  `meta_keyword` varchar(500) NOT NULL,
  `meta_description` varchar(1000) NOT NULL,
  `google_analytics` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cr_seo_settings`
--

INSERT INTO `cr_seo_settings` (`id`, `meta_keyword`, `meta_description`, `google_analytics`) VALUES
(1, 'Foodcourt', 'The Meta tag is behind-the-scenes in your code, so it isn\'t visible on your website. The Meta tag is for search engines and other bots. Meta tags include your keywords, page title and your page\'s description. ... The Meta title tag is the unique title you give each one of your restaurant website\'s pages.', 'Google Analytics');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cr_service_provide_locations`
--

CREATE TABLE `cr_service_provide_locations` (
  `service_provide_location_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `locality` varchar(600) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `delivery_fee` float(10,2) DEFAULT NULL,
  `delivery_from_time` varchar(10) DEFAULT NULL,
  `delivery_to_time` varchar(10) DEFAULT NULL,
  `delivery_time_units` enum('minutes','hours') DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cr_service_provide_locations`
--

INSERT INTO `cr_service_provide_locations` (`service_provide_location_id`, `city_id`, `locality`, `pincode`, `delivery_fee`, `delivery_from_time`, `delivery_to_time`, `delivery_time_units`, `status`) VALUES
(45, 555, 'Quốc Oai', '123456', 1.00, '15', '20', 'minutes', 'Active'),
(46, 531, 'quận bìu thế', '98961+5', 1.00, '15', '20', 'minutes', 'Active'),
(47, 532, 'no where', '123456', 1.00, '15', '20', 'minutes', 'Active');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cr_sessions`
--

CREATE TABLE `cr_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cr_sessions`
--

INSERT INTO `cr_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('0b9597gpgimi79at7cbr7cjqo0lrk18d', '::1', 1509437183, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433353638333b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223266313761373961663663383339636537373661633637393363383933353864223b636172745f636f6e74656e74737c613a353a7b733a31303a22636172745f746f74616c223b643a313038303b733a31313a22746f74616c5f6974656d73223b643a343b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b613a373a7b733a323a226964223b733a363a22383536373631223b733a333a22717479223b643a323b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a32303a224b65656d612042697279616e6920526563697065223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a37333a224c6f72656d20497073756d2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e647573747279223b733a353a22696d616765223b733a31353a226974656d5f3835363736312e6a7067223b733a393a226974656d5f636f7374223b733a363a223330302e3030223b733a373a226d656e755f6964223b733a313a2236223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b733a383a22737562746f74616c223b643a3630303b7d733a33323a223064633261316434383830636364663033636365323531623666356134356434223b613a373a7b733a323a226964223b733a363a22383536373837223b733a333a22717479223b643a313b733a353a227072696365223b643a3238303b733a343a226e616d65223b733a31343a224b697769204d6172676172697461223b733a373a226f7074696f6e73223b613a31323a7b733a31313a226465736372697074696f6e223b733a31393a2273667364667364667361646673646673646666223b733a353a22696d616765223b4e3b733a393a226974656d5f636f7374223b733a363a223236302e3030223b733a373a226d656e755f6964223b733a323a223133223b733a383a2269735f6f66666572223b693a303b733a31363a226974656d5f6f7074696f6e5f6e616d65223b733a353a224c61726765223b733a31343a226974656d5f6f7074696f6e5f6964223b733a323a223431223b733a393a226f7074696f6e5f6964223b733a313a2234223b733a31373a226974656d5f6f7074696f6e5f7072696365223b733a363a223238302e3030223b733a32303a226164646f6e735f636f73745f7065725f6974656d223b643a33353b733a363a226164646f6e73223b613a323a7b693a303b733a33303a2234333d31352e30303d313d5065707065723d6164646f6e5f34332e6a7067223b693a313b733a32393a2234353d32302e30303d313d536f7563653d6164646f6e5f34352e6a7067223b7d733a31373a2265787472615f636f7374735f746f74616c223b643a33353b7d733a353a22726f776964223b733a33323a223064633261316434383830636364663033636365323531623666356134356434223b733a383a22737562746f74616c223b643a3238303b7d733a33323a223966343130316639343937656137343334623932303065613134623034393839223b613a373a7b733a323a226964223b733a363a22383536373831223b733a333a22717479223b643a313b733a353a227072696365223b643a3230303b733a343a226e616d65223b733a31313a224567672062697279616e69223b733a373a226f7074696f6e73223b613a31323a7b733a31313a226465736372697074696f6e223b733a37333a224c6f72656d20497073756d2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e647573747279223b733a353a22696d616765223b733a31353a226974656d5f3835363738312e6a7067223b733a393a226974656d5f636f7374223b733a363a223135392e3030223b733a373a226d656e755f6964223b733a313a2236223b733a383a2269735f6f66666572223b693a303b733a31363a226974656d5f6f7074696f6e5f6e616d65223b733a353a224c61726765223b733a31343a226974656d5f6f7074696f6e5f6964223b733a323a223331223b733a393a226f7074696f6e5f6964223b733a313a2234223b733a31373a226974656d5f6f7074696f6e5f7072696365223b733a363a223230302e3030223b733a32303a226164646f6e735f636f73745f7065725f6974656d223b643a34353b733a363a226164646f6e73223b613a333a7b693a303b733a33303a2234333d31352e30303d313d5065707065723d6164646f6e5f34332e6a7067223b693a313b733a32393a2234353d32302e30303d313d536f7563653d6164646f6e5f34352e6a7067223b693a323b733a32393a2234363d31302e30303d313d4c656d6f6e3d6164646f6e5f34362e6a7067223b7d733a31373a2265787472615f636f7374735f746f74616c223b643a34353b7d733a353a22726f776964223b733a33323a223966343130316639343937656137343334623932303065613134623034393839223b733a383a22737562746f74616c223b643a3230303b7d7d6c6f67696e75707c623a313b),
('0k7krrs9iss0luefrq7nmhodps03ek2f', '::1', 1509437160, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433373136303b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a226432376466326434656437663861623037616439323233306663643833323265223b),
('0rqdqpvvmr3d7s7qcio5tjaqmq614te3', '::1', 1509437229, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433373232383b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223635643566376530623365623166613363643834326561666636616431336534223b),
('1n2phtl6sbr0g7drv387najh3b44p8rl', '::1', 1509432998, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433323837383b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a226533363434636534386235353234356362653065653065396165326336373765223b),
('4ti0fjru5o5a8hq0dtub5q2g6l98mfhb', '::1', 1509435683, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433353638333b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a226134376133353135323336356663396633613063326537316661623036666562223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a3330303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b613a373a7b733a323a226964223b733a363a22383536373631223b733a333a22717479223b643a313b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a32303a224b65656d612042697279616e6920526563697065223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a37333a224c6f72656d20497073756d2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e647573747279223b733a353a22696d616765223b733a31353a226974656d5f3835363736312e6a7067223b733a393a226974656d5f636f7374223b733a363a223330302e3030223b733a373a226d656e755f6964223b733a313a2236223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b733a383a22737562746f74616c223b643a3330303b7d7d6964656e746974797c733a32363a226e6176616e69636f6e717565726f727340676d61696c2e636f6d223b757365726e616d657c733a31353a224e6176616e656574686120416e6465223b656d61696c7c733a32363a226e6176616e69636f6e717565726f727340676d61696c2e636f6d223b757365725f69647c733a323a223433223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353039343333343739223b),
('70ks4unfbsbvoc3p21r3m9hc0634o5f6', '::1', 1509433591, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433333537383b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a226439653933326634616566613265336139633461316539623535393935313664223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b757365726e616d657c733a31343a2241646d696e206973747261746f72223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353039343332333131223b),
('84alb2kvtd0anbth88r0a60l8274amuv', '::1', 1509436376, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433363337353b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223961336336613663393463643230303038333964323464333934333331633531223b),
('91tu8bt98tsvmq2607t32n4ih34i84bh', '::1', 1509435683, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433353638333b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223266313761373961663663383339636537373661633637393363383933353864223b636172745f636f6e74656e74737c613a343a7b733a31303a22636172745f746f74616c223b643a3538303b733a31313a22746f74616c5f6974656d73223b643a323b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b613a373a7b733a323a226964223b733a363a22383536373631223b733a333a22717479223b643a313b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a32303a224b65656d612042697279616e6920526563697065223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a37333a224c6f72656d20497073756d2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e647573747279223b733a353a22696d616765223b733a31353a226974656d5f3835363736312e6a7067223b733a393a226974656d5f636f7374223b733a363a223330302e3030223b733a373a226d656e755f6964223b733a313a2236223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b733a383a22737562746f74616c223b643a3330303b7d733a33323a223064633261316434383830636364663033636365323531623666356134356434223b613a373a7b733a323a226964223b733a363a22383536373837223b733a333a22717479223b643a313b733a353a227072696365223b643a3238303b733a343a226e616d65223b733a31343a224b697769204d6172676172697461223b733a373a226f7074696f6e73223b613a31323a7b733a31313a226465736372697074696f6e223b733a31393a2273667364667364667361646673646673646666223b733a353a22696d616765223b4e3b733a393a226974656d5f636f7374223b733a363a223236302e3030223b733a373a226d656e755f6964223b733a323a223133223b733a383a2269735f6f66666572223b693a303b733a31363a226974656d5f6f7074696f6e5f6e616d65223b733a353a224c61726765223b733a31343a226974656d5f6f7074696f6e5f6964223b733a323a223431223b733a393a226f7074696f6e5f6964223b733a313a2234223b733a31373a226974656d5f6f7074696f6e5f7072696365223b733a363a223238302e3030223b733a32303a226164646f6e735f636f73745f7065725f6974656d223b643a33353b733a363a226164646f6e73223b613a323a7b693a303b733a33303a2234333d31352e30303d313d5065707065723d6164646f6e5f34332e6a7067223b693a313b733a32393a2234353d32302e30303d313d536f7563653d6164646f6e5f34352e6a7067223b7d733a31373a2265787472615f636f7374735f746f74616c223b643a33353b7d733a353a22726f776964223b733a33323a223064633261316434383830636364663033636365323531623666356134356434223b733a383a22737562746f74616c223b643a3238303b7d7d6c6f67696e75707c623a313b),
('9882o8vp1ubeif8b0v86u0pums8e00ag', '::1', 1509437869, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433373836393b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a226330396238313034376362383838366565376565366164396132636530393635223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a3330303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226433343462386437303532623334336339346366663136393363323838363763223b613a373a7b733a323a226964223b733a363a22383536373836223b733a333a22717479223b643a313b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a31323a2253706f727473206472696e6b223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a36323a2246696e642074686520677265617420636f6c6c656374696f6e206f662031393120626576657261676573207265636970657320616e642064697368657320223b733a353a22696d616765223b4e3b733a393a226974656d5f636f7374223b733a363a223330302e3030223b733a373a226d656e755f6964223b733a323a223133223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226433343462386437303532623334336339346366663136393363323838363763223b733a383a22737562746f74616c223b643a3330303b7d7d),
('b0bv5h4ob3bc3s2v1lrt3aqkt5ssr8a4', '::1', 1509434917, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433343931373b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223537633239326165666164666638613538336337326133343562326238393338223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a3330303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b613a373a7b733a323a226964223b733a363a22383536373631223b733a333a22717479223b643a313b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a32303a224b65656d612042697279616e6920526563697065223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a37333a224c6f72656d20497073756d2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e647573747279223b733a353a22696d616765223b733a31353a226974656d5f3835363736312e6a7067223b733a393a226974656d5f636f7374223b733a363a223330302e3030223b733a373a226d656e755f6964223b733a313a2236223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b733a383a22737562746f74616c223b643a3330303b7d7d6964656e746974797c733a32363a226e6176616e69636f6e717565726f727340676d61696c2e636f6d223b757365726e616d657c733a31353a224e6176616e656574686120416e6465223b656d61696c7c733a32363a226e6176616e69636f6e717565726f727340676d61696c2e636f6d223b757365725f69647c733a323a223433223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353039343333343739223b),
('b7873ilbni7me1ul3u359u0v9cdjceqr', '::1', 1509438201, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433383230313b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223532313064343236306463646464613562653664393861633865313837326666223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a3330303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226433343462386437303532623334336339346366663136393363323838363763223b613a373a7b733a323a226964223b733a363a22383536373836223b733a333a22717479223b643a313b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a31323a2253706f727473206472696e6b223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a36323a2246696e642074686520677265617420636f6c6c656374696f6e206f662031393120626576657261676573207265636970657320616e642064697368657320223b733a353a22696d616765223b4e3b733a393a226974656d5f636f7374223b733a363a223330302e3030223b733a373a226d656e755f6964223b733a323a223133223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226433343462386437303532623334336339346366663136393363323838363763223b733a383a22737562746f74616c223b643a3330303b7d7d),
('cgat1tv49r9qvf1t3i6k7ukp9hpr9bll', '::1', 1509434609, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433343630393b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223865306664383930373837326537363831396430373137303266616434323132223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a3330303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b613a373a7b733a323a226964223b733a363a22383536373631223b733a333a22717479223b643a313b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a32303a224b65656d612042697279616e6920526563697065223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a37333a224c6f72656d20497073756d2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e647573747279223b733a353a22696d616765223b733a31353a226974656d5f3835363736312e6a7067223b733a393a226974656d5f636f7374223b733a363a223330302e3030223b733a373a226d656e755f6964223b733a313a2236223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b733a383a22737562746f74616c223b643a3330303b7d7d),
('dfmpvi2higfjvs0k6fg1g13so08mko7d', '::1', 1509433375, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433333337353b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223363313365336233656130336231653634663232336465613532373631383161223b6964656e746974797c733a32363a226e6176616e69636f6e717565726f727340676d61696c2e636f6d223b757365726e616d657c733a31353a224e6176616e656574686120416e6465223b656d61696c7c733a32363a226e6176616e69636f6e717565726f727340676d61696c2e636f6d223b757365725f69647c733a323a223433223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353039343332313536223b636172745f636f6e74656e74737c613a343a7b733a31303a22636172745f746f74616c223b643a3536303b733a31313a22746f74616c5f6974656d73223b643a323b733a33323a226466316161663061316234633864363666323036316463336463326662303464223b613a373a7b733a323a226964223b733a363a22383536373837223b733a333a22717479223b643a313b733a353a227072696365223b643a3236303b733a343a226e616d65223b733a31343a224b697769204d6172676172697461223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a31393a2273667364667364667361646673646673646666223b733a353a22696d616765223b4e3b733a393a226974656d5f636f7374223b733a363a223236302e3030223b733a373a226d656e755f6964223b733a323a223133223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226466316161663061316234633864363666323036316463336463326662303464223b733a383a22737562746f74616c223b643a3236303b7d733a33323a226433343462386437303532623334336339346366663136393363323838363763223b613a373a7b733a323a226964223b733a363a22383536373836223b733a333a22717479223b643a313b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a31323a2253706f727473206472696e6b223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a36323a2246696e642074686520677265617420636f6c6c656374696f6e206f662031393120626576657261676573207265636970657320616e642064697368657320223b733a353a22696d616765223b4e3b733a393a226974656d5f636f7374223b733a363a223330302e3030223b733a373a226d656e755f6964223b733a323a223133223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226433343462386437303532623334336339346366663136393363323838363763223b733a383a22737562746f74616c223b643a3330303b7d7d),
('g19qp8p2kbjj64c8jr0e8p818hr5epoa', '::1', 1509433446, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433333337353b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223531396232333366623330326561333030373934316664336161383665616139223b6964656e746974797c733a32363a226e6176616e69636f6e717565726f727340676d61696c2e636f6d223b757365726e616d657c733a31353a224e6176616e656574686120416e6465223b656d61696c7c733a32363a226e6176616e69636f6e717565726f727340676d61696c2e636f6d223b757365725f69647c733a323a223433223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353039343332313536223b636172745f636f6e74656e74737c613a343a7b733a31303a22636172745f746f74616c223b643a3536303b733a31313a22746f74616c5f6974656d73223b643a323b733a33323a226466316161663061316234633864363666323036316463336463326662303464223b613a373a7b733a323a226964223b733a363a22383536373837223b733a333a22717479223b643a313b733a353a227072696365223b643a3236303b733a343a226e616d65223b733a31343a224b697769204d6172676172697461223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a31393a2273667364667364667361646673646673646666223b733a353a22696d616765223b4e3b733a393a226974656d5f636f7374223b733a363a223236302e3030223b733a373a226d656e755f6964223b733a323a223133223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226466316161663061316234633864363666323036316463336463326662303464223b733a383a22737562746f74616c223b643a3236303b7d733a33323a226433343462386437303532623334336339346366663136393363323838363763223b613a373a7b733a323a226964223b733a363a22383536373836223b733a333a22717479223b643a313b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a31323a2253706f727473206472696e6b223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a36323a2246696e642074686520677265617420636f6c6c656374696f6e206f662031393120626576657261676573207265636970657320616e642064697368657320223b733a353a22696d616765223b4e3b733a393a226974656d5f636f7374223b733a363a223330302e3030223b733a373a226d656e755f6964223b733a323a223133223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226433343462386437303532623334336339346366663136393363323838363763223b733a383a22737562746f74616c223b643a3330303b7d7d),
('ghq1aff1j9u9qr6ureop7fr3t7hack4n', '::1', 1509432024, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433323032343b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223330333364656663643264636133353335353339336361313233323861363761223b),
('ip41c5htotv6ctt3bn2a37v17iqvrl5r', '::1', 1509434296, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433343239363b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223862303662616336633864356232376635376266376334386533346430376534223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a3330303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b613a373a7b733a323a226964223b733a363a22383536373631223b733a333a22717479223b643a313b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a32303a224b65656d612042697279616e6920526563697065223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a37333a224c6f72656d20497073756d2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e647573747279223b733a353a22696d616765223b733a31353a226974656d5f3835363736312e6a7067223b733a393a226974656d5f636f7374223b733a363a223330302e3030223b733a373a226d656e755f6964223b733a313a2236223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b733a383a22737562746f74616c223b643a3330303b7d7d),
('lfoklaqp3nnber6niglekccma6rhp34r', '::1', 1509433464, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433323032333b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a226239363462373230353937646338366335663963613733633264613234616165223b),
('lq6sjo12112075ueqa1rdkqga93o1hch', '::1', 1509438425, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433373535373b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223737316466323065653863653431613661663062333131353235316537386636223b),
('lva4p1e629m4j13ue73slm30qu1qa5p7', '::1', 1509432878, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433323837383b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223831353637656133333337343030663736656638646136306163353535386235223b),
('pdgibpt4niuho1q1dgusinf8rn5mt7g3', '::1', 1509438668, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433383635373b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a226632313036333932633536316433333531613733666631383336316562316161223b),
('pm6urek23kijiii02pr7l08hc6lgvhqa', '::1', 1509436898, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433363739313b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a226664373134383465383133326432366533633832326233313630643264396666223b6964656e746974797c733a32363a226e6176616e69636f6e717565726f727340676d61696c2e636f6d223b757365726e616d657c733a31353a224e6176616e656574686120416e6465223b656d61696c7c733a32363a226e6176616e69636f6e717565726f727340676d61696c2e636f6d223b757365725f69647c733a323a223433223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353039343335373133223b636172745f636f6e74656e74737c613a353a7b733a31303a22636172745f746f74616c223b643a3732393b733a31313a22746f74616c5f6974656d73223b643a333b733a33323a223938663861373234613538643732333935623836623463323835313661613333223b613a373a7b733a323a226964223b733a363a22383536373831223b733a333a22717479223b643a313b733a353a227072696365223b643a3230303b733a343a226e616d65223b733a31313a224567672062697279616e69223b733a373a226f7074696f6e73223b613a31323a7b733a31313a226465736372697074696f6e223b733a37333a224c6f72656d20497073756d2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e647573747279223b733a353a22696d616765223b733a31353a226974656d5f3835363738312e6a7067223b733a393a226974656d5f636f7374223b733a363a223135392e3030223b733a373a226d656e755f6964223b733a313a2236223b733a383a2269735f6f66666572223b693a303b733a31363a226974656d5f6f7074696f6e5f6e616d65223b733a353a224c61726765223b733a31343a226974656d5f6f7074696f6e5f6964223b733a323a223331223b733a393a226f7074696f6e5f6964223b733a313a2234223b733a31373a226974656d5f6f7074696f6e5f7072696365223b733a363a223230302e3030223b733a32303a226164646f6e735f636f73745f7065725f6974656d223b643a34353b733a363a226164646f6e73223b613a333a7b693a303b733a33303a2234323d31302e30303d313d4f6e696f6e733d6164646f6e5f34322e6a7067223b693a313b733a33303a2234333d31352e30303d313d5065707065723d6164646f6e5f34332e6a7067223b693a323b733a32393a2234353d32302e30303d313d536f7563653d6164646f6e5f34352e6a7067223b7d733a31373a2265787472615f636f7374735f746f74616c223b643a34353b7d733a353a22726f776964223b733a33323a223938663861373234613538643732333935623836623463323835313661613333223b733a383a22737562746f74616c223b643a3230303b7d733a33323a226537336136623230343461356566623436666163363739613865313730353131223b613a373a7b733a323a226964223b733a363a22383536373633223b733a333a22717479223b643a313b733a353a227072696365223b643a3430303b733a343a226e616d65223b733a31363a224d616c61626172204269726979616e69223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a37333a224c6f72656d20497073756d2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e647573747279223b733a353a22696d616765223b733a31353a226974656d5f3835363736332e6a7067223b733a393a226974656d5f636f7374223b733a363a223430302e3030223b733a373a226d656e755f6964223b733a313a2236223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226537336136623230343461356566623436666163363739613865313730353131223b733a383a22737562746f74616c223b643a3430303b7d733a33323a223336316264616165633534633132633931383937653437363736383662316538223b613a373a7b733a323a226964223b733a323a223535223b733a333a22717479223b643a313b733a353a227072696365223b643a3132393b733a343a226e616d65223b733a393a224d656761204465616c223b733a373a226f7074696f6e73223b613a343a7b733a31313a226465736372697074696f6e223b733a37333a224c6f72656d20497073756d2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e647573747279223b733a353a22696d616765223b733a31323a226f666665725f35352e6a7067223b733a383a2269735f6f66666572223b693a313b733a363a226f6666657273223b613a343a7b693a303b733a32313a22313d53776565742d4e2d536f757220507261776e73223b693a313b733a31333a22313d427574746572204e61616e223b693a323b733a31323a22313d50696e656170706c6520223b693a333b733a32343a22323d50696e656170706c6520576974682056616e696c6c61223b7d7d733a353a22726f776964223b733a33323a223336316264616165633534633132633931383937653437363736383662316538223b733a383a22737562746f74616c223b643a3132393b7d7d),
('q87nk6f2msum6m3a8hosiol6uodlgfe4', '::1', 1509437178, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433343636373b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223266313761373961663663383339636537373661633637393363383933353864223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a3330303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b613a373a7b733a323a226964223b733a363a22383536373631223b733a333a22717479223b643a313b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a32303a224b65656d612042697279616e6920526563697065223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a37333a224c6f72656d20497073756d2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e647573747279223b733a353a22696d616765223b733a31353a226974656d5f3835363736312e6a7067223b733a393a226974656d5f636f7374223b733a363a223330302e3030223b733a373a226d656e755f6964223b733a313a2236223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b733a383a22737562746f74616c223b643a3330303b7d7d),
('qbd81b3mbq2nptgbe43l7v6omtn89bai', '::1', 1509437180, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433373136303b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223834393030343831613539376535356532616532356237343962303663306664223b),
('qfirjhjrvr0l76klthhd3a96203jlfts', '::1', 1509433205, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433333031393b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223337623961363265386436356562383861306366386134373933383135363565223b6964656e746974797c733a32363a226e6176616e69636f6e717565726f727340676d61696c2e636f6d223b757365726e616d657c733a31353a224e6176616e656574686120416e6465223b656d61696c7c733a32363a226e6176616e69636f6e717565726f727340676d61696c2e636f6d223b757365725f69647c733a323a223433223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353039343332313536223b636172745f636f6e74656e74737c613a343a7b733a31303a22636172745f746f74616c223b643a3536303b733a31313a22746f74616c5f6974656d73223b643a323b733a33323a226466316161663061316234633864363666323036316463336463326662303464223b613a373a7b733a323a226964223b733a363a22383536373837223b733a333a22717479223b643a313b733a353a227072696365223b643a3236303b733a343a226e616d65223b733a31343a224b697769204d6172676172697461223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a31393a2273667364667364667361646673646673646666223b733a353a22696d616765223b4e3b733a393a226974656d5f636f7374223b733a363a223236302e3030223b733a373a226d656e755f6964223b733a323a223133223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226466316161663061316234633864363666323036316463336463326662303464223b733a383a22737562746f74616c223b643a3236303b7d733a33323a226433343462386437303532623334336339346366663136393363323838363763223b613a373a7b733a323a226964223b733a363a22383536373836223b733a333a22717479223b643a313b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a31323a2253706f727473206472696e6b223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a36323a2246696e642074686520677265617420636f6c6c656374696f6e206f662031393120626576657261676573207265636970657320616e642064697368657320223b733a353a22696d616765223b4e3b733a393a226974656d5f636f7374223b733a363a223330302e3030223b733a373a226d656e755f6964223b733a323a223133223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226433343462386437303532623334336339346366663136393363323838363763223b733a383a22737562746f74616c223b643a3330303b7d7d),
('rhc15hcmrir1d4vkblopeat59hgf7uv0', '::1', 1509433591, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433333437333b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223766313463623730653532323164306138343063633966353134636662393739223b6d6573736167657c733a3235303a22203c212d2d203c64697620636c6173733d27636f6c2d6d642d3132273e202d2d3e0d0a090909090909090909093c64697620636c6173733d27616c65727420616c6572742d696e666f273e0d0a09090909090909090909093c6120687265663d27232720636c6173733d27636c6f73652720646174612d6469736d6973733d27616c657274273e2674696d65733b3c2f613e0d0a09090909090909090909093c7374726f6e673e496e666f213c2f7374726f6e673e20506c65617365206c6f67696e20746f20636f6e74696e75650d0a090909090909090909093c2f6469763e0d0a0909090909090909093c212d2d203c2f6469763e202d2d3e223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('sa8j64ncon2sgfik0sr07sqg0vpvm9i5', '::1', 1509435313, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433353330353b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223232376435636633363738323134393361386138316366383064616434656338223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b757365726e616d657c733a31343a2241646d696e206973747261746f72223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353039343333363039223b),
('soi1hqljhiieqoj6o2nrkhib3enl35p9', '::1', 1509435380, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433353337393b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a226462343635633937363066353135373536306531376361336165386561313036223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a3330303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b613a373a7b733a323a226964223b733a363a22383536373631223b733a333a22717479223b643a313b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a32303a224b65656d612042697279616e6920526563697065223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a37333a224c6f72656d20497073756d2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e647573747279223b733a353a22696d616765223b733a31353a226974656d5f3835363736312e6a7067223b733a393a226974656d5f636f7374223b733a363a223330302e3030223b733a373a226d656e755f6964223b733a313a2236223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b733a383a22737562746f74616c223b643a3330303b7d7d6964656e746974797c733a32363a226e6176616e69636f6e717565726f727340676d61696c2e636f6d223b757365726e616d657c733a31353a224e6176616e656574686120416e6465223b656d61696c7c733a32363a226e6176616e69636f6e717565726f727340676d61696c2e636f6d223b757365725f69647c733a323a223433223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353039343333343739223b),
('t9ek1bobpmb4lqqdvks7s3844bavticb', '::1', 1509438374, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433383230313b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223961346364343939376637623835656437613534366339333230343538366464223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a3330303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226433343462386437303532623334336339346366663136393363323838363763223b613a373a7b733a323a226964223b733a363a22383536373836223b733a333a22717479223b643a313b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a31323a2253706f727473206472696e6b223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a36323a2246696e642074686520677265617420636f6c6c656374696f6e206f662031393120626576657261676573207265636970657320616e642064697368657320223b733a353a22696d616765223b4e3b733a393a226974656d5f636f7374223b733a363a223330302e3030223b733a373a226d656e755f6964223b733a323a223133223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226433343462386437303532623334336339346366663136393363323838363763223b733a383a22737562746f74616c223b643a3330303b7d7d);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cr_site_settings`
--

CREATE TABLE `cr_site_settings` (
  `id` int(11) NOT NULL,
  `site_title` varchar(512) NOT NULL,
  `site_name` varchar(512) NOT NULL,
  `address` varchar(512) NOT NULL,
  `city` varchar(512) NOT NULL,
  `state` varchar(512) NOT NULL,
  `country` varchar(512) NOT NULL,
  `zip` varchar(512) NOT NULL,
  `phone` varchar(512) NOT NULL,
  `land_line` varchar(512) NOT NULL,
  `fax` varchar(512) NOT NULL,
  `portal_email` varchar(512) NOT NULL,
  `site_country` varchar(512) NOT NULL,
  `time_zone` varchar(20) NOT NULL,
  `from_time` varchar(50) NOT NULL,
  `to_time` varchar(50) NOT NULL,
  `site_language` varchar(20) NOT NULL,
  `design_by` varchar(512) NOT NULL,
  `rights_reserved_content` varchar(512) NOT NULL,
  `site_logo` varchar(512) NOT NULL,
  `second_site_logo` varchar(50) NOT NULL,
  `fevicon` varchar(20) NOT NULL,
  `currency` varchar(20) NOT NULL,
  `currency_symbol` varchar(20) NOT NULL,
  `country_code` varchar(10) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL,
  `ios_url` varchar(50) NOT NULL,
  `android_url` varchar(50) NOT NULL,
  `facebook_api` varchar(200) NOT NULL,
  `google_api` varchar(200) NOT NULL,
  `one_signal_server_api_key` varchar(100) NOT NULL,
  `one_signal_app_id` varchar(50) NOT NULL,
  `sms_notifications` enum('Yes','No') NOT NULL DEFAULT 'No',
  `fcm_push_notifications` enum('Yes','No') NOT NULL DEFAULT 'No',
  `admin_css` enum('orange','blue') NOT NULL DEFAULT 'orange',
  `date_format` enum('Y-m-d','Y/m/d','Y.m.d','d-m-Y','d/m/Y','d.m.Y','m-d-Y','m/d/Y','m.d.Y') NOT NULL DEFAULT 'Y-m-d',
  `payment_methods` varchar(50) DEFAULT NULL,
  `pusher_app_id` varchar(50) NOT NULL,
  `pusher_secret` varchar(50) NOT NULL,
  `pusher_key` varchar(50) NOT NULL,
  `pusher_status` enum('Yes','No') DEFAULT NULL,
  `facebook_app_id` varchar(100) DEFAULT NULL,
  `facebook_app_secret` varchar(100) DEFAULT NULL,
  `google_client_id` varchar(500) DEFAULT NULL,
  `google_client_secret` varchar(50) DEFAULT NULL,
  `home_page_img` varchar(20) DEFAULT NULL,
  `home_page_caption` varchar(50) DEFAULT NULL,
  `home_page_tagline` varchar(50) DEFAULT NULL,
  `contact_map_script` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cr_site_settings`
--

INSERT INTO `cr_site_settings` (`id`, `site_title`, `site_name`, `address`, `city`, `state`, `country`, `zip`, `phone`, `land_line`, `fax`, `portal_email`, `site_country`, `time_zone`, `from_time`, `to_time`, `site_language`, `design_by`, `rights_reserved_content`, `site_logo`, `second_site_logo`, `fevicon`, `currency`, `currency_symbol`, `country_code`, `latitude`, `longitude`, `ios_url`, `android_url`, `facebook_api`, `google_api`, `one_signal_server_api_key`, `one_signal_app_id`, `sms_notifications`, `fcm_push_notifications`, `admin_css`, `date_format`, `payment_methods`, `pusher_app_id`, `pusher_secret`, `pusher_key`, `pusher_status`, `facebook_app_id`, `facebook_app_secret`, `google_client_id`, `google_client_secret`, `home_page_img`, `home_page_caption`, `home_page_tagline`, `contact_map_script`) VALUES
(1, 'b r o f o o d', 'RESTAURANT', 'b r o f o o d', 'Hà Nội', 'phenikaa', 'Việt Nam', '700071', '0365265059', '123456789', '123456789', 'artaimer00@gmail.com', 'VN', 'Asia/Saigon', '07:00', '23:59', 'vit_nam', 'you cant see me', '© B R O F O O D 2021. All Rights Reserved.', 'site_logo.png', 'second_site_logo.png', 'fevicon.ico', 'JPY', '¥', '84', '21.0278', '105.8342', '', '', '', '', 'M2VmZDBjOGItYWJjYS00NjdhLWExMzktYWEwZjM4ZjZhNjE2', 'da39217b-0184-4b26-8ef2-e5704cda9eb1', 'Yes', 'No', 'orange', 'd-m-Y', 'online,cash_on_delivery,card_on_delivery', 'APP ID', 'SECRET', 'KEY', 'Yes', 'facebook app id', 'facebook app secret', 'google client id', 'google client secret', 'home_page_img.png', 'Hãy cho tôi một đôi đũa, tôi sẽ ăn cả thế giới.', 'Độc lập tự do, miếng nào to thì gấp.', '<div class=\"mapouter\"><div class=\"gmap_canvas\"><iframe width=\"600\" height=\"500\" id=\"gmap_canvas\" src=\"https://maps.google.com/maps?q=phenikaa&t=&z=13&ie=UTF8&iwloc=&output=embed\" frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\"></iframe><a href=\"https://123movies-to.org\">123movies</a><br><style>.mapouter{position:relative;text-align:right;height:500px;width:600px;}</style><a href=\"https://www.embedgooglemap.net\">website google maps</a><style>.gmap_canvas {overflow:hidden;background:none!important;height:500px;width:600px;}</style></div></div>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cr_sms_gate_ways`
--

CREATE TABLE `cr_sms_gate_ways` (
  `sms_gateway_id` int(11) NOT NULL,
  `sms_gateway_name` varchar(50) NOT NULL,
  `is_default` enum('Yes','No') NOT NULL DEFAULT 'No',
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cr_sms_gate_ways`
--

INSERT INTO `cr_sms_gate_ways` (`sms_gateway_id`, `sms_gateway_name`, `is_default`, `status`) VALUES
(1, 'Cliakatell', 'No', 'Active'),
(2, 'Nexmo', 'No', 'Active'),
(3, 'Plivo', 'No', 'Active'),
(4, 'Solutionsinfini', 'No', 'Active'),
(5, 'Twilio', 'Yes', 'Active'),
(7, 'MSG91', 'No', 'Inactive');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cr_sms_templates`
--

CREATE TABLE `cr_sms_templates` (
  `sms_template_id` int(11) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `sms_template` varchar(1000) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cr_sms_templates`
--

INSERT INTO `cr_sms_templates` (`sms_template_id`, `subject`, `sms_template`, `status`) VALUES
(1, 'registration_otp', '<p>Your Registration OTP is <strong>__OTP__</strong></p>\r\n', 'Active'),
(2, 'forgot_password_otp', '<p>Your Forgot Password OTP is <strong>__OTP__</strong></p>\n', 'Active'),
(3, 'order_saved', '<p>Thanks for using <strong>__SITE__TITLE__</strong></p>\r\n\r\n<p>Order No <strong>__ORDER__NO__</strong></p>\r\n\r\n<p>Total Cost <strong>__TOTAL__COST__</strong></p>\r\n', 'Active'),
(4, 'order_update', '<p>Your Order No <strong>__ORDER__ID__</strong> Status <strong>__STATUS__</strong> Message <strong>__MESSAGE__</strong></p>\r\n', 'Active'),
(5, 'item_deleted', '<p>Item Deleted from Order Order No <strong>__ORDER__ID__</strong> Item Name <strong>__ITEM__NAME__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Active');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cr_social_networks`
--

CREATE TABLE `cr_social_networks` (
  `id` int(11) NOT NULL,
  `facebook` varchar(500) NOT NULL,
  `twitter` varchar(500) NOT NULL,
  `google_plus` varchar(500) NOT NULL,
  `linked_in` varchar(500) NOT NULL,
  `instagram` varchar(500) NOT NULL,
  `pinterest` varchar(500) NOT NULL,
  `tumblr` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cr_social_networks`
--

INSERT INTO `cr_social_networks` (`id`, `facebook`, `twitter`, `google_plus`, `linked_in`, `instagram`, `pinterest`, `tumblr`) VALUES
(1, 'https://en-gb.facebook.com/login/', 'https://twitter.com/login', 'https://plus.google.com/', 'https://www.linkedin.com/uas/login', 'https://www.instagram.com/?hl=en', 'https://in.pinterest.com/login/', 'https://www.tumblr.com/login');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cr_system_settings_fields`
--

CREATE TABLE `cr_system_settings_fields` (
  `field_id` int(11) NOT NULL,
  `sms_gateway_id` int(11) DEFAULT NULL,
  `field_name` varchar(256) NOT NULL,
  `field_key` varchar(50) NOT NULL,
  `is_required` char(5) DEFAULT 'No',
  `field_output_value` text DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cr_system_settings_fields`
--

INSERT INTO `cr_system_settings_fields` (`field_id`, `sms_gateway_id`, `field_name`, `field_key`, `is_required`, `field_output_value`, `created`, `updated`) VALUES
(125, 1, 'User Name', 'User_Name', 'Yes', 'username', '2016-07-25 11:20:38', '2017-10-31 08:39:01'),
(126, 1, 'Password', 'Password', 'Yes', 'password', '2016-07-25 12:29:11', '2017-10-31 08:39:01'),
(127, 1, 'From No', 'From_No', 'Yes', 'from no', '2016-07-25 12:29:47', '2017-10-31 08:39:01'),
(128, 1, 'API Id', 'API_Id', 'Yes', 'api id', '2016-07-25 12:30:10', '2017-10-31 08:39:01'),
(129, 2, 'API KEY', 'API_KEY', 'Yes', 'api key', '2016-07-26 05:51:28', '2017-10-31 08:39:12'),
(130, 2, 'API SECRET', 'API_SECRET', 'Yes', 'api secret', '2016-07-26 06:00:50', '2017-10-31 08:39:12'),
(131, 3, 'AUTH ID', 'AUTH_ID', 'Yes', 'AUTH ID', '2016-07-26 09:26:52', '2017-10-31 08:39:22'),
(132, 3, 'AUTH TOKEN', 'AUTH_TOKEN', 'Yes', 'AUTH TOKEN', '2016-07-26 09:27:16', '2017-10-31 08:39:22'),
(133, 3, 'API VERSION', 'API_VERSION', 'Yes', 'v1', '2016-07-26 09:27:49', '2017-10-31 08:39:22'),
(134, 3, 'END POINT', 'END_POINT', 'Yes', 'https://api.plivo.com', '2016-07-26 09:28:14', '2017-10-31 08:39:22'),
(135, 4, 'Working Key', 'working_key', 'Yes', 'Working key', '2016-07-26 09:29:30', '2017-10-31 08:39:34'),
(136, 4, 'Sender Id', 'sender_id', 'Yes', 'Sender id', '2016-07-26 09:29:53', '2017-10-31 08:39:34'),
(137, 4, 'API URL', 'api', 'Yes', 'http://alerts.solutionsinfini.com/', '2016-07-26 09:30:15', '2017-10-31 08:39:34'),
(138, 5, 'Account SID', 'account_sid', 'Yes', 'Account SID', '2016-07-26 09:31:21', '2017-10-31 08:39:56'),
(139, 5, 'Auth Token', 'auth_token', 'Yes', 'Auth Token', '2016-07-26 09:31:54', '2017-10-31 08:39:56'),
(140, 5, 'API Version', 'api_version', 'Yes', '2010-04-01', '2016-07-26 09:32:20', '2017-10-31 08:39:56'),
(141, 5, 'Twilio Phone Number', 'Twilio_Phone_Number', 'Yes', 'phone number', '2016-07-26 09:32:57', '2017-10-31 08:39:56'),
(142, 7, 'AUTH', 'AUTH', 'Yes', 'AUTH', '2016-11-17 08:03:11', '2017-10-31 08:40:05'),
(143, 7, 'SENDER_ID', 'SENDER_ID', 'Yes', 'SENDER ID', '2016-11-17 08:03:11', '2017-10-31 08:40:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cr_tinify_settings`
--

CREATE TABLE `cr_tinify_settings` (
  `id` int(11) NOT NULL,
  `use_tinify` enum('Yes','No') DEFAULT NULL,
  `API_Key` varchar(100) DEFAULT NULL,
  `compress` enum('Yes','No') DEFAULT NULL,
  `thumb` enum('Yes','No') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cr_tinify_settings`
--

INSERT INTO `cr_tinify_settings` (`id`, `use_tinify`, `API_Key`, `compress`, `thumb`) VALUES
(1, 'No', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cr_users`
--

CREATE TABLE `cr_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `photo` varchar(1000) DEFAULT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(512) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `pincode` varchar(20) DEFAULT NULL,
  `landmark` varchar(200) DEFAULT NULL,
  `device_id` varchar(200) DEFAULT NULL,
  `platform` varchar(50) DEFAULT NULL,
  `registration_through` enum('portal','mobile') DEFAULT NULL,
  `registration_type` enum('normal','facebook','google') DEFAULT NULL,
  `referral_code` varchar(20) DEFAULT NULL,
  `user_points` int(11) DEFAULT 0,
  `refer_by` int(11) DEFAULT NULL,
  `refer_by_code` varchar(20) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `is_activated` enum('Yes','No') NOT NULL DEFAULT 'No',
  `assigned_cities` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cr_users`
--

INSERT INTO `cr_users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `photo`, `phone`, `address`, `city`, `pincode`, `landmark`, `device_id`, `platform`, `registration_through`, `registration_type`, `referral_code`, `user_points`, `refer_by`, `refer_by_code`, `created_datetime`, `updated_datetime`, `is_activated`, `assigned_cities`) VALUES
(1, '127.0.0.1', 'Admin istrator', '$2b$10$BZsmQV0HxeoovAmCyKfrpuY1UyYsAe5YzOXtK.HT0kfsOUB.kxxLa', '', 'admin@admin.com', NULL, 'B0whGSIVG-1Tr4MlqANqk.dcdc780ffa99d0633c', 1498553784, NULL, 1268889823, 1638276175, 1, 'Admin', 'istrator', 'user_1.png', '1234567890', '2009-12-24', '', '123456', '', '', '', NULL, NULL, '', 0, NULL, NULL, NULL, '2016-06-07 00:00:00', 'No', NULL),
(99, '::1', 'Kitchen Manager', '$2y$08$CHyduLmKL7h31nyWtVFtKOyvHM60mNWaS3WxkR8QXWFNwN6TUnAi2', NULL, 'kitchenmanager@gmail.com', 'e41fa8c5e4525246992a704bfab8c7c9e1c4d084', NULL, NULL, NULL, 1509454519, 1515132680, 1, 'Kitchen', 'Manager', NULL, '123456', NULL, NULL, NULL, NULL, NULL, NULL, 'portal', 'normal', NULL, 0, NULL, NULL, '2017-10-31 18:25:19', NULL, 'No', NULL),
(100, '::1', 'hùng bị deadline dí', '$2b$10$BZsmQV0HxeoovAmCyKfrpuY1UyYsAe5YzOXtK.HT0kfsOUB.kxxLa', NULL, 'deliverymanager@gmail.com', 'd36dd29cdd3664a9d56541ad4b2716b12905475c', NULL, NULL, NULL, 1509454565, 1638276110, 1, 'hùng', 'bị deadline dí', NULL, '1234567895', NULL, NULL, NULL, NULL, NULL, NULL, 'portal', 'normal', NULL, 0, NULL, NULL, '2017-10-31 18:26:05', NULL, 'No', '555'),
(106, '::1', 'Thắng Phạm', '$2b$10$BZsmQV0HxeoovAmCyKfrpuY1UyYsAe5YzOXtK.HT0kfsOUB.kxxLa', NULL, 'thangcp8@gmail.com', '3096691343e863de7a1b1251988d00685cf4666e', NULL, NULL, NULL, 1635085032, 1638241296, 1, 'Thắng', 'Phạm', NULL, '0769234431', NULL, NULL, NULL, NULL, NULL, NULL, 'portal', 'normal', '0g70cYB7H5', 0, NULL, NULL, '2021-10-24 19:47:12', NULL, 'No', NULL),
(107, '::1', 'Nguyễn Đức Hùng', '$2b$10$BZsmQV0HxeoovAmCyKfrpuY1UyYsAe5YzOXtK.HT0kfsOUB.kxxLa', NULL, 'hung.nd19010060@st.phenikaa-uni.edu.vn', '7931dc17f94acab93fbfed76be60117e03ee8421', NULL, NULL, NULL, 1635088246, 1638276010, 1, 'Nguyễn Đức', 'Hùng', NULL, '0125478965', NULL, NULL, NULL, NULL, NULL, NULL, 'portal', 'normal', NULL, 0, NULL, NULL, '2021-10-24 20:40:46', NULL, 'No', NULL),
(108, '::1', 'Bìu Thế Anh', '$2b$10$BZsmQV0HxeoovAmCyKfrpuY1UyYsAe5YzOXtK.HT0kfsOUB.kxxLa', NULL, 'anh.bt19010045@st.phenikaa-uni.edu.vn', '9ec84ad789da5144d7482fdbd70963f14fbfa72a', NULL, NULL, NULL, 1635088806, 1636904091, 1, 'Bìu Thế', 'Anh', NULL, '0917868070', NULL, NULL, NULL, NULL, NULL, NULL, 'portal', 'normal', NULL, 0, NULL, NULL, '2021-10-24 20:50:06', NULL, 'No', '531'),
(109, '::1', 'from the pát', '$2y$08$80kWptUHLLidZ.G16YLHYunHpfjcZ9b6Urqi7H1584cUxfRc88wzy', NULL, 'hung@gmail.com', '83d48eb2cf969ab50a8d193909a682f6e34b2054', NULL, NULL, NULL, 1636904171, 1638260322, 1, 'from the', 'pát', NULL, '498949165161', NULL, NULL, NULL, NULL, NULL, NULL, 'portal', 'normal', '52yHIOfAFd', 50, NULL, NULL, '2021-11-14 21:06:11', NULL, 'No', NULL),
(110, '::1', 'con  cak the', '$2y$08$XTssA0qV2XbMCRmZz/glie4upSn5KVaBxOgZea2vpGErVPdGc39bG', NULL, 'caktheto@vl.com', 'c4327b809ee0aaf04b9f63aa1cfaa46503e2270d', NULL, NULL, NULL, 1636904225, NULL, 0, 'con ', 'cak the', NULL, '498949165161', NULL, NULL, NULL, NULL, NULL, NULL, 'portal', 'normal', 'lvRaddOeWW', 0, NULL, NULL, '2021-11-14 21:07:05', NULL, 'No', NULL),
(111, '::1', 'the đến từ tương lai', '$2y$08$JYxpA2cXcdr347C7sJ5KFOUMHlHBLmUbSmu779l3o7z0thQx0X052', NULL, 'bestbraum@gmail.com', '5e6282bc231d85d7e7dfb23fc86ada3806dfa2bf', NULL, NULL, NULL, 1636904267, 1636904339, 1, 'the', 'đến từ tương lai', 'user_111.png', '498949165', NULL, NULL, NULL, NULL, NULL, NULL, 'portal', 'normal', 'uPx5TOdOFy', 0, NULL, NULL, '2021-11-14 21:07:47', NULL, 'No', NULL),
(112, '::1', 'test1 knight', '$2y$08$EkuHF8o3o2t7Wh9QaugvWecX5M7MgRVUvURM8uc/PPWeOq1hzHhuy', NULL, 'tester01@gmail.com', '1aa9661d6ec0df9e0d5b85a16e52850dab6d03a7', NULL, NULL, NULL, 1638256094, 1638257010, 1, 'test1', 'knight', NULL, '498949165161', NULL, NULL, NULL, NULL, NULL, NULL, 'portal', 'normal', 'dlQKqFnQuI', 0, NULL, NULL, '2021-11-30 14:08:14', NULL, 'No', NULL),
(113, '::1', 'umbral knight', '$2y$08$tycFVn7TNeLLD9g/dMWJ/eG6MT8AYh5qIEQQsr8ixoWyLyeK9LSSC', NULL, 'lili@gmail.com', '8996a3393aa8b2ff6aed7d6234a8fb9a1483448b', NULL, NULL, NULL, 1638256125, 1638263565, 1, 'umbral', 'knight', NULL, '0365265058', NULL, NULL, NULL, NULL, NULL, NULL, 'portal', 'normal', 'wfot7tAG2C', 0, NULL, NULL, '2021-11-30 14:08:45', NULL, 'No', NULL),
(114, '::1', 'the flash barry', '$2b$10$BZsmQV0HxeoovAmCyKfrpuY1UyYsAe5YzOXtK.HT0kfsOUB.kxxLa', NULL, 'giaohang@gmail.com', 'ecec7792caebb4ebab7af49633af8ac248fbc72b', NULL, NULL, NULL, 1638263866, 1638275997, 1, 'the flash', 'barry', NULL, '12345678', NULL, NULL, NULL, NULL, NULL, NULL, 'portal', 'normal', NULL, 0, NULL, NULL, '2021-11-30 16:17:46', NULL, 'No', '531,532,555');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cr_users_groups`
--

CREATE TABLE `cr_users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cr_users_groups`
--

INSERT INTO `cr_users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(99, 99, 3),
(100, 100, 4),
(106, 106, 2),
(107, 107, 3),
(108, 108, 4),
(109, 109, 2),
(110, 110, 2),
(111, 111, 2),
(112, 112, 2),
(113, 113, 2),
(114, 114, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cr_user_address`
--

CREATE TABLE `cr_user_address` (
  `ua_id` int(11) NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `house_no` varchar(50) NOT NULL,
  `street` varchar(1000) NOT NULL,
  `landmark` varchar(50) NOT NULL,
  `pincode` varchar(20) NOT NULL,
  `locality` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `is_default` enum('Yes','No') DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cr_user_address`
--

INSERT INTO `cr_user_address` (`ua_id`, `user_id`, `house_no`, `street`, `landmark`, `pincode`, `locality`, `city`, `is_default`, `location_id`) VALUES
(109, 106, '1111', 'đấy', 'địa chỉ đấy', '98961+5', 'quận bìu thế', 'Hồ Chí Minh', NULL, 46),
(110, 106, '1111', 'b r o f o o d', 'đâsdsa', '123456', 'Quốc Oai', 'Hà Nội', NULL, 45),
(111, 109, 'ko cos nha', 'jungle', 'địa chỉ đấy', '123456', 'Quốc Oai', 'Hà Nội', NULL, 45),
(112, 113, '1111', 'b r o f o o d', 'địa chỉ đấy', '123456', 'Quốc Oai', 'Hà Nội', NULL, 45),
(113, 112, '1111', 'trên cây', 'cau', '123456', 'no where', 'An Giang', NULL, 47);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cr_user_points`
--

CREATE TABLE `cr_user_points` (
  `customer_reward_id` int(11) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `points` int(11) DEFAULT NULL,
  `transaction_type` enum('Earned','Redeem') DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cr_user_points`
--

INSERT INTO `cr_user_points` (`customer_reward_id`, `user_id`, `points`, `transaction_type`, `order_id`, `description`, `created_on`) VALUES
(172, 109, 30, 'Earned', 270, 'points earned for first order', '2021-11-29 15:11:04'),
(173, 109, 20, 'Earned', 270, 'points earned for buy an item order', '2021-11-29 15:11:04');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cr_addons`
--
ALTER TABLE `cr_addons`
  ADD PRIMARY KEY (`addon_id`);

--
-- Chỉ mục cho bảng `cr_card_images`
--
ALTER TABLE `cr_card_images`
  ADD PRIMARY KEY (`card_image_id`);

--
-- Chỉ mục cho bảng `cr_cities`
--
ALTER TABLE `cr_cities`
  ADD PRIMARY KEY (`city_id`);

--
-- Chỉ mục cho bảng `cr_country`
--
ALTER TABLE `cr_country`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cr_email_settings`
--
ALTER TABLE `cr_email_settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cr_email_templates`
--
ALTER TABLE `cr_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cr_faqs`
--
ALTER TABLE `cr_faqs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cr_faq_categories`
--
ALTER TABLE `cr_faq_categories`
  ADD PRIMARY KEY (`fc_id`);

--
-- Chỉ mục cho bảng `cr_groups`
--
ALTER TABLE `cr_groups`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cr_items`
--
ALTER TABLE `cr_items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `fk_menu` (`menu_id`);

--
-- Chỉ mục cho bảng `cr_item_addons`
--
ALTER TABLE `cr_item_addons`
  ADD PRIMARY KEY (`item_addon_id`),
  ADD KEY `fk_item_addon_id` (`addon_id`),
  ADD KEY `fk_item_item_id` (`item_id`);

--
-- Chỉ mục cho bảng `cr_item_options`
--
ALTER TABLE `cr_item_options`
  ADD PRIMARY KEY (`item_option_id`),
  ADD KEY `fk_item_size_id` (`option_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Chỉ mục cho bảng `cr_item_types`
--
ALTER TABLE `cr_item_types`
  ADD PRIMARY KEY (`item_type_id`);

--
-- Chỉ mục cho bảng `cr_languagewords`
--
ALTER TABLE `cr_languagewords`
  ADD PRIMARY KEY (`lang_id`);

--
-- Chỉ mục cho bảng `cr_language_codes`
--
ALTER TABLE `cr_language_codes`
  ADD PRIMARY KEY (`code_id`);

--
-- Chỉ mục cho bảng `cr_login_attempts`
--
ALTER TABLE `cr_login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cr_loyality_points`
--
ALTER TABLE `cr_loyality_points`
  ADD PRIMARY KEY (`lp_id`);

--
-- Chỉ mục cho bảng `cr_menu`
--
ALTER TABLE `cr_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Chỉ mục cho bảng `cr_offers`
--
ALTER TABLE `cr_offers`
  ADD PRIMARY KEY (`offer_id`);

--
-- Chỉ mục cho bảng `cr_offer_products`
--
ALTER TABLE `cr_offer_products`
  ADD PRIMARY KEY (`offer_product_id`),
  ADD KEY `fk_offers` (`offer_id`);

--
-- Chỉ mục cho bảng `cr_options`
--
ALTER TABLE `cr_options`
  ADD PRIMARY KEY (`option_id`);

--
-- Chỉ mục cho bảng `cr_orders`
--
ALTER TABLE `cr_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `cr_order_addons`
--
ALTER TABLE `cr_order_addons`
  ADD PRIMARY KEY (`oa_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `cr_order_offers`
--
ALTER TABLE `cr_order_offers`
  ADD PRIMARY KEY (`order_offer_id`),
  ADD KEY `of_order_id` (`order_id`) USING BTREE;

--
-- Chỉ mục cho bảng `cr_order_offer_products`
--
ALTER TABLE `cr_order_offer_products`
  ADD PRIMARY KEY (`order_offer_product_id`),
  ADD KEY `op_order_id` (`order_id`) USING BTREE;

--
-- Chỉ mục cho bảng `cr_order_products`
--
ALTER TABLE `cr_order_products`
  ADD PRIMARY KEY (`op_id`),
  ADD KEY `fk_order_id` (`order_id`);

--
-- Chỉ mục cho bảng `cr_pages`
--
ALTER TABLE `cr_pages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cr_paypal_settings`
--
ALTER TABLE `cr_paypal_settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cr_referral_settings`
--
ALTER TABLE `cr_referral_settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Chỉ mục cho bảng `cr_referral_users`
--
ALTER TABLE `cr_referral_users`
  ADD PRIMARY KEY (`referral_id`),
  ADD KEY `refer_user_id` (`refer_user_id`),
  ADD KEY `refer_by` (`refer_by`);

--
-- Chỉ mục cho bảng `cr_restaurant_timings`
--
ALTER TABLE `cr_restaurant_timings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cr_seo_settings`
--
ALTER TABLE `cr_seo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cr_service_provide_locations`
--
ALTER TABLE `cr_service_provide_locations`
  ADD PRIMARY KEY (`service_provide_location_id`),
  ADD KEY `fk_city_id` (`city_id`);

--
-- Chỉ mục cho bảng `cr_sessions`
--
ALTER TABLE `cr_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Chỉ mục cho bảng `cr_site_settings`
--
ALTER TABLE `cr_site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cr_sms_gate_ways`
--
ALTER TABLE `cr_sms_gate_ways`
  ADD PRIMARY KEY (`sms_gateway_id`);

--
-- Chỉ mục cho bảng `cr_sms_templates`
--
ALTER TABLE `cr_sms_templates`
  ADD PRIMARY KEY (`sms_template_id`);

--
-- Chỉ mục cho bảng `cr_social_networks`
--
ALTER TABLE `cr_social_networks`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cr_system_settings_fields`
--
ALTER TABLE `cr_system_settings_fields`
  ADD PRIMARY KEY (`field_id`);

--
-- Chỉ mục cho bảng `cr_tinify_settings`
--
ALTER TABLE `cr_tinify_settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cr_users`
--
ALTER TABLE `cr_users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cr_users_groups`
--
ALTER TABLE `cr_users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- Chỉ mục cho bảng `cr_user_address`
--
ALTER TABLE `cr_user_address`
  ADD PRIMARY KEY (`ua_id`),
  ADD KEY `ua_id` (`ua_id`),
  ADD KEY `fk_ua_id` (`user_id`);

--
-- Chỉ mục cho bảng `cr_user_points`
--
ALTER TABLE `cr_user_points`
  ADD PRIMARY KEY (`customer_reward_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cr_addons`
--
ALTER TABLE `cr_addons`
  MODIFY `addon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `cr_card_images`
--
ALTER TABLE `cr_card_images`
  MODIFY `card_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `cr_cities`
--
ALTER TABLE `cr_cities`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=594;

--
-- AUTO_INCREMENT cho bảng `cr_country`
--
ALTER TABLE `cr_country`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT cho bảng `cr_email_settings`
--
ALTER TABLE `cr_email_settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cr_email_templates`
--
ALTER TABLE `cr_email_templates`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT cho bảng `cr_faqs`
--
ALTER TABLE `cr_faqs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `cr_faq_categories`
--
ALTER TABLE `cr_faq_categories`
  MODIFY `fc_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `cr_groups`
--
ALTER TABLE `cr_groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `cr_items`
--
ALTER TABLE `cr_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=856813;

--
-- AUTO_INCREMENT cho bảng `cr_item_addons`
--
ALTER TABLE `cr_item_addons`
  MODIFY `item_addon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT cho bảng `cr_item_options`
--
ALTER TABLE `cr_item_options`
  MODIFY `item_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `cr_item_types`
--
ALTER TABLE `cr_item_types`
  MODIFY `item_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `cr_languagewords`
--
ALTER TABLE `cr_languagewords`
  MODIFY `lang_id` bigint(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1349;

--
-- AUTO_INCREMENT cho bảng `cr_language_codes`
--
ALTER TABLE `cr_language_codes`
  MODIFY `code_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `cr_login_attempts`
--
ALTER TABLE `cr_login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `cr_loyality_points`
--
ALTER TABLE `cr_loyality_points`
  MODIFY `lp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cr_menu`
--
ALTER TABLE `cr_menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `cr_offers`
--
ALTER TABLE `cr_offers`
  MODIFY `offer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT cho bảng `cr_offer_products`
--
ALTER TABLE `cr_offer_products`
  MODIFY `offer_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=985;

--
-- AUTO_INCREMENT cho bảng `cr_options`
--
ALTER TABLE `cr_options`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `cr_orders`
--
ALTER TABLE `cr_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;

--
-- AUTO_INCREMENT cho bảng `cr_order_addons`
--
ALTER TABLE `cr_order_addons`
  MODIFY `oa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `cr_order_offers`
--
ALTER TABLE `cr_order_offers`
  MODIFY `order_offer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `cr_order_offer_products`
--
ALTER TABLE `cr_order_offer_products`
  MODIFY `order_offer_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `cr_order_products`
--
ALTER TABLE `cr_order_products`
  MODIFY `op_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT cho bảng `cr_pages`
--
ALTER TABLE `cr_pages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `cr_paypal_settings`
--
ALTER TABLE `cr_paypal_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cr_referral_settings`
--
ALTER TABLE `cr_referral_settings`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cr_referral_users`
--
ALTER TABLE `cr_referral_users`
  MODIFY `referral_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `cr_restaurant_timings`
--
ALTER TABLE `cr_restaurant_timings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `cr_seo_settings`
--
ALTER TABLE `cr_seo_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cr_service_provide_locations`
--
ALTER TABLE `cr_service_provide_locations`
  MODIFY `service_provide_location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `cr_site_settings`
--
ALTER TABLE `cr_site_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cr_sms_gate_ways`
--
ALTER TABLE `cr_sms_gate_ways`
  MODIFY `sms_gateway_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `cr_sms_templates`
--
ALTER TABLE `cr_sms_templates`
  MODIFY `sms_template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `cr_social_networks`
--
ALTER TABLE `cr_social_networks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cr_system_settings_fields`
--
ALTER TABLE `cr_system_settings_fields`
  MODIFY `field_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT cho bảng `cr_tinify_settings`
--
ALTER TABLE `cr_tinify_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cr_users`
--
ALTER TABLE `cr_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT cho bảng `cr_users_groups`
--
ALTER TABLE `cr_users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT cho bảng `cr_user_address`
--
ALTER TABLE `cr_user_address`
  MODIFY `ua_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT cho bảng `cr_user_points`
--
ALTER TABLE `cr_user_points`
  MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cr_items`
--
ALTER TABLE `cr_items`
  ADD CONSTRAINT `fk_menu` FOREIGN KEY (`menu_id`) REFERENCES `cr_menu` (`menu_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `cr_item_addons`
--
ALTER TABLE `cr_item_addons`
  ADD CONSTRAINT `fk_item_addon_id` FOREIGN KEY (`addon_id`) REFERENCES `cr_addons` (`addon_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_item_item_id` FOREIGN KEY (`item_id`) REFERENCES `cr_items` (`item_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `cr_item_options`
--
ALTER TABLE `cr_item_options`
  ADD CONSTRAINT `fk_item_size_id` FOREIGN KEY (`option_id`) REFERENCES `cr_options` (`option_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_id` FOREIGN KEY (`item_id`) REFERENCES `cr_items` (`item_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `cr_offer_products`
--
ALTER TABLE `cr_offer_products`
  ADD CONSTRAINT `fk_offers` FOREIGN KEY (`offer_id`) REFERENCES `cr_offers` (`offer_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `cr_order_addons`
--
ALTER TABLE `cr_order_addons`
  ADD CONSTRAINT `order_id` FOREIGN KEY (`order_id`) REFERENCES `cr_orders` (`order_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `cr_order_offers`
--
ALTER TABLE `cr_order_offers`
  ADD CONSTRAINT `of_order_id` FOREIGN KEY (`order_id`) REFERENCES `cr_orders` (`order_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `cr_order_offer_products`
--
ALTER TABLE `cr_order_offer_products`
  ADD CONSTRAINT `op_order_id` FOREIGN KEY (`order_id`) REFERENCES `cr_orders` (`order_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `cr_order_products`
--
ALTER TABLE `cr_order_products`
  ADD CONSTRAINT `fk_order_id` FOREIGN KEY (`order_id`) REFERENCES `cr_orders` (`order_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `cr_referral_users`
--
ALTER TABLE `cr_referral_users`
  ADD CONSTRAINT `refer_by` FOREIGN KEY (`refer_by`) REFERENCES `cr_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `refer_user_id` FOREIGN KEY (`refer_user_id`) REFERENCES `cr_users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `cr_service_provide_locations`
--
ALTER TABLE `cr_service_provide_locations`
  ADD CONSTRAINT `fk_city_id` FOREIGN KEY (`city_id`) REFERENCES `cr_cities` (`city_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `cr_users_groups`
--
ALTER TABLE `cr_users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `cr_groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `cr_users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `cr_user_address`
--
ALTER TABLE `cr_user_address`
  ADD CONSTRAINT `fk_ua_id` FOREIGN KEY (`user_id`) REFERENCES `cr_users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `cr_user_points`
--
ALTER TABLE `cr_user_points`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `cr_users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
