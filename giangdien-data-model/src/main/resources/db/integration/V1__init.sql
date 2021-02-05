DROP TABLE IF EXISTS `area`;
CREATE TABLE `area` (
  `id` varchar(32) NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `map` varchar(255) DEFAULT NULL,
  `minimap` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `businessId` varchar(32) DEFAULT NULL,
  `serviceId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);
INSERT INTO `area` VALUES ('402881855e9e8169015e9e817bb70000',NULL,NULL,NULL,'test',NULL,NULL),('402881855e9e8592015e9e8596f30000',NULL,NULL,NULL,'test',NULL,NULL);


DROP TABLE IF EXISTS `business`;
CREATE TABLE `business` (
  `id` varchar(32) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
);
INSERT INTO `business` VALUES ('402881855e9f2e78015e9f2e7d6a0000','Coffee',NULL,'Coffee for erveryone',NULL,'/'),('402881855e9f3563015e9f356dbb0000','Coffee',NULL,'Coffee for erveryone',NULL,'/');

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` varchar(32) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `businessId` varchar(32) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `business` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` varchar(32) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `phonenumber` varchar(45) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `id` varchar(32) NOT NULL,
  `login` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `phonenumber` varchar(20) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `profilepicture` varchar(255) DEFAULT NULL,
  `identificationNo` varchar(9) DEFAULT NULL,
  `qualification` varchar(100) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `date_join` date DEFAULT NULL,
  `date_leave` date DEFAULT NULL,
  `passwordEncryption` varchar(255) DEFAULT NULL,
  `pinpadPassword` varchar(8) DEFAULT NULL,
  `pinpadPasswordEncryption` varchar(255) DEFAULT NULL,
  `accountNonLocked` tinyint(1) DEFAULT NULL,
  `tries` int(11) DEFAULT NULL,
  `lastTriedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
);
INSERT INTO `employee` VALUES ('01','superadmin','17c4520f6cfd1ab53d8745e84681eb49','super','admin','',1,'','','','',NULL,NULL,NULL,'2ecddb45fa33108c1915b0e1cd73319624d8be5b',NULL,NULL,NULL,NULL,NULL);

DROP TABLE IF EXISTS `employee_activity`;
CREATE TABLE `employee_activity` (
  `id` varchar(32) NOT NULL,
  `employeeId` varchar(32) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `arrival_time` datetime DEFAULT NULL,
  `leave_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `employee_activity_detail`;
CREATE TABLE `employee_activity_detail` (
  `id` varchar(32) NOT NULL,
  `orderId` varchar(32) DEFAULT NULL,
  `employeeActivityId` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `employee_role`;
CREATE TABLE `employee_role` (
  `id` varchar(32) NOT NULL,
  `code` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `employeeId` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
);
INSERT INTO `employee_role` VALUES ('01','SUPER_ADMIN','Super User','01'),('02','ANONYMOUS','ANONYMOUS','01');

DROP TABLE IF EXISTS `event`;
CREATE TABLE `event` (
  `id` varchar(32) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `gallery`;
CREATE TABLE `gallery` (
  `id` varchar(32) NOT NULL,
  `imageUrl` varchar(255) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `import`;
CREATE TABLE `import` (
  `id` varchar(32) NOT NULL,
  `employee_id` varchar(32) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `import_detail`;
CREATE TABLE `import_detail` (
  `id` varchar(32) NOT NULL,
  `mertierial_id` varchar(32) NOT NULL,
  `import_id` varchar(32) NOT NULL,
  `unit` varchar(10) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `internationalization`;
CREATE TABLE `internationalization` (
  `id` varchar(32) NOT NULL,
  `key_code` varchar(45) NOT NULL,
  `text` varchar(1000) DEFAULT NULL,
  `lang` varchar(20) DEFAULT NULL,
  `group_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`,`key_code`)
);
INSERT INTO `internationalization` VALUES ('0ac7c62c744145849d579b02daa38503','SECONDARY_BUSINESS_ADDR_PROVINCE','Dong Nai Province','en','BASE_INFO'),('0e6589ee8e054c8b9d33c0f280b76039','BUSINESS_SKYPE','#','en','BASE_INFO'),('112827b24be9473aabd79b54cab6b83c','SECONDARY_BUSINESS_ADDR_COUNTRY','Vietnam','en','BASE_INFO'),('18fe382b3cd54dff9b992c2ba628b492','SECONDARY_OWNER_PHONE','(+84) 0908 098 278','en','BASE_INFO'),('1970192b977945fba7ab29fe6a1e3ec3','BUSINESS_MAP_COORDINATES_X','106.9835408','en','BASE_INFO'),('2104f9972ac947d9877167c06a5b6d0b','OWNER_PHONE','(+84) 0908 098 278','en','BASE_INFO'),('22bab9b0977a42aaa8e708f13fd2dc94','ADDR_WARD','value','en','BASE_INFO'),('36e38fb945914a3c998b1220be83bf33','STORE_NAME','Giang Dien','en','BASE_INFO'),('397d1feeb10d496a809dabe31302ec6f','SECONDARY_BUSINESS_ADDR_STREET','172 3/2 Street','en','BASE_INFO'),('3c59e4cdf880418487c5e6d83c5a0019','BUSINESS_NAME','Da Khuc | Food &amp; Beverage Concepts','en','BASE_INFO'),('3d47003797e2437da2320e9dae52f55c','BUSINESS_CLOSE_TIME','22:00','en','BASE_INFO'),('499cc46677b34d1f9dbf555ec5573dfa','OWNER_GENDER','male','en','BASE_INFO'),('4be54b0a4114406a96ae115e3da4189f','BUSINESS_OPEN_TIME','07:00','en','BASE_INFO'),('5375469b3d1d4fb883dcc878f7f5a3c0','SECONDARY_BUSINESS_ADDR_WARD','','en','BASE_INFO'),('53c6075e1aed4ed3872a9eba0e99734c','BUSINESS_FB_URL','https://www.facebook.com/dakhucgiangdien','en','BASE_INFO'),('56d6e95d3b7e44e19cad53eb9e2475df','SECONDARY_OWNER_NAME','Phuc','en','BASE_INFO'),('5f2314dc361f496d9aeb70016dcbf1f4','BUSINESS_MAP_COORDINATES_Y','10.9026093','en','BASE_INFO'),('60ccd9eff41f4b4698b4ed880597c396','OWNER_NAME','Huu Duc','en','BASE_INFO'),('70937c4e7ef04ad2aebf9e2221d28a6c','OWNER_EMAIL','ducnh@khudichvugiangdien.com','en','BASE_INFO'),('773f10f4485f418eb63770452bf1ea98','ADDR_PROVINCE','Dong Nai','en','BASE_INFO'),('7e1b254e49764b71ae27fd3c26581456','ADDR_STREET','AH 1, Giang Dien Industrial Park','en','BASE_INFO'),('8c7614d7166c40a7842238a9fb267e21','SECONDARY_BUSINESS_ADDR_CITY','Trang Bom District','en','BASE_INFO'),('9d0ef77206d440fd874c3eb7c5c23e10','SECONDARY_MAP_COORDINATES_X','10.949870','en','BASE_INFO'),('9dae0ce0e7d84f4487ab2f97488c1fa5','SECONDARY_BUSINESS_NAME','DA KHUC COFFEE','en','BASE_INFO'),('a0ebeaa4514f4aa9b257b59783298c0b','BUSINESS_SLOGAN','Get the best dining experience','en','BASE_INFO'),('a32a47edc552492c9fe34e5428fa6e77','ADDR_CITY','Trang Bom District','en','BASE_INFO'),('a51ceace1f9e4c6b8d6a2b45a6e40d7d','BUSINESS_TWITTER_URL','#','en','BASE_INFO'),('a5c108a866ed4a80a51c633b319ecf79','BUSINESS_SECTOR','Coffee & Restaurant','en','BASE_INFO'),('a6a1b93154cc4c1d8eaa37a0e0708008','BUSINESS_GG_URL','#','en','BASE_INFO'),('bbf2eeb5e4844dd0bee857855e4614e5','BUSINESS_PHONE','(+84) 0908 098 278','en','BASE_INFO'),('c601a2ea7548441a956df7c3ee520eae','ADDR_COUNTRY','VN','en','BASE_INFO'),('cc6e1428762e49569ab95ce458b16756','SECONDARY_OWNER_EMAIL','phuc@dakhuccafe.com','en','BASE_INFO'),('cced7dec48044ea881a66357bf5740c2','SECONDARY_MAP_COORDINATES_Y','10.949870','en','BASE_INFO'),('e8b6e344ae4947f18f344ed941777397','BUSINESS_GG_ANALYTIC_ID','','en','BASE_INFO'),('eac0c449ffce460a9cbea00a0ebcc81d','SECONDARY_OWNER_GENDER','female','en','BASE_INFO'),('f4a88378bd5d468f96d8faea31ae97f7','BUSINESS_DESC','We introduce new cultures to visitors through cuisines of various countries, offering a special dish for everyone regardless of their food preferences.','en','BASE_INFO');

DROP TABLE IF EXISTS `material`;
CREATE TABLE `material` (
  `id` varchar(32) NOT NULL,
  `name` varchar(50) NOT NULL,
  `unit` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
);
INSERT INTO `material` VALUES ('01','Coffee Bean','kg');

DROP TABLE IF EXISTS `order_activity`;
CREATE TABLE `order_activity` (
  `id` varchar(32) NOT NULL,
  `userId` varchar(32) DEFAULT NULL,
  `tableId` varchar(32) DEFAULT NULL,
  `summary` varchar(500) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `order_activity_detail`;
CREATE TABLE `order_activity_detail` (
  `id` varchar(32) NOT NULL,
  `orderId` varchar(32) DEFAULT NULL,
  `productId` varchar(32) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` varchar(32) NOT NULL,
  `subCategoryId` varchar(32) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `detail` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `promotion`;
CREATE TABLE `promotion` (
  `id` varchar(32) NOT NULL,
  `product_id` varchar(32) DEFAULT NULL,
  `sub_category_id` varchar(32) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `discout_type` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `recipe`;
CREATE TABLE `recipe` (
  `id` varchar(32) NOT NULL,
  `product_id` varchar(32) NOT NULL,
  `store_id` varchar(32) NOT NULL,
  `unit` varchar(10) DEFAULT NULL,
  `weigh` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `reference_image`;
CREATE TABLE `reference_image` (
  `id` varchar(32) NOT NULL,
  `referenceId` varchar(32) NOT NULL,
  `imageId` varchar(32) NOT NULL,
  `typeFlag` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `store`;
CREATE TABLE `store` (
  `id` varchar(32) NOT NULL,
  `material_id` varchar(32) NOT NULL,
  `import_id` varchar(32) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `unit` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `sub_category`;
CREATE TABLE `sub_category` (
  `id` varchar(32) NOT NULL,
  `categoryId` varchar(32) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `table_activity`;
CREATE TABLE `table_activity` (
  `id` varchar(32) NOT NULL,
  `tableId` varchar(32) NOT NULL,
  `orderId` varchar(32) NOT NULL,
  `date` date DEFAULT NULL,
  `arrival_time` datetime DEFAULT NULL,
  `leave_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`tableId`,`orderId`)
);

DROP TABLE IF EXISTS `table_location`;
CREATE TABLE `table_location` (
  `id` varchar(32) NOT NULL,
  `areaId` varchar(32) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `numberOfSeats` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `picture` varchar(1000) DEFAULT NULL,
  `posX` double DEFAULT NULL,
  `posY` double DEFAULT NULL,
  `zoom` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ;