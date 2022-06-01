/*
Navicat MySQL Data Transfer

Source Server         : eforinaj
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : fiber

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2022-06-01 15:21:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_answer
-- ----------------------------
DROP TABLE IF EXISTS `sys_answer`;
CREATE TABLE `sys_answer` (
  `answer_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `topic_id` bigint(20) DEFAULT NULL,
  `doc` text COMMENT '文档下载',
  `content` varchar(255) DEFAULT NULL,
  `is_adoption` tinyint(4) DEFAULT '1' COMMENT '是否被采纳，1未采纳，2已采纳',
  `price` decimal(10,2) DEFAULT NULL,
  `likes` bigint(20) DEFAULT NULL,
  `views` bigint(20) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '状态：0全部, 1待审核，2已发布，3拒绝，4草稿',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `delete_time` datetime DEFAULT NULL,
  PRIMARY KEY (`answer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_answer
-- ----------------------------

-- ----------------------------
-- Table structure for sys_article
-- ----------------------------
DROP TABLE IF EXISTS `sys_article`;
CREATE TABLE `sys_article` (
  `article_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '发布的用户',
  `cate_id` bigint(20) DEFAULT NULL COMMENT '分类id',
  `hots` bigint(20) DEFAULT NULL,
  `favorites` bigint(20) DEFAULT NULL,
  `likes` bigint(20) DEFAULT NULL,
  `views` bigint(20) DEFAULT NULL COMMENT '阅读量',
  `title` varchar(150) DEFAULT NULL COMMENT '标题',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `content` mediumtext COMMENT '内容',
  `cover` varchar(255) DEFAULT NULL COMMENT '封面',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态：0全部,1待审核 ，2已发布 ，3拒绝，4草稿',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_article
-- ----------------------------
INSERT INTO `sys_article` VALUES ('14', '1', '14', '123123', '12312', '312', '3135', '蜂刺轻内容管理系统', '开发方式采用前后端分离方式开发。技术栈用到Go语言，redis，mysql，vue，uniapp等多项技术。-服务端采用goframe作为开发框架，前台交互采用nuxt.js作为ssr框架，后台管理采用了antd-vue-admin。\n- ', '<h1 class=\"md-end-block md-heading\"><span class=\"md-plain\">BeeThorn V0.1.5</span></h1>\n<p class=\"md-end-block md-p\"><span class=\"md-meta-i-c  md-link\"><a href=\"https://gitee.com/link?target=https%3A%2F%2Fgoframe.org%2Fpages%2Fviewpage.action%3FpageId%3D1114119\"><span class=\"md-image md-img-loaded\" data-src=\"https://img.shields.io/badge/goframe-1.x-brightgreen\"><img src=\"https://img.shields.io/badge/goframe-1.x-brightgreen\" alt=\"goframe\" /></span> </a></span><span class=\"md-meta-i-c  md-link\"><a href=\"https://img.shields.io/badge/vue-2-brightgreen\"> </a></span><span class=\"md-meta-i-c  md-link\"><a href=\"https://element-plus.gitee.io/#/zh-CN/component/changelog\"><span class=\"md-image md-img-loaded\" data-src=\"https://img.shields.io/badge/vue-2.x-brightgreen\"><img src=\"https://img.shields.io/badge/vue-2.x-brightgreen\" alt=\"vue\" /></span> </a></span><span class=\"md-meta-i-c  md-link\"><a href=\"https://gitee.com/link?target=https%3A%2F%2Fwww.tslang.cn%2F\"><span class=\"md-image md-img-loaded\" data-src=\"https://img.shields.io/badge/nuxt-2.x-orange\"><img src=\"https://img.shields.io/badge/nuxt-2.x-orange\" alt=\"nuxt\" /></span> </a></span></p>\n<h2 class=\"md-end-block md-heading\"><span class=\"md-plain\">平台简介</span></h2>\n<ul class=\"ul-list\" data-mark=\"-\">\n<li class=\"md-list-item\">\n<p class=\"md-end-block md-p\"><span class=\"md-plain\">开发方式采用前后端分离方式开发。</span></p>\n</li>\n<li class=\"md-list-item\">\n<p class=\"md-end-block md-p\"><span class=\"md-plain\">技术栈用到Go语言，redis，mysql，vue，uniapp等多项技术。</span></p>\n</li>\n<li class=\"md-list-item\">\n<p class=\"md-end-block md-p\"><span class=\"md-plain md-expand\">服务端采用goframe作为开发框架，前台交互采用nuxt.js作为ssr框架，后台管理采用了antd-vue-admin。</span></p>\n</li>\n<li class=\"md-list-item\">\n<p class=\"md-end-block md-p\"><span class=\"md-plain md-expand\">本项目由</span><span class=\"md-pair-s \"><strong><span class=\"md-plain\">Eforinaj</span></strong></span><span class=\"md-plain\">个人独立开发。</span></p>\n</li>\n</ul>\n<h2 class=\"md-end-block md-heading md-focus\"><span class=\"md-plain\">特征</span></h2>\n<ul class=\"ul-list\" data-mark=\"-\">\n<li class=\"md-list-item\">\n<p class=\"md-end-block md-p\"><span class=\"md-plain md-expand\">高生产率：几分钟即可搭建一个轻内容管理系统</span></p>\n</li>\n<li class=\"md-list-item\">\n<p class=\"md-end-block md-p\"><span class=\"md-plain\">前后端分离：更方便的自定义前台模板</span></p>\n</li>\n</ul>\n<h2 class=\"md-end-block md-heading\"><span class=\"md-plain\">内置功能</span></h2>\n<ol class=\"ol-list\" start=\"\">\n<li class=\"md-list-item\">\n<p class=\"md-end-block md-p\"><span class=\"md-plain\">用户模块：用户是系统操作者，该功能主要完成系统用户配置。</span></p>\n</li>\n<li class=\"md-list-item\">\n<p class=\"md-end-block md-p\"><span class=\"md-plain\">内容模块：内置文章，音频，视频，资源，网课，圈子，问答，动态帖子，导航等多个模块。</span></p>\n</li>\n<li class=\"md-list-item\">\n<p class=\"md-end-block md-p\"><span class=\"md-plain\">互动模块：支持在线发帖，问答，评论，点赞收藏，等多种互动功能。</span></p>\n</li>\n<li class=\"md-list-item\">\n<p class=\"md-end-block md-p\"><span class=\"md-plain\">管理员模块：后台管理实现rbac多角色，多权限管理运营。</span></p>\n</li>\n<li class=\"md-list-item\">\n<p class=\"md-end-block md-p\"><span class=\"md-plain\">变现功能：支付宝，微信，卡密，人工充值。用户收益在线提现分成等功能模块。</span></p>\n</li>\n<li class=\"md-list-item\">\n<p class=\"md-end-block md-p\"><span class=\"md-plain\">媒体管理：支持大文件断点续传，秒传等功能。</span></p>\n</li>\n</ol>\n<blockquote>\n<p class=\"md-end-block md-p\"><span class=\"md-plain\">项目使用前后端化的方式开发，目前开发计划中有：基于flutter的app，uniapp的h5以及消除...，同时也欢迎大家有好的建议反馈给我，我来帮您实现技术变现，获取收益！</span></p>\n</blockquote>\n<blockquote>\n<p class=\"md-end-block md-p\"><span class=\"md-plain\">我开源以来得到了大家的很多支持，如果您愿意为我贡献的代码或提供建议，请加微信：973728679(备注：蜂刺)</span></p>\n</blockquote>\n<h2 class=\"md-end-block md-heading\"><span class=\"md-plain\">演示地址</span></h2>\n<p class=\"md-end-block md-p\"><span class=\"md-plain\">前台演示：</span><a href=\"http://www.beethorn.com/\" target=\"_blank\" rel=\"noopener\"><span class=\"md-meta-i-c  md-link\"><span class=\"md-plain\">http://www.beethorn.com/</span></span></a></p>\n<p class=\"md-end-block md-p\"><span class=\"md-plain\">后台演示：</span><a href=\"http://www.beethorn.com/admin\" target=\"_blank\" rel=\"noopener\"><span class=\"md-meta-i-c  md-link\"><span class=\"md-plain\">http://www.beethorn.com/admin</span></span></a></p>\n<h2 class=\"md-end-block md-heading\"><span class=\"md-plain\">环境配置需求</span></h2>\n<p class=\"md-end-block md-p\"><span class=\"md-plain\">建议使用Linux的系统，服务器配置2h2g以上。</span></p>\n<h2 class=\"md-end-block md-heading\"><span class=\"md-plain\">文档地址</span></h2>\n<blockquote>\n<p class=\"md-end-block md-p\"><span class=\"md-plain\">文档正在书写中，请耐心等一等。</span></p>\n</blockquote>\n<h2 class=\"md-end-block md-heading\"><span class=\"md-plain\">相关视频</span></h2>\n<p class=\"md-end-block md-p\"><a href=\"https://space.bilibili.com/400486919\" target=\"_blank\" rel=\"noopener\"><span class=\"md-meta-i-c  md-link\"><span class=\"md-plain\">https://space.bilibili.com/400486919</span></span></a></p>\n<h2 class=\"md-end-block md-heading\"><span class=\"md-plain\">演示图</span></h2>\n<figure class=\"md-table-fig\"></figure>\n<h2 class=\"md-end-block md-heading\"><span class=\"md-plain\">感谢(排名不分先后)</span></h2>\n<blockquote>\n<p class=\"md-end-block md-p\">&nbsp;</p>\n</blockquote>\n<h2 class=\"md-end-block md-heading\"><span class=\"md-plain\">交流QQ群</span></h2>\n<blockquote>\n<p class=\"md-end-block md-p\">感谢你使用蜂刺,我的个人精力时间有限，因此我们不再提供免费的技术服务，目前蜂刺 QQ交流群有部分用户进行了捐赠，捐赠后请联系作者进vip用户群，vip群中问题将得到优先解答，同时也会根据您的需求进行分析和优先安排，vip群也会提供蜂刺的其它福利。 同时您也可以联系我们，雇佣我们团队为您干活，谢谢合作！ 快来加入群聊【蜂刺交流群】(群号488741878)，发现精彩内容，记得备注加群来意。</p>\n</blockquote>\n<h2 class=\"md-end-block md-heading\"><span class=\"md-plain\">免责声明：</span></h2>\n<blockquote>\n<p class=\"md-end-block md-p\"><span class=\"md-plain\">1、蜂刺（BeeThorn）仅限自己学习使用，一切商业行为与蜂刺（BeeThorn）无关。</span></p>\n<p class=\"md-end-block md-p\"><span class=\"md-plain\">2、用户不得利用蜂刺（BeeThorn）从事非法行为，用户应当合法合规的使用，发现用户在使用产品时有任何的非法行为，蜂刺（BeeThorn）有权配合有关机关进行调查或向政府部门举报，蜂刺（BeeThorn）不承担用户因非法行为造成的任何法律责任，一切法律责任由用户自行承担，如因用户使用造成第三方损害的，用户应当依法予以赔偿。</span></p>\n<p class=\"md-end-block md-p\"><span class=\"md-plain\">3、所有与使用蜂刺（BeeThorn）相关的资源直接风险均由用户承担。</span></p>\n</blockquote>\n<h2 class=\"md-end-block md-heading\"><span class=\"md-plain\">商用说明</span></h2>\n<blockquote>\n<p class=\"md-end-block md-p\"><span class=\"md-plain\">商用注意事项 如果您将此项目用于商业用途，请遵守Apache2.0协议并保留作者技术支持声明。</span></p>\n</blockquote>\n<ul class=\"ul-list\" data-mark=\"-\">\n<li class=\"md-list-item\">\n<p class=\"md-end-block md-p\"><span class=\"md-plain\">蜂刺（BeeThorn）快速开发平台采用Apache-2.0技术协议</span></p>\n</li>\n<li class=\"md-list-item\">\n<p class=\"md-end-block md-p\"><span class=\"md-plain\">二次开发如用于商业性质或开源竞品请不要删除和修改蜂刺（BeeThorn）源码头部的版权与作者声明及出处</span></p>\n</li>\n<li class=\"md-list-item\">\n<p class=\"md-end-block md-p\"><span class=\"md-plain\">允许进行商用，但是不允许二次开源出来并进行收费</span></p>\n</li>\n<li class=\"md-list-item\">\n<p class=\"md-end-block md-p\"><span class=\"md-plain\">我们已经申请了相关的软件著作权和相关登记</span></p>\n</li>\n<li class=\"md-list-item\">\n<p class=\"md-end-block md-p\"><span class=\"md-plain\">如果您在自己的项目中使用了我们项目中的扩展或模块，请在项目介绍中进行明确说明</span></p>\n</li>\n</ul>\n<h2 class=\"md-end-block md-heading\"><span class=\"md-plain\">支持开源</span></h2>\n<p class=\"md-end-block md-p md-focus\"><span class=\"md-plain\">如果您喜爱蜂刺（BeeThorn），请给常熬夜的作者资金赞助一下吧！</span></p>', 'http://beethorn.com/public/uploads/2022-05-21/ck578w4erbhuwnb1fl.png', '2', '2022-05-21 10:20:33', '2022-05-21 13:44:23', null, '');

-- ----------------------------
-- Table structure for sys_audio
-- ----------------------------
DROP TABLE IF EXISTS `sys_audio`;
CREATE TABLE `sys_audio` (
  `audio_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `cate_id` bigint(20) DEFAULT NULL COMMENT '分类',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `cover` varchar(255) DEFAULT NULL COMMENT '封面',
  `link` varchar(255) DEFAULT NULL COMMENT '视频地址',
  `hots` bigint(20) DEFAULT NULL COMMENT '热度',
  `likes` bigint(20) DEFAULT NULL COMMENT '点赞数',
  `favorites` bigint(20) unsigned DEFAULT NULL COMMENT '收藏',
  `views` bigint(20) DEFAULT NULL COMMENT '播放量',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `other_link` varchar(255) DEFAULT NULL COMMENT '第三方地址',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态：0全部,1待审核 ，2已发布 ，3拒绝，4草稿',
  `delete_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`audio_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_audio
-- ----------------------------

-- ----------------------------
-- Table structure for sys_authority
-- ----------------------------
DROP TABLE IF EXISTS `sys_authority`;
CREATE TABLE `sys_authority` (
  `authority_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `title` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `component` varchar(100) DEFAULT NULL COMMENT '组件地址',
  `order_by` int(10) DEFAULT NULL,
  `redirect` varchar(200) DEFAULT NULL COMMENT '跳转',
  `path` varchar(200) DEFAULT '#' COMMENT '请求地址',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `target` tinyint(4) DEFAULT '1' COMMENT '打开方式（1页签 2新窗口）',
  `type` tinyint(4) DEFAULT '1' COMMENT '菜单类型（1目录 2菜单 3按钮）',
  `hidden` tinyint(4) DEFAULT '2' COMMENT '菜单状态（2显示 1隐藏）',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`authority_id`)
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_authority
-- ----------------------------
INSERT INTO `sys_authority` VALUES ('1', '权限管理', '0', 'PageView', '1', '/authority/list', '/authority', '/authority', '1', '1', '2', 'bars', '2021-09-18 23:49:59', '2021-09-20 13:47:51', '');
INSERT INTO `sys_authority` VALUES ('2', '权限列表', '1', 'AuthorityList', null, null, '/authority/list', '/authority/list', '1', '2', '2', '', '2021-09-18 23:51:48', '2021-09-18 23:51:50', '');
INSERT INTO `sys_authority` VALUES ('3', '权限创建', '1', 'AuthorityCreate', null, null, '/authority/create', '/authority/create', '1', '2', '1', '#', '2021-09-19 17:34:52', '2021-09-19 17:34:54', '');
INSERT INTO `sys_authority` VALUES ('4', '权限编辑', '1', 'AuthorityEdit', '0', '', '/authority/edit', '/authority/edit', '1', '2', '1', '', null, '2021-09-19 21:41:28', '');
INSERT INTO `sys_authority` VALUES ('5', '权限删除', '1', '', '0', '', '', '/authority/remove', '0', '3', '0', '', '2021-09-19 21:43:17', '2021-09-19 21:43:17', '');
INSERT INTO `sys_authority` VALUES ('8', '管理列表', '1', 'MangerList', '2', '', '/manger/list', '/manger/list', '1', '2', '2', '', '2021-09-19 22:48:29', '2021-09-19 22:48:29', '');
INSERT INTO `sys_authority` VALUES ('9', '管理创建', '1', 'MangerCreate', '0', '', '/manger/create', '/manger/create', '1', '2', '1', '', '2021-09-19 23:05:14', '2021-09-20 19:41:27', '');
INSERT INTO `sys_authority` VALUES ('10', '角色列表', '1', 'RoleList', '3', '', '/role/list', '/role/list', '1', '2', '2', '', '2021-09-19 23:10:25', '2021-09-19 23:10:25', '');
INSERT INTO `sys_authority` VALUES ('11', '角色创建', '1', 'RoleCreate', '0', '', '/role/create', '/role/create', '1', '2', '1', '', null, '2021-09-20 00:27:31', '');
INSERT INTO `sys_authority` VALUES ('12', '角色编辑', '1', 'RoleEdit', '0', '', '/role/edit', '/role/edit', '1', '2', '1', '', null, '2021-09-20 01:16:42', '');
INSERT INTO `sys_authority` VALUES ('14', '管理编辑', '1', 'MangerEdit', '0', '', '/manger/edit', '/manger/edit', '1', '2', '1', '', '2021-09-20 13:09:29', '2021-09-20 19:41:17', '');
INSERT INTO `sys_authority` VALUES ('15', '管理删除', '1', '', '0', '', '', '/manger/remove', '0', '3', '0', '', '2021-09-20 13:34:09', '2021-09-20 19:41:05', '');
INSERT INTO `sys_authority` VALUES ('16', '系统管理', '0', 'PageView', '2', '/system/setting', '/system', '/system', '1', '1', '2', 'bars', '2021-09-20 13:46:52', '2021-09-20 13:47:58', '');
INSERT INTO `sys_authority` VALUES ('17', '系统设置', '16', 'SystemSetting', '10', '', '/system/setting', '/system/setting', '1', '2', '2', '', '2021-09-20 13:51:45', '2021-09-20 13:51:45', '');
INSERT INTO `sys_authority` VALUES ('18', '系统保存', '16', '', '0', '', '', '/system/save', '0', '3', '0', '', '2021-09-20 14:02:06', '2021-09-20 14:02:06', '');
INSERT INTO `sys_authority` VALUES ('19', '支付配置', '16', 'PayOption', '2', '', '/pay/option', '/pay/option', '1', '2', '2', '', '2021-09-20 16:19:18', '2021-09-20 16:19:18', '');
INSERT INTO `sys_authority` VALUES ('20', '存储配置', '16', 'OssOption', '0', '', '/oss/option', '/oss/option', '1', '2', '2', '', '2021-09-20 16:30:04', '2021-09-20 16:30:11', '');
INSERT INTO `sys_authority` VALUES ('21', '邮箱配置', '16', 'EmailOption', '0', '', '/email/option', '/email/option', '1', '2', '2', '', '2021-09-20 16:30:40', '2021-09-20 16:30:45', '');
INSERT INTO `sys_authority` VALUES ('27', '系统工具', '0', 'PageView', '3', '/media/list', '/aggregation', '/aggregation', '1', '1', '2', 'bars', '2021-09-20 20:25:39', '2021-09-22 20:07:42', '');
INSERT INTO `sys_authority` VALUES ('28', '媒体列表', '27', 'MediaList', '1', '', '/media/list', '/media/list', '1', '2', '2', '', '2021-09-20 21:18:33', '2021-09-20 21:18:33', '');
INSERT INTO `sys_authority` VALUES ('29', '文章管理', '0', 'PageView', '6', '/article/list', '/article', '/article', '1', '1', '2', 'bars', '2021-09-20 21:20:18', '2021-09-23 12:09:40', '');
INSERT INTO `sys_authority` VALUES ('30', '文章列表', '29', 'ArticleList', '0', '', '/article/list', '/article/list', '1', '2', '2', '', '2021-09-20 21:21:38', '2021-09-23 00:32:49', '');
INSERT INTO `sys_authority` VALUES ('31', '文章创建', '29', 'ArticleCreate', '0', '', '/article/create', '/article/create', '1', '2', '2', '', '2021-09-20 21:22:18', '2021-09-23 01:00:52', '');
INSERT INTO `sys_authority` VALUES ('32', '媒体删除', '28', '', '0', '', '', '/media/remove', '0', '3', '0', '', '2021-09-22 16:35:17', '2021-09-22 16:35:17', '');
INSERT INTO `sys_authority` VALUES ('34', '媒体上传', '28', '', '0', '', '', '/media/upload', '0', '3', '0', '', '2021-09-22 22:00:29', '2021-09-22 22:00:29', '');
INSERT INTO `sys_authority` VALUES ('35', '文章审核', '30', '', '0', '', '', '/article/review', '0', '3', '0', '', '2021-09-22 22:04:53', '2021-09-22 22:04:53', '');
INSERT INTO `sys_authority` VALUES ('36', '文章编辑', '29', 'ArticleEdit', '0', '', '/article/edit', '/article/edit', '1', '2', '1', '', '2021-09-22 22:05:42', '2021-09-23 00:30:32', '');
INSERT INTO `sys_authority` VALUES ('37', '文章编辑信息', '36', '', '0', '', '', '/article/edit/info', '0', '3', '0', '', '2021-09-22 22:06:09', '2021-09-22 22:06:17', '');
INSERT INTO `sys_authority` VALUES ('38', '文章移入回收站', '30', '', '0', '', '', '/article/recover', '0', '3', '0', '', '2021-09-22 22:07:03', '2021-09-22 22:09:52', '');
INSERT INTO `sys_authority` VALUES ('39', '文章还原', '30', '', '0', '', '', '/article/reduction', '0', '3', '0', '', '2021-09-22 22:07:21', '2021-09-22 22:07:21', '');
INSERT INTO `sys_authority` VALUES ('40', '文章删除', '30', '', '0', '', '', '/article/remove', '0', '3', '0', '', '2021-09-22 22:07:44', '2021-09-22 22:07:44', '');
INSERT INTO `sys_authority` VALUES ('42', '分类管理', '45', 'CategoryList', '0', '', '/category/list', '/category/list', '1', '2', '2', '', '2021-09-23 00:32:25', '2021-09-23 01:03:58', '');
INSERT INTO `sys_authority` VALUES ('43', '分类删除', '42', '', '0', '', '', '/category/remove', '0', '3', '0', '', '2021-09-23 00:48:35', '2021-09-23 00:48:35', '');
INSERT INTO `sys_authority` VALUES ('44', '分类创建', '45', 'CategoryCreate', '0', '', '/category/create', '/category/create', '1', '2', '1', '', '2021-09-23 00:49:03', '2021-10-14 14:05:50', '');
INSERT INTO `sys_authority` VALUES ('45', '运营中心', '0', 'PageView', '5', '', '/operation', '/operation', '1', '1', '2', 'bars', '2021-09-23 01:02:01', '2021-09-23 12:09:35', '');
INSERT INTO `sys_authority` VALUES ('46', '标签列表', '45', 'TagList', '0', '', '/tag/list', '/tag/list', '1', '2', '2', '', '2021-09-23 01:17:22', '2021-09-23 01:17:22', '');
INSERT INTO `sys_authority` VALUES ('47', '标签推荐', '46', '', '0', '', '', '/tag/top', '0', '3', '0', '', '2021-09-23 01:18:59', '2021-09-23 01:18:59', '');
INSERT INTO `sys_authority` VALUES ('48', '标签删除', '46', '', '0', '', '', '/tag/remove', '0', '3', '0', '', '2021-09-23 01:19:22', '2021-09-23 01:19:22', '');
INSERT INTO `sys_authority` VALUES ('52', '音频管理', '0', 'PageView', '7', '/audio/list', '/audio', '/audio', '1', '1', '2', 'bars', '2021-09-23 12:11:25', '2021-09-23 12:11:25', '');
INSERT INTO `sys_authority` VALUES ('53', '音频列表', '52', 'AudioList', '0', '', '/audio/list', '/audio/list', '1', '2', '2', '', '2021-09-23 12:16:41', '2021-09-23 12:31:11', '');
INSERT INTO `sys_authority` VALUES ('54', '音频创建', '52', 'AudioCreate', '0', '', '/audio/create', '/audio/create', '1', '2', '2', '', '2021-09-23 12:17:10', '2021-09-23 12:17:10', '');
INSERT INTO `sys_authority` VALUES ('55', '音频编辑', '52', 'AudioEdit', '0', '', '/audio/edit', '/audio/edit', '1', '2', '1', '', '2021-09-23 12:17:39', '2021-09-23 12:17:39', '');
INSERT INTO `sys_authority` VALUES ('56', '查询模块分类', '42', '', '0', '', '', '/category/module', '0', '3', '0', '', '2021-09-23 12:29:16', '2021-09-23 12:29:16', '');
INSERT INTO `sys_authority` VALUES ('57', '热门标签', '46', '', '0', '', '', '/tag/hots', '0', '3', '0', '', '2021-09-23 13:09:54', '2021-09-23 13:09:54', '');
INSERT INTO `sys_authority` VALUES ('58', '音频删除', '53', '', '0', '', '', '/audio/remove', '0', '3', '0', '', '2021-09-23 14:35:29', '2021-09-23 14:37:17', '');
INSERT INTO `sys_authority` VALUES ('59', '音频还原', '53', '', '0', '', '', '/audio/reduction', '0', '3', '0', '', '2021-09-23 14:35:52', '2021-09-23 14:37:09', '');
INSERT INTO `sys_authority` VALUES ('60', '音频移入回收站', '53', '', '0', '', '', '/audio/recover', '0', '3', '0', '', '2021-09-23 14:36:13', '2021-09-23 14:36:13', '');
INSERT INTO `sys_authority` VALUES ('61', '音频审核', '53', '', '0', '', '', '/audio/review', '0', '3', '0', '', '2021-09-23 14:36:53', '2021-09-23 14:36:53', '');
INSERT INTO `sys_authority` VALUES ('62', '资源管理', '0', 'PageView', '7', '/resource/list', '/resource', '/resource', '1', '1', '2', 'bars', '2021-09-23 12:11:25', '2021-09-23 12:11:25', '');
INSERT INTO `sys_authority` VALUES ('63', '资源列表', '62', 'ResourceList', '0', '', '/resource/list', '/resource/list', '1', '2', '2', '', '2021-09-23 12:16:41', '2021-09-23 12:31:11', '');
INSERT INTO `sys_authority` VALUES ('64', '资源创建', '62', 'ResourceCreate', '0', '', '/resource/create', '/resource/create', '1', '2', '2', '', '2021-09-23 12:17:10', '2021-09-23 12:17:10', '');
INSERT INTO `sys_authority` VALUES ('65', '资源编辑', '62', 'ResourceEdit', '0', '', '/resource/edit', '/resource/edit', '1', '2', '1', '', '2021-09-23 12:17:39', '2021-09-23 12:17:39', '');
INSERT INTO `sys_authority` VALUES ('66', '资源删除', '63', '', '0', '', '', '/resource/remove', '0', '3', '0', '', '2021-09-23 14:35:29', '2021-09-23 14:37:17', '');
INSERT INTO `sys_authority` VALUES ('67', '资源还原', '63', '', '0', '', '', '/resource/reduction', '0', '3', '0', '', '2021-09-23 14:35:52', '2021-09-23 14:37:09', '');
INSERT INTO `sys_authority` VALUES ('68', '资源移入回收站', '63', '', '0', '', '', '/resource/recover', '0', '3', '0', '', '2021-09-23 14:36:13', '2021-09-23 14:36:13', '');
INSERT INTO `sys_authority` VALUES ('69', '资源审核', '63', '', '0', '', '', '/resource/review', '0', '3', '0', '', '2021-09-23 14:36:53', '2021-09-23 14:36:53', '');
INSERT INTO `sys_authority` VALUES ('70', '视频管理', '0', 'PageView', '7', '/video/list', '/video', '/video', '1', '1', '2', 'bars', '2021-09-23 12:11:25', '2021-09-23 12:11:25', '');
INSERT INTO `sys_authority` VALUES ('71', '视频列表', '70', 'VideoList', '0', '', '/video/list', '/video/list', '1', '2', '2', '', '2021-09-23 12:16:41', '2021-09-23 12:31:11', '');
INSERT INTO `sys_authority` VALUES ('72', '视频创建', '70', 'VideoCreate', '0', '', '/video/create', '/video/create', '1', '2', '2', '', '2021-09-23 12:17:10', '2021-09-23 12:17:10', '');
INSERT INTO `sys_authority` VALUES ('73', '视频编辑', '70', 'VideoEdit', '0', '', '/video/edit', '/video/edit', '1', '2', '1', '', '2021-09-23 12:17:39', '2021-09-23 12:17:39', '');
INSERT INTO `sys_authority` VALUES ('74', '视频删除', '71', '', '0', '', '', '/video/remove', '0', '3', '0', '', '2021-09-23 14:35:29', '2021-09-23 14:37:17', '');
INSERT INTO `sys_authority` VALUES ('75', '视频还原', '71', '', '0', '', '', '/video/reduction', '0', '3', '0', '', '2021-09-23 14:35:52', '2021-09-23 14:37:09', '');
INSERT INTO `sys_authority` VALUES ('76', '视频移入回收站', '71', '', '0', '', '', '/video/recover', '0', '3', '0', '', '2021-09-23 14:36:13', '2021-09-23 14:36:13', '');
INSERT INTO `sys_authority` VALUES ('77', '视频审核', '71', '', '0', '', '', '/video/review', '0', '3', '0', '', '2021-09-23 14:36:53', '2021-09-23 14:36:53', '');
INSERT INTO `sys_authority` VALUES ('78', '课程管理', '0', 'PageView', '7', '/edu/list', '/edu', '/edu', '1', '1', '2', 'bars', '2021-09-23 12:11:25', '2021-09-23 12:11:25', '');
INSERT INTO `sys_authority` VALUES ('79', '课程列表', '78', 'EduList', '0', '', '/edu/list', '/edu/list', '1', '2', '2', '', '2021-09-23 12:16:41', '2021-09-23 12:31:11', '');
INSERT INTO `sys_authority` VALUES ('80', '课程创建', '78', 'EduCreate', '0', '', '/edu/create', '/edu/create', '1', '2', '2', '', '2021-09-23 12:17:10', '2021-09-23 12:17:10', '');
INSERT INTO `sys_authority` VALUES ('81', '课程编辑', '78', 'EduEdit', '0', '', '/edu/edit', '/edu/edit', '1', '2', '1', '', '2021-09-23 12:17:39', '2021-09-23 12:17:39', '');
INSERT INTO `sys_authority` VALUES ('82', '课程删除', '79', '', '0', '', '', '/edu/remove', '0', '3', '0', '', '2021-09-23 14:35:29', '2021-09-23 14:37:17', '');
INSERT INTO `sys_authority` VALUES ('83', '课程还原', '79', '', '0', '', '', '/edu/reduction', '0', '3', '0', '', '2021-09-23 14:35:52', '2021-09-23 14:37:09', '');
INSERT INTO `sys_authority` VALUES ('84', '课程移入回收站', '79', '', '0', '', '', '/edu/recover', '0', '3', '0', '', '2021-09-23 14:36:13', '2021-09-23 14:36:13', '');
INSERT INTO `sys_authority` VALUES ('85', '课程审核', '79', '', '0', '', '', '/edu/review', '0', '3', '0', '', '2021-09-23 14:36:53', '2021-09-23 14:36:53', '');
INSERT INTO `sys_authority` VALUES ('86', '课程报名列表', '78', 'EduJoinList', '0', '', '/edu/joinList', '/edu/joinList', '1', '2', '1', '', '2021-09-24 00:04:00', '2021-09-24 00:04:26', '');
INSERT INTO `sys_authority` VALUES ('87', '社区管理', '0', 'PageView', '5', '/topic/list', '/community', '/community', '1', '1', '2', 'bars', '2021-09-24 00:18:56', '2021-09-24 00:18:56', '');
INSERT INTO `sys_authority` VALUES ('88', '帖子列表', '87', 'TopicList', '0', '', '/topic/list', '/topic/list', '1', '2', '2', '', '2021-09-24 00:19:29', '2021-09-24 00:19:29', '');
INSERT INTO `sys_authority` VALUES ('90', '圈子列表', '87', 'GroupList', '0', '', '/group/list', '/group/list', '1', '2', '2', '', '2021-09-24 00:27:42', '2021-09-24 00:27:42', '');
INSERT INTO `sys_authority` VALUES ('91', '回答列表', '87', 'AnswerList', '0', '', '/answer/list', '/answer/list', '1', '2', '2', '', '2021-09-24 00:34:50', '2021-09-24 00:34:50', '');
INSERT INTO `sys_authority` VALUES ('92', '评论列表', '87', 'CommentList', '0', '', '/comment/list', '/comment/list', '1', '2', '2', '', '2021-09-24 00:35:19', '2021-09-24 00:35:19', '');
INSERT INTO `sys_authority` VALUES ('93', '帖子置顶', '88', '', '0', '', '', '/topic/top', '0', '3', '0', '', '2021-09-26 13:42:20', '2021-09-26 13:42:20', '');
INSERT INTO `sys_authority` VALUES ('94', '帖子审核', '88', '', '0', '', '', '/topic/review', '0', '3', '0', '', '2021-09-26 13:42:45', '2021-09-26 13:42:45', '');
INSERT INTO `sys_authority` VALUES ('95', '帖子回收', '88', '', '0', '', '', '/topic/recover', '0', '3', '0', '', '2021-09-26 13:43:18', '2021-09-26 13:43:18', '');
INSERT INTO `sys_authority` VALUES ('96', '帖子还原', '88', '', '0', '', '', '/topic/reduction', '0', '3', '0', '', '2021-09-26 13:43:46', '2021-09-26 13:43:46', '');
INSERT INTO `sys_authority` VALUES ('97', '帖子删除', '88', '', '0', '', '', '/topic/remove', '0', '3', '0', '', '2021-09-26 13:44:05', '2021-09-26 13:44:14', '');
INSERT INTO `sys_authority` VALUES ('98', '举报列表', '87', 'ReportList', '0', '', '/report/list', '/report/list', '1', '2', '2', '', '2021-09-26 17:17:19', '2021-09-26 17:17:19', '');
INSERT INTO `sys_authority` VALUES ('99', '举报处理', '98', '', '0', '', '', '/report/review', '0', '3', '0', '', '2021-09-26 17:39:12', '2021-09-26 17:39:12', '');
INSERT INTO `sys_authority` VALUES ('100', '举报删除', '98', '', '0', '', '', '/report/remove', '0', '3', '0', '', '2021-09-26 18:40:48', '2021-09-26 18:40:48', '');
INSERT INTO `sys_authority` VALUES ('101', '评论审核', '92', '', '0', '', '', '/comment/review', '0', '3', '0', '', '2021-09-26 18:46:38', '2021-09-26 18:47:45', '');
INSERT INTO `sys_authority` VALUES ('102', '评论移入回收站', '92', '', '0', '', '', '/comment/recover', '0', '3', '0', '', '2021-09-26 18:48:22', '2021-09-26 18:48:22', '');
INSERT INTO `sys_authority` VALUES ('103', '评论还原', '92', '', '0', '', '', '/comment/reduction', '0', '3', '0', '', '2021-09-26 18:48:33', '2021-09-26 18:48:33', '');
INSERT INTO `sys_authority` VALUES ('104', '评论删除', '92', '', '0', '', '', '/comment/remove', '0', '3', '0', '', '2021-09-26 18:48:43', '2021-09-26 18:48:43', '');
INSERT INTO `sys_authority` VALUES ('105', '答案审核', '91', '', '0', '', '', '/answer/review', '0', '3', '0', '', '2021-09-26 18:49:26', '2021-09-26 18:49:26', '');
INSERT INTO `sys_authority` VALUES ('106', '答案移入回收站', '91', '', '0', '', '', '/answer/recover', '0', '3', '0', '', '2021-09-26 18:49:41', '2021-09-26 18:49:41', '');
INSERT INTO `sys_authority` VALUES ('107', '答案还原', '91', '', '0', '', '', '/answer/reduction', '0', '3', '0', '', '2021-09-26 18:49:52', '2021-09-26 18:49:52', '');
INSERT INTO `sys_authority` VALUES ('108', '答案删除', '91', '', '0', '', '', '/answer/remove', '0', '3', '0', '', '2021-09-26 18:50:00', '2021-09-26 18:50:00', '');
INSERT INTO `sys_authority` VALUES ('109', '圈子审核', '90', '', '0', '', '', '/group/review', '0', '3', '0', '', '2021-09-26 18:50:37', '2021-09-26 18:50:37', '');
INSERT INTO `sys_authority` VALUES ('110', '圈子移入回收站', '90', '', '0', '', '', '/group/recover', '0', '3', '0', '', '2021-09-26 18:50:46', '2021-09-26 18:50:46', '');
INSERT INTO `sys_authority` VALUES ('111', '圈子还原', '90', '', '0', '', '', '/group/reduction', '0', '3', '0', '', '2021-09-26 18:50:54', '2021-09-26 18:50:54', '');
INSERT INTO `sys_authority` VALUES ('112', '圈子删除', '90', '', '0', '', '', '/group/remove', '0', '3', '0', '', '2021-09-26 18:51:04', '2021-09-26 18:51:04', '');
INSERT INTO `sys_authority` VALUES ('113', '问题审核', '89', '', '0', '', '', '/question/review', '0', '3', '0', '', '2021-09-26 18:51:39', '2021-09-26 18:51:39', '');
INSERT INTO `sys_authority` VALUES ('114', '问题移入回收站', '89', '', '0', '', '', '/question/recover', '0', '3', '0', '', '2021-09-26 18:51:51', '2021-09-26 18:51:51', '');
INSERT INTO `sys_authority` VALUES ('115', '问题还原', '89', '', '0', '', '', '/question/reduction', '0', '3', '0', '', '2021-09-26 18:52:02', '2021-09-26 18:52:02', '');
INSERT INTO `sys_authority` VALUES ('116', '问题删除', '89', '', '0', '', '', '/question/remove', '0', '3', '0', '', '2021-09-26 18:52:10', '2021-09-26 18:52:10', '');
INSERT INTO `sys_authority` VALUES ('117', '用户管理', '0', 'PageView', '5', '/user/list', '/user', '/user', '1', '1', '2', 'bars', '2021-09-26 21:34:22', '2021-09-26 21:35:55', '');
INSERT INTO `sys_authority` VALUES ('118', '用户列表', '117', 'UserList', '0', '', '/user/list', '/user/list', '1', '2', '2', '', '2021-09-26 21:36:57', '2021-09-26 21:36:57', '');
INSERT INTO `sys_authority` VALUES ('119', '等级列表', '117', 'GradeList', '0', '', '/grade/list', '/grade/list', '1', '2', '2', '', '2021-09-26 21:37:26', '2021-09-26 21:37:26', '');
INSERT INTO `sys_authority` VALUES ('120', '会员列表', '117', 'VipList', '0', '', '/vip/list', '/vip/list', '1', '2', '2', '', '2021-09-26 21:37:43', '2021-09-26 21:37:43', '');
INSERT INTO `sys_authority` VALUES ('121', '实名认证', '117', 'VerifyList', '0', '', '/verify/list', '/verify/list', '1', '2', '2', '', '2021-09-26 21:38:10', '2021-09-26 21:38:10', '');
INSERT INTO `sys_authority` VALUES ('122', '用户创建', '117', 'UserCreate', '0', '', '/user/create', '/user/create', '1', '2', '1', '', '2021-09-27 14:18:37', '2021-09-27 14:18:37', '');
INSERT INTO `sys_authority` VALUES ('123', '用户编辑', '117', 'UserEdit', '0', '', '/user/edit', '/user/edit', '1', '2', '1', '', '2021-09-27 14:19:14', '2021-09-27 14:19:14', '');
INSERT INTO `sys_authority` VALUES ('124', '用户审核', '118', '', '0', '', '', '/user/review', '1', '3', '1', '', '2021-09-27 14:20:08', '2021-09-27 14:20:58', '');
INSERT INTO `sys_authority` VALUES ('125', '用户删除', '118', '', '0', '', '', '/user/remove', '1', '3', '1', '', '2021-09-27 14:20:21', '2021-09-27 14:20:48', '');
INSERT INTO `sys_authority` VALUES ('126', '获取用户修改信息', '123', '', '0', '', '', '/user/edit/info', '0', '3', '0', '', '2021-09-27 16:04:11', '2021-09-27 16:04:11', '');
INSERT INTO `sys_authority` VALUES ('127', '获取课程修改信息', '81', '', '0', '', '', '/edu/edit/info', '0', '3', '0', '', '2021-09-27 16:04:56', '2021-09-27 16:04:56', '');
INSERT INTO `sys_authority` VALUES ('128', '获取视频修改信息', '73', '', '0', '', '', '/video/edit/info', '0', '3', '0', '', '2021-09-27 16:05:16', '2021-09-27 16:05:16', '');
INSERT INTO `sys_authority` VALUES ('129', '获取音频修改信息', '55', '', '0', '', '', '/audio/edit/info', '0', '3', '0', '', '2021-09-27 16:05:33', '2021-09-27 16:05:33', '');
INSERT INTO `sys_authority` VALUES ('130', '获取资源修改信息', '65', '', '0', '', '', '/resource/edit/info', '0', '3', '0', '', '2021-09-27 16:05:50', '2021-09-27 16:05:50', '');
INSERT INTO `sys_authority` VALUES ('131', '等级创建', '119', '', '0', '', '', '/grade/create', '0', '3', '0', '', '2021-09-27 20:59:18', '2021-09-27 20:59:18', '');
INSERT INTO `sys_authority` VALUES ('132', '等级编辑', '119', '', '0', '', '', '/grade/edit', '0', '3', '0', '', '2021-09-27 20:59:33', '2021-09-27 20:59:33', '');
INSERT INTO `sys_authority` VALUES ('133', '会员创建', '120', '', '0', '', '', '/vip/create', '0', '3', '0', '', '2021-09-27 21:39:15', '2021-09-27 21:39:15', '');
INSERT INTO `sys_authority` VALUES ('134', '会员编辑', '120', '', '0', '', '', '/vip/edit', '0', '3', '0', '', '2021-09-27 21:39:30', '2021-09-27 21:39:30', '');
INSERT INTO `sys_authority` VALUES ('135', '获取会员编辑信息', '120', '', '0', '', '', '/vip/edit/info', '0', '3', '0', '', '2021-09-27 21:40:44', '2021-09-27 21:40:44', '');
INSERT INTO `sys_authority` VALUES ('136', '获取等级编辑信息', '119', '', '0', '', '', '/grade/edit/info', '0', '3', '0', '', '2021-09-27 21:40:54', '2021-09-27 21:40:54', '');
INSERT INTO `sys_authority` VALUES ('137', '认证审核', '121', '', '0', '', '', '/verify/review', '0', '3', '0', '', '2021-09-27 21:59:30', '2021-09-27 21:59:30', '');
INSERT INTO `sys_authority` VALUES ('138', '认证删除', '121', '', '0', '', '', '/verify/remove', '0', '3', '0', '', '2021-09-27 21:59:38', '2021-09-27 21:59:38', '');
INSERT INTO `sys_authority` VALUES ('139', '财务管理', '0', 'PageView', '5', '/order/list', '/finance', '/finance', '1', '1', '2', 'bars', '2021-09-27 22:11:12', '2021-09-27 22:11:12', '');
INSERT INTO `sys_authority` VALUES ('140', '订单列表', '139', 'OrderList', '0', '', '/order/list', '/order/list', '1', '2', '2', '', '2021-09-27 22:11:53', '2021-09-27 22:12:53', '');
INSERT INTO `sys_authority` VALUES ('141', '提现列表', '139', 'CashList', '0', '', '/cash/list', '/cash/list', '1', '2', '2', '', '2021-09-27 22:12:42', '2021-09-27 22:12:42', '');
INSERT INTO `sys_authority` VALUES ('142', '订单删除', '140', '', '0', '', '', '/order/remove', '0', '3', '0', '', '2021-09-27 22:48:10', '2021-09-27 22:48:54', '');
INSERT INTO `sys_authority` VALUES ('143', '订单信息查看', '139', 'OrderInfo', '0', '', '/order/info', '/order/info', '1', '2', '1', '', '2021-09-27 22:48:44', '2021-09-27 22:51:10', '');
INSERT INTO `sys_authority` VALUES ('144', '提现审核', '141', '', '0', '', '', '/cash/review', '0', '3', '0', '', '2021-09-27 23:14:35', '2021-11-04 01:24:25', '');
INSERT INTO `sys_authority` VALUES ('145', '提现删除', '141', '', '0', '', '', '/cash/remove', '0', '3', '0', '', '2021-09-27 23:14:45', '2021-09-27 23:14:45', '');
INSERT INTO `sys_authority` VALUES ('146', '获取角色编辑信息', '12', '', '0', '', '', '/role/edit/info', '0', '3', '0', '', '2021-09-28 13:24:32', '2021-09-28 13:24:32', '');
INSERT INTO `sys_authority` VALUES ('147', '获取管理编辑信息', '14', '', '0', '', '', '/manger/edit/info', '0', '3', '0', '', '2021-09-28 13:25:08', '2021-09-28 13:25:08', '');
INSERT INTO `sys_authority` VALUES ('148', '获取权限编辑信息', '4', '', '0', '', '', '/authority/edit/info', '0', '3', '0', '', '2021-09-28 13:25:35', '2021-09-28 13:25:35', '');
INSERT INTO `sys_authority` VALUES ('149', '外观设计', '0', 'PageView', '0', '/design/web', '/design', '/design', '1', '1', '2', 'bars', '2021-10-05 16:22:32', '2021-10-05 16:22:32', '');
INSERT INTO `sys_authority` VALUES ('151', '分类编辑', '45', 'CategoryEdit', '0', '', '/category/edit', '/category/edit', '1', '2', '1', '', '2021-10-14 14:15:24', '2021-10-14 14:15:24', '');
INSERT INTO `sys_authority` VALUES ('152', '获取编辑信息', '42', '', '0', '', '', '/category/edit/info', '0', '3', '0', '', '2021-10-14 14:49:49', '2021-10-14 14:49:49', '');
INSERT INTO `sys_authority` VALUES ('153', '充值列表', '139', 'RechargeList', '0', '', '/recharge/list', '/recharge/list', '1', '2', '2', '', '2021-11-02 23:28:42', '2021-11-02 23:28:42', '');
INSERT INTO `sys_authority` VALUES ('154', '充值删除', '153', '', '0', '', '', '/recharge/remove', '0', '3', '0', '', '2021-11-02 23:29:17', '2021-11-02 23:29:17', '');
INSERT INTO `sys_authority` VALUES ('155', '充值审核', '153', '', '0', '', '', '/recharge/review', '0', '3', '0', '', '2021-11-02 23:29:45', '2021-11-02 23:29:45', '');
INSERT INTO `sys_authority` VALUES ('156', '卡密列表', '139', 'CardList', '0', '', '/card/list', '/card/list', '1', '2', '2', '', '2021-11-04 01:54:26', '2021-11-04 02:08:20', '');
INSERT INTO `sys_authority` VALUES ('157', '生成卡密', '156', '', '0', '', '', '/card/create', '0', '3', '0', '', '2021-11-04 01:54:56', '2021-11-04 02:08:41', '');
INSERT INTO `sys_authority` VALUES ('158', '卡密删除', '156', '', '0', '', '', '/card/remove', '0', '3', '0', '', '2021-11-04 01:55:20', '2021-11-04 02:08:34', '');
INSERT INTO `sys_authority` VALUES ('159', '短信配置', '16', 'SmsOption', '1', '', '/sms/option', '/sms/option', '1', '2', '2', '', '2021-11-28 16:45:51', '2021-11-28 16:45:51', '');
INSERT INTO `sys_authority` VALUES ('160', '首页模块设计', '149', 'DesignHome', '0', '', '/design/home', '/design/home', '1', '2', '2', '', '2021-11-30 10:46:08', '2021-11-30 14:47:54', '');
INSERT INTO `sys_authority` VALUES ('161', '仪表盘', '0', 'Dashboard', '100', '', '/dashboard', '/dashboard', '1', '1', '2', 'bars', '2021-12-07 12:37:46', '2021-12-07 12:49:13', '');
INSERT INTO `sys_authority` VALUES ('162', '大文件上传', '28', '', '0', '', '', '/upload/chunk', '0', '3', '0', '', '2021-12-17 13:37:34', '2021-12-17 13:44:08', '');
INSERT INTO `sys_authority` VALUES ('163', '大文件合并', '28', '', '0', '', '', '/upload/mergeChunk', '0', '3', '0', '', '2021-12-17 16:40:37', '2021-12-17 16:40:37', '');

-- ----------------------------
-- Table structure for sys_card
-- ----------------------------
DROP TABLE IF EXISTS `sys_card`;
CREATE TABLE `sys_card` (
  `card_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `used_id` bigint(20) DEFAULT NULL COMMENT '使用者id',
  `secret_key` varchar(255) DEFAULT NULL,
  `money` decimal(10,2) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '状态: 1未使用，2已使用',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`card_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_card
-- ----------------------------

-- ----------------------------
-- Table structure for sys_carousel
-- ----------------------------
DROP TABLE IF EXISTS `sys_carousel`;
CREATE TABLE `sys_carousel` (
  `carousel_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mode` tinyint(4) DEFAULT NULL COMMENT '类型1(投稿内容)，2(其他内容)',
  `related_id` bigint(20) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL COMMENT '链接',
  `cover` varchar(255) DEFAULT NULL COMMENT '封面地址',
  `type` tinyint(4) DEFAULT NULL COMMENT '类型: 1(web),2(app)',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `delete_time` datetime DEFAULT NULL,
  PRIMARY KEY (`carousel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_carousel
-- ----------------------------
INSERT INTO `sys_carousel` VALUES ('1', '1', '1', 'article', 'http://localhost:3000', 'http://fibercms.com/public/uploads/2021-08-26/cdtkto2n81q4lcaqgx.jpg', '1', '2021-10-05 10:19:17', null, null);
INSERT INTO `sys_carousel` VALUES ('2', '1', '2', 'audio', 'http://localhost:3000', 'http://fibercms.com/public/uploads/2021-08-26/cdtkb5gyuaf0ytlaha.jpg', '1', '2021-10-05 10:19:43', null, null);
INSERT INTO `sys_carousel` VALUES ('3', '1', '2', 'video', 'http://localhost:3000', 'http://fibercms.com/public/uploads/2021-08-26/cdtjyo0af9dcedko0u.jpg', '1', '2021-10-05 10:46:41', null, null);

-- ----------------------------
-- Table structure for sys_cash
-- ----------------------------
DROP TABLE IF EXISTS `sys_cash`;
CREATE TABLE `sys_cash` (
  `cash_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL COMMENT '提现单号',
  `cash_money` decimal(10,2) DEFAULT NULL,
  `service_money` decimal(10,2) DEFAULT NULL COMMENT '服务费',
  `money` decimal(10,2) DEFAULT NULL COMMENT '实际金额',
  `mode` tinyint(4) DEFAULT NULL COMMENT '方式，1人工转账，2第三方到账',
  `number` varchar(255) DEFAULT NULL COMMENT '账号',
  `receipt_num` varchar(255) DEFAULT NULL,
  `pay_method` tinyint(4) DEFAULT NULL COMMENT '支付方式（1支付宝，2微信）',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态 1待审核，2审核通过，3审核不通过',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`cash_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_cash
-- ----------------------------

-- ----------------------------
-- Table structure for sys_category
-- ----------------------------
DROP TABLE IF EXISTS `sys_category`;
CREATE TABLE `sys_category` (
  `cate_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT '0' COMMENT '顶级分类',
  `module` varchar(50) DEFAULT NULL COMMENT '所属模块',
  `title` varchar(50) DEFAULT NULL COMMENT '分类名称',
  `slug` varchar(50) DEFAULT NULL COMMENT '分类别名',
  `cover` varchar(255) DEFAULT NULL COMMENT '分类背景图',
  `sort` int(10) DEFAULT NULL COMMENT '分类排序',
  `keywords` varchar(50) DEFAULT NULL COMMENT '分类关键字',
  `description` varchar(255) DEFAULT NULL COMMENT '分类描述',
  `isTop` tinyint(4) DEFAULT '1' COMMENT '分类状态 1 不推荐 2推荐',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `delete_time` datetime DEFAULT NULL COMMENT '删除标志（0代表存在 2代表删除）',
  PRIMARY KEY (`cate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_category
-- ----------------------------
INSERT INTO `sys_category` VALUES ('11', '0', 'edu', '系统教程', 'xtjc', '', '0', '系统教程', '', '2', '2022-05-19 18:37:04', '2022-05-19 18:37:04', null);
INSERT INTO `sys_category` VALUES ('12', '0', 'video', '系统教程', 'xtjc', '', '0', '系统教程', '', '2', '2022-05-19 19:14:19', '2022-05-19 19:14:19', null);
INSERT INTO `sys_category` VALUES ('13', '0', 'resource', '代码', 'code', '', '0', '代码', '', '2', '2022-05-19 21:38:02', '2022-05-19 21:38:02', null);
INSERT INTO `sys_category` VALUES ('14', '0', 'article', '系统介绍', 'xtjs', '', '0', '系统介绍', '', '0', '2022-05-21 10:16:27', '2022-05-21 10:16:27', null);
INSERT INTO `sys_category` VALUES ('15', '0', 'group', '系统', 'xt', '', '0', '官方版务', '', '2', '2022-05-21 11:33:01', '2022-05-21 11:33:01', null);

-- ----------------------------
-- Table structure for sys_comment
-- ----------------------------
DROP TABLE IF EXISTS `sys_comment`;
CREATE TABLE `sys_comment` (
  `comment_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `reply_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL COMMENT '发布用户',
  `parent_id` bigint(20) DEFAULT NULL,
  `top_id` bigint(20) DEFAULT NULL,
  `related_id` bigint(20) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL COMMENT '模块',
  `content` varchar(255) DEFAULT NULL COMMENT '内容',
  `type` tinyint(4) DEFAULT NULL COMMENT '类型 1图片 2视频 3文字',
  `files` text COMMENT '文件链接',
  `likes` bigint(20) DEFAULT NULL COMMENT '点赞数',
  `unlikes` bigint(20) DEFAULT NULL COMMENT '点踩',
  `remark` varchar(500) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '2已审核，1未审核',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `delete_time` datetime DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_comment
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` text COMMENT '参数键值',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('5', '邮箱配置', 'EmailOptions', '{\"host\":\"smtp.qq.com\",\"port\":\"587\",\"user\":\"973728679@qq.com\",\"pass\":\"mzrchjdssewlbbib\",\"email\":\"973728679@qq.com\"}', '2020-05-18 00:34:51', '2021-08-17 19:38:37', '邮箱配置');
INSERT INTO `sys_config` VALUES ('7', '基础设置', 'BaseSetting', '{\"title\":\"蜂刺\",\"childTitle\":\"轻社区内容管理系统-资源交易-在线网课-社区问答-动态交流\",\"description\":\"氪讯是基于Golang + Vue 开发的前后端分离轻社区内容管理系统，能够解决您快速搭建垂直内容社区。\\n架构：apiSever（go语言编写），后台管理（vue+antdAdmin）,前台用户交互（Nuxtjs+Vue+Antd）\\n模块（目前）：文章，音频，视频，资源，网课，圈子，问答，动态帖子，八大模块功能（未来会加入更多内容模块），能满足各种内容系统刚需模块。\",\"url\":\"http://beethorn.com\",\"logo\":\"http://beethorn.com/public/uploads/2022-05-19/ck3opi3dbcu1awxeb5.png\",\"adminLogo\":\"/public/uploads/2021-06-30/ccgxrrsx6enov4utih.png\",\"icon\":\"\",\"currencySymbol\":\"￥\",\"language\":\"zh\",\"recordNumber\":\"桂-4152055\"}', '2020-05-24 00:41:43', '2022-05-21 14:04:10', '基础设置');
INSERT INTO `sys_config` VALUES ('8', '文件设置', 'FileSetting', '{\"engine\":1,\"path\":\"uploads\",\"fileSize\":\"200\",\"imageType\":[\".png\",\".jpg\",\".jpeg\"],\"audioType\":[\".mp3\"],\"videoType\":[\".mp4\"],\"otherType\":[\".crt\"]}', '2020-05-30 22:47:11', '2022-05-19 19:16:20', '文件设置');
INSERT INTO `sys_config` VALUES ('9', '支付宝配置', 'AlyPayOptions', '{\"appId\":\"2016102700770129\",\"privateKey\":\"MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCjkmnBSEjwpvBFLUF279MLV1bSjjnnokhocdEgTYx4Qy6zhtpUfyV/LwRQ31ddUtoTYhCedOO5nd95vMrAOSU2++ZdXWVjUfw1er4fFaMlNp8hQkKOgp8bDLO05x3/o9rG0oOWqWreyUGoPoWRQhnzJt6kYbJtunx3d8hBN59jM0PHiDODDsgiu8sq4muk/BjayF8FKypkp2LQCNjpxbUPIcbjpLsRzrJ4eH+Om+10cMHpIDLl6JZITwq3JF6l39cS61N4xNwOOtE/1KCo3x9/y8T2XF3PQvfHjXHeNuwQNIvey828a7KFbTgV6O09lOCTvjP1HmA1zvpHD6MizaofAgMBAAECggEAfX9WGG9HVywd6FVihshWGbt257EriCage1Hn62rUPWj+KctrM60hrcT7ALl6pCVvH7P7oDd6iO0xioto27Z8cQUvp66CnYNHiBiWSe8l7uVLjg7yVbiuLei+8CrqfzrOHgFh6HQvhKLQ9y6Q9/PJSR8nbuNuLHYKDPcf87mjVk3Cz6D03V9B1avfaH5IiLvlZwrAgVk7FoZEoBnhZhIg7yME4DUitPykTGg1ur/Gofe+xrPqONOnvZW8wNa/l2nKIPQwBaiUVcSV7gVBRRkw/GADMV59titx1dyzmR0b61GLexjI2WxXRLnAe1+qXrbOcbsCKIgFjQELbCz8MYFYgQKBgQDM7m/rzIcsJkmHXFGZdVRIdFzx73SUKMSu3srCs+7urUG9HNupf16ykMHv1p7rA0tBt6lzTAUgpf0F959JE1fUl+tyy2gUDyqOrP1FzF91wbertTXcrBcv9wMD5mvENSHNz9CDQ3Z7ZHtpPSnk2AvGhXzDSc6pnEkBzUIIVjgQfwKBgQDMVXSsnESsUwzz9qfzWxT9qsELIMM91xyn/w7FWcvIZvd33TzpPP0aZ69hylmaUPpSp4wwL5+zqPOvfI03y5En7ZzohMBTebU4H4m3aK4GHF0w+6ft+bt04ZAyFc7lyf/w+nEniPgQHSQqMu64FbK+GrYxrAXzSFhHfH/b35uWYQKBgGYpK3RSdsRkpd0sAaXN3uFr2PXnGKfPlxVSDaR4jNFBX/dFzp+11mCQV44X4QtpjffJ9lh6+kdnWDbEVgzY7r0VqxOEIXN2iBGuXWiRVLlghA6+fIZw5/JKYp9sHCcpEZwHUHxPgl5LHla9XgguR9iErUixn6vgNGkIiTWcvcBDAoGAfUGNShppBnHKqOp0vfsBfRZlS9sDlC7/RARYG6YWA30LChE2u4tFZCBXJE0UbEJjkLNgflFTRqC08MgbES7ahm1kGCz4cLNU4ViD5UhoFRriDZrWsEy8GsQCzpELyVTwbdo37xJJbidO+gdKytGSRnK9aOmYpC+e3gN1pWUHTUECgYA0zjkcEHfYzxH/VChkT9SzuI4WIJ+NSQ5ztljaZlDPg8rskUCB/kV6tRXW5oVBmgm4VyHl5bOl8PkoUC06Zhe6jiZ5cSUnfvCi7w2ysc1y5Nypc1P/qBu0bGK0nLRdFHbuv4IZsCrcvaR86QFeK14xO+yJ3kkOyXLd4UTvXYG/xg==\",\"appPublicKey\":\"/public/uploads/2021-07-07/ccmt7z025mv8n9gz5y.crt\",\"alyCertPublicKey\":\"/public/uploads/2021-07-07/ccmt805eqlvknzgjgs.crt\",\"alyRootCert\":\"/public/uploads/2021-07-07/ccmt819guk10ixsnmq.crt\"}', '2020-06-13 15:32:17', '2021-08-27 09:43:35', '支付宝配置');
INSERT INTO `sys_config` VALUES ('10', '支付设置', 'PaySetting', '{\"alyPay\":2,\"weChatPay\":2,\"payMode\":[1,3],\"recharge\":[1,3,4],\"cashMin\":50,\"cashServicePercent\":0.05,\"servicePercent\":0.05}', '2020-06-13 16:37:21', '2021-11-11 12:31:59', '支付设置');
INSERT INTO `sys_config` VALUES ('12', '用户设置', 'UserSetting', '{\"defaultAvatar\":\"/public/uploads/2021-06-30/ccgxrrsx6enov4utih.png\",\"defaultCover\":\"/public/uploads/2021-06-30/ccgxrrsx6enov4utih.png\",\"defaultGrade\":\"1\",\"verifyMode\":\"0\",\"verifyPrice\":21}', '2020-10-25 17:25:12', '2021-08-17 13:46:49', '用户设置');
INSERT INTO `sys_config` VALUES ('22', '首页设计', 'HomeDesign', '[{\"title\":\"轮播\",\"height\":\"300\",\"list\":[{\"link\":\"http://www.beethorn.com/video/7\",\"cover\":\"/public/uploads/2022-05-19/ck3oy1mqb4b46ao3ze.png\",\"isPlatform\":2,\"title\":\"基于宝塔环境安装\"},{\"link\":\"http://www.beethorn.com/video/8\",\"cover\":\"/public/uploads/2022-05-19/ck3ro87vm6rqbondro.png\",\"isPlatform\":2,\"title\":\"服务端数据接口安装\"},{\"link\":\"http://www.beethorn.com/video/9\",\"cover\":\"/public/uploads/2022-05-19/ck3ruhz0ucr3q5sus7.png\",\"isPlatform\":2,\"title\":\"前台安装\"},{\"link\":\"http://www.beethorn.com/video/10\",\"cover\":\"/public/uploads/2022-05-19/ck3rxgo2mre1goloyc.png\",\"isPlatform\":2,\"title\":\"后台管理安装\"}],\"style\":1,\"isOpen\":false},{\"title\":\"广告\",\"showTitle\":1,\"height\":\"200\",\"style\":9,\"content\":\"{\\\"cover\\\":\\\"http://beethorn.com/public/uploads/2022-05-19/ck3skse1peyjzln4ay.png\\\",\\\"link\\\":\\\"/\\\",\\\"isPlatform\\\":2}\",\"isOpen\":false},{\"title\":\"视频组件\",\"showTitle\":2,\"videoIds\":\"7,8,9,10\",\"style\":6,\"isOpen\":false},{\"title\":\"广告2\",\"showTitle\":1,\"height\":\"200\",\"style\":9,\"content\":\"{\\\"cover\\\":\\\"/public/uploads/2021-11-19/cftnonwtwzmjcc0hwi.jpg\\\",\\\"link\\\":\\\"/\\\",\\\"isPlatform\\\":2}\",\"isOpen\":false}]', '2021-04-12 20:29:03', '2022-05-19 22:02:17', '首页设计');
INSERT INTO `sys_config` VALUES ('23', '积分设置', 'IntegralSetting', '{\"registerIntegral\":300,\"signInIntegral\":\"500-5000\",\"contentIntegral\":50,\"contentCount\":2,\"groupIntegral\":50,\"groupCount\":2,\"answerIntegral\":50,\"answerCount\":2,\"commentIntegral\":50,\"commentCount\":2,\"likefavoriteIntegral\":50,\"likefavoriteCount\":2,\"followIntegral\":50,\"followCount\":2,\"reportIntegral\":50,\"reportCount\":2}', '2021-04-22 20:57:25', '2021-09-20 16:12:14', '积分设置');
INSERT INTO `sys_config` VALUES ('24', '通知设置', 'NoticeSetting', '{\"register\":\"{siteTitle}欢迎您的加入\",\"create\":\"您发布《{title}》,已经审核: {reason}\",\"remove\":\"您发布的内容{title}，被删除了，{reason}\",\"groupCreate\":\"您创建《{title}》,已经审核: {reason}\",\"groupRemove\":\"您创建{title}，被删除了: {reason}\",\"report\":\"您举报的内容，已处理，{reason}\",\"userProhibit\":\"{reason}\",\"verify\":\"您实名认证已审核，{reason}\",\"cash\":\"您编号为{code}提现申请已经打款，\"}', '2021-05-16 02:07:09', '2021-06-21 00:44:05', '通知设置');
INSERT INTO `sys_config` VALUES ('26', '登录注册设置', 'AuthSetting', '{\"registerMode\":\"email\",\"policyUrl\":\"\",\"protocolUrl\":\"\",\"social\":[],\"register\":\"恭喜您注册成为我们的用户\"}', '2021-06-22 00:51:45', '2022-01-06 14:59:51', '登录注册设置');
INSERT INTO `sys_config` VALUES ('27', '阿里云oss配置', 'AlyOssOption', '{\"endpoint\":\"fibercms.oss-cn-guangzhou.aliyuncs.com\",\"accessKeyId\":\"LTAI5tFGYMtpuMG8xiDUxyQa\",\"accessKeySecret\":\"CIH3VRjTj9SIXgTRn0I7P8onykqUex\",\"bucketName\":\"fibercms\"}', '2021-07-02 21:38:09', '2021-12-18 14:07:09', '阿里云oss配置');
INSERT INTO `sys_config` VALUES ('28', '七牛oss配置', 'QiNiuOssOption', '{\"endpoint\":\"21312\",\"accessKeyId\":\"312312\",\"accessKeySecret\":\"3123\",\"bucketName\":\"123\",\"address\":\"213123\"}', '2021-07-02 22:17:48', '2021-07-02 22:17:48', '七牛oss配置');
INSERT INTO `sys_config` VALUES ('29', '阿里云短信配置', 'AlySmsOptions', '{\"id\":\"LTAIyOnBE3wGtyAA\",\"secret\":\"PlwvkrExsup3XccmMxaonmJe4HshK3\",\"publicKey\":null,\"appPublicKey\":null,\"alyCertPublicKey\":null,\"alyRootCert\":null}', '2021-11-28 17:05:20', '2021-11-28 17:05:27', '阿里云短信配置');
INSERT INTO `sys_config` VALUES ('30', 'H5首页设计', 'H5Design', '[{\"title\":\"轮播1\",\"height\":360,\"list\":[{\"isPlatform\":1,\"module\":\"article\",\"id\":\"1\",\"link\":\"https://www.baidu.com/\",\"cover\":\"/public/uploads/2021-11-19/cftsrmz4obqsgk9ndy.jpg\"},{\"link\":\"/\",\"cover\":\"/public/uploads/2021-11-19/cftspud91rg2vgrxnm.jpg\",\"isPlatform\":1,\"module\":\"video\",\"id\":\"2\"},{\"link\":\"/\",\"cover\":\"/public/uploads/2021-11-19/cftrximm0wdbicgjmj.jpg\",\"isPlatform\":1,\"module\":\"audio\",\"id\":\"3\"},{\"link\":\"/\",\"cover\":\"/public/uploads/2021-11-19/cftsj83cepnpomdgky.jpg\",\"isPlatform\":1,\"module\":\"resource\",\"id\":\"3\"}],\"style\":1},{\"title\":\"社区组件\",\"showTitle\":2,\"topicIds\":\"9,8,7\",\"questionIds\":\"\",\"style\":2},{\"title\":\"自定义内容组件\",\"showTitle\":2,\"list\":[{\"title\":\"测试\",\"icon\":\"\",\"link\":\"http://fibercms.com/\",\"isPlatform\":1},{\"title\":\"测试\",\"icon\":\"\",\"link\":\"http://fibercms.com/\",\"isPlatform\":1},{\"title\":\"测试\",\"icon\":\"\",\"link\":\"http://fibercms.com/\",\"isPlatform\":1},{\"title\":\"测试\",\"icon\":\"\",\"link\":\"http://fibercms.com/\",\"isPlatform\":1}],\"style\":5},{\"title\":\"课程组件\",\"showTitle\":2,\"eduIds\":\"2,3,4\",\"style\":4},{\"title\":\"自定义图片组件\",\"showTitle\":2,\"image\":\"/public/uploads/2021-11-19/cftsrmz4obqsgk9ndy.jpg\",\"link\":\"http://fibercms.com/\",\"style\":6,\"isPlatform\":1},{\"title\":\"投稿组件\",\"showTitle\":2,\"audioIds\":\"2,3,4\",\"videoIds\":\"2,3,4\",\"resourceIds\":\"2,3,4\",\"style\":7},{\"title\":\"文章组件\",\"showTitle\":2,\"articleIds\":\"2,3,4,1\",\"style\":3}]', '2021-11-30 12:39:22', '2021-11-30 20:01:24', 'H5首页设计');
INSERT INTO `sys_config` VALUES ('31', '微信小程序首页设计', 'WechatMiniProgramDesign', '[{\"title\":\"轮播1\",\"height\":360,\"list\":[{\"isPlatform\":2,\"module\":\"article\",\"id\":\"1\"},{\"link\":\"\",\"cover\":\"\",\"isPlatform\":2,\"module\":\"video\",\"id\":\"2\"},{\"link\":\"\",\"cover\":\"\",\"isPlatform\":2,\"module\":\"audio\",\"id\":\"3\"},{\"link\":\"\",\"cover\":\"\",\"isPlatform\":2,\"module\":\"resource\",\"id\":\"3\"}],\"style\":1},{\"title\":\"社区组件\",\"showTitle\":2,\"topicIds\":\"9,8,7\",\"questionIds\":\"\",\"style\":2},{\"title\":\"自定义内容组件\",\"showTitle\":2,\"list\":[{\"title\":\"动态\",\"icon\":\"\",\"link\":\"pages/feed/index\",\"isPlatform\":1},{\"title\":\"动态\",\"icon\":\"\",\"link\":\"pages/feed/index\",\"isPlatform\":1},{\"title\":\"动态\",\"icon\":\"\",\"link\":\"pages/feed/index\",\"isPlatform\":1},{\"title\":\"动态\",\"icon\":\"\",\"link\":\"pages/feed/index\",\"isPlatform\":1}],\"style\":5},{\"title\":\"课程组件\",\"showTitle\":2,\"eduIds\":\"2,3,4\",\"style\":4},{\"title\":\"自定义图片组件\",\"showTitle\":2,\"image\":\"/public/uploads/2021-11-19/cftsrmz4obqsgk9ndy.jpg\",\"link\":\"http://fibercms.com/\",\"style\":6},{\"title\":\"投稿组件\",\"showTitle\":2,\"audioIds\":\"2,3,4\",\"videoIds\":\"2,3,4\",\"resourceIds\":\"2,3,4\",\"style\":7},{\"title\":\"文章组件\",\"showTitle\":2,\"articleIds\":\"2,3,4,1\",\"style\":3}]', '2021-11-30 14:34:02', '2021-11-30 14:44:09', '微信小程序首页设计');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `create_by` bigint(20) DEFAULT NULL,
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` tinyint(4) DEFAULT '2' COMMENT '是否默认 1是 2否',
  `status` tinyint(4) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1', '1', '1', '男', '0', 'sys_user_sex', '', '', null, '0', '2018-03-16 11:33:00', '2018-03-16 11:33:00', '性别男');
INSERT INTO `sys_dict_data` VALUES ('2', '1', '2', '女', '1', 'sys_user_sex', '', '', null, '0', '2018-03-16 11:33:00', '2018-03-16 11:33:00', '性别女');
INSERT INTO `sys_dict_data` VALUES ('3', '1', '3', '未知', '2', 'sys_user_sex', '', '', null, '0', '2018-03-16 11:33:00', '2018-03-16 11:33:00', '性别未知');
INSERT INTO `sys_dict_data` VALUES ('4', '1', '1', '显示', '0', 'sys_show_hide', '', 'primary', null, '0', '2018-03-16 11:33:00', '2018-03-16 11:33:00', '显示菜单');
INSERT INTO `sys_dict_data` VALUES ('5', '1', '2', '隐藏', '1', 'sys_show_hide', '', 'danger', null, '0', '2018-03-16 11:33:00', '2018-03-16 11:33:00', '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES ('6', '1', '1', '正常', '0', 'sys_normal_disable', '', 'primary', null, '0', '2018-03-16 11:33:00', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('7', '1', '2', '停用', '1', 'sys_normal_disable', '', 'danger', null, '0', '2018-03-16 11:33:00', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES ('8', '1', '1', '正常', '0', 'sys_job_status', '', 'primary', null, '0', '2018-03-16 11:33:00', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('9', '1', '2', '暂停', '1', 'sys_job_status', '', 'danger', null, '0', '2018-03-16 11:33:00', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES ('10', '1', '1', '默认', 'DEFAULT', 'sys_job_group', '', '', null, '0', '2018-03-16 11:33:00', '2018-03-16 11:33:00', '默认分组');
INSERT INTO `sys_dict_data` VALUES ('11', '1', '2', '系统', 'SYSTEM', 'sys_job_group', '', '', null, '0', '2018-03-16 11:33:00', '2018-03-16 11:33:00', '系统分组');
INSERT INTO `sys_dict_data` VALUES ('12', '1', '1', '是', 'Y', 'sys_yes_no', '', 'primary', null, '0', '2018-03-16 11:33:00', '2018-03-16 11:33:00', '系统默认是');
INSERT INTO `sys_dict_data` VALUES ('13', '1', '2', '否', 'N', 'sys_yes_no', '', 'danger', null, '0', '2018-03-16 11:33:00', '2018-03-16 11:33:00', '系统默认否');
INSERT INTO `sys_dict_data` VALUES ('14', '1', '1', '通知', '1', 'sys_notice_type', '', 'warning', null, '0', '2018-03-16 11:33:00', '2018-03-16 11:33:00', '通知');
INSERT INTO `sys_dict_data` VALUES ('15', '1', '2', '公告', '2', 'sys_notice_type', '', 'success', null, '0', '2018-03-16 11:33:00', '2018-03-16 11:33:00', '公告');
INSERT INTO `sys_dict_data` VALUES ('16', '1', '1', '正常', '0', 'sys_notice_status', '', 'primary', null, '0', '2018-03-16 11:33:00', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('17', '1', '2', '关闭', '1', 'sys_notice_status', '', 'danger', null, '0', '2018-03-16 11:33:00', '2018-03-16 11:33:00', '关闭状态');
INSERT INTO `sys_dict_data` VALUES ('18', '1', '1', '新增', '1', 'sys_oper_type', '', 'info', null, '0', '2018-03-16 11:33:00', '2018-03-16 11:33:00', '新增操作');
INSERT INTO `sys_dict_data` VALUES ('19', '1', '2', '修改', '2', 'sys_oper_type', '', 'info', null, '0', '2018-03-16 11:33:00', '2018-03-16 11:33:00', '修改操作');
INSERT INTO `sys_dict_data` VALUES ('20', '1', '3', '删除', '3', 'sys_oper_type', '', 'danger', null, '0', '2018-03-16 11:33:00', '2018-03-16 11:33:00', '删除操作');
INSERT INTO `sys_dict_data` VALUES ('21', '1', '4', '授权', '4', 'sys_oper_type', '', 'primary', null, '0', '2018-03-16 11:33:00', '2018-03-16 11:33:00', '授权操作');
INSERT INTO `sys_dict_data` VALUES ('22', '1', '5', '导出', '5', 'sys_oper_type', '', 'warning', null, '0', '2018-03-16 11:33:00', '2018-03-16 11:33:00', '导出操作');
INSERT INTO `sys_dict_data` VALUES ('23', '1', '6', '导入', '6', 'sys_oper_type', '', 'warning', null, '0', '2018-03-16 11:33:00', '2018-03-16 11:33:00', '导入操作');
INSERT INTO `sys_dict_data` VALUES ('24', '1', '7', '强退', '7', 'sys_oper_type', '', 'danger', null, '0', '2018-03-16 11:33:00', '2018-03-16 11:33:00', '强退操作');
INSERT INTO `sys_dict_data` VALUES ('25', '1', '8', '生成代码', '8', 'sys_oper_type', '', 'warning', null, '0', '2018-03-16 11:33:00', '2018-03-16 11:33:00', '生成操作');
INSERT INTO `sys_dict_data` VALUES ('26', '1', '9', '清空数据', '9', 'sys_oper_type', '', 'danger', null, '0', '2018-03-16 11:33:00', '2018-03-16 11:33:00', '清空操作');
INSERT INTO `sys_dict_data` VALUES ('27', '1', '1', '成功', '0', 'sys_common_status', '', 'primary', null, '0', '2018-03-16 11:33:00', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('28', '1', '2', '失败', '1', 'sys_common_status', '', 'danger', null, '0', '2018-03-16 11:33:00', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES ('31', '1', '0', '阴阳人', '6', 'sys_user_sex', '', '', null, '0', '2020-03-20 19:49:06', null, '性别阴阳人');
INSERT INTO `sys_dict_data` VALUES ('33', '1', '0', '本地', '1', 'sys_media_engine', '', '', null, '0', '2020-04-10 19:06:55', null, '存储引擎本地');
INSERT INTO `sys_dict_data` VALUES ('34', '1', '0', '阿里云', '2', 'sys_media_engine', '', '', null, '0', '2020-04-10 19:07:10', null, '阿里云OSS');
INSERT INTO `sys_dict_data` VALUES ('35', '1', '0', '七牛云', '3', 'sys_media_engine', '', '', null, '0', '2020-04-10 19:07:31', null, '七牛云oss');
INSERT INTO `sys_dict_data` VALUES ('43', '1', '0', '圈子', 'circle', 'sys_modules', '', '', null, '0', '2020-04-10 21:39:57', null, '圈子模块');
INSERT INTO `sys_dict_data` VALUES ('44', '1', '0', '资源', 'resource', 'sys_modules', '', '', null, '0', '2020-04-10 21:41:54', '2020-04-19 23:01:01', '资源模块');
INSERT INTO `sys_dict_data` VALUES ('45', '1', '0', '帖子', 'feed', 'sys_modules', '', '', null, '0', '2020-04-10 21:42:17', null, '帖子模块');
INSERT INTO `sys_dict_data` VALUES ('61', '1', '0', '编曲', 'bianqu', 'sys_verify_skill', '', '', null, '0', '2020-06-03 01:32:26', null, '');
INSERT INTO `sys_dict_data` VALUES ('62', '1', '0', '混音', 'hunyin', 'sys_verify_skill', '', '', null, '0', '2020-06-03 01:32:42', null, '');
INSERT INTO `sys_dict_data` VALUES ('63', '1', '0', '设计', 'sheji', 'sys_verify_skill', '', '', null, '0', '2020-06-03 01:33:06', null, '');
INSERT INTO `sys_dict_data` VALUES ('64', '1', '0', '后期', 'houqi', 'sys_verify_skill', '', '', null, '0', '2020-06-03 01:33:38', null, '');
INSERT INTO `sys_dict_data` VALUES ('65', '1', '0', '开启', '0', 'sys_user_verify', '', '', null, '0', '2020-10-24 23:24:47', null, '');
INSERT INTO `sys_dict_data` VALUES ('66', '1', '0', '禁用', '1', 'sys_user_verify', '', '', null, '0', '2020-10-24 23:25:04', null, '');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `title` varchar(100) DEFAULT '' COMMENT '字典名称',
  `type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` tinyint(4) DEFAULT '0' COMMENT '状态（0正常，2停用）',
  `create_by` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE KEY `dict_type` (`type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1', '用户性别', 'sys_user_sex', '0', '1', '2018-03-16 11:33:00', '2018-03-16 11:33:00', '用户性别列表');
INSERT INTO `sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', '1', '2018-03-16 11:33:00', '2018-03-16 11:33:00', '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', '1', '2018-03-16 11:33:00', '2018-03-16 11:33:00', '系统开关列表');
INSERT INTO `sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', '1', '2018-03-16 11:33:00', '2018-03-16 11:33:00', '任务状态列表');
INSERT INTO `sys_dict_type` VALUES ('5', '任务分组', 'sys_job_group', '0', '1', '2018-03-16 11:33:00', '2018-03-16 11:33:00', '任务分组列表');
INSERT INTO `sys_dict_type` VALUES ('6', '系统是否', 'sys_yes_no', '0', '1', '2018-03-16 11:33:00', '2018-03-16 11:33:00', '系统是否列表');
INSERT INTO `sys_dict_type` VALUES ('7', '通知类型', 'sys_notice_type', '0', '1', '2018-03-16 11:33:00', '2018-03-16 11:33:00', '通知类型列表');
INSERT INTO `sys_dict_type` VALUES ('8', '通知状态', 'sys_notice_status', '0', '1', '2018-03-16 11:33:00', '2018-03-16 11:33:00', '通知状态列表');
INSERT INTO `sys_dict_type` VALUES ('9', '操作类型', 'sys_oper_type', '0', '1', '2018-03-16 11:33:00', '2018-03-16 11:33:00', '操作类型列表');
INSERT INTO `sys_dict_type` VALUES ('10', '系统状态', 'sys_common_status', '0', '1', '2018-03-16 11:33:00', '2018-03-16 11:33:00', '登录状态列表');
INSERT INTO `sys_dict_type` VALUES ('15', '文件引擎', 'sys_media_engine', '0', '1', '2020-04-10 19:04:52', '2020-04-10 19:11:04', '文件引擎列表');
INSERT INTO `sys_dict_type` VALUES ('16', '文件类型', 'sys_media_type', '0', '1', '2020-04-10 19:12:03', null, '文件类型列表');
INSERT INTO `sys_dict_type` VALUES ('17', '系统模块', 'sys_modules', '0', '1', '2020-04-10 21:38:02', '2020-04-14 16:50:49', '系统模块列表');
INSERT INTO `sys_dict_type` VALUES ('24', '职业技能', 'sys_verify_skill', '0', '1', '2020-06-03 01:30:26', null, '认证用户所用的职业技能');
INSERT INTO `sys_dict_type` VALUES ('25', '认证服务', 'sys_user_verify', '0', '1', '2020-10-24 23:23:47', null, '实名认证列表');

-- ----------------------------
-- Table structure for sys_doc
-- ----------------------------
DROP TABLE IF EXISTS `sys_doc`;
CREATE TABLE `sys_doc` (
  `doc_id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` mediumtext,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`doc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_doc
-- ----------------------------

-- ----------------------------
-- Table structure for sys_edu
-- ----------------------------
DROP TABLE IF EXISTS `sys_edu`;
CREATE TABLE `sys_edu` (
  `edu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `cate_id` bigint(20) DEFAULT NULL COMMENT '分类',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `cover` varchar(255) DEFAULT NULL COMMENT '封面',
  `content` text,
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `section` text COMMENT '视频地址',
  `max` int(10) DEFAULT NULL,
  `favorites` bigint(20) DEFAULT NULL,
  `likes` bigint(20) DEFAULT NULL,
  `joins` bigint(20) DEFAULT NULL,
  `hots` bigint(20) DEFAULT NULL,
  `views` bigint(20) DEFAULT NULL COMMENT '播放量',
  `type` tinyint(4) DEFAULT NULL COMMENT '课程类型 1线下，2线上',
  `join_mode` tinyint(4) DEFAULT '1' COMMENT '查看权限 1公开下载，2付费下载',
  `price` decimal(10,2) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '状态：0全部,1待审核 ，2已发布 ，3拒绝，4草稿',
  `delete_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`edu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_edu
-- ----------------------------
INSERT INTO `sys_edu` VALUES ('6', '1', '11', '蜂刺基于宝塔安装教程', 'http://beethorn.com/public/uploads/2022-05-19/ck3oy1mqb4b46ao3ze.png', '<p>宝塔环境安装教程</p>', '宝塔环境安装教程', '[{\"children\":[{\"isWatch\":false,\"link\":\"http://beethorn.com/public/uploads/2022-05-19/ck3ryhfr0zxad8i0me.mp4\",\"title\":\"第三集--后台管理安装\"},{\"isWatch\":false,\"link\":\"http://beethorn.com/public/uploads/2022-05-19/ck3sy6yg6ujxbxbfvz.mp4\",\"title\":\"第三集--前台安装\"},{\"isWatch\":false,\"link\":\"http://beethorn.com/public/uploads/2022-05-19/ck3t0f1efp3l8risfh.mp4\",\"title\":\"第二集--服务端数据接口安装\"},{\"isWatch\":false,\"link\":\"http://beethorn.com/public/uploads/2022-05-19/ck3qu0oz7kz23dyp6c.mp4\",\"title\":\"第一集--基于宝塔的运行环境安装\"}],\"title\":\"第1章节\"}]', '1000000', '12312', '3123', '124', '123', '1293', '2', '1', '0.00', '2', null, '2022-05-20 15:45:31', '2022-05-20 15:45:31', '');

-- ----------------------------
-- Table structure for sys_grade
-- ----------------------------
DROP TABLE IF EXISTS `sys_grade`;
CREATE TABLE `sys_grade` (
  `grade_id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `integral` int(10) DEFAULT NULL,
  `create_group` int(10) DEFAULT NULL,
  `posts_module` varchar(255) DEFAULT NULL,
  `common_auth` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`grade_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_grade
-- ----------------------------
INSERT INTO `sys_grade` VALUES ('1', '等级一', '/public/uploads/2021-07-22/cczp8yet9cxwo178kk.png', '20', '5', '[\"audio\",\"article\",\"video\",\"resource\",\"edu\"]', '[\"answer\",\"report\",\"comment\",\"group\",\"question\",\"topic\",\"upload\"]');
INSERT INTO `sys_grade` VALUES ('2', '等级二', '/public/uploads/2021-07-22/cczp8yet9cxwo178kk.png', '231', '123', '[\"video\",\"article\"]', '[\"comment\",\"answer\",\"report\"]');
INSERT INTO `sys_grade` VALUES ('3', '等级三', '/public/uploads/2021-07-22/cczp8yet9cxwo178kk.png', '545', '5465', '[\"article\",\"video\",\"resource\",\"edu\",\"audio\"]', '[\"comment\",\"answer\",\"upload\",\"topic\",\"question\",\"group\",\"report\"]');

-- ----------------------------
-- Table structure for sys_group
-- ----------------------------
DROP TABLE IF EXISTS `sys_group`;
CREATE TABLE `sys_group` (
  `group_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '创建人',
  `cate_id` bigint(20) DEFAULT NULL COMMENT '小组分类',
  `title` varchar(50) DEFAULT NULL COMMENT '小组名称',
  `cover` varchar(255) DEFAULT NULL COMMENT '封面',
  `join_mode` tinyint(4) DEFAULT '1' COMMENT '小组类型1 公共小组，2付费小组，3专属小组',
  `price` decimal(10,2) DEFAULT NULL COMMENT '费用',
  `secret_key` varchar(100) DEFAULT NULL COMMENT '加入角色',
  `icon` varchar(255) DEFAULT NULL COMMENT '小组图标',
  `joins` bigint(20) DEFAULT NULL,
  `hots` bigint(20) DEFAULT NULL,
  `contents` bigint(20) DEFAULT NULL,
  `views` bigint(20) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL COMMENT '小组描述',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态 0 全部  1待审   2通过  3拒绝',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL COMMENT '跟新时间',
  `delete_time` datetime DEFAULT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_group
-- ----------------------------
INSERT INTO `sys_group` VALUES ('4', '1', '15', '官方版务', 'http://beethorn.com/public/uploads/2022-05-21/ck586cchi3tgyy29wm.png', '1', '0.00', '', 'http://beethorn.com/public/uploads/2022-05-21/ck586b5yg290hyijzm.png', '0', '0', '0', '2', '发布官方资讯动态', '通过审核\n', '2', '2022-05-21 14:31:08', '2022-05-21 14:31:08', null);

-- ----------------------------
-- Table structure for sys_manger
-- ----------------------------
DROP TABLE IF EXISTS `sys_manger`;
CREATE TABLE `sys_manger` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `nick_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phone` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` tinyint(4) DEFAULT '3' COMMENT '用户性别（1男 2女 3未知）',
  `avatar` varchar(255) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `salt` char(10) DEFAULT NULL COMMENT '密码盐',
  `status` tinyint(4) DEFAULT '0' COMMENT '帐号状态（1停用,2正常）',
  `login_ip` varchar(50) DEFAULT '' COMMENT '最后登陆IP',
  `login_time` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `delete_time` datetime DEFAULT NULL COMMENT '软删除',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_manger
-- ----------------------------
INSERT INTO `sys_manger` VALUES ('1', 'Eforinaj', '9733728679@qq.com', '', '1', 'http://beethorn.com/public/uploads/2022-05-19/ck3nw7klmpy3rihv3j.jpg', 'f3565ae9276f3b7244230c1bcbb4ff4c', 'ePJsln', '2', '222.218.180.30', '2022-05-19 17:53:09', '2021-05-10 05:50:02', '2022-05-19 18:21:46', '', null);
INSERT INTO `sys_manger` VALUES ('3', '新用户248752', 'test@admin.com', '', '1', 'http://beethorn.com/public/uploads/2022-05-19/ck3nwb7r2eobowdifx.jpg', '528fae61d5899c4eb7edc13bc9ed1945', 'Zh0DRf', '2', '[::1]', '2022-05-27 15:51:35', '2021-05-10 05:58:47', '2022-05-19 18:22:11', '', null);

-- ----------------------------
-- Table structure for sys_manger_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_manger_role`;
CREATE TABLE `sys_manger_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_manger_role
-- ----------------------------
INSERT INTO `sys_manger_role` VALUES ('1', '1');
INSERT INTO `sys_manger_role` VALUES ('3', '15');

-- ----------------------------
-- Table structure for sys_media
-- ----------------------------
DROP TABLE IF EXISTS `sys_media`;
CREATE TABLE `sys_media` (
  `media_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL COMMENT '上传的用户',
  `link` varchar(255) DEFAULT NULL COMMENT '文件链接',
  `path` varchar(255) DEFAULT NULL COMMENT '存放路径',
  `name` varchar(50) DEFAULT NULL COMMENT '文件名称',
  `or_name` varchar(50) DEFAULT NULL COMMENT '原始文件名称',
  `size` varchar(50) NOT NULL COMMENT '文件大小',
  `upload_key` tinyint(4) NOT NULL COMMENT '上传方式 1 为本地上传， 2为oss上传',
  `ext` varchar(10) DEFAULT NULL COMMENT '文件后缀',
  `status` tinyint(4) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `delete_time` datetime DEFAULT NULL,
  `media_type` varchar(20) DEFAULT NULL COMMENT '文件类型',
  `remark` varchar(255) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`media_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=314 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_media
-- ----------------------------
INSERT INTO `sys_media` VALUES ('292', '1', 'http://beethorn.com/public/uploads/2022-05-19/ck3nw7klmpy3rihv3j.jpg', '/public/uploads/2022-05-19/ck3nw7klmpy3rihv3j.jpg', 'ck3nw7klmpy3rihv3j.jpg', '3e138bbc65502095.jpg', '58778', '1', '.jpg', '2', '2022-05-19 18:21:44', null, 'JPG', '');
INSERT INTO `sys_media` VALUES ('293', '1', 'http://beethorn.com/public/uploads/2022-05-19/ck3nwb7r2eobowdifx.jpg', '/public/uploads/2022-05-19/ck3nwb7r2eobowdifx.jpg', 'ck3nwb7r2eobowdifx.jpg', '80bd6c8d9f411e07.jpg', '55549', '1', '.jpg', '2', '2022-05-19 18:21:52', null, 'JPG', '');
INSERT INTO `sys_media` VALUES ('294', '1', 'http://beethorn.com/public/uploads/2022-05-19/ck3opi3dbcu1awxeb5.png', '/public/uploads/2022-05-19/ck3opi3dbcu1awxeb5.png', 'ck3opi3dbcu1awxeb5.png', 'Logo背景.png', '879', '1', '.png', '2', '2022-05-19 18:59:59', null, 'PNG', '');
INSERT INTO `sys_media` VALUES ('295', '1', 'http://beethorn.com/public/uploads/2022-05-19/ck3oy1mqb4b46ao3ze.png', '/public/uploads/2022-05-19/ck3oy1mqb4b46ao3ze.png', 'ck3oy1mqb4b46ao3ze.png', '默认标题_课程封面_2022-05-19+19_10_47.png', '159790', '1', '.png', '2', '2022-05-19 19:11:09', null, 'PNG', '');
INSERT INTO `sys_media` VALUES ('296', '1', 'http://beethorn.com/public/uploads/2022-05-19/ck3qu0oz7kz23dyp6c.mp4', '/public/uploads/2022-05-19/ck3qu0oz7kz23dyp6c.mp4', 'ck3qu0oz7kz23dyp6c.mp4', '宝塔环境安装.mp4', '75876362', '1', '.mp4', '2', '2022-05-19 20:39:56', null, 'MP4', '');
INSERT INTO `sys_media` VALUES ('297', '1', 'http://beethorn.com/public/uploads/2022-05-19/ck3ro87vm6rqbondro.png', '/public/uploads/2022-05-19/ck3ro87vm6rqbondro.png', 'ck3ro87vm6rqbondro.png', '默认标题_课程封面_2022-05-19+21_19_14.png', '161104', '1', '.png', '2', '2022-05-19 21:19:23', null, 'PNG', '');
INSERT INTO `sys_media` VALUES ('298', '1', 'http://beethorn.com/public/uploads/2022-05-19/ck3ruhz0ucr3q5sus7.png', '/public/uploads/2022-05-19/ck3ruhz0ucr3q5sus7.png', 'ck3ruhz0ucr3q5sus7.png', '默认标题_课程封面_2022-05-19+21_26_34.png', '159034', '1', '.png', '2', '2022-05-19 21:27:34', null, 'PNG', '');
INSERT INTO `sys_media` VALUES ('300', '1', 'http://beethorn.com/public/uploads/2022-05-19/ck3rxgo2mre1goloyc.png', '/public/uploads/2022-05-19/ck3rxgo2mre1goloyc.png', 'ck3rxgo2mre1goloyc.png', '默认标题_课程封面_2022-05-19+21_31_04.png', '159619', '1', '.png', '2', '2022-05-19 21:31:27', null, 'PNG', '');
INSERT INTO `sys_media` VALUES ('301', '1', 'http://beethorn.com/public/uploads/2022-05-19/ck3ryhfr0zxad8i0me.mp4', '/public/uploads/2022-05-19/ck3ryhfr0zxad8i0me.mp4', 'ck3ryhfr0zxad8i0me.mp4', 'admin.mp4', '71652363', '1', '.mp4', '2', '2022-05-19 21:32:47', null, 'MP4', '');
INSERT INTO `sys_media` VALUES ('302', '1', 'http://beethorn.com/public/uploads/2022-05-19/ck3s1tcxm3ifrofyoa.png', '/public/uploads/2022-05-19/ck3s1tcxm3ifrofyoa.png', 'ck3s1tcxm3ifrofyoa.png', '默认标题_公众号封面首图_2022-05-19+21_36_58.png', '34262', '1', '.png', '2', '2022-05-19 21:37:08', null, 'PNG', '');
INSERT INTO `sys_media` VALUES ('303', '1', 'http://beethorn.com/public/uploads/2022-05-19/ck3sjg0lg2z8bf81x0.jpg', '/public/uploads/2022-05-19/ck3sjg0lg2z8bf81x0.jpg', 'ck3sjg0lg2z8bf81x0.jpg', '3e138bbc65502095.jpg', '58778', '1', '.jpg', '2', '2022-05-19 22:00:09', null, 'JPG', '');
INSERT INTO `sys_media` VALUES ('305', '1', 'http://beethorn.com/public/uploads/2022-05-19/ck3sy6yg6ujxbxbfvz.mp4', '/public/uploads/2022-05-19/ck3sy6yg6ujxbxbfvz.mp4', 'ck3sy6yg6ujxbxbfvz.mp4', '前台安装.mp4', '156335757', '1', '.mp4', '2', '2022-05-19 22:19:26', null, 'MP4', '');
INSERT INTO `sys_media` VALUES ('306', '1', 'http://beethorn.com/public/uploads/2022-05-19/ck3t0f1efp3l8risfh.mp4', '/public/uploads/2022-05-19/ck3t0f1efp3l8risfh.mp4', 'ck3t0f1efp3l8risfh.mp4', '服务端安装.mp4', '196840701', '1', '.mp4', '2', '2022-05-19 22:22:20', null, 'MP4', '');
INSERT INTO `sys_media` VALUES ('307', '1', 'http://beethorn.com/public/uploads/2022-05-20/ck4pedigml7xmfaeun.png', '/public/uploads/2022-05-20/ck4pedigml7xmfaeun.png', 'ck4pedigml7xmfaeun.png', 'Logo背景.png', '2002', '1', '.png', '2', '2022-05-20 23:45:08', null, 'PNG', '');
INSERT INTO `sys_media` VALUES ('308', '1', 'http://beethorn.com/public/uploads/2022-05-21/ck5764litshuk8dcqi.png', '/public/uploads/2022-05-21/ck5764litshuk8dcqi.png', 'ck5764litshuk8dcqi.png', 'BeeThorn.png', '442', '1', '.png', '2', '2022-05-21 13:40:42', null, 'PNG', '');
INSERT INTO `sys_media` VALUES ('309', '1', 'http://beethorn.com/public/uploads/2022-05-21/ck578w4erbhuwnb1fl.png', '/public/uploads/2022-05-21/ck578w4erbhuwnb1fl.png', 'ck578w4erbhuwnb1fl.png', 'Container - 4.png', '49848', '1', '.png', '2', '2022-05-21 13:44:19', null, 'PNG', '');
INSERT INTO `sys_media` VALUES ('312', '1', 'http://beethorn.com/public/uploads/2022-05-21/ck586b5yg290hyijzm.png', '/public/uploads/2022-05-21/ck586b5yg290hyijzm.png', 'ck586b5yg290hyijzm.png', '画板 1.png', '918', '1', '.png', '2', '2022-05-21 14:27:58', null, 'PNG', '');
INSERT INTO `sys_media` VALUES ('313', '1', 'http://beethorn.com/public/uploads/2022-05-21/ck586cchi3tgyy29wm.png', '/public/uploads/2022-05-21/ck586cchi3tgyy29wm.png', 'ck586cchi3tgyy29wm.png', '画板 1.png', '918', '1', '.png', '2', '2022-05-21 14:28:00', null, 'PNG', '');

-- ----------------------------
-- Table structure for sys_media_related
-- ----------------------------
DROP TABLE IF EXISTS `sys_media_related`;
CREATE TABLE `sys_media_related` (
  `media_id` bigint(20) NOT NULL,
  `related_id` bigint(20) NOT NULL,
  `module` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_media_related
-- ----------------------------
INSERT INTO `sys_media_related` VALUES ('292', '1', 'manger');
INSERT INTO `sys_media_related` VALUES ('293', '3', 'manger');
INSERT INTO `sys_media_related` VALUES ('302', '8', 'resource');
INSERT INTO `sys_media_related` VALUES ('300', '10', 'video');
INSERT INTO `sys_media_related` VALUES ('301', '10', 'video');
INSERT INTO `sys_media_related` VALUES ('295', '7', 'video');
INSERT INTO `sys_media_related` VALUES ('296', '7', 'video');
INSERT INTO `sys_media_related` VALUES ('303', '1', 'user');
INSERT INTO `sys_media_related` VALUES ('297', '8', 'video');
INSERT INTO `sys_media_related` VALUES ('305', '8', 'video');
INSERT INTO `sys_media_related` VALUES ('298', '9', 'video');
INSERT INTO `sys_media_related` VALUES ('306', '9', 'video');
INSERT INTO `sys_media_related` VALUES ('295', '6', 'edu');
INSERT INTO `sys_media_related` VALUES ('296', '6', 'edu');
INSERT INTO `sys_media_related` VALUES ('301', '6', 'edu');
INSERT INTO `sys_media_related` VALUES ('305', '6', 'edu');
INSERT INTO `sys_media_related` VALUES ('306', '6', 'edu');
INSERT INTO `sys_media_related` VALUES ('309', '14', 'article');
INSERT INTO `sys_media_related` VALUES ('294', '0', 'BaseSetting');
INSERT INTO `sys_media_related` VALUES ('312', '4', 'group');
INSERT INTO `sys_media_related` VALUES ('313', '4', 'group');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `from_user_id` bigint(20) DEFAULT NULL,
  `receiver` bigint(20) DEFAULT NULL COMMENT '接收者',
  `detail_module` varchar(50) DEFAULT NULL,
  `detail_id` bigint(20) DEFAULT NULL,
  `system_type` tinyint(4) DEFAULT NULL COMMENT '1用户注册，2内容删除，3打赏收入，4购买收入，报名收入',
  `type` tinyint(4) NOT NULL COMMENT '通知类型 1用户注册通知,2评论通知,3用户收入通知,4评论通知,5回答通知,6获赞通知,7收到关注通知',
  `content` text COMMENT '内容',
  `status` tinyint(4) DEFAULT '0' COMMENT '是否阅读1未阅读，2已阅读',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('206', '0', '7', '', '0', '1', '1', '{siteTitle}欢迎您的加入', '1', '2022-05-20 11:12:28');
INSERT INTO `sys_notice` VALUES ('207', '0', '8', '', '0', '1', '1', '{siteTitle}欢迎您的加入', '2', '2022-05-21 03:12:13');
INSERT INTO `sys_notice` VALUES ('208', '0', '1', 'group', '4', '6', '1', '您发布的圈子《官方版务》已通过审核通过审核\n', '2', '2022-05-21 14:31:24');

-- ----------------------------
-- Table structure for sys_order
-- ----------------------------
DROP TABLE IF EXISTS `sys_order`;
CREATE TABLE `sys_order` (
  `order_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_num` varchar(50) DEFAULT NULL COMMENT '订单编号',
  `user_id` bigint(20) DEFAULT NULL COMMENT '下单人id',
  `author_id` bigint(20) DEFAULT NULL COMMENT '作者id',
  `pay_method` tinyint(4) DEFAULT NULL COMMENT '支付方式：1支付宝，2微信，3余额',
  `order_money` decimal(10,2) DEFAULT NULL COMMENT '订单金额',
  `district_money` decimal(10,2) DEFAULT NULL COMMENT '优惠金额',
  `author_money` decimal(10,2) DEFAULT NULL COMMENT '作者收益',
  `service_money` decimal(10,2) DEFAULT NULL COMMENT '服务费',
  `payment_money` decimal(10,2) DEFAULT NULL COMMENT '支付金额',
  `order_point` bigint(10) unsigned DEFAULT '0' COMMENT '订单积分',
  `order_type` tinyint(4) DEFAULT NULL COMMENT '订单类型: 1 充值，2打赏充电，3内容购买，4查看话题隐藏内容  ,5加入付费圈子,6购买付费课程,7查看付费答案，8开通vip，9认证付费',
  `order_mode` tinyint(4) DEFAULT NULL COMMENT '订单方式：1虚拟物品，2实体物品',
  `shipping_money` decimal(10,2) DEFAULT NULL COMMENT '运输费用',
  `shipping_address` varchar(100) DEFAULT NULL COMMENT '收获地址',
  `shipping_comp_name` varchar(10) DEFAULT NULL COMMENT '快递公司',
  `shipping_phone` varchar(50) DEFAULT NULL COMMENT '收货人联系方式',
  `shipping_name` varchar(50) DEFAULT NULL COMMENT '收货人姓名',
  `shipping_sn` varchar(60) DEFAULT NULL COMMENT '快递单号',
  `shipping_time` datetime DEFAULT NULL COMMENT '发货时间',
  `detail_id` bigint(20) DEFAULT NULL,
  `detail_module` varchar(50) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态 1未支付，2已支付',
  `invoice` varchar(100) DEFAULT NULL COMMENT '发票抬头',
  `pay_time` datetime DEFAULT NULL COMMENT '支付时间',
  `receive_time` datetime DEFAULT NULL COMMENT '收货时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_order
-- ----------------------------

-- ----------------------------
-- Table structure for sys_recharge
-- ----------------------------
DROP TABLE IF EXISTS `sys_recharge`;
CREATE TABLE `sys_recharge` (
  `recharge_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `money` decimal(10,2) DEFAULT NULL COMMENT '充值金额',
  `mode` tinyint(4) DEFAULT NULL COMMENT '充值方式：1支付宝，2微信，3卡密，4人工转账',
  `card_key` varchar(255) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL COMMENT '转账人名称',
  `type` tinyint(4) DEFAULT NULL COMMENT '转账类型：1支付宝，2微信',
  `number` varchar(50) DEFAULT NULL COMMENT '转账单号',
  `status` tinyint(4) DEFAULT NULL COMMENT '充值状态：1待审核，2已充值，3未充值',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`recharge_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_recharge
-- ----------------------------

-- ----------------------------
-- Table structure for sys_report
-- ----------------------------
DROP TABLE IF EXISTS `sys_report`;
CREATE TABLE `sys_report` (
  `report_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `related_id` bigint(20) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL COMMENT '举报类型 1广告垃圾，2违规内容，3恶意灌水，4重复发帖',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `remark` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '状态，2 已处理，1 未处理',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_report
-- ----------------------------

-- ----------------------------
-- Table structure for sys_resource
-- ----------------------------
DROP TABLE IF EXISTS `sys_resource`;
CREATE TABLE `sys_resource` (
  `resource_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '发布的用户',
  `cate_id` bigint(20) DEFAULT NULL COMMENT '分类id',
  `hots` bigint(20) DEFAULT NULL,
  `favorites` bigint(20) DEFAULT NULL,
  `likes` bigint(20) DEFAULT NULL,
  `views` bigint(20) DEFAULT NULL COMMENT '阅读量',
  `title` varchar(150) DEFAULT NULL COMMENT '标题',
  `content` mediumtext COMMENT '内容',
  `cover` varchar(255) DEFAULT NULL COMMENT '封面',
  `has_down` tinyint(4) DEFAULT '1' COMMENT '是否有下载1没有，2有',
  `down_mode` tinyint(4) DEFAULT NULL COMMENT '下载权限 0公开下载，1付费下载，2评论下载，3登录下载',
  `price` decimal(10,2) DEFAULT NULL,
  `down_url` text COMMENT '网盘地址',
  `purpose` text COMMENT '用途',
  `attribute` text COMMENT '属性',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态：0全部,1待审核 ，2已发布 ，3拒绝，4草稿',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`resource_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_resource
-- ----------------------------
INSERT INTO `sys_resource` VALUES ('8', '1', '13', '213', '123', '123', '142', '蜂刺安装包', '<p>已经编译好的安装包内容</p>', 'http://beethorn.com/public/uploads/2022-05-19/ck3s1tcxm3ifrofyoa.png', '2', '3', '0.00', '[{\"key\":\"https://pan.baidu.com/s/18GIa4-0iZHQCtoGeafwpgg\",\"title\":\"百度云\",\"val\":\"kxjb\"}]', '[]', '[]', '', '2', '2022-05-19 21:41:18', '2022-05-19 21:41:18', null, '');

-- ----------------------------
-- Table structure for sys_resource_related
-- ----------------------------
DROP TABLE IF EXISTS `sys_resource_related`;
CREATE TABLE `sys_resource_related` (
  `resource_id` bigint(20) DEFAULT NULL,
  `module` varchar(10) DEFAULT NULL,
  `related_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_resource_related
-- ----------------------------
INSERT INTO `sys_resource_related` VALUES ('8', 'video', '10');
INSERT INTO `sys_resource_related` VALUES ('8', 'video', '7');
INSERT INTO `sys_resource_related` VALUES ('8', 'video', '8');
INSERT INTO `sys_resource_related` VALUES ('8', 'video', '9');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `title` varchar(30) NOT NULL COMMENT '角色名称',
  `status` tinyint(4) NOT NULL COMMENT '角色状态（2正常 1停用）',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '管理员', '2', '2021-08-26 11:38:26', '2021-12-17 16:40:49', '');
INSERT INTO `sys_role` VALUES ('15', '后台演示', '2', '2021-08-26 11:41:08', '2021-11-23 20:01:52', '');
INSERT INTO `sys_role` VALUES ('16', '测试角色', '1', '2021-09-20 01:12:54', '2022-05-19 18:21:26', '');

-- ----------------------------
-- Table structure for sys_role_authority
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_authority`;
CREATE TABLE `sys_role_authority` (
  `role_id` bigint(20) NOT NULL,
  `authority_id` bigint(20) NOT NULL,
  PRIMARY KEY (`role_id`,`authority_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_role_authority
-- ----------------------------
INSERT INTO `sys_role_authority` VALUES ('1', '1');
INSERT INTO `sys_role_authority` VALUES ('1', '2');
INSERT INTO `sys_role_authority` VALUES ('1', '3');
INSERT INTO `sys_role_authority` VALUES ('1', '4');
INSERT INTO `sys_role_authority` VALUES ('1', '5');
INSERT INTO `sys_role_authority` VALUES ('1', '8');
INSERT INTO `sys_role_authority` VALUES ('1', '9');
INSERT INTO `sys_role_authority` VALUES ('1', '10');
INSERT INTO `sys_role_authority` VALUES ('1', '11');
INSERT INTO `sys_role_authority` VALUES ('1', '12');
INSERT INTO `sys_role_authority` VALUES ('1', '14');
INSERT INTO `sys_role_authority` VALUES ('1', '15');
INSERT INTO `sys_role_authority` VALUES ('1', '16');
INSERT INTO `sys_role_authority` VALUES ('1', '17');
INSERT INTO `sys_role_authority` VALUES ('1', '18');
INSERT INTO `sys_role_authority` VALUES ('1', '19');
INSERT INTO `sys_role_authority` VALUES ('1', '20');
INSERT INTO `sys_role_authority` VALUES ('1', '21');
INSERT INTO `sys_role_authority` VALUES ('1', '27');
INSERT INTO `sys_role_authority` VALUES ('1', '28');
INSERT INTO `sys_role_authority` VALUES ('1', '29');
INSERT INTO `sys_role_authority` VALUES ('1', '30');
INSERT INTO `sys_role_authority` VALUES ('1', '31');
INSERT INTO `sys_role_authority` VALUES ('1', '32');
INSERT INTO `sys_role_authority` VALUES ('1', '34');
INSERT INTO `sys_role_authority` VALUES ('1', '35');
INSERT INTO `sys_role_authority` VALUES ('1', '36');
INSERT INTO `sys_role_authority` VALUES ('1', '37');
INSERT INTO `sys_role_authority` VALUES ('1', '38');
INSERT INTO `sys_role_authority` VALUES ('1', '39');
INSERT INTO `sys_role_authority` VALUES ('1', '40');
INSERT INTO `sys_role_authority` VALUES ('1', '42');
INSERT INTO `sys_role_authority` VALUES ('1', '43');
INSERT INTO `sys_role_authority` VALUES ('1', '44');
INSERT INTO `sys_role_authority` VALUES ('1', '45');
INSERT INTO `sys_role_authority` VALUES ('1', '46');
INSERT INTO `sys_role_authority` VALUES ('1', '47');
INSERT INTO `sys_role_authority` VALUES ('1', '48');
INSERT INTO `sys_role_authority` VALUES ('1', '52');
INSERT INTO `sys_role_authority` VALUES ('1', '53');
INSERT INTO `sys_role_authority` VALUES ('1', '54');
INSERT INTO `sys_role_authority` VALUES ('1', '55');
INSERT INTO `sys_role_authority` VALUES ('1', '56');
INSERT INTO `sys_role_authority` VALUES ('1', '57');
INSERT INTO `sys_role_authority` VALUES ('1', '58');
INSERT INTO `sys_role_authority` VALUES ('1', '59');
INSERT INTO `sys_role_authority` VALUES ('1', '60');
INSERT INTO `sys_role_authority` VALUES ('1', '61');
INSERT INTO `sys_role_authority` VALUES ('1', '62');
INSERT INTO `sys_role_authority` VALUES ('1', '63');
INSERT INTO `sys_role_authority` VALUES ('1', '64');
INSERT INTO `sys_role_authority` VALUES ('1', '65');
INSERT INTO `sys_role_authority` VALUES ('1', '66');
INSERT INTO `sys_role_authority` VALUES ('1', '67');
INSERT INTO `sys_role_authority` VALUES ('1', '68');
INSERT INTO `sys_role_authority` VALUES ('1', '69');
INSERT INTO `sys_role_authority` VALUES ('1', '70');
INSERT INTO `sys_role_authority` VALUES ('1', '71');
INSERT INTO `sys_role_authority` VALUES ('1', '72');
INSERT INTO `sys_role_authority` VALUES ('1', '73');
INSERT INTO `sys_role_authority` VALUES ('1', '74');
INSERT INTO `sys_role_authority` VALUES ('1', '75');
INSERT INTO `sys_role_authority` VALUES ('1', '76');
INSERT INTO `sys_role_authority` VALUES ('1', '77');
INSERT INTO `sys_role_authority` VALUES ('1', '78');
INSERT INTO `sys_role_authority` VALUES ('1', '79');
INSERT INTO `sys_role_authority` VALUES ('1', '80');
INSERT INTO `sys_role_authority` VALUES ('1', '81');
INSERT INTO `sys_role_authority` VALUES ('1', '82');
INSERT INTO `sys_role_authority` VALUES ('1', '83');
INSERT INTO `sys_role_authority` VALUES ('1', '84');
INSERT INTO `sys_role_authority` VALUES ('1', '85');
INSERT INTO `sys_role_authority` VALUES ('1', '86');
INSERT INTO `sys_role_authority` VALUES ('1', '87');
INSERT INTO `sys_role_authority` VALUES ('1', '88');
INSERT INTO `sys_role_authority` VALUES ('1', '89');
INSERT INTO `sys_role_authority` VALUES ('1', '90');
INSERT INTO `sys_role_authority` VALUES ('1', '91');
INSERT INTO `sys_role_authority` VALUES ('1', '92');
INSERT INTO `sys_role_authority` VALUES ('1', '93');
INSERT INTO `sys_role_authority` VALUES ('1', '94');
INSERT INTO `sys_role_authority` VALUES ('1', '95');
INSERT INTO `sys_role_authority` VALUES ('1', '96');
INSERT INTO `sys_role_authority` VALUES ('1', '97');
INSERT INTO `sys_role_authority` VALUES ('1', '98');
INSERT INTO `sys_role_authority` VALUES ('1', '99');
INSERT INTO `sys_role_authority` VALUES ('1', '100');
INSERT INTO `sys_role_authority` VALUES ('1', '101');
INSERT INTO `sys_role_authority` VALUES ('1', '102');
INSERT INTO `sys_role_authority` VALUES ('1', '103');
INSERT INTO `sys_role_authority` VALUES ('1', '104');
INSERT INTO `sys_role_authority` VALUES ('1', '105');
INSERT INTO `sys_role_authority` VALUES ('1', '106');
INSERT INTO `sys_role_authority` VALUES ('1', '107');
INSERT INTO `sys_role_authority` VALUES ('1', '108');
INSERT INTO `sys_role_authority` VALUES ('1', '109');
INSERT INTO `sys_role_authority` VALUES ('1', '110');
INSERT INTO `sys_role_authority` VALUES ('1', '111');
INSERT INTO `sys_role_authority` VALUES ('1', '112');
INSERT INTO `sys_role_authority` VALUES ('1', '113');
INSERT INTO `sys_role_authority` VALUES ('1', '114');
INSERT INTO `sys_role_authority` VALUES ('1', '115');
INSERT INTO `sys_role_authority` VALUES ('1', '116');
INSERT INTO `sys_role_authority` VALUES ('1', '117');
INSERT INTO `sys_role_authority` VALUES ('1', '118');
INSERT INTO `sys_role_authority` VALUES ('1', '119');
INSERT INTO `sys_role_authority` VALUES ('1', '120');
INSERT INTO `sys_role_authority` VALUES ('1', '121');
INSERT INTO `sys_role_authority` VALUES ('1', '122');
INSERT INTO `sys_role_authority` VALUES ('1', '123');
INSERT INTO `sys_role_authority` VALUES ('1', '124');
INSERT INTO `sys_role_authority` VALUES ('1', '125');
INSERT INTO `sys_role_authority` VALUES ('1', '126');
INSERT INTO `sys_role_authority` VALUES ('1', '127');
INSERT INTO `sys_role_authority` VALUES ('1', '128');
INSERT INTO `sys_role_authority` VALUES ('1', '129');
INSERT INTO `sys_role_authority` VALUES ('1', '130');
INSERT INTO `sys_role_authority` VALUES ('1', '131');
INSERT INTO `sys_role_authority` VALUES ('1', '132');
INSERT INTO `sys_role_authority` VALUES ('1', '133');
INSERT INTO `sys_role_authority` VALUES ('1', '134');
INSERT INTO `sys_role_authority` VALUES ('1', '135');
INSERT INTO `sys_role_authority` VALUES ('1', '136');
INSERT INTO `sys_role_authority` VALUES ('1', '137');
INSERT INTO `sys_role_authority` VALUES ('1', '138');
INSERT INTO `sys_role_authority` VALUES ('1', '139');
INSERT INTO `sys_role_authority` VALUES ('1', '140');
INSERT INTO `sys_role_authority` VALUES ('1', '141');
INSERT INTO `sys_role_authority` VALUES ('1', '142');
INSERT INTO `sys_role_authority` VALUES ('1', '143');
INSERT INTO `sys_role_authority` VALUES ('1', '144');
INSERT INTO `sys_role_authority` VALUES ('1', '145');
INSERT INTO `sys_role_authority` VALUES ('1', '146');
INSERT INTO `sys_role_authority` VALUES ('1', '147');
INSERT INTO `sys_role_authority` VALUES ('1', '148');
INSERT INTO `sys_role_authority` VALUES ('1', '149');
INSERT INTO `sys_role_authority` VALUES ('1', '151');
INSERT INTO `sys_role_authority` VALUES ('1', '152');
INSERT INTO `sys_role_authority` VALUES ('1', '153');
INSERT INTO `sys_role_authority` VALUES ('1', '154');
INSERT INTO `sys_role_authority` VALUES ('1', '155');
INSERT INTO `sys_role_authority` VALUES ('1', '156');
INSERT INTO `sys_role_authority` VALUES ('1', '157');
INSERT INTO `sys_role_authority` VALUES ('1', '158');
INSERT INTO `sys_role_authority` VALUES ('1', '159');
INSERT INTO `sys_role_authority` VALUES ('1', '160');
INSERT INTO `sys_role_authority` VALUES ('1', '161');
INSERT INTO `sys_role_authority` VALUES ('1', '162');
INSERT INTO `sys_role_authority` VALUES ('1', '163');
INSERT INTO `sys_role_authority` VALUES ('15', '1');
INSERT INTO `sys_role_authority` VALUES ('15', '2');
INSERT INTO `sys_role_authority` VALUES ('15', '3');
INSERT INTO `sys_role_authority` VALUES ('15', '4');
INSERT INTO `sys_role_authority` VALUES ('15', '5');
INSERT INTO `sys_role_authority` VALUES ('15', '8');
INSERT INTO `sys_role_authority` VALUES ('15', '9');
INSERT INTO `sys_role_authority` VALUES ('15', '10');
INSERT INTO `sys_role_authority` VALUES ('15', '11');
INSERT INTO `sys_role_authority` VALUES ('15', '12');
INSERT INTO `sys_role_authority` VALUES ('15', '14');
INSERT INTO `sys_role_authority` VALUES ('15', '15');
INSERT INTO `sys_role_authority` VALUES ('15', '16');
INSERT INTO `sys_role_authority` VALUES ('15', '17');
INSERT INTO `sys_role_authority` VALUES ('15', '18');
INSERT INTO `sys_role_authority` VALUES ('15', '19');
INSERT INTO `sys_role_authority` VALUES ('15', '20');
INSERT INTO `sys_role_authority` VALUES ('15', '21');
INSERT INTO `sys_role_authority` VALUES ('15', '27');
INSERT INTO `sys_role_authority` VALUES ('15', '28');
INSERT INTO `sys_role_authority` VALUES ('15', '29');
INSERT INTO `sys_role_authority` VALUES ('15', '30');
INSERT INTO `sys_role_authority` VALUES ('15', '31');
INSERT INTO `sys_role_authority` VALUES ('15', '32');
INSERT INTO `sys_role_authority` VALUES ('15', '34');
INSERT INTO `sys_role_authority` VALUES ('15', '35');
INSERT INTO `sys_role_authority` VALUES ('15', '36');
INSERT INTO `sys_role_authority` VALUES ('15', '37');
INSERT INTO `sys_role_authority` VALUES ('15', '38');
INSERT INTO `sys_role_authority` VALUES ('15', '39');
INSERT INTO `sys_role_authority` VALUES ('15', '40');
INSERT INTO `sys_role_authority` VALUES ('15', '42');
INSERT INTO `sys_role_authority` VALUES ('15', '43');
INSERT INTO `sys_role_authority` VALUES ('15', '44');
INSERT INTO `sys_role_authority` VALUES ('15', '45');
INSERT INTO `sys_role_authority` VALUES ('15', '46');
INSERT INTO `sys_role_authority` VALUES ('15', '47');
INSERT INTO `sys_role_authority` VALUES ('15', '48');
INSERT INTO `sys_role_authority` VALUES ('15', '52');
INSERT INTO `sys_role_authority` VALUES ('15', '53');
INSERT INTO `sys_role_authority` VALUES ('15', '54');
INSERT INTO `sys_role_authority` VALUES ('15', '55');
INSERT INTO `sys_role_authority` VALUES ('15', '56');
INSERT INTO `sys_role_authority` VALUES ('15', '57');
INSERT INTO `sys_role_authority` VALUES ('15', '58');
INSERT INTO `sys_role_authority` VALUES ('15', '59');
INSERT INTO `sys_role_authority` VALUES ('15', '60');
INSERT INTO `sys_role_authority` VALUES ('15', '61');
INSERT INTO `sys_role_authority` VALUES ('15', '62');
INSERT INTO `sys_role_authority` VALUES ('15', '63');
INSERT INTO `sys_role_authority` VALUES ('15', '64');
INSERT INTO `sys_role_authority` VALUES ('15', '65');
INSERT INTO `sys_role_authority` VALUES ('15', '66');
INSERT INTO `sys_role_authority` VALUES ('15', '67');
INSERT INTO `sys_role_authority` VALUES ('15', '68');
INSERT INTO `sys_role_authority` VALUES ('15', '69');
INSERT INTO `sys_role_authority` VALUES ('15', '70');
INSERT INTO `sys_role_authority` VALUES ('15', '71');
INSERT INTO `sys_role_authority` VALUES ('15', '72');
INSERT INTO `sys_role_authority` VALUES ('15', '73');
INSERT INTO `sys_role_authority` VALUES ('15', '74');
INSERT INTO `sys_role_authority` VALUES ('15', '75');
INSERT INTO `sys_role_authority` VALUES ('15', '76');
INSERT INTO `sys_role_authority` VALUES ('15', '77');
INSERT INTO `sys_role_authority` VALUES ('15', '78');
INSERT INTO `sys_role_authority` VALUES ('15', '79');
INSERT INTO `sys_role_authority` VALUES ('15', '80');
INSERT INTO `sys_role_authority` VALUES ('15', '81');
INSERT INTO `sys_role_authority` VALUES ('15', '82');
INSERT INTO `sys_role_authority` VALUES ('15', '83');
INSERT INTO `sys_role_authority` VALUES ('15', '84');
INSERT INTO `sys_role_authority` VALUES ('15', '85');
INSERT INTO `sys_role_authority` VALUES ('15', '86');
INSERT INTO `sys_role_authority` VALUES ('15', '87');
INSERT INTO `sys_role_authority` VALUES ('15', '88');
INSERT INTO `sys_role_authority` VALUES ('15', '89');
INSERT INTO `sys_role_authority` VALUES ('15', '90');
INSERT INTO `sys_role_authority` VALUES ('15', '91');
INSERT INTO `sys_role_authority` VALUES ('15', '92');
INSERT INTO `sys_role_authority` VALUES ('15', '93');
INSERT INTO `sys_role_authority` VALUES ('15', '94');
INSERT INTO `sys_role_authority` VALUES ('15', '95');
INSERT INTO `sys_role_authority` VALUES ('15', '96');
INSERT INTO `sys_role_authority` VALUES ('15', '97');
INSERT INTO `sys_role_authority` VALUES ('15', '98');
INSERT INTO `sys_role_authority` VALUES ('15', '99');
INSERT INTO `sys_role_authority` VALUES ('15', '100');
INSERT INTO `sys_role_authority` VALUES ('15', '101');
INSERT INTO `sys_role_authority` VALUES ('15', '102');
INSERT INTO `sys_role_authority` VALUES ('15', '103');
INSERT INTO `sys_role_authority` VALUES ('15', '104');
INSERT INTO `sys_role_authority` VALUES ('15', '105');
INSERT INTO `sys_role_authority` VALUES ('15', '106');
INSERT INTO `sys_role_authority` VALUES ('15', '107');
INSERT INTO `sys_role_authority` VALUES ('15', '108');
INSERT INTO `sys_role_authority` VALUES ('15', '109');
INSERT INTO `sys_role_authority` VALUES ('15', '110');
INSERT INTO `sys_role_authority` VALUES ('15', '111');
INSERT INTO `sys_role_authority` VALUES ('15', '112');
INSERT INTO `sys_role_authority` VALUES ('15', '113');
INSERT INTO `sys_role_authority` VALUES ('15', '114');
INSERT INTO `sys_role_authority` VALUES ('15', '115');
INSERT INTO `sys_role_authority` VALUES ('15', '116');
INSERT INTO `sys_role_authority` VALUES ('15', '117');
INSERT INTO `sys_role_authority` VALUES ('15', '118');
INSERT INTO `sys_role_authority` VALUES ('15', '119');
INSERT INTO `sys_role_authority` VALUES ('15', '120');
INSERT INTO `sys_role_authority` VALUES ('15', '121');
INSERT INTO `sys_role_authority` VALUES ('15', '122');
INSERT INTO `sys_role_authority` VALUES ('15', '123');
INSERT INTO `sys_role_authority` VALUES ('15', '124');
INSERT INTO `sys_role_authority` VALUES ('15', '125');
INSERT INTO `sys_role_authority` VALUES ('15', '126');
INSERT INTO `sys_role_authority` VALUES ('15', '127');
INSERT INTO `sys_role_authority` VALUES ('15', '128');
INSERT INTO `sys_role_authority` VALUES ('15', '129');
INSERT INTO `sys_role_authority` VALUES ('15', '130');
INSERT INTO `sys_role_authority` VALUES ('15', '131');
INSERT INTO `sys_role_authority` VALUES ('15', '132');
INSERT INTO `sys_role_authority` VALUES ('15', '133');
INSERT INTO `sys_role_authority` VALUES ('15', '134');
INSERT INTO `sys_role_authority` VALUES ('15', '135');
INSERT INTO `sys_role_authority` VALUES ('15', '136');
INSERT INTO `sys_role_authority` VALUES ('15', '137');
INSERT INTO `sys_role_authority` VALUES ('15', '138');
INSERT INTO `sys_role_authority` VALUES ('15', '139');
INSERT INTO `sys_role_authority` VALUES ('15', '140');
INSERT INTO `sys_role_authority` VALUES ('15', '141');
INSERT INTO `sys_role_authority` VALUES ('15', '142');
INSERT INTO `sys_role_authority` VALUES ('15', '143');
INSERT INTO `sys_role_authority` VALUES ('15', '144');
INSERT INTO `sys_role_authority` VALUES ('15', '145');
INSERT INTO `sys_role_authority` VALUES ('15', '146');
INSERT INTO `sys_role_authority` VALUES ('15', '147');
INSERT INTO `sys_role_authority` VALUES ('15', '148');
INSERT INTO `sys_role_authority` VALUES ('15', '151');
INSERT INTO `sys_role_authority` VALUES ('15', '152');
INSERT INTO `sys_role_authority` VALUES ('15', '153');
INSERT INTO `sys_role_authority` VALUES ('15', '154');
INSERT INTO `sys_role_authority` VALUES ('15', '155');
INSERT INTO `sys_role_authority` VALUES ('15', '156');
INSERT INTO `sys_role_authority` VALUES ('15', '157');
INSERT INTO `sys_role_authority` VALUES ('15', '158');
INSERT INTO `sys_role_authority` VALUES ('16', '1');
INSERT INTO `sys_role_authority` VALUES ('16', '2');
INSERT INTO `sys_role_authority` VALUES ('16', '3');
INSERT INTO `sys_role_authority` VALUES ('16', '4');
INSERT INTO `sys_role_authority` VALUES ('16', '5');
INSERT INTO `sys_role_authority` VALUES ('16', '8');
INSERT INTO `sys_role_authority` VALUES ('16', '9');
INSERT INTO `sys_role_authority` VALUES ('16', '10');
INSERT INTO `sys_role_authority` VALUES ('16', '11');
INSERT INTO `sys_role_authority` VALUES ('16', '12');

-- ----------------------------
-- Table structure for sys_sign
-- ----------------------------
DROP TABLE IF EXISTS `sys_sign`;
CREATE TABLE `sys_sign` (
  `sign_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `integral` bigint(20) DEFAULT NULL,
  `count` int(10) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`sign_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_sign
-- ----------------------------
INSERT INTO `sys_sign` VALUES ('60', '1', '3189', null, null);

-- ----------------------------
-- Table structure for sys_tag
-- ----------------------------
DROP TABLE IF EXISTS `sys_tag`;
CREATE TABLE `sys_tag` (
  `tag_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `top` tinyint(4) DEFAULT '1' COMMENT '是否推荐 1不推荐 2推荐',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_tag
-- ----------------------------
INSERT INTO `sys_tag` VALUES ('55', '宝塔安装', '1', '2022-05-19 19:15:54');
INSERT INTO `sys_tag` VALUES ('56', '安装包', '1', '2022-05-19 21:41:18');
INSERT INTO `sys_tag` VALUES ('57', '系统安装', '1', '2022-05-20 15:45:31');

-- ----------------------------
-- Table structure for sys_tag_related
-- ----------------------------
DROP TABLE IF EXISTS `sys_tag_related`;
CREATE TABLE `sys_tag_related` (
  `tag_id` bigint(20) NOT NULL,
  `related_id` bigint(20) NOT NULL COMMENT '关系id',
  `module` varchar(50) DEFAULT NULL COMMENT '模块'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_tag_related
-- ----------------------------
INSERT INTO `sys_tag_related` VALUES ('56', '8', 'resource');
INSERT INTO `sys_tag_related` VALUES ('55', '10', 'video');
INSERT INTO `sys_tag_related` VALUES ('55', '7', 'video');
INSERT INTO `sys_tag_related` VALUES ('55', '8', 'video');
INSERT INTO `sys_tag_related` VALUES ('55', '9', 'video');
INSERT INTO `sys_tag_related` VALUES ('57', '6', 'edu');

-- ----------------------------
-- Table structure for sys_topic
-- ----------------------------
DROP TABLE IF EXISTS `sys_topic`;
CREATE TABLE `sys_topic` (
  `topic_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '发布用户',
  `group_id` bigint(20) DEFAULT NULL,
  `related_id` bigint(20) DEFAULT NULL COMMENT '关联内容的id',
  `module` varchar(50) DEFAULT NULL COMMENT '所属模块',
  `type` tinyint(4) NOT NULL COMMENT '类型 1帖子，2问答',
  `title` varchar(150) DEFAULT NULL COMMENT '话题',
  `files` text COMMENT '文件链接',
  `views` bigint(20) DEFAULT NULL COMMENT '查看',
  `likes` bigint(20) DEFAULT NULL,
  `hots` bigint(20) DEFAULT '0',
  `is_top` tinyint(4) DEFAULT NULL COMMENT '是否置顶 1 不置顶 2置顶',
  `price` decimal(10,2) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '状态：0全部,1待审核 ，2已发布 ，3拒绝，4草稿',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `delete_time` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`topic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_topic
-- ----------------------------
INSERT INTO `sys_topic` VALUES ('29', '1', '4', '14', 'article', '4', '蜂刺轻内容管理系统简介', '', '1', '0', '0', '1', '0.00', '2', '2022-05-21 14:32:32', '2022-05-21 14:32:32', null, '');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `nick_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phone` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` tinyint(4) DEFAULT '3' COMMENT '用户性别（1男 2女 3未知）',
  `avatar` varchar(255) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `salt` char(10) DEFAULT NULL COMMENT '密码盐',
  `cover` varchar(255) DEFAULT NULL,
  `follows` bigint(20) DEFAULT NULL,
  `fans` bigint(20) DEFAULT NULL,
  `likes` bigint(20) DEFAULT NULL,
  `grade` bigint(20) DEFAULT NULL,
  `vip` bigint(20) DEFAULT NULL,
  `balance` decimal(10,2) DEFAULT NULL COMMENT '余额',
  `integral` bigint(20) DEFAULT NULL COMMENT '积分',
  `description` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0' COMMENT '帐号状态（1停用,2正常）',
  `login_ip` varchar(50) DEFAULT '' COMMENT '最后登陆IP',
  `login_time` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `delete_time` datetime DEFAULT NULL COMMENT '软删除',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'EForinaj', '973728679@qq.com', '', '1', 'http://beethorn.com/public/uploads/2022-05-19/ck3sjg0lg2z8bf81x0.jpg', 'f3565ae9276f3b7244230c1bcbb4ff4c', 'ePJsln', '/public/uploads/2021-11-19/cftsrmz4obqsgk9ndy.jpg', '1', '1', '12', '3', '0', '538.81', '1250', '干撒大发噶丹是', '2', '127.0.0.1', '2022-05-31 17:54:17', '2021-05-10 05:50:02', '2022-05-19 22:00:15', '', null);
INSERT INTO `sys_user` VALUES ('7', '新用户850648', '166666717@qq.com', '', '3', '/public/uploads/2021-06-30/ccgxrrsx6enov4utih.png', 'c67972a0cf71d15179c924a4b48f6ead', 'ypK1m3', '/public/uploads/2021-06-30/ccgxrrsx6enov4utih.png', '0', '0', '0', '1', '0', '0.00', '300', '', '2', '120.235.19.113', '2022-05-20 11:12:29', '2022-05-20 11:12:28', '2022-05-20 11:12:28', '', null);
INSERT INTO `sys_user` VALUES ('8', '新用户473759', '3275366709@qq.com', '', '3', '/public/uploads/2021-06-30/ccgxrrsx6enov4utih.png', '134003cdbbcc9d0e34b66068f8fa857a', 'qUc54Y', '/public/uploads/2021-06-30/ccgxrrsx6enov4utih.png', '0', '0', '0', '1', '0', '0.00', '300', '', '2', '39.144.135.211', '2022-05-21 03:36:40', '2022-05-21 03:12:13', '2022-05-21 03:12:13', '', null);

-- ----------------------------
-- Table structure for sys_user_favorite
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_favorite`;
CREATE TABLE `sys_user_favorite` (
  `user_id` bigint(20) DEFAULT NULL,
  `favorite_id` bigint(20) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_user_favorite
-- ----------------------------
INSERT INTO `sys_user_favorite` VALUES ('1', '2', 'question');

-- ----------------------------
-- Table structure for sys_user_follow
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_follow`;
CREATE TABLE `sys_user_follow` (
  `user_id` bigint(20) DEFAULT NULL,
  `follow_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_user_follow
-- ----------------------------
INSERT INTO `sys_user_follow` VALUES ('1', '3');

-- ----------------------------
-- Table structure for sys_user_join_edu
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_join_edu`;
CREATE TABLE `sys_user_join_edu` (
  `mode` tinyint(4) DEFAULT NULL COMMENT '联系方式1微信，2QQ，3手机',
  `number` varchar(50) DEFAULT NULL,
  `edu_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_user_join_edu
-- ----------------------------
INSERT INTO `sys_user_join_edu` VALUES ('1', 'DFSGASD', '2', '1', 'dfgasdf', '2021-07-16 23:59:10');
INSERT INTO `sys_user_join_edu` VALUES ('1', 'asdasd', '6', '1', 'asdasd', '2022-05-21 18:36:46');

-- ----------------------------
-- Table structure for sys_user_join_group
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_join_group`;
CREATE TABLE `sys_user_join_group` (
  `group_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_user_join_group
-- ----------------------------
INSERT INTO `sys_user_join_group` VALUES ('2', '1');

-- ----------------------------
-- Table structure for sys_user_like
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_like`;
CREATE TABLE `sys_user_like` (
  `user_id` bigint(20) NOT NULL,
  `related_id` bigint(20) NOT NULL,
  `module` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`,`related_id`,`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_user_like
-- ----------------------------
INSERT INTO `sys_user_like` VALUES ('1', '1', 'comment');
INSERT INTO `sys_user_like` VALUES ('1', '4', 'answer');
INSERT INTO `sys_user_like` VALUES ('1', '49', 'comment');
INSERT INTO `sys_user_like` VALUES ('1', '50', 'comment');
INSERT INTO `sys_user_like` VALUES ('1', '53', 'comment');
INSERT INTO `sys_user_like` VALUES ('1', '54', 'comment');
INSERT INTO `sys_user_like` VALUES ('3', '1', 'comment');
INSERT INTO `sys_user_like` VALUES ('3', '5', 'question');
INSERT INTO `sys_user_like` VALUES ('3', '22', 'answer');

-- ----------------------------
-- Table structure for sys_user_vip
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_vip`;
CREATE TABLE `sys_user_vip` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `vip_id` bigint(20) NOT NULL COMMENT '角色ID',
  `start_time` datetime DEFAULT NULL,
  `finish_time` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`,`vip_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_vip
-- ----------------------------

-- ----------------------------
-- Table structure for sys_verify
-- ----------------------------
DROP TABLE IF EXISTS `sys_verify`;
CREATE TABLE `sys_verify` (
  `verify_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `name` varchar(50) DEFAULT NULL COMMENT '真实姓名',
  `code` varchar(50) DEFAULT NULL COMMENT '身份证号码',
  `encryption` varchar(255) DEFAULT NULL COMMENT '加密后的认证信息',
  `mode` tinyint(4) DEFAULT NULL COMMENT '联系方式 1 qq, 2微信',
  `number` varchar(50) DEFAULT NULL COMMENT '联系号码',
  `create_time` datetime DEFAULT NULL COMMENT '认证时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态（1待审，2成功，3拒绝）',
  PRIMARY KEY (`verify_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_verify
-- ----------------------------
INSERT INTO `sys_verify` VALUES ('3', '1', '荣*来', '455******654', '1a23d963924fc704f0c3132d871222e0', '1', '6565156', '2021-07-10 17:14:26', '2021-07-10 17:14:26', '', '2');

-- ----------------------------
-- Table structure for sys_video
-- ----------------------------
DROP TABLE IF EXISTS `sys_video`;
CREATE TABLE `sys_video` (
  `video_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `cate_id` bigint(20) DEFAULT NULL COMMENT '分类',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `cover` varchar(255) DEFAULT NULL COMMENT '封面',
  `link` varchar(255) DEFAULT NULL COMMENT '视频地址',
  `hots` bigint(20) DEFAULT NULL,
  `likes` bigint(20) DEFAULT NULL COMMENT '点赞数',
  `favorites` bigint(20) unsigned DEFAULT NULL COMMENT '收藏',
  `views` bigint(20) DEFAULT NULL COMMENT '播放量',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `other_link` varchar(255) DEFAULT NULL COMMENT '第三方地址',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态：0全部,1待审核 ，2已发布 ，3拒绝，4草稿',
  `delete_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_video
-- ----------------------------
INSERT INTO `sys_video` VALUES ('7', '1', '12', '基于宝塔安装教程环境安装', 'http://beethorn.com/public/uploads/2022-05-19/ck3oy1mqb4b46ao3ze.png', 'http://beethorn.com/public/uploads/2022-05-19/ck3qu0oz7kz23dyp6c.mp4', '12312', '1231', '3123', '23145', '测试有', '', '2', null, '2022-05-19 19:15:54', '2022-05-19 21:41:55', '');
INSERT INTO `sys_video` VALUES ('8', '1', '12', '基于宝塔安装教程-前台交互安装', 'http://beethorn.com/public/uploads/2022-05-19/ck3ro87vm6rqbondro.png', 'http://beethorn.com/public/uploads/2022-05-19/ck3sy6yg6ujxbxbfvz.mp4', '2131', '23123', '1231', '136', '服务端的接口环境安装', '', '2', null, '2022-05-19 21:20:40', '2022-05-19 22:19:31', '');
INSERT INTO `sys_video` VALUES ('9', '1', '12', '基于宝塔安装教程-服务端数据接口安装', 'http://beethorn.com/public/uploads/2022-05-19/ck3ruhz0ucr3q5sus7.png', 'http://beethorn.com/public/uploads/2022-05-19/ck3t0f1efp3l8risfh.mp4', '123', '23123', '1231123', '131', '前台安装', '', '2', null, '2022-05-19 21:30:07', '2022-05-19 22:22:24', '');
INSERT INTO `sys_video` VALUES ('10', '1', '12', '基于宝塔安装教程-后台管理安装', 'http://beethorn.com/public/uploads/2022-05-19/ck3rxgo2mre1goloyc.png', 'http://beethorn.com/public/uploads/2022-05-19/ck3ryhfr0zxad8i0me.mp4', '123', '2312', '1231', '141', '后台管理', '', '2', null, '2022-05-19 21:32:52', '2022-05-19 21:41:33', '');

-- ----------------------------
-- Table structure for sys_vip
-- ----------------------------
DROP TABLE IF EXISTS `sys_vip`;
CREATE TABLE `sys_vip` (
  `vip_id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) DEFAULT NULL COMMENT '会员标题',
  `icon` varchar(255) DEFAULT NULL,
  `day` int(4) DEFAULT NULL COMMENT '到期时间',
  `price` decimal(10,2) DEFAULT NULL COMMENT '开通价格',
  `discount` decimal(10,2) DEFAULT NULL COMMENT '折扣',
  `color` varchar(30) DEFAULT NULL COMMENT '自定义颜色',
  PRIMARY KEY (`vip_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_vip
-- ----------------------------
INSERT INTO `sys_vip` VALUES ('1', '月会员', '/public/uploads/2021-11-19/cftswh0hteh6uoswhh.png', '31', '20.00', '0.00', '');
INSERT INTO `sys_vip` VALUES ('2', '年会员', '/public/uploads/2021-11-19/cftswh0hteh6uoswhh.png', '365', '2000.00', '0.00', '');
INSERT INTO `sys_vip` VALUES ('3', '永久会员', '/public/uploads/2021-11-19/cftswh0hteh6uoswhh.png', '0', '3423.00', '0.00', '');
INSERT INTO `sys_vip` VALUES ('4', '测试会员第三方', '/public/uploads/2021-11-19/cftswh0hteh6uoswhh.png', '50', '324.00', '0.00', '0');
