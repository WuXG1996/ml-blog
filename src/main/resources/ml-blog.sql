/*
 Navicat Premium Data Transfer

 Source Server         : 我的阿里云
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : www.wxg123.com:3306
 Source Schema         : ml-blog

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 12/03/2020 16:28:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_about_me
-- ----------------------------
DROP TABLE IF EXISTS `t_about_me`;
CREATE TABLE `t_about_me`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `status` tinyint(4) NOT NULL COMMENT '是否显示 1：是 0：否',
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_about_me
-- ----------------------------
INSERT INTO `t_about_me` VALUES (1, '## 介绍\n这里是一个喜欢二次元的技术宅\n\n喜欢研究技术,只要能帮助我解决问题的技术不分种类都愿意去学习\n\n平常爱玩dota,崩3,喜欢听音乐,看小说,看动漫，看漫画(大概这辈子脱不了宅了= =)\n\n在这里要感谢大佬 月光下的污点，跟着大佬的博客学习到了非常多的知识，感谢提供的开源博客系统，附上博客链接：https://www.extlight.com/about/\n\n相信努力一定能够得到自己想要的\n我的企鹅289665247\n\n\n', 1, '2018-05-25 15:49:31', '2020-01-09 23:10:09');

-- ----------------------------
-- Table structure for t_category
-- ----------------------------
DROP TABLE IF EXISTS `t_category`;
CREATE TABLE `t_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类名称',
  `sort` tinyint(4) NULL DEFAULT NULL COMMENT '排序',
  `descr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `color` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '背景颜色',
  `img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片url',
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_category
-- ----------------------------
INSERT INTO `t_category` VALUES (1, '默认', 1, '默认', 'text-primary', '/portal/images/category_default.jpg', '2018-06-05 19:46:15', '2018-06-05 19:46:19');
INSERT INTO `t_category` VALUES (10, 'git', 2, '', 'text-primary', '/portal/images/category_default.jpg', '2019-04-13 20:08:34', '2019-04-13 20:08:34');
INSERT INTO `t_category` VALUES (12, ' 后端', 99, ' 后端', 'text-warning', '/portal/images/category_default.jpg', '2019-04-13 20:08:53', '2019-04-13 20:09:23');
INSERT INTO `t_category` VALUES (15, '中间件', 99, '中间件', 'text-danger', '/portal/images/category_default.jpg', '2019-04-13 20:08:53', '2019-04-13 20:10:16');
INSERT INTO `t_category` VALUES (16, '数据库', 99, '数据库', 'text-default', '/portal/images/category_default.jpg', '2019-04-13 20:08:53', '2019-04-13 20:10:22');
INSERT INTO `t_category` VALUES (17, 'java', 99, 'java', 'text-success', '/portal/images/category_default.jpg', '2019-04-13 20:08:53', '2019-04-13 20:10:29');
INSERT INTO `t_category` VALUES (18, '其他', 99, '其他', 'text-primary', '/portal/images/category_default.jpg', '2019-04-13 20:08:53', '2019-04-13 20:10:35');
INSERT INTO `t_category` VALUES (19, '计算机命令', 99, '', 'text-pink', '/portal/images/category_default.jpg', '2019-04-13 20:34:08', '2019-04-13 20:34:08');

-- ----------------------------
-- Table structure for t_guestbook
-- ----------------------------
DROP TABLE IF EXISTS `t_guestbook`;
CREATE TABLE `t_guestbook`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '昵称',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱地址',
  `home_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主页 URL',
  `img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像 URL',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '留言内容',
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'IP 地址',
  `ip_addr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'IP 归属地',
  `status` tinyint(4) NOT NULL COMMENT '读取状态 0:未读 1:已读',
  `del_status` tinyint(4) NOT NULL COMMENT '删除状态 0：未删除 1：删除 ',
  `type` tinyint(4) NOT NULL COMMENT '留言类型 1:留言 2:回复',
  `guestbook_id` int(11) NULL DEFAULT NULL COMMENT '被回复者ID',
  `create_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_log
-- ----------------------------
DROP TABLE IF EXISTS `t_log`;
CREATE TABLE `t_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用方法',
  `descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '描述',
  `operator` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作人',
  `create_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 430 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_log
-- ----------------------------
INSERT INTO `t_log` VALUES (34, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-04-13 21:45:23');
INSERT INTO `t_log` VALUES (35, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-04-13 21:47:07');
INSERT INTO `t_log` VALUES (36, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-04-13 22:28:45');
INSERT INTO `t_log` VALUES (37, 'com.extlight.web.controller.admin.LoginController.updatePwd', '修改密码', 'admin', '2019-04-13 22:50:03');
INSERT INTO `t_log` VALUES (38, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-04-13 22:50:32');
INSERT INTO `t_log` VALUES (39, 'com.extlight.web.controller.admin.LoginController.logout', '用户注销', 'admin', '2019-04-13 22:52:44');
INSERT INTO `t_log` VALUES (40, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-04-14 13:34:36');
INSERT INTO `t_log` VALUES (41, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-04-14 23:11:44');
INSERT INTO `t_log` VALUES (42, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-04-15 10:32:55');
INSERT INTO `t_log` VALUES (43, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-04-17 23:30:39');
INSERT INTO `t_log` VALUES (44, 'com.extlight.web.controller.admin.LoginController.updatePwd', '修改密码', 'admin', '2019-04-17 23:31:01');
INSERT INTO `t_log` VALUES (45, 'com.extlight.web.controller.admin.LoginController.logout', '用户注销', 'admin', '2019-04-17 23:31:06');
INSERT INTO `t_log` VALUES (46, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-04-17 23:31:13');
INSERT INTO `t_log` VALUES (47, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-04-17 23:33:00');
INSERT INTO `t_log` VALUES (48, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-04-17 23:34:58');
INSERT INTO `t_log` VALUES (49, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-04-19 00:12:54');
INSERT INTO `t_log` VALUES (50, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-04-19 13:53:22');
INSERT INTO `t_log` VALUES (51, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-04-19 14:00:08');
INSERT INTO `t_log` VALUES (52, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-04-19 16:20:19');
INSERT INTO `t_log` VALUES (53, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-04-19 16:20:57');
INSERT INTO `t_log` VALUES (54, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-04-19 16:21:05');
INSERT INTO `t_log` VALUES (55, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-04-23 17:59:44');
INSERT INTO `t_log` VALUES (56, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-04-23 18:00:10');
INSERT INTO `t_log` VALUES (57, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-04-23 18:00:34');
INSERT INTO `t_log` VALUES (58, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-04-23 18:59:45');
INSERT INTO `t_log` VALUES (59, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-04-23 18:59:48');
INSERT INTO `t_log` VALUES (60, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-04-23 19:00:11');
INSERT INTO `t_log` VALUES (61, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-04-26 20:14:57');
INSERT INTO `t_log` VALUES (62, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-04-29 19:01:20');
INSERT INTO `t_log` VALUES (63, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-05-06 20:54:37');
INSERT INTO `t_log` VALUES (64, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-05-07 10:08:36');
INSERT INTO `t_log` VALUES (65, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-07 10:08:55');
INSERT INTO `t_log` VALUES (66, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-05-07 17:22:34');
INSERT INTO `t_log` VALUES (67, 'com.extlight.web.controller.admin.PostController.delete', '删除文章', 'admin', '2019-05-07 17:22:45');
INSERT INTO `t_log` VALUES (68, 'com.extlight.web.controller.admin.PostController.delete', '删除文章', 'admin', '2019-05-07 17:23:03');
INSERT INTO `t_log` VALUES (69, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-05-07 22:40:04');
INSERT INTO `t_log` VALUES (70, 'com.extlight.web.controller.admin.AboutMeController.save', '保存关于我', 'admin', '2019-05-07 22:40:54');
INSERT INTO `t_log` VALUES (71, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-05-08 10:52:04');
INSERT INTO `t_log` VALUES (72, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-05-29 09:35:47');
INSERT INTO `t_log` VALUES (73, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 09:40:50');
INSERT INTO `t_log` VALUES (74, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 09:40:59');
INSERT INTO `t_log` VALUES (75, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 09:41:11');
INSERT INTO `t_log` VALUES (76, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 09:41:16');
INSERT INTO `t_log` VALUES (77, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 09:41:30');
INSERT INTO `t_log` VALUES (78, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 09:41:34');
INSERT INTO `t_log` VALUES (79, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 09:41:39');
INSERT INTO `t_log` VALUES (80, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 09:41:43');
INSERT INTO `t_log` VALUES (81, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 09:41:47');
INSERT INTO `t_log` VALUES (82, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 09:44:20');
INSERT INTO `t_log` VALUES (83, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 09:45:09');
INSERT INTO `t_log` VALUES (84, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 09:45:21');
INSERT INTO `t_log` VALUES (85, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 10:07:51');
INSERT INTO `t_log` VALUES (86, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 10:08:34');
INSERT INTO `t_log` VALUES (87, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 10:09:07');
INSERT INTO `t_log` VALUES (88, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 10:09:51');
INSERT INTO `t_log` VALUES (89, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 10:11:23');
INSERT INTO `t_log` VALUES (90, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 10:14:45');
INSERT INTO `t_log` VALUES (91, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 10:15:37');
INSERT INTO `t_log` VALUES (92, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 10:20:07');
INSERT INTO `t_log` VALUES (93, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 10:21:04');
INSERT INTO `t_log` VALUES (94, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 10:22:19');
INSERT INTO `t_log` VALUES (95, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 10:23:53');
INSERT INTO `t_log` VALUES (96, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 10:25:12');
INSERT INTO `t_log` VALUES (97, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 10:25:45');
INSERT INTO `t_log` VALUES (98, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 10:26:00');
INSERT INTO `t_log` VALUES (99, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 10:26:11');
INSERT INTO `t_log` VALUES (100, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 10:27:15');
INSERT INTO `t_log` VALUES (101, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 10:28:56');
INSERT INTO `t_log` VALUES (102, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 10:29:11');
INSERT INTO `t_log` VALUES (103, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 10:30:26');
INSERT INTO `t_log` VALUES (104, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 10:31:02');
INSERT INTO `t_log` VALUES (105, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 10:34:53');
INSERT INTO `t_log` VALUES (106, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 10:36:40');
INSERT INTO `t_log` VALUES (107, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 10:36:52');
INSERT INTO `t_log` VALUES (108, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 10:39:24');
INSERT INTO `t_log` VALUES (109, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 10:40:06');
INSERT INTO `t_log` VALUES (110, 'com.extlight.web.controller.admin.AboutMeController.save', '保存关于我', 'admin', '2019-05-29 10:41:33');
INSERT INTO `t_log` VALUES (111, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 10:57:23');
INSERT INTO `t_log` VALUES (112, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-05-29 21:58:02');
INSERT INTO `t_log` VALUES (113, 'com.extlight.web.controller.admin.CategoryController.save', '保存目录', 'admin', '2019-05-29 22:00:01');
INSERT INTO `t_log` VALUES (114, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 22:01:20');
INSERT INTO `t_log` VALUES (115, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 22:02:19');
INSERT INTO `t_log` VALUES (116, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 22:14:31');
INSERT INTO `t_log` VALUES (117, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 22:32:13');
INSERT INTO `t_log` VALUES (118, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 22:46:19');
INSERT INTO `t_log` VALUES (119, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 22:51:35');
INSERT INTO `t_log` VALUES (120, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 22:55:07');
INSERT INTO `t_log` VALUES (121, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 23:04:26');
INSERT INTO `t_log` VALUES (122, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 23:04:32');
INSERT INTO `t_log` VALUES (123, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 23:36:58');
INSERT INTO `t_log` VALUES (124, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 23:37:01');
INSERT INTO `t_log` VALUES (125, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 23:37:02');
INSERT INTO `t_log` VALUES (126, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 23:37:02');
INSERT INTO `t_log` VALUES (127, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 23:37:02');
INSERT INTO `t_log` VALUES (128, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 23:37:05');
INSERT INTO `t_log` VALUES (129, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 23:37:06');
INSERT INTO `t_log` VALUES (130, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 23:37:06');
INSERT INTO `t_log` VALUES (131, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 23:37:06');
INSERT INTO `t_log` VALUES (132, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 23:37:10');
INSERT INTO `t_log` VALUES (133, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 23:37:10');
INSERT INTO `t_log` VALUES (134, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-05-29 23:37:26');
INSERT INTO `t_log` VALUES (135, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 23:37:32');
INSERT INTO `t_log` VALUES (136, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-29 23:45:13');
INSERT INTO `t_log` VALUES (137, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-30 00:03:12');
INSERT INTO `t_log` VALUES (138, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-30 00:29:58');
INSERT INTO `t_log` VALUES (139, 'com.extlight.web.controller.admin.AboutMeController.save', '保存关于我', 'admin', '2019-05-30 00:31:37');
INSERT INTO `t_log` VALUES (140, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-05-30 21:34:07');
INSERT INTO `t_log` VALUES (141, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-30 21:40:51');
INSERT INTO `t_log` VALUES (142, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-30 21:50:50');
INSERT INTO `t_log` VALUES (143, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-30 22:05:24');
INSERT INTO `t_log` VALUES (144, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-30 22:05:44');
INSERT INTO `t_log` VALUES (145, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-05-30 22:43:45');
INSERT INTO `t_log` VALUES (146, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-30 22:49:11');
INSERT INTO `t_log` VALUES (147, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-30 23:07:58');
INSERT INTO `t_log` VALUES (148, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-30 23:08:33');
INSERT INTO `t_log` VALUES (149, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-05-31 10:32:20');
INSERT INTO `t_log` VALUES (150, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-31 10:48:16');
INSERT INTO `t_log` VALUES (151, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-31 10:50:28');
INSERT INTO `t_log` VALUES (152, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-31 10:50:37');
INSERT INTO `t_log` VALUES (153, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-31 10:50:42');
INSERT INTO `t_log` VALUES (154, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-31 10:50:48');
INSERT INTO `t_log` VALUES (155, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-31 10:50:55');
INSERT INTO `t_log` VALUES (156, 'com.extlight.web.controller.admin.CategoryController.delete', '删除目录', 'admin', '2019-05-31 10:51:05');
INSERT INTO `t_log` VALUES (157, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-05-31 10:51:38');
INSERT INTO `t_log` VALUES (158, 'com.extlight.web.controller.admin.CategoryController.delete', '删除目录', 'admin', '2019-05-31 10:58:35');
INSERT INTO `t_log` VALUES (159, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-06-03 18:50:21');
INSERT INTO `t_log` VALUES (160, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-06-03 18:52:17');
INSERT INTO `t_log` VALUES (161, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-06-03 19:00:21');
INSERT INTO `t_log` VALUES (162, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-06-03 19:33:48');
INSERT INTO `t_log` VALUES (163, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-06-03 19:33:49');
INSERT INTO `t_log` VALUES (164, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-06-03 19:33:57');
INSERT INTO `t_log` VALUES (165, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-06-03 19:34:05');
INSERT INTO `t_log` VALUES (166, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-06-03 20:08:26');
INSERT INTO `t_log` VALUES (167, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-06-03 20:08:28');
INSERT INTO `t_log` VALUES (168, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-06-03 20:08:35');
INSERT INTO `t_log` VALUES (169, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-06-03 20:08:42');
INSERT INTO `t_log` VALUES (170, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-06-03 22:29:09');
INSERT INTO `t_log` VALUES (171, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-06-03 23:11:15');
INSERT INTO `t_log` VALUES (172, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-06-03 23:11:25');
INSERT INTO `t_log` VALUES (173, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-06-03 23:11:32');
INSERT INTO `t_log` VALUES (174, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-06-04 13:19:07');
INSERT INTO `t_log` VALUES (175, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-06-04 13:28:19');
INSERT INTO `t_log` VALUES (176, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-06-04 14:22:37');
INSERT INTO `t_log` VALUES (177, 'com.extlight.web.controller.admin.LoginController.logout', '用户注销', 'admin', '2019-06-04 14:22:57');
INSERT INTO `t_log` VALUES (178, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-06-04 14:24:24');
INSERT INTO `t_log` VALUES (179, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-06-04 14:26:58');
INSERT INTO `t_log` VALUES (180, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-06-04 14:32:31');
INSERT INTO `t_log` VALUES (181, 'com.extlight.web.controller.admin.LoginController.logout', '用户注销', 'admin', '2019-06-04 14:32:41');
INSERT INTO `t_log` VALUES (182, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-06-04 14:32:47');
INSERT INTO `t_log` VALUES (183, 'com.extlight.web.controller.admin.LoginController.logout', '用户注销', 'admin', '2019-06-04 14:35:11');
INSERT INTO `t_log` VALUES (184, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-06-04 14:35:21');
INSERT INTO `t_log` VALUES (185, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-06-04 14:44:24');
INSERT INTO `t_log` VALUES (186, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-06-04 16:45:51');
INSERT INTO `t_log` VALUES (187, 'com.extlight.web.controller.admin.LoginController.updatePwd', '修改密码', 'admin', '2019-06-04 16:46:16');
INSERT INTO `t_log` VALUES (188, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-06-04 16:46:28');
INSERT INTO `t_log` VALUES (189, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-06-04 17:07:04');
INSERT INTO `t_log` VALUES (190, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-06-04 17:30:16');
INSERT INTO `t_log` VALUES (191, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-06-04 17:52:47');
INSERT INTO `t_log` VALUES (192, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-06-04 18:05:18');
INSERT INTO `t_log` VALUES (193, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-06-04 19:11:55');
INSERT INTO `t_log` VALUES (194, 'com.extlight.web.controller.admin.PostController.change', '修改文章公开状态', 'admin', '2019-06-04 19:12:14');
INSERT INTO `t_log` VALUES (195, 'com.extlight.web.controller.admin.PostController.change', '修改文章公开状态', 'admin', '2019-06-04 19:12:22');
INSERT INTO `t_log` VALUES (196, 'com.extlight.web.controller.admin.PostController.change', '修改文章公开状态', 'admin', '2019-06-04 19:12:27');
INSERT INTO `t_log` VALUES (197, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-06-04 19:32:02');
INSERT INTO `t_log` VALUES (198, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-06-04 19:32:53');
INSERT INTO `t_log` VALUES (199, 'com.extlight.web.controller.admin.PostController.delete', '删除文章', 'admin', '2019-06-04 19:33:18');
INSERT INTO `t_log` VALUES (200, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-06-04 19:37:20');
INSERT INTO `t_log` VALUES (201, 'com.extlight.web.controller.admin.PostController.change', '修改文章公开状态', 'admin', '2019-06-04 19:37:24');
INSERT INTO `t_log` VALUES (202, 'com.extlight.web.controller.admin.PostController.change', '修改文章公开状态', 'admin', '2019-06-04 19:38:54');
INSERT INTO `t_log` VALUES (203, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-06-04 19:39:33');
INSERT INTO `t_log` VALUES (204, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-06-04 19:39:50');
INSERT INTO `t_log` VALUES (205, 'com.extlight.web.controller.admin.PostController.delete', '删除文章', 'admin', '2019-06-04 19:39:53');
INSERT INTO `t_log` VALUES (206, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-06-04 19:42:38');
INSERT INTO `t_log` VALUES (207, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-06-04 19:55:25');
INSERT INTO `t_log` VALUES (208, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-06-04 20:03:13');
INSERT INTO `t_log` VALUES (209, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-06-04 20:03:20');
INSERT INTO `t_log` VALUES (210, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-06-04 20:03:22');
INSERT INTO `t_log` VALUES (211, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-06-04 20:03:26');
INSERT INTO `t_log` VALUES (212, 'com.extlight.web.controller.admin.PostController.change', '修改文章公开状态', 'admin', '2019-06-04 20:03:50');
INSERT INTO `t_log` VALUES (213, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-06-04 20:06:48');
INSERT INTO `t_log` VALUES (214, 'com.extlight.web.controller.admin.PostController.change', '修改文章公开状态', 'admin', '2019-06-04 20:07:30');
INSERT INTO `t_log` VALUES (215, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-06-04 20:07:38');
INSERT INTO `t_log` VALUES (216, 'com.extlight.web.controller.admin.PostController.change', '修改文章公开状态', 'admin', '2019-06-04 20:07:45');
INSERT INTO `t_log` VALUES (217, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-06-04 20:09:48');
INSERT INTO `t_log` VALUES (218, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-06-04 20:23:34');
INSERT INTO `t_log` VALUES (219, 'com.extlight.web.controller.admin.PostController.change', '修改文章公开状态', 'admin', '2019-06-04 20:23:44');
INSERT INTO `t_log` VALUES (220, 'com.extlight.web.controller.admin.PostController.change', '修改文章公开状态', 'admin', '2019-06-04 20:23:50');
INSERT INTO `t_log` VALUES (221, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-06-04 20:23:56');
INSERT INTO `t_log` VALUES (222, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-06-04 20:23:57');
INSERT INTO `t_log` VALUES (223, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-06-04 20:24:02');
INSERT INTO `t_log` VALUES (224, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-06-04 21:59:21');
INSERT INTO `t_log` VALUES (225, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-06-05 17:01:28');
INSERT INTO `t_log` VALUES (226, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-06-05 17:04:18');
INSERT INTO `t_log` VALUES (227, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-06-05 22:32:27');
INSERT INTO `t_log` VALUES (228, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-06-05 22:34:58');
INSERT INTO `t_log` VALUES (229, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-06-05 22:35:46');
INSERT INTO `t_log` VALUES (230, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-06-05 22:36:24');
INSERT INTO `t_log` VALUES (231, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-06-05 22:37:12');
INSERT INTO `t_log` VALUES (232, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-06-05 22:37:26');
INSERT INTO `t_log` VALUES (233, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-06-05 22:39:05');
INSERT INTO `t_log` VALUES (234, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-06-05 22:48:05');
INSERT INTO `t_log` VALUES (235, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-06-06 11:11:58');
INSERT INTO `t_log` VALUES (236, 'com.extlight.web.controller.admin.LoginController.updatePwd', '修改密码', 'admin', '2019-06-06 11:12:10');
INSERT INTO `t_log` VALUES (237, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-06-06 11:12:17');
INSERT INTO `t_log` VALUES (238, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-06-06 11:13:25');
INSERT INTO `t_log` VALUES (239, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-06-06 13:55:52');
INSERT INTO `t_log` VALUES (240, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-06-06 15:02:06');
INSERT INTO `t_log` VALUES (241, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-06-06 15:02:47');
INSERT INTO `t_log` VALUES (242, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-06-08 10:58:32');
INSERT INTO `t_log` VALUES (243, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-06-08 11:01:13');
INSERT INTO `t_log` VALUES (244, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-06-08 11:11:47');
INSERT INTO `t_log` VALUES (245, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-07-04 10:23:22');
INSERT INTO `t_log` VALUES (246, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-07-04 10:23:37');
INSERT INTO `t_log` VALUES (247, 'com.extlight.web.controller.admin.LoginController.updatePwd', '修改密码', 'admin', '2019-07-04 10:23:58');
INSERT INTO `t_log` VALUES (248, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-07-04 10:24:07');
INSERT INTO `t_log` VALUES (249, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-07-04 10:24:49');
INSERT INTO `t_log` VALUES (250, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-07-04 11:32:52');
INSERT INTO `t_log` VALUES (251, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-07-04 11:33:12');
INSERT INTO `t_log` VALUES (252, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-07-04 12:37:35');
INSERT INTO `t_log` VALUES (253, 'com.extlight.web.controller.admin.PostController.change', '修改文章公开状态', 'admin', '2019-07-04 12:37:44');
INSERT INTO `t_log` VALUES (254, 'com.extlight.web.controller.admin.PostController.change', '修改文章公开状态', 'admin', '2019-07-04 12:37:49');
INSERT INTO `t_log` VALUES (255, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-07-04 22:03:06');
INSERT INTO `t_log` VALUES (256, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-07-04 22:03:25');
INSERT INTO `t_log` VALUES (257, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-07-04 22:08:29');
INSERT INTO `t_log` VALUES (258, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-07-04 22:08:52');
INSERT INTO `t_log` VALUES (259, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-07-04 22:09:36');
INSERT INTO `t_log` VALUES (260, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-07-04 22:24:21');
INSERT INTO `t_log` VALUES (261, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-07-04 22:31:08');
INSERT INTO `t_log` VALUES (262, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-07-04 22:33:34');
INSERT INTO `t_log` VALUES (263, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-07-04 22:33:36');
INSERT INTO `t_log` VALUES (264, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-07-04 22:34:17');
INSERT INTO `t_log` VALUES (265, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-07-04 22:37:47');
INSERT INTO `t_log` VALUES (266, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-07-04 22:38:17');
INSERT INTO `t_log` VALUES (267, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-07-04 22:38:43');
INSERT INTO `t_log` VALUES (268, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-07-04 22:45:41');
INSERT INTO `t_log` VALUES (269, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-07-04 22:47:37');
INSERT INTO `t_log` VALUES (270, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-07-04 22:57:01');
INSERT INTO `t_log` VALUES (271, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-07-04 22:58:45');
INSERT INTO `t_log` VALUES (272, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-07-04 23:29:01');
INSERT INTO `t_log` VALUES (273, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-07-04 23:30:13');
INSERT INTO `t_log` VALUES (274, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-07-04 23:30:14');
INSERT INTO `t_log` VALUES (275, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-07-04 23:35:42');
INSERT INTO `t_log` VALUES (276, 'com.extlight.web.controller.admin.PostController.change', '修改文章公开状态', 'admin', '2019-07-04 23:35:49');
INSERT INTO `t_log` VALUES (277, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-07-05 10:21:09');
INSERT INTO `t_log` VALUES (278, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-07-05 10:29:12');
INSERT INTO `t_log` VALUES (279, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-07-05 10:29:26');
INSERT INTO `t_log` VALUES (280, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-07-05 10:29:28');
INSERT INTO `t_log` VALUES (281, 'com.extlight.web.controller.admin.PostController.change', '修改文章公开状态', 'admin', '2019-07-05 10:29:32');
INSERT INTO `t_log` VALUES (282, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-07-08 17:28:04');
INSERT INTO `t_log` VALUES (283, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-08-02 10:13:28');
INSERT INTO `t_log` VALUES (284, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-08-02 10:14:13');
INSERT INTO `t_log` VALUES (285, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-08-02 10:15:37');
INSERT INTO `t_log` VALUES (286, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-08-02 10:18:55');
INSERT INTO `t_log` VALUES (287, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-08-02 10:18:55');
INSERT INTO `t_log` VALUES (288, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-08-02 10:30:17');
INSERT INTO `t_log` VALUES (289, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-08-02 10:39:12');
INSERT INTO `t_log` VALUES (290, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-08-02 10:39:12');
INSERT INTO `t_log` VALUES (291, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-08-02 10:47:02');
INSERT INTO `t_log` VALUES (292, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-08-02 10:47:14');
INSERT INTO `t_log` VALUES (293, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-08-02 11:13:38');
INSERT INTO `t_log` VALUES (294, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-08-02 11:43:55');
INSERT INTO `t_log` VALUES (295, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-08-02 11:46:40');
INSERT INTO `t_log` VALUES (296, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-08-02 11:52:39');
INSERT INTO `t_log` VALUES (297, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-08-02 14:26:45');
INSERT INTO `t_log` VALUES (298, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-08-02 14:44:02');
INSERT INTO `t_log` VALUES (299, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-08-02 16:25:58');
INSERT INTO `t_log` VALUES (300, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-08-02 16:30:27');
INSERT INTO `t_log` VALUES (301, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-08-02 16:47:49');
INSERT INTO `t_log` VALUES (302, 'com.extlight.web.controller.admin.PostController.change', '修改文章公开状态', 'admin', '2019-08-02 16:47:57');
INSERT INTO `t_log` VALUES (303, 'com.extlight.web.controller.admin.PostController.change', '修改文章公开状态', 'admin', '2019-08-02 16:48:20');
INSERT INTO `t_log` VALUES (304, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-08-02 16:49:16');
INSERT INTO `t_log` VALUES (305, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-08-02 16:51:12');
INSERT INTO `t_log` VALUES (306, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-08-31 15:03:57');
INSERT INTO `t_log` VALUES (307, 'com.extlight.web.controller.admin.PostController.delete', '删除文章', 'admin', '2019-08-31 15:05:28');
INSERT INTO `t_log` VALUES (308, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-08-31 15:08:52');
INSERT INTO `t_log` VALUES (309, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-08-31 15:09:08');
INSERT INTO `t_log` VALUES (310, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-08-31 15:09:10');
INSERT INTO `t_log` VALUES (311, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-09-03 14:42:35');
INSERT INTO `t_log` VALUES (312, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-09-03 14:44:39');
INSERT INTO `t_log` VALUES (313, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-09-03 14:46:03');
INSERT INTO `t_log` VALUES (314, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-09-03 14:48:27');
INSERT INTO `t_log` VALUES (315, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-09-05 14:58:03');
INSERT INTO `t_log` VALUES (316, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-09-12 23:55:26');
INSERT INTO `t_log` VALUES (317, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-09-17 09:53:05');
INSERT INTO `t_log` VALUES (318, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-09-25 10:17:55');
INSERT INTO `t_log` VALUES (319, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-09-25 10:20:04');
INSERT INTO `t_log` VALUES (320, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-11-07 12:58:51');
INSERT INTO `t_log` VALUES (321, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-11-07 13:02:37');
INSERT INTO `t_log` VALUES (322, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-11-07 16:36:30');
INSERT INTO `t_log` VALUES (323, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-11-07 16:37:06');
INSERT INTO `t_log` VALUES (324, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-11-07 16:45:14');
INSERT INTO `t_log` VALUES (325, 'com.extlight.web.controller.admin.PostController.change', '修改文章公开状态', 'admin', '2019-11-07 16:46:23');
INSERT INTO `t_log` VALUES (326, 'com.extlight.web.controller.admin.PostController.change', '修改文章公开状态', 'admin', '2019-11-07 16:46:35');
INSERT INTO `t_log` VALUES (327, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-11-07 17:27:02');
INSERT INTO `t_log` VALUES (328, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-11-07 23:01:43');
INSERT INTO `t_log` VALUES (329, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-11-07 23:26:52');
INSERT INTO `t_log` VALUES (330, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-11-07 23:44:57');
INSERT INTO `t_log` VALUES (331, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-11-08 00:07:45');
INSERT INTO `t_log` VALUES (332, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-11-08 00:08:26');
INSERT INTO `t_log` VALUES (333, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-11-10 10:38:43');
INSERT INTO `t_log` VALUES (334, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-11-10 10:45:57');
INSERT INTO `t_log` VALUES (335, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-11-10 12:52:43');
INSERT INTO `t_log` VALUES (336, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-11-10 12:52:52');
INSERT INTO `t_log` VALUES (337, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-11-10 13:00:43');
INSERT INTO `t_log` VALUES (338, 'com.extlight.web.controller.admin.PostController.change', '修改文章公开状态', 'admin', '2019-11-10 13:00:45');
INSERT INTO `t_log` VALUES (339, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-11-10 13:15:54');
INSERT INTO `t_log` VALUES (340, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-11-10 13:16:35');
INSERT INTO `t_log` VALUES (341, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-11-10 13:16:37');
INSERT INTO `t_log` VALUES (342, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-11-11 09:21:40');
INSERT INTO `t_log` VALUES (343, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-11-11 09:22:32');
INSERT INTO `t_log` VALUES (344, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-11-23 10:28:38');
INSERT INTO `t_log` VALUES (345, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-11-23 10:29:43');
INSERT INTO `t_log` VALUES (346, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-11-23 11:36:22');
INSERT INTO `t_log` VALUES (347, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-11-23 11:38:12');
INSERT INTO `t_log` VALUES (348, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-11-26 19:23:33');
INSERT INTO `t_log` VALUES (349, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-12-01 22:20:08');
INSERT INTO `t_log` VALUES (350, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-12-03 16:37:51');
INSERT INTO `t_log` VALUES (351, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2019-12-08 21:50:39');
INSERT INTO `t_log` VALUES (352, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-12-08 21:51:24');
INSERT INTO `t_log` VALUES (353, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2019-12-08 22:20:33');
INSERT INTO `t_log` VALUES (354, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2020-01-03 22:40:01');
INSERT INTO `t_log` VALUES (355, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2020-01-05 11:10:30');
INSERT INTO `t_log` VALUES (356, 'com.extlight.web.controller.admin.PostController.delete', '删除文章', 'admin', '2020-01-05 11:10:59');
INSERT INTO `t_log` VALUES (357, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-01-05 11:11:22');
INSERT INTO `t_log` VALUES (358, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2020-01-05 18:07:23');
INSERT INTO `t_log` VALUES (359, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-01-05 18:08:08');
INSERT INTO `t_log` VALUES (360, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-01-05 18:10:16');
INSERT INTO `t_log` VALUES (361, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-01-05 18:11:51');
INSERT INTO `t_log` VALUES (362, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-01-05 18:14:47');
INSERT INTO `t_log` VALUES (363, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-01-05 18:15:32');
INSERT INTO `t_log` VALUES (364, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-01-05 18:15:48');
INSERT INTO `t_log` VALUES (365, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-01-05 18:16:26');
INSERT INTO `t_log` VALUES (366, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-01-05 18:18:50');
INSERT INTO `t_log` VALUES (367, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-01-05 18:18:51');
INSERT INTO `t_log` VALUES (368, 'com.extlight.web.controller.admin.PostController.delete', '删除文章', 'admin', '2020-01-05 18:19:00');
INSERT INTO `t_log` VALUES (369, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-01-05 18:21:11');
INSERT INTO `t_log` VALUES (370, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-01-05 18:31:16');
INSERT INTO `t_log` VALUES (371, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-01-05 18:33:10');
INSERT INTO `t_log` VALUES (372, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-01-05 18:35:34');
INSERT INTO `t_log` VALUES (373, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-01-05 18:36:49');
INSERT INTO `t_log` VALUES (374, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-01-05 18:39:16');
INSERT INTO `t_log` VALUES (375, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-01-05 18:41:18');
INSERT INTO `t_log` VALUES (376, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-01-05 18:45:56');
INSERT INTO `t_log` VALUES (377, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-01-05 18:46:39');
INSERT INTO `t_log` VALUES (378, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-01-05 18:47:04');
INSERT INTO `t_log` VALUES (379, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-01-05 18:47:05');
INSERT INTO `t_log` VALUES (380, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-01-05 18:47:33');
INSERT INTO `t_log` VALUES (381, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-01-05 18:48:01');
INSERT INTO `t_log` VALUES (382, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-01-05 18:48:13');
INSERT INTO `t_log` VALUES (383, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-01-05 18:48:23');
INSERT INTO `t_log` VALUES (384, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-01-05 18:48:45');
INSERT INTO `t_log` VALUES (385, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2020-01-07 23:38:32');
INSERT INTO `t_log` VALUES (386, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-01-07 23:39:21');
INSERT INTO `t_log` VALUES (387, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-01-07 23:41:10');
INSERT INTO `t_log` VALUES (388, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2020-01-08 18:12:17');
INSERT INTO `t_log` VALUES (389, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-01-08 18:16:52');
INSERT INTO `t_log` VALUES (390, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2020-01-09 10:58:00');
INSERT INTO `t_log` VALUES (391, 'com.extlight.web.controller.admin.ParamController.updateSysParam', '修改全局参数', 'admin', '2020-01-09 11:00:29');
INSERT INTO `t_log` VALUES (392, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2020-01-09 23:08:18');
INSERT INTO `t_log` VALUES (393, 'com.extlight.web.controller.admin.AboutMeController.save', '保存关于我', 'admin', '2020-01-09 23:09:47');
INSERT INTO `t_log` VALUES (394, 'com.extlight.web.controller.admin.AboutMeController.save', '保存关于我', 'admin', '2020-01-09 23:10:09');
INSERT INTO `t_log` VALUES (395, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2020-01-09 23:27:42');
INSERT INTO `t_log` VALUES (396, 'com.extlight.web.controller.admin.ParamController.updatePerParam', '修改个人参数', 'admin', '2020-01-09 23:29:56');
INSERT INTO `t_log` VALUES (397, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2020-01-12 01:32:25');
INSERT INTO `t_log` VALUES (398, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-01-12 01:32:52');
INSERT INTO `t_log` VALUES (399, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2020-01-15 09:57:47');
INSERT INTO `t_log` VALUES (400, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-01-15 09:58:32');
INSERT INTO `t_log` VALUES (401, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2020-02-13 11:07:44');
INSERT INTO `t_log` VALUES (402, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2020-03-02 09:51:19');
INSERT INTO `t_log` VALUES (403, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-03-02 09:53:34');
INSERT INTO `t_log` VALUES (404, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-03-02 09:59:59');
INSERT INTO `t_log` VALUES (405, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-03-02 10:08:11');
INSERT INTO `t_log` VALUES (406, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-03-02 10:08:27');
INSERT INTO `t_log` VALUES (407, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-03-02 10:08:48');
INSERT INTO `t_log` VALUES (408, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-03-02 10:09:46');
INSERT INTO `t_log` VALUES (409, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-03-02 10:21:42');
INSERT INTO `t_log` VALUES (410, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-03-02 10:21:57');
INSERT INTO `t_log` VALUES (411, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-03-02 10:23:13');
INSERT INTO `t_log` VALUES (412, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-03-02 10:38:13');
INSERT INTO `t_log` VALUES (413, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-03-02 10:38:18');
INSERT INTO `t_log` VALUES (414, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-03-02 10:38:21');
INSERT INTO `t_log` VALUES (415, 'com.extlight.web.controller.admin.PostController.delete', '删除文章', 'admin', '2020-03-02 10:38:45');
INSERT INTO `t_log` VALUES (416, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-03-02 10:40:05');
INSERT INTO `t_log` VALUES (417, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2020-03-08 20:21:02');
INSERT INTO `t_log` VALUES (418, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2020-03-10 19:01:13');
INSERT INTO `t_log` VALUES (419, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2020-03-11 16:06:59');
INSERT INTO `t_log` VALUES (420, 'com.extlight.web.controller.admin.LoginController.updatePwd', '修改密码', 'admin', '2020-03-11 16:07:12');
INSERT INTO `t_log` VALUES (421, 'com.extlight.web.controller.admin.LoginController.logout', '用户注销', 'admin', '2020-03-11 16:07:16');
INSERT INTO `t_log` VALUES (422, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2020-03-11 16:07:23');
INSERT INTO `t_log` VALUES (423, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-03-11 16:07:59');
INSERT INTO `t_log` VALUES (424, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-03-11 16:08:01');
INSERT INTO `t_log` VALUES (425, 'com.extlight.web.controller.admin.PostController.change', '修改文章公开状态', 'admin', '2020-03-11 16:26:49');
INSERT INTO `t_log` VALUES (426, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-03-11 16:40:49');
INSERT INTO `t_log` VALUES (427, 'com.extlight.web.controller.admin.PostController.save', '保存文章', 'admin', '2020-03-11 16:41:20');
INSERT INTO `t_log` VALUES (428, 'com.extlight.web.controller.admin.LoginController.login', '用户登录', 'admin', '2020-03-11 17:22:17');
INSERT INTO `t_log` VALUES (429, 'com.extlight.web.controller.admin.PostController.change', '修改文章公开状态', 'admin', '2020-03-11 17:22:25');

-- ----------------------------
-- Table structure for t_param
-- ----------------------------
DROP TABLE IF EXISTS `t_param`;
CREATE TABLE `t_param`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `param_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '参数名',
  `param_value` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数值',
  `descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '描述',
  `sort` tinyint(4) NOT NULL COMMENT '排序',
  `type` tinyint(4) NOT NULL COMMENT '类型：1:全局 2:个人',
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `param_name`(`param_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统参数' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_param
-- ----------------------------
INSERT INTO `t_param` VALUES (1, 'blogName', 'Void', '网站名称', 1, 1, '2018-05-21 16:26:00', '2018-05-21 16:26:00');
INSERT INTO `t_param` VALUES (2, 'version', '1.0', '当前版本', 2, 1, '2018-05-21 16:26:00', '2018-05-21 16:26:00');
INSERT INTO `t_param` VALUES (3, 'author', 'Void', '开发作者', 3, 1, '2018-05-21 16:26:00', '2018-05-21 16:26:00');
INSERT INTO `t_param` VALUES (4, 'homePage', 'https://www.wxg123.com', '网站首页', 4, 1, '2018-05-21 16:26:00', '2018-05-21 16:26:00');
INSERT INTO `t_param` VALUES (5, 'server', 'CentOS', '服务器环境', 5, 1, '2018-05-21 16:26:00', '2018-05-21 16:26:00');
INSERT INTO `t_param` VALUES (6, 'dataBase', 'MySQL5.7', '数据库版本', 6, 1, '2018-05-21 16:26:00', '2018-05-21 16:26:00');
INSERT INTO `t_param` VALUES (7, 'maxUpload', '10', '最大上传限制(M)', 7, 1, '2018-05-21 16:26:00', '2018-05-21 16:26:00');
INSERT INTO `t_param` VALUES (8, 'userRights', 'admin', '用户权限', 8, 1, '2018-05-21 16:26:00', '2018-05-21 16:26:00');
INSERT INTO `t_param` VALUES (9, 'keywords', 'Void', '默认关键字', 9, 1, '2018-05-21 16:26:00', '2018-05-21 16:26:00');
INSERT INTO `t_param` VALUES (10, 'powerby', NULL, '版权信息', 10, 1, '2018-05-21 16:26:00', '2018-05-21 16:26:00');
INSERT INTO `t_param` VALUES (11, 'description', '个人博客', '网站描述', 11, 1, '2018-05-21 16:26:00', '2018-05-21 16:26:00');
INSERT INTO `t_param` VALUES (12, 'record', '赣ICP备18004916号-1', '网站备案号', 12, 1, '2018-05-21 16:26:00', '2018-05-21 16:26:00');
INSERT INTO `t_param` VALUES (13, 'qq', '289665247', 'QQ 号码', 0, 2, '2018-05-24 16:40:05', '2018-05-24 16:40:06');
INSERT INTO `t_param` VALUES (14, 'wx', '', '微信账号', 0, 2, '2018-05-24 16:40:48', '2018-05-24 16:40:49');
INSERT INTO `t_param` VALUES (15, 'email', '289665247@qq.com', '邮箱地址', 0, 2, '2018-05-24 16:41:15', '2018-05-24 16:41:16');
INSERT INTO `t_param` VALUES (16, 'github', '', 'GitHub 主页', 0, 2, '2018-05-24 16:41:56', '2018-05-24 16:41:57');
INSERT INTO `t_param` VALUES (17, 'wb', '', '微博', 0, 2, '2018-05-24 16:42:19', '2018-05-24 16:42:21');
INSERT INTO `t_param` VALUES (18, 'qn_domain', 'http://images.extlight.com', '七牛云域名', 0, 2, '2018-05-24 16:43:10', '2018-05-24 16:43:14');
INSERT INTO `t_param` VALUES (19, 'qn_accessKey', '', '七牛云公钥', 0, 2, '2018-05-24 16:43:52', '2018-05-24 16:43:54');
INSERT INTO `t_param` VALUES (20, 'qn_secretKey', '', '七牛云私钥', 0, 2, '2018-05-24 16:44:17', '2018-05-24 16:44:18');
INSERT INTO `t_param` VALUES (21, 'qn_bucket', 'blog', '七牛云桶', 0, 2, '2018-05-24 16:44:44', '2018-05-24 16:44:46');
INSERT INTO `t_param` VALUES (22, 'changyan_app_id', 'cyuD2n0wn', '畅言应用 ID', 0, 2, '2018-05-28 13:28:48', '2018-05-28 13:28:50');
INSERT INTO `t_param` VALUES (23, 'changyan_app_key', '95f0f71d9832c5fee8c118c3ea57e51f', '畅言应用 Key', 0, 2, '2018-05-28 13:29:14', '2018-05-28 13:29:15');
INSERT INTO `t_param` VALUES (24, 'geetest_id', '', '极验 ID', 0, 2, '2018-06-04 14:51:02', '2018-06-04 14:51:03');
INSERT INTO `t_param` VALUES (25, 'geetest_key', '', '极验 KEY', 0, 2, '2018-06-04 14:51:30', '2018-06-04 14:51:31');
INSERT INTO `t_param` VALUES (26, 'leancloud_app_id', '', 'leancloud 应用 ID', 0, 2, '2018-06-05 16:20:35', '2018-06-05 16:20:36');
INSERT INTO `t_param` VALUES (27, 'leancloud_app_key', '', 'leancloud 应用 Key', 0, 2, '2018-06-05 16:20:35', '2018-06-05 16:20:36');
INSERT INTO `t_param` VALUES (28, 'baidu_push_token', '', '百度推送 token', 0, 2, '2018-06-15 15:00:20', '2018-06-15 15:00:22');

-- ----------------------------
-- Table structure for t_post
-- ----------------------------
DROP TABLE IF EXISTS `t_post`;
CREATE TABLE `t_post`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `keyword` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关键字',
  `sub_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '摘要',
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'markdown 正文',
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '显示状态 1：是 0：否',
  `category_id` int(11) NOT NULL COMMENT '分类ID',
  `category_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类名称',
  `tags` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标签',
  `img_url` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `year` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '年',
  `month` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '月',
  `day` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '日',
  `post_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文章url',
  `publish_date` date NOT NULL,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `category_id`(`category_id`) USING BTREE,
  INDEX `post_url`(`post_url`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_post
-- ----------------------------
INSERT INTO `t_post` VALUES (3, 'git用法记录', '', NULL, '### git拉新分支\n	1.首先切换到需要拉的原始分支,如master\n	2.git checkout -b (分支名) eg:git checkout -b dev\n	3.git branch 查看是否切换到了新分支\n\n### 查看git版本信息\n	git version (其他:node -v | npm -v)\n\n### 查看当前文件状态,是否有冲突之类\n	git status \n\n### git修改了.gitignore文件后设置生效\n	git rm -r --cached .\n	git add .\n	git commit -m \"fixed .gitignore\"\n	git push origin master(这句可以不用)\n\n### 初始化git账户\n	git config --global user.name \"void\"\n	git config --global user.email \"289665247@qq.com\"\n	git config --list\n\n### 修改git账户\n	git config --global --replace-all user.name \"\"\n	git config --global --replace-all user.email \"\"\n\n### git分支\n	git branch -a (查看所有分支)\n	git push origin --delete dev (删除远程分支)\n	git branch -d dev (删除本地分支)\n\n### git文件夹下操作\n	1.鼠标点击git bush here\n	2.git clone \"项目地址\"\n	3.git add .\n	4.git commit -m \"~\"\n	5.git push -u origin master\n\n### git 修改本地仓库地址\n	git remote set-url origin https://gitee.com/***/project1.git\n\n### linux 安装git,hexo,nginx\n	yum -y install git \n	npm install -g hexo-cli (安装hexo)\n	npm config set registry https://registry.npm.taobao.org\n	hexo version\n\n	hexo init d://hexo\n	hexo generate | hexo g\n	hexo server | hexo s\n	ctrl+c :结束访问\n\n	yum install nginx -y:安装nginx\n	systemctl start nginx:启动nginx\n	systemctl enable nginx:开机自启动nginx\n	nginx -s reload 重启nginx', '1', 10, 'git', 'maven,log4j,java,nosql,版本控制', 'material-26.jpg', '2019', '04', '13', '2019/04/13/git用法记录/', '2019-04-13', '2019-04-13 20:12:03', '2019-05-29 10:09:51');
INSERT INTO `t_post` VALUES (5, 'linux命令记录', '', NULL, '## 删除命令\n	rm a.txt\n	rm -r a\n	rm -rf a\n\n## 复制命令\n	cp ./***.txt ../***\n\n## 查看和清理命令\n	Ls,LL\n	ctrl+L:清屏\n	clear:这个命令将会刷新屏幕，本质上只是让终端显示页向后翻了一页，如果向上滚动屏幕还可以看到之前的操作信息。一般都会用这个命令。\n	reset:个命令将完全刷新终端屏幕，之前的终端输入操作信息将都会被清空，这样虽然比较清爽，但整个命令过程速度有点慢，使用较少。\n	ls -ah 查看隐藏文件\n\n## 启动jar包命令\n	nohup java -jar ***.jar & \n	nohup java -jar ***.jar >> **.log 2>&1 &\n	nohup java -jar aaa.jar --spring.profiles.active=pro >> aaa.log 2>&1 &\n\n## 远程命令\n	ssh dev@192.168.1.1\n\n## 内网传输文件命令\n	scp /home/aaa.jar dev@192.168.1.1:/home/\n	scp /home/**.jar dev@192.168.1.1:/home/\n\n## 显示带关键字的进程\n	ps -ef|grep java\n\n## 赋予脚本可执行权限\n	chmod +x *.sh\n\n## 查看内存(-h人性化显示,将单位转化)\n	top\n	free\n	free -h\n\n## 查看java某个进程运行后使用的JVM,堆栈信息\n	jinfo -flags pid\n\n## 用户及密码\n	存储账号的文件:cat /etc/passwd\n	存储密码的文件:cat /etc/shadow\n	查询hadoop用户的密码(无法查看明文): cat /etc/shadow|grep \"hadoop\"\n\n## 修改密码\n	普通用户:passwd 直接修改\n	root用户修改其他:passwd username\n\n	/etc/sudoers:超级管理员权限设置\n	/etc/profile:配置环境变量\n	source /etc/profile:配置生效\n\n## 改变某个文件夹所属用户,所属组\n	sudo chown -R hadoop:hadoop ./hadoop\n\n## 查看磁盘\n	df -h\n	\n## 创建新用户并设置目录权限\n	#创建新用户\n	useradd dev\n	#设置密码\n	passwd dev\n	#设置可执行权限\n	chmod +x sudoers\n	#设置可写权限\n	chmod +w sudoers\n	#编辑文件,照着root加入权限\n	vim sudoers\n	#查看下是否ok\n	cat sudoers\n	#切换新用户\n	su dev\n	#创建自己要的某个目录\n	sudo mkdir dev\n	#修改目录权限为新用户\n	chown -R dev.dev dev\n	#将权限恢复\n	chmod 440 sudoers', '1', 18, '其他', '', 'material-20.jpg', '2019', '04', '13', '2019/04/13/linux命令记录/', '2019-04-13', '2019-04-13 20:27:47', '2020-01-08 18:16:52');
INSERT INTO `t_post` VALUES (6, 'log4j日志配置说明', '', NULL, '## 定义日志的输出对象\n\n	定义输出日志级别,当前只有Info等级以上日志会被输出,低于的则隐藏\n	log4j.rootLogger = Debug,R1,R2,R3\n\n## 控制台日志输出\n\n### 输出类型\n定义一个appender(输出源)为R1,用ConsoleAppender实现,可以输出信息到控制台\nlog4j.appender.R1 = org.apache.log4j.ConsoleAppender\n\n### 输出位置\n利用该appender的属性Target定义日志打印在控制台和system.out一样输出\nlog4j.appender.R1.Target = System.out\n\n### 输出类型\n定义使用的输出样式,用了PatternLayout模式,布局模式\nlog4j.appender.R1.layout = org.apache.log4j.PatternLayout\n\n### 输出格式化\n定义布局模式的转换模式(输出格式) %d为时间,并且格式化一下,%m为输出的消息,%n为打印一个换行符号\nlog4j.appender.R1.layout.ConversionPattern = %d{yyyy-MM-dd HH:mm:ss}%m%n\n\n\n## 文件日志对象一\n\n### 输出类型\n定义一个appender为R2,用FileAppender实现,可以输出日志到文件\nlog4j.appender.R2 = org.apache.log4j.FileAppender\n\n### 文件名及位置\nlog4j.appender.R2.File = ../Debug.log\nlog4j.appender.R3.Threshold = debug\n\n### 输出类型\n定义使用的输出样式,用了PatternLayout模式,布局模式\nlog4j.appender.R2.layout = org.apache.log4j.PatternLayout\n\n### 输出格式化\n定义布局模式的转换模式(输出格式) %d为时间,并且格式化一下,%m为输出的消息,%n为打印一个换行符号\nlog4j.appender.R2.layout.ConversionPattern = %d{yyyy-MM-dd HH:mm:ss}%m%n\n\n\n\n## 文件日志对象二\n\n### 输出类型\n定义一个appender为R3,用RollingFileAppender实现,文件大小到达指定尺寸时产生一个新的文件\nlog4j.appender.R3 = org.apache.log4j.RollingFileAppender\n\n### 文件名及位置\nlog4j.appender.R3.File = ../Error.log\n\n### 日志大小\n定义一个日志文件最大10Mb\nlog4j.appender.R3.MaxFileSize = 10MB\n\n### 日志级别\n定义一个过滤属性,级别为error及以上的会被过滤单独输出在这里\nlog4j.appender.R3.Threshold = error\n\n### 输出类型\n定义使用的输出样式,用了PatternLayout模式,布局模式\nlog4j.appender.R3.layout = org.apache.log4j.PatternLayout\n\n### 输出格式化\n定义布局模式的转换模式(输出格式) %d为时间,并且格式化一下,%m为输出的消息,%n为打印一个换行符号\nlog4j.appender.R3.layout.ConversionPattern = %d{yyyy-MM-dd HH:mm:ss}%m%n\n\n\n\n\n\n', '1', 18, '其他', 'maven,log4j,java,nosql,版本控制', 'material-15.jpg', '2019', '04', '13', '2019/04/13/log4j日志配置说明/', '2019-04-13', '2019-04-13 20:28:11', '2019-05-29 10:14:45');
INSERT INTO `t_post` VALUES (7, 'maven命令记录', '', NULL, '\n> 简单记录一些笔者开发时经常用到的命令,以作备忘\n\n## 清理mvn编译\n	mvn clean\n	mvn install\n\n## 跳过单元测试构建项目\n	mvn install -DskipTests', '1', 15, '中间件', 'maven', 'material-26.jpg', '2019', '04', '13', '2019/04/13/maven命令记录/', '2019-04-13', '2019-04-13 20:28:44', '2020-01-12 01:32:52');
INSERT INTO `t_post` VALUES (8, 'mongodb命令记录一', '', NULL, '\n## 命令\n	用于查询出子节点的分页数据,slice命令可以用与子节点分页,从索引0开始,显示3条数据\n	\n	db.comment.find({\n		\"_id\" : ObjectId(\"5b97835a3590552248af9e56\")},\n		{\"replays\":{ \"$slice\":[0,3]}\n	}).pretty()\n\n	db.getCollection(\'ccc\').find({\"code\":{$regex:/^5001.*/}})\n\n	多个排序,需要联合起来建立索引\n	db.job.ensureIndex({\"releaseStatus\": 1,\"createTime\":-1})\n\n	./mongo --port=3717\n	use admin\n	db.auth(\"dev\", \"123\")\n\n	mongoimport --host 127.0.0.1:3717  --  authenticationDatabase admin -u root -p 123 -d dev -c role --upsert  role.json\n\n	mongoimport --host 127.0.0.1:3717 --authenticationDatabase admin -u root -p 123 --db test --collection user --file /home/mongodb/mongo/mongodb-linux-x86_64-rhel70-3.4.17/bak/user.json\n	1231231231231241321123\n\n	db.collection.createIndex({\"fieldA\":-1,\"fieldB\":-1,\"filedC\":1,\"createTime\":-1})\n\n	db.collection.aggregate([\n		{$match:{\"createTime\":{$gte:new Date(\"2018-12-01\")}}},\n		{$group : {_id : \"$userId\"}},\n		{$count:\"total\"}\n	])\n\n	db.collection.aggregate( [\n		{ $group :  { _id : null, fieldA: { $sum: \"$fieldA\" },fieldB:{$sum:\"$fieldB\"}} }\n	]);\n\n	db.collection.find(\n	{$or: [ \n		{ tagsA: { $size: 1 } },{ tagsB:{ $size:1} } \n	] }\n	).count()\n\n	db.collection.aggregate([\n		{$match:{ \"aaa\":21}},\n		{$project:{\"bbb\":1}},\n		{$limit:1000}\n	])\n\n	db.collection.aggregate([\n		{$lookup:{\n			from:\"collectionB\",\n			localField:\"userId\",\n			foreignField:\"userId\",\n			as:\"info\"\n		}},\n		{$match:{ $or: [ { \"info.tagA\": { $size: 1 } }, { \"info.tagB\":{ $size:1} } ] }},\n		{$group:{_id:\"$fieldC\"}},\n		{$count:\"total\"}\n	])\n	\n\n	mongorestore -h 127.0.0.1:端口 -u 账号 -p 密码 --authenticationDatabase admin -d dev ../bak/forumTopic.bson\n	\n	mongorestore -h localhost:端口  -u 账号 -p 密码  --authenticationDatabase admin -d test /home/mongodb/mongo/mongodb/bak/test/bbb.bson\n\n	mongorestore -h localhost --port 端口  -u 账号 -p 密码  --authenticationDatabase admin -d test /home/mongodb/mongo/mongodb/bak/temp/aaa.bson\n\n	mongodump -h localhost --port 端口 -u 账号 -p 密码  --authenticationDatabase admin  -d test -c job -o /home/mongodb/mongo/mongodb/bak/\n\n	db.collection.update(\n		{\"tags\":[ \n			\"111\"\n		]},\n		{$set:{\"tags\":[ \n			\"222\"\n		]}},\n		false,\n		true\n	)\n	\n	db.collect.distinct(\"adCode\",{\"aa\":22,\"bb\":1,\"cc\":20,\"adCode\":/^4103.*/})\n\n	./mongo --port=****\n	use admin\n	db.auth(\" \",\" \")\n	\n	mongoTemplate中and查询可以直接用Criteria.where(\"dd\").is(11).andOperator(Criteria...)这样串起来，or查询不行，必须用\n	Query query = Query.query(Criteria.where(\"f1\").is(1).orOperator(Criteria.where(\"f2\").is(2),Criteria.where(\"f3\").is(3)));\n	这种格式来查询，此时表示f1=1 AND (f2=2 OR f3=3)', '1', 16, '数据库', 'maven,log4j,java,nosql,版本控制,sql', 'material-11.jpg', '2019', '04', '13', '2019/04/13/mongodb命令记录一/', '2019-04-13', '2019-04-13 20:29:12', '2019-07-04 23:35:42');
INSERT INTO `t_post` VALUES (9, 'oracle删除数据快速恢复', '', NULL, '在使用oracle数据库开发时有时误操作删除了数据,特别当删除了生产环境的数据,真是惊得一身冷汗,本文介绍下如何恢复oracle中的delete数据,记住是delete,如果是truncate就没辙了\n\n## 按时间来恢复\n\n### 查询当前数据库的时间,主要是判断当前数据库时间是否与你本地时间一直,避免时间不一致,恢复到了错误的时间端去了(一般都是没问题的)\n	select to_char(sysdate,\'yyyy-mm-dd hh24:mi:ss\') from dual;\n\n### 查询出删除数据的表的最近时间的快照\n\n	select * from B_RISK_LEVEL as of timestamp to_timestamp(\'2018-05-03 17:25:00\',\'yyyy-mm-dd hh24:mi:ss\');\n\n\n### 利用快照恢复到之前时间的状态\n\n	flashback table B_RISK_LEVEL to timestamp to_timestamp(\'2018-05-03 17:25:00\',\'yyyy-mm-dd hh24:mi:ss\');\n\n\n### 这里可能会碰到错误 [ORA-08189：未启用行移动功能，不能闪回表] \n	此时就需要执行下面语句,开启功能\n	alter table B_RISK_LEVEL enable row movement;\n	然后重新执行第三步的语句就大功告成了\n\n\n\n## 按oracle的SCN(System Change Number意思oracle数据库改变系统自动生成的一个编号)恢复\n\n### 从当前数据库中查出做了删除的当前scn号\n\n	select current_scn from v$database;(不能执行的话，切换到sys用户或system用户查询) \n\n\n### 将查到的数值用于下面scn查询,由于数据库被不同程序或多个人使用可能当前这个scn值不准确,可以适当的减小(比较繁琐还是推荐第一种方式),此时没问题的话可以看到删除之前的表的样子\n\n	select * from T_S_DATA_LOG as of scn 2073045;\n\n\n### 利用scn值恢复到之前状态,如果报错同上执行解决方案\n\n	flashback table T_S_DATA_LOG to scn 2073045;\n\n\n\n\n\n', '1', 16, '数据库', 'maven,log4j,java,nosql,版本控制,sql,oracle', 'material-24.jpg', '2019', '04', '13', '2019/04/13/oracle删除数据快速恢复/', '2019-04-13', '2019-04-13 20:30:34', '2019-05-29 10:21:04');
INSERT INTO `t_post` VALUES (10, 'mysql的语法和优化', '', NULL, '## sql优化\n1. 能用字段代替的就用字段，不要用*\n2. 能不用like的地方尽量不用，like模糊查询费时\n3. 能用between的地方尽量不要用in\n4. 尽量少用!=,IS NULL,IS NOT NULL,IN,NOT IN,因为不能用索引加快查询速度\n5. where后面字段等于varchar的放前面，数字的放后面(顺序问题)\n6. where后面不可再做加减乘除\n7. 避免使用不兼容的数据类型，如在where后面varchar字段等于数字,虽然数据库有时可以做自动转换,但是比较浪费性能\n\n\n### 连接\n	mysql -h 127.0.0.1 -u root -p root\n\n### 查看字符编码\n	show variables like \"character%\"\n\n### 临时改变窗口编码\n	set names gbk;\n\n### 产生一个0-1随机数\n	select RAND();\n\n### 当前的完整时间,time,date\n	select now(),CURTIME(),CURDATE();\n\n### 查询100天后和150天前\n	select adddate(curdate, 100),subdate(curdate, 150)\n\n### 相隔多少天\n	select datediff(date1,date2)\n\n	<if test=\"name != null and name !=\'\'\">\n		 <bind name=\"nameLike\" value=\"\'%\'+name+\'%\'\"/>\n		 and name like #{nameLike}\n	</if>\n\n	1.mysql dateDiff是前面时间减去后面时间 1，代表前面的时间比后面晚一天\n	2.&lt;     	<   	小于号\n	&gt;     	>   	大于号\n	&amp;     	&   	和\n	&apos;     	’   	单引号\n	&quot;     	\"   	双引号', '1', 16, '数据库', 'sql', 'material-30.jpg', '2019', '04', '13', '2019/04/13/mysql的语法和优化/', '2019-04-13', '2019-04-13 20:31:06', '2019-05-29 10:23:53');
INSERT INTO `t_post` VALUES (11, '一些计算机命令', '', NULL, '## 端口命令\n- telnet ip 8080 判断端口是否可用\n- netstat -ano 查看活动的端口\n- netstat -anp tcp 查看当前主机tcp开放了那些端口\n\n## 删除服务\n	sc delete 服务名\n	net start /net stop \n\n\n## cron表达式\n	每5秒执行一次\n	0/5 * * * * ?\n	秒 分 时 日 月 星期 (年)\n\n	*:指定所有值\n	-:10-12放在小时位,表示10点 11点 12点\n	/:表示增量,每多少时间\n\n## windows定时关机\n	shutdown -s -t  秒数\n	shutdown -a 取消', '1', 19, '计算机命令', '', 'material-13.jpg', '2019', '04', '13', '2019/04/13/一些计算机命令/', '2019-04-13', '2019-04-13 20:34:57', '2019-11-10 13:16:37');
INSERT INTO `t_post` VALUES (13, '踩坑记录', '坑', NULL, '## 记录编程一路走来碰到的各种坑\n\n### mysql\n\n- mysql用text大文本类型，必须用selectByExampleWithBLOBs查询出来，因为插件将字段分开来展示了\n- sql用date equal来查询数据是不准确的，存入的db如果是datetime类型，可能有毫秒级别不同影响结果\n- mysql limit ofset大数据量时扫描行数过多，会导致查询速度线性下滑\n- CST混乱时区，会导致jdbc无法判断是哪个时区，没法确定是东八区，可能导致时间误差13小时\n- mysql事务踩坑，方法加了事务，准备插入db的数据在方法中生成了主键，此时用主键发送到mq队列消费，在方法结束前mysql因为事务还没来得及插入，就已经在mq消费做查询了，导致数据为空，错误\n\n### mongodb\n\n- mongodb 对某个属性进行累加脚本可以用aggregate的{ $group : ?{ _id : null}},mongoTemplate中可以用group()\n\n- mongoTemplate的orOperator是针对括号参数进行or连接，和之前的查询条件是并列and连接的，Query q5 = Query.query(new Criteria().orOperator(Criteria.where(\"indexTags\").size(1), Criteria.where(\"typeTags\").size(1)));    这样才可以正确查询2个or条件\n\n- mongodb不能直接存储bigDecimal的数据类型，会被驱动转化为string，变成string的无法使用分组统计做累加\n\n### springcloud\n- springcloud的feign调用返回值为map时，map中的Long类型如果大小没有大于21亿，Integer的上限，自动在调用端转化为Integer，如果大于，会转化为Long，对于浮点会转化为BigDecimal类型\n- 防止模块内存占用过高，设置实例 vm option   -Xmx256m -Xms256m\n\n### Java\n\n	BigDecimal的使用构造方法不能用new BigDecimal(double value),无法得到精确的值\n	例如:	new BigDecimal(1000.129) = 1000.129000000001\n	BigDecimal.valueOf(float value)也会丢失精度\n	例如:	BigDecimal.valueOf(22.36f) = 22.360000610351562\n	字符串使用new BigDecimal(String value)\n	浮点数使用BigDecimal.valueOf(double value)\n\n	\n### redis\n- redis直接将db对象丢入缓存，兼容性很差后期，拓展字段或者删除了以前的字段，但是redis存在该字段数据，取出来映射对象会报错，建议存入redis，JSON.toJSONString   从redis取出JSON.parserObject\n\n### 其他\n- openSearch 定义数组类型\\\"apply_father_types\\\":\\\"1001\\\\t1002\\\"，数据召回需要进一步处理\n\n### java 切面\n	利用日志注解记录用户请求数据，如果aop方法里报错会导致本次请求500错误\n\n\n**这是加粗的文字**\n*这是倾斜的文字*`\n***这是斜体加粗的文字***\n~~这是加删除线的文字~~', '1', 12, ' 后端', '', 'material-5.jpg', '2019', '05', '29', '2019/05/29/踩坑记录/', '2019-05-29', '2019-05-29 10:22:19', '2020-01-05 18:11:52');
INSERT INTO `t_post` VALUES (14, '阿里开放搜索(openSearch)记录', 'opensearch', NULL, '只有TEXT、MWS_TEXT、NWS_TEXT、SWS_TEXT类型的字段可以建立组合索引字段；\n\nquery查询必须要用单引号或者双引号\n\n在filter中出现的字段必须在定义应用结构的时候配置为属性字段；\n\nliteral类型字段的过滤仅支持=、!=运算，含义为等于、不等于，不支持>、<等关系运算。（literal字段类型不分词，需要完全匹配）\n\nin/notin 判断字段值是否（不）在指定列表中，只支持INT及FLOAT类型，( 不支持ARRAY及LITERAL、TEXT、模糊分词系列类型 )', '1', 12, ' 后端', '', 'material-11.jpg', '2019', '05', '29', '2019/05/29/阿里开放搜索(openSearch)记录/', '2019-05-29', '2019-05-29 10:57:23', '2019-05-29 10:57:23');
INSERT INTO `t_post` VALUES (15, 'mongodb学习总结二', 'mongodb', NULL, '> 重新系统性的学习mongodb,记录学习过程\n\n### 基础命令\n	show dbs：查看所有的集合\n	db：查看当前集合\n	use dbname：使用某个集合\n	db.dropDatabase()：删除当前数据库\n	db.collection.drop：删除某个集合\n	show tables/show collections：展示当前数据库中的集合\n	db.createCollection(\"***\")：创建集合，一般不需要这样没啥用，除非创建制定大小的集合，超出大小的文档会覆盖老的文档\n\n### 插入\n	db.collection.insert({})或者db.collection.save({})都可以完成插入,集合不存在自动创建\n	\n\n### 修改\n	基本结构\n	db.collection.update(\n	   <query>,\n	   <update>,\n	   {\n		 upsert: <boolean>,  //默认false,true时表示query匹配不到结果就插入\n		 multi: <boolean>,	//批量操作，默认false\n		 writeConcern: <document>\n	   }\n	)\n	也可以简化结构为:db.collection.update(<query>,<update>,false,true)：表示不存在时不做操作，但是允许批量修改\n	\n	//没有在update中使用$set导致只能修改第一条匹配的数据并且会将该文档除去主键都设置成赋值的内容\n	db.goods.update(\n		{\"price\":{$gt:2}},\n		{\"company\":\"B\"}\n	)\n	\n	//使用了$set，只会对修改的字段进行处理，如果字段存在update，字段不存在新增赋值\n		db.goods.update(\n		{\"price\":{$gt:2}},\n		{$set:{\"company\":\"B\"}}\n	)\n	\n### 删除\n	db.collection.deleteOne()：删除一条\n	db.collection.deleteMany()：删除多条\n	db.collection.remove()是过时方法，不会释放磁盘空间，使用db.repairDatabase()释放磁盘空间\n	\n### 查询\n	db.collection.find(query,projection)：基本查询，projection可以通过设置\"fieldA\":1或者“fieldA\":true来指定返回特定字段,类似mysql select fieldA from table\n	OR查询:\n	db.collection.find({\n		$or:[{\"fieldA\":\"\"},{\"fieldB\":\"\"}]\n	})', '1', 16, '数据库', '', 'material-2.jpg', '2019', '05', '29', '2019/05/29/mongodb学习总结二/', '2019-05-29', '2019-05-29 22:01:20', '2019-06-04 20:24:02');
INSERT INTO `t_post` VALUES (16, 'mongodb学习总结三', 'mongodb', NULL, '> 除去增删改查之外mongodb其他命令\n\n### 比较操作符\n- $gt:大于\n- $gte：大于等于\n- $lt：小于\n- $lte：小于等于\n- $ne：不等于\n\n### 模糊查询\nmongodb模糊查询使用正则表达式\ndb.collection.find({\"title\":/张三/})\n\n### 类型比较\n由于mongodb结构不定死，不同文档允许同名字段为不同类型，所以可用$type来查询特定类型数据\neg:db.collection.find({\"name\":{$type:\"string\"}})，查询name字段为字符串的数据,\"string\"也可以替换为2,mongodb为每个类型数据都设置了一个数字编码\n\n### 分页方式\n使用$limit和$skip，类似mysql limit 10,1,mysql中前面数字表示查询开始的数据索引位置,后面的表示查询多少条,而mongodb的limit表示查询多少条数据，skip用来跳过多少条\neg:db.collection.find().limit(1).skip(10)\n\n### 排序\n	db.collection.find().sort({\"price\":1}),sort用来做排序，1表示升序，-1表示倒叙\n\n### 索引\n	db.collection.createIndex({\"title\":1},options)\n使用createIndex创建索引，字段后1表示升序索引，-1倒叙索引，options表示可以再创建索引时接受其他的操作参数，例如background设置true可以后台创建索引不会阻塞操作，name指定索引名，expireAfterSeconds可以用来创建时间索引，不过只针对时间字段起作用，可以用来设置加了索引的文档时间字段和now()相比小多少秒的过期，但是不能针对联合索引，删除数据交给mongodb服务器自动每60秒跑一次定时任务执行，所以可能不精确,如果想指定在某个时间点过期，设置expireAfterSeconds为0，然后mongodb会根据设置时间索引的字段值去删除文档，如果时间字段的时间是已过去的时间，也会删除数据\n\n	db.work.createIndex({\"createTime\":1},{background:true,expireAfterSeconds:10})\n	\n	db.collection.getIndexes()  查询集合所有索引\n	db.collection.totalIndexSize()  查询索引占用空间\n	db.col.dropIndexes()  删除所有索引\n	db.col.dropIndex()  删除指定索引\n	\n	\n### 管道聚合\n	db.col.aggregate{[\n		<query1>,\n		<query2>,\n		...\n	]}\n常用的命令有$mathc-过滤数据,$project-控制需要的字段，$limit和$skip分页,$group-分组，$sort-排序，$unwind-拆分集合，其他属性都一致，主键也一致\n\n	//根据字段A分组，结果只有字段A去重结果\n	db.col.aggregate([\n		{$group:{_id:\"$fieldA\"}}\n	])\n	\n	//null也可以换成\"\"，作用时统计整个col集合中fieldB字段累加结果,如果指定字段则为分组后各个组的累加结果\n	db.col.aggregate([\n		{$group:{_id:null, total:{$sum:\"$fieldB\"}}}\n	])\n	\n	db.col.aggregate([\n		{$project:{\"fieldA\":1}}\n	])    //这里的1可以换成所有数字或者true不能设置false，都表示只需要查询出字段A，但是主键一定会有查出来没法控制', '1', 16, '数据库', '', 'material-12.jpg', '2019', '05', '29', '2019/05/29/mongodb学习总结三/', '2019-05-29', '2019-05-29 22:55:07', '2019-12-08 22:20:33');
INSERT INTO `t_post` VALUES (17, 'mongodb学习记录四', '', NULL, '### 备份\n进入到mongodb 的bin目录\n1. mongodump -h localhost -p 27017 -d dev -c goods -o H:\\databases\\mongodb\\dump   h为ip地址,p为端口，d为数据库,c为集合名o为备份目录，最终生成的是bson文件\n2. mongorestore  -h localhost -d dev H:\\databases\\mongodb\\dump\\dev\\goods.bson  还原备份,需要制定具体bson文件\n3. mongoexport.exe -h localhost -d dev -c posts --type=json -o H:\\databases\\mongodb\\dump\\dev\\posts.json     --type指定导出的格式\n4. mongoimport.exe -h localhost -d dev -c posts H:\\databases\\mongodb\\dump\\dev\\posts.json\n\n### 监控\n进入mongodb的bin目录  mongostat 或者 mongotop \nmongotop可以设置刷新间隔，默认1s，mongotop 5表示5秒刷新一次\n\n### 查询分析\n有explain和hint两种方式\nexplain查看执行计划\nhint可以强制使用某些索引\n\n	//针对管道聚合explain的使用方式\n	db.collect.aggregate( [ ] , {explain:true})\n\n### 补充\n$unset用在update中可以来删除某个键\n\nObjectId:16进制的24位主键，一共12个字节\n1. 前四个字节为时间戳\n2. 中间三个字节为机器码\n3. 两个字节，进程pid\n4. 三个字节随机数\n\n\n	ObjectId()：创建主键\n	ObjectId().getTimestamp():可以获取主键中存储的时间\n	ObjectId().str：可以获取主键的字符串\n	\n### GridFS\nmongodb可以用GridFS来存储图片，文件，视频等等，允许存储大于16m，会将大文件切分为一个个chunk(文件片段)，每个大小为256k，多个chunk被存储在mongodb集合中，GridFS使用两个集合fs.files和fs.chunks来存储文件\n关系：一对多\n\n	eg：mongofiles.exe -d dev put G:\\开发笔记\\开发手册.pdf\n', '1', 16, '数据库', '', 'material-29.jpg', '2019', '05', '30', '2019/05/30/mongodb学习记录四/', '2019-05-30', '2019-05-30 00:29:58', '2019-06-05 17:04:18');
INSERT INTO `t_post` VALUES (18, 'mybatis整理记录', 'mybatis', NULL, '> 整理平常使用mybatis的一些老是忘记的东西\n\n**in查询**\n\n	xml中写sql，在java 文件中声明接口需要用@Param(\"ids\")\n	<foreach open=\"(\" close=\")\" collection=\"ids\" item=\"id\" separator=\",\">\n		#{id}\n	</foreach>\n	\n	\n	原符号       <        <=      >       >=       &        \'        \"\n	替换符号    &lt;    &lt;=   &gt;    &gt;=   &amp;   &apos;  &quot;', '1', 12, ' 后端', '', 'material-23.jpg', '2019', '05', '31', '2019/05/31/mybatis整理记录/', '2019-05-31', '2019-05-31 10:48:16', '2019-07-04 10:24:49');
INSERT INTO `t_post` VALUES (19, 'git系统学习整理', '版本控制', NULL, '>  系统性重新学习一遍git命令\n\n	git init  初始化git仓库\n	git add readme.txt  添加一个txt文件到暂存区\n	git commit -m \"a txt file\" commit到本地仓库\n	git status 可以查看当前仓库状态\n	git diff 查看当前状态和仓库区别\n	git log 查看提交日志记录\n	git log --pretty=oneline  简略格式化提交日志记录\n	git reset --hard *    git还原到某个版本状态，hard后面跟版本号,用SHA1加密生成的一串字符串\n	git reflog  记录了每一次操作的命令\n	git checkout -- filename   在添加了部分文件还没有git add 时可以直接还原回去 --非常重要，指定是文件操作，不然就变成了操作分支了\n	git reset HEAD filename   当git add 提交到了暂存区，可以用reset将暂存区的提交丢弃，还原到add之前状态，暂存区清空，但是工作区有修改\n	git rm filename 删除文件，之后需要commit一下，当然删除后用git add filename也是可以的\n	\n	ssh-keygen -t rsa -C \"youremail@example.com\"  用自己邮箱生成git公匙，一路enter默认就可以了\n	git remote add origin git@github.****.git    git bash后设置当前项目远程仓库地址\n	git push -u origin master   将本地仓库代码push到远程仓库\n	第一次使用git的clone或者push命令会收到一个git ssh 的警告，确认是否是指纹信息来之github服务器，yes就可以了，之后就不会有警告了，之后可以直接 git push origin master\n	\n	初始仓库创建\n	git clone git@github.***.git  从远程仓库克隆代码到本地，并且建立本地仓库\n	git checkout -b dev 切换分支，不带-b表示切换分支，带-b创建新分支并且切换\n	git branch 查看当前分支\n	git push origin dev  将本地dev分支推送到远程\n	git merge dev 在当前分支合并dev分支\n	git branch -d dev 删除本地dev分支\n	git log --graph   查看git分支合并图\n	git stash  可以将暂时提交到暂存区的文件储藏起来，方便切换分支紧急修复其他问题\n	git stash list   查看储存的版本\n	git stash apply+git stash drop   前者命令可以还原版本，但是不会删除已有的储存版本，需要后者删除\n	git stash pop   恢复的同时把stash内容也删了\n	git stash apply stash@{0}   指定恢复哪个版本\n	git branch -D **   git用-D来删除新创建没有合并的分支\n	\n	git remote 查看远程库信息\n	git remote -v  更加详细的信息，如果没有push权限，不会限制push的远程地址\n	git rebase 将分支合并提交记录整合成一条直线，方便查看\n	\n	git tag v1.0  打一个叫做v1.0的标签\n	git tag    查看所有标签\n	git tag v0.9  f52c633  指定之前某次提交记录，打一个非最新版本的tag\n	git tag -a v0.1 -m \"version 0.1 released\" 1094adb  -a指定tag名，-m指定tag的内容\n	git tag -d v0.1  删除tag\n	git push origin <tagname>  推送某个tag到远程\n	git push origin --tags  推送所有tag到远程\n	\n	针对已经推送到远程的tag，先删除本地，再推送一遍\n	git tag -d v1.0\n	git push origin :refs/tags/v1.0\n	\n### 当在本地新建项目把线上项目关联到本地push代码冲突出错时\n	解决冲突\n	git pull origin master --allow-unrelated-histories \n	设置远程仓库\n	git branch --set-upstream-to=origin/master master', '1', 10, 'git', '', 'material-15.jpg', '2019', '06', '03', '2019/06/03/git系统学习整理/', '2019-06-03', '2019-06-03 18:52:17', '2019-09-03 14:46:03');
INSERT INTO `t_post` VALUES (20, 'mybatis批量插入及返回主键', 'mybatis', NULL, '>   平常使用mybatis插入后再当前对象中可以得到生成的主键，但是对于批量插入时无法获取，本文简单记录笔者使用mybatis批量插入后获取主键\n\nmapper文件:\n	int batchInsertData(List<UserData> list)\nxml:\n\n	<insert id=\"batchInsertData\" parameterType=\"java.util.List\">\n		//用来获取mysql自增id,dataId为主键\n		<selectKey keyProperty=\"dataId\" order=\"AFTER\" resultType=\"java.lang.Long\">\n		  SELECT LAST_INSERT_ID()\n		</selectKey>\n		insert into t_user_data(name,sex,tel)\n		values \n		<foreach collection=\"list\" item=\"data\" separator=\",\">\n		(#{data.name,jdbcType=VARCHAR},#{data.sex,jdbcType=INTEGER},#{data.tel,jdbcType=VARCHAR})\n		</foreach>\n	</insert>\n	\n如上面所写可以批量插入但是无法获取到插入的list中每一个对象的dataId主键值,需要配置成下面这种\n\n	<insert id=\"batchInsertData\" parameterType=\"java.util.List\" useGeneratedKeys=\"true\" keyProperty=\"dataId\">\n		insert into t_user_data(name,sex,tel)\n		values \n		<foreach collection=\"list\" item=\"data\" separator=\",\">\n		(#{data.name,jdbcType=VARCHAR},#{data.sex,jdbcType=INTEGER},#{data.tel,jdbcType=VARCHAR})\n		</foreach>\n	</insert>\n	//useGeneratedKeys:是否使用JDBC的getGenereatedKeys方法获取主键并赋值到keyProperty设置的领域模型属性\n	//keyProperty:指定对象主键的属性字段', '1', 12, ' 后端', '', 'material-29.jpg', '2019', '06', '04', '2019/06/04/mybatis批量插入及返回主键/', '2019-06-04', '2019-06-04 13:28:19', '2019-06-04 20:23:57');
INSERT INTO `t_post` VALUES (23, 'mysql查询优化', 'mysql', NULL, '>  有时候工作上会涉及批量查询mysql中的数据，然后批量分析后回写到mongodb中，之前都是直接用mybatis配合分页插件，都是直接使用的limit，导致查询后面越来越慢，此处仅记录下几种不同的查询方式测试效果，如何提高查询效率\n\n\n	#1000000条\n	select count(1) from department;\n\n	#2ms\n	select * from department order by id limit 1000,10;  \n\n	#352ms\n	select * from department order by id limit 800000,10;\n\n	#240ms\n	select id from department order by id limit 800000,10;\n\n	#249ms\n	select * from department where id>=(\n		select id from department limit 800000,1\n	) limit 10\n\n	#1ms\n	select * from department where id BETWEEN 800000 and 801000\n\n	#1ms\n	select * from department where id in(800000,800001,800002,800003,800004,800005,800006,800007,800008,800009)\n\n	#1ms\n	select * from department where id > 800000 limit 10\n	\n![avatar](https://wxg-blog.oss-cn-shenzhen.aliyuncs.com/total/1559744731%281%29.png)', '1', 16, '数据库', '', 'material-13.jpg', '2019', '06', '05', '2019/06/05/mysql查询优化/', '2019-06-05', '2019-06-05 22:34:58', '2019-07-04 12:37:49');
INSERT INTO `t_post` VALUES (24, 'mongodb命令db.runCommand vs db.collection.aggregate', 'mongodb', NULL, '>   笔者在对接口调优时意外的发现了，java中一段mongodb的代码执行起来耗时大概300ms,但是实际在数据库中执行的效率很高,耗时只有15ms左右，通过打开mongoTemplate的输出日志发现spring生成命令是的db.runCommand形式命令,而不是mongodb的函数db.colllection.aggregate 这种形式\n\n	db.job.aggregate([\n		{$match:{\"aa\":22}},\n		{$match:{\"bb\":1}},\n		{$match:{\"cc\":20}},\n		{$match:{\"dd\":/^4103.*/}},\n		{$group:{_id:\"$dd\"}}\n	])\n\n	db.runCommand({\n		\"aggregate\": \"job\",\n		\"pipeline\": [{\n			\"$match\": {\n				\"aa\": 22\n			}\n		}, {\n			\"$match\": {\n				\"bb\": 1\n			}\n		}, {\n			\"$match\": {\n				\"cc\": 20\n			}\n		}, {\n			\"$match\": {\n				\"dd\": {\n					\"$regex\": \"^4103.*\",\n					\"$options\": \"i\"\n				}\n			}\n		}, {\n			\"$group\": {\n				\"_id\": \"$dd\"\n			}\n		}]\n	})\n\n通过db里执行比较确实db.runCommand形式会慢很多，为了解决目前执行效率的问题，作为临时解决方案使用mongoTemplate直接执行第一种命令,代码拼接查询语句，后续继续研究为何会造成这种现象\n\n	String json = \"db.job.aggregate([\\n\" +\n	\"    {$match:{\\\"aa\\\":22}},\\n\" +\n	\"    {$match:{\\\"bb\\\":1}},\\n\" +\n	\"    {$match:{\\\"cc\\\":20}},\\n\" +\n	\"    {$match:{\\\"dd\\\":/^4403.*/}},\\n\" +\n	\"    {$group:{_id : \\\"$dd\\\"}}\\n\" +\n	\"])\";\n	BasicDBObject bson = new BasicDBObject();\n	bson.put(\"$eval\", json);\n	CommandResult commandResult = mongoTemplate.getDb().command(bson);', '0', 16, '数据库', '', 'material-13.jpg', '2019', '06', '06', '2019/06/06/mongodb命令db.runCommand-vs-db.collection.aggregate/', '2019-06-06', '2019-06-06 13:55:52', '2020-03-11 17:22:25');
INSERT INTO `t_post` VALUES (25, 'jenkins使用记录', 'jenkins', NULL, '>	笔者刚开始接触jenkins，本文仅做为学习的随笔\n\n**启动/停止/重启命令**\n	\n	service jenkins start\n	service jenkins stop\n	service jenkins restart', '0', 18, '其他', '', 'material-21.jpg', '2019', '06', '08', '2019/06/08/jenkins使用记录/', '2019-06-08', '2019-06-08 11:01:13', '2019-07-04 22:03:25');
INSERT INTO `t_post` VALUES (26, 'mongodb浅谈lookup集合关联', '$lookup', NULL, '>mongodb属于nosql，非关系型数据库,大多数我们可能都是基于单集合查询，但是有时候确实有这方面的需要，对于集合之间联合查询，类似sql中的表关联，join一样，本文介绍下mongodb本身语句和使用spring-data提供的mongoTemplate实现联合查询效果\n\n###1.生成数据\n首先我们生成用来测试的数据,每个人淘宝都有多个收货地址，我们此时有一个用户信息集合，一个用户收货地址集合，两者通过userId进行关联\n\n	db.address.insert({\n		\"userId\":1,\n		\"province\":\"广东省\",\n		\"city\":\"深圳市\",\n		\"area\":\"南山区\",\n		\"detail\":\"**路**号\"\n	})\n	db.address.insert({\n		\"userId\":1,\n		\"province\":\"江苏省\",\n		\"city\":\"苏州市\",\n		\"area\":\"工业园区\",\n		\"detail\":\"**路**号\"\n	})\n	db.address.insert({\n		\"userId\":2,\n		\"province\":\"广东省\",\n		\"city\":\"深圳市\",\n		\"area\":\"福田区\",\n		\"detail\":\"**路**号\"\n	})\n	\n	db.user.insert({\"userId\":1,\"username\":\"小王\"})\n	db.user.insert({\"userId\":2,\"username\":\"小刘\"})\n\n###2.mongodb原生查询写法\n此时我们的测试数据简单生成了，我假设在查询收货地址集合时想要将用户信息也带出来，便于直观的统计和分析，此时需要用到mongodb的管道聚合aggregate\n\n	db.address.aggregate([\n		{$match:{\"province\":\"广东省\"}},\n		{$lookup:{\n			from:\"user\",\n			localField:\"userId\",\n			foreignField:\"userId\",\n			as:\"userInfo\"\n		}}\n	])\n\n![avatar](https://wxg-blog.oss-cn-shenzhen.aliyuncs.com/pic/2019.7/4/lookup1.png)\n\n  此时我们就得到了需要的信息，解释一下lookup操作符的语法,from表示连接的其他集合，localField表示当前address集合中关联的字段名，foreignField表示连接的集合的字段，此时我们都是userId，as表示别名，可以为连接后的结果取个别名字段存放，此时我们叫做userInfo，可以看到此时我们先是match筛选了我想要的广东省的数据，在通过集合连接得到要的查询结果，但是！！！这个时候关联出来的默认是一个数组，我们地址和用户进行关联时，用户id对应的用户永远是唯一的，一个地址只可能属于一个用户，n对1的关系，所以此时userInfo作为一个集合可能没必要，而且后面做映射时获取数据也没那么方便，这个时候我们可以在聚合管道后面再补充一个unwind操作，让文档数组打散来\n  \n  	db.address.aggregate([\n		{$match:{\"province\":\"广东省\"}},\n		{$lookup:{\n			from:\"user\",\n			localField:\"userId\",\n			foreignField:\"userId\",\n			as:\"userInfo\"\n		}},\n		{$unwind:{path:\"$userInfo\"}}\n	])\n	\n	\n![avatar](https://wxg-blog.oss-cn-shenzhen.aliyuncs.com/pic/2019.7/4/lookup2.png)\n	\n	unwind的path属性指定可以将某个数组从文档中拆开来，如果有多个元素可以每个都共有当前文档的其他字段值，此时userInfo里放的就是一个对象了，这样做java的对象映射，前端使用数据也会方便点\n\n\n###3.java中使用\n这个时候来讲些java中如何使用spring提供的mongoTemplate实现同样效果，先来看实体类写法，User是用户对象，Address地址对象，AddressBO是继承Address的业务对象，其中有一个字段是用户信息\n![avatar](https://wxg-blog.oss-cn-shenzhen.aliyuncs.com/pic/2019.7/4/lookup3.png)\n\n此时代码里的Address.class，表示查询的集合，AddressBO.class表示输出映射的集合，这样通过java代码也实现了mongodb的关联查询\n![avatar](https://wxg-blog.oss-cn-shenzhen.aliyuncs.com/pic/2019.7/4/lookup4.png)\n![avatar](https://wxg-blog.oss-cn-shenzhen.aliyuncs.com/pic/2019.7/4/lookup5.png)\n\n', '1', 16, '数据库', '', 'material-2.jpg', '2019', '07', '04', '2019/07/04/mongodb浅谈lookup集合关联/', '2019-07-04', '2019-07-04 22:08:29', '2019-07-05 10:29:32');
INSERT INTO `t_post` VALUES (27, 'ElasticSearch学习', 'elastic', NULL, '验证elastic是否成功启动\n\n	http://localhost:9200\n	http://localhost:9200/?pretty\n	\nJava程序使用9300端口和elastic进行交换信息,9200用于Restful请求\n\n统计集群中的文档数量\n\n	http://localhost:9200/_count\n	http://localhost:9200/_count/?pretty\n\n查看健康状态\n\n	http://localhost:9200/_cluster/health/?pretty\n	\n新增数据\n\n	http://localhost:9200/索引/类型/id\n\n\n	单节点运行时出现了unsigned分片，手动put设置index的配置\n	PUT localhost:9200/索引/_settings\n	{\n	  \"number_of_replicas\": 0\n	}\n	\n	排查问题\n	http://localhost:9200/_cluster/allocation/explain?pretty\n	\n使用elasticeHeader无法连接9200，但是浏览器请求ok，原因是浏览器请求时GET请求，启动header工具后出现了跨域options请求，所以需要在elasticsearch.yml中配置跨域信息\n\n### 查询\n\n	基本查询列表,默认返回十条结果\n	localhost:9200/megacorp/employee/_search\n	基于字段查询匹配\n	localhost:9200/megacorp/employee/_search?q=last_name:Smith\n	\n	查询表达式查询,使用基本查询语句附加body中json语句:\n	{\n		\"query\":{\n			\"match\":{\n				\"last_name\":\"Smith\"\n			}\n			//备注match换成match_phrase表示全匹配，不然只会按照相关性排序\n		}\n		//highlight表示高亮某些字段\n		//\"highlight\": {\n        //	\"fields\" : {\n        //    	\"about\" : {}\n        //	}\n    	//}\n	}，\n	查询最后名字为Smith，年龄大于30岁\n	{\n		\"query\":{\n			\"bool\":{\n				\"must\":{\n					\"match\":{\n						\"last_name\":\"Smith\"\n					}\n				},\n				\"filter\":{\n					\"range\":{\n						\"age\":{\n							\"gt\":30\n						}\n					}\n				}\n			}\n		}\n	}\n	\n	默认elasticSearch支持相关性搜索，按照得分高低排序\n	\n### 聚合排序等\n使用聚合agg排序sort等操作在针对text类型的字段时回消耗大量堆内存，所以默认没有开启，在第一次查询时会报错Fielddata is disabled on text fields by default，需要手动开启\n开启方式：PUT localhost:9200/megacorp/索引/_mapping\n{\n  \"properties\": {\n    \"开启的字段\": { \n      \"type\":     \"text\",\n      \"fielddata\": true\n    }\n  }\n}\n详见官方文档说明：https://www.elastic.co/guide/en/elasticsearch/reference/current/fielddata.html\n\n聚合语法\nGET /megacorp/employee/_search\n{\n  \"aggs\": {\n    \"all_interests\": {\n      \"terms\": { \"field\": \"interests\" }\n    }\n  }\n}\n', '1', 16, '数据库', 'elk', 'material-7.jpg', '2019', '08', '02', '2019/08/02/ElasticSearch学习/', '2019-08-02', '2019-08-02 10:14:13', '2019-11-07 16:46:23');
INSERT INTO `t_post` VALUES (29, '开发系统心得', '', NULL, '1.token看情况可以存储在服务器，可以限制签发的某个用户只有一个token可以使用，并且能够很好解决开发环境，测试环境，正式环境token用叉，如果不存储服务器，可以再token里设置环境因子，解析时根据当前环境判断，业务层面会麻烦些\n2.统一的异常处理，返回请求url和ip地址\n3.各个模块请求可以区分\n4.登录存储位置和ip，时间信息\n5.登录时，判断手机号码，邮箱登录，错误次数积累让输入验证码，短信验证码是否每次删除待定，判断图片验证码是否过期，短信验证码是否过期，图片验证码是否正确，手机号是否已存在\n6.消息设计时就要考虑做公告消息\n7.全局模块复用，配置统一拉取\n8.全部系统引用统一的pojo jar包\n9.服务要尽量做到内聚，解耦合，独立交付，但是db连接过多可能有导致性能下降，而且要不要做多数据源针对各个服务模块，会设计rpc调用业务逻辑，这就导致可能不能独立发布\n10.统一的token存入各个系统uid，模块类型', '0', 18, '其他', '', 'material-27.jpg', '2019', '11', '10', '2019/11/10/开发系统心得/', '2019-11-10', '2019-11-10 13:00:43', '2020-01-15 09:58:32');
INSERT INTO `t_post` VALUES (30, 'SpringMvc http请求链测试', '请求先后顺序', NULL, '# Web容器请求顺序\n1. DispatcherServlet.service()\n2. ->FrameworkServlet.service()\n3. ->HttpServlet.service()\n4. ->FrameworkServlet.doGet\n5. ->FrameworkServlet.processRequest()\n6. ->DispatcherServlet.doService()\n7. ->DispatcherServlet.doDispatch()\n\n# 容器启动时加载filter\n1. filter.doFilter()\n2. ->interceptor.preHandle()\n3. ->controller\n4. ->aspect(aop切面)\n5. ->interceptor.postHandle()\n6. ->interceptor.afterCompletion()', '1', 17, 'java', '', 'material-28.jpg', '2020', '01', '05', '2020/01/05/SpringMvc-http请求链测试/', '2020-01-05', '2020-01-05 18:14:47', '2020-01-05 18:16:26');
INSERT INTO `t_post` VALUES (32, 'Docker学习记录', 'docker', NULL, '> docker是一种linux下的容器，其主要由三块组成，镜像(Image)，容器(Container)，仓库(Repository)\n\n### 安装docker\nsudo yum install docker\nsudo service docker start\nsudo chkconfig docker on\n\n### 下载镜像\ndocker pull ubuntu:12.04\n默认docker pull registry.hub.docker.com/ubuntu:12.04\n也可以指定仓库地址: docker pull dl.dockerpool.com:5000/ubuntu:12.04\n\n### 完成后运行bash应用\ndocker run -t -i ubuntu:12.04 /bin/bash\n\n### 显示本地已有的镜像\ndocker images\n\n### 查看所有运行容器\ndocker ps -a\n\n### 移除容器\ndocker rm e8c222eefdea(容器id)  针对删除处于终止状态的容器\ndocker rm -f 删除处于运行中容器 Docker 会发送 SIGKILL 信号给容器\n\n### 移除镜像\ndocker rmi training/sinatra(镜像名)\n\n### 导出容器\ndocker ps -a  查询所有容器\ndocker export ea44a6ee249d > ubuntun.tar 将容器快照导出到当前目录\n\n### 带有交互窗口的docker启动\ndocker run -t -i ubuntu:14.04 /bin/bash\n\n### 启动一个停止的容器\ndocker start 0aa4ea68b6d5\n\n### 需要让 Docker 容器在后台以守护态（Daemonized）形式运行。此时，可以通过添加 -d 参数来实现\ndocker run -d **\n\n###查看某个容器日志\ndocker logs musing_shockley(容器名)\n\n###停止容器运行\ndocker stop musing_shockley(容器名)\n\n###重启容器\ndocker restart mymysql(容器名)\n\n###在dockerhub查询官方仓库镜像\ndocker serach redis\ndocker search redis --filter=stars=10  (查找star大于等于10颗星的镜像)\n', '1', 18, '其他', '', 'material-13.jpg', '2020', '01', '05', '2020/01/05/Docker学习记录/', '2020-01-05', '2020-01-05 18:18:51', '2020-01-05 18:21:11');
INSERT INTO `t_post` VALUES (33, 'mysql死锁记录', 'mysql', NULL, '> 一次偶然在开发环境sql修改表结构增加字段碰到的mysql死锁，顿时感觉特别头疼，之前都未有过解决相关场景的经验，并且也从没碰上过死锁，简单记录下自己解决死锁的过程\n\n\n1.首先出现了问题，立刻使用 show full processlist 命令查询当前mysql中的全部进程列表，注意查看state列中为说明，可能有update操作的存在，如果找的到可以直接使用前面对应的id执行 kill id ,杀死阻塞的进程，但是我当初没有找到对应的操作，唯一有的提示是 Waiting for table metadata lock\n	\n![avatar](https://wxg-blog.oss-cn-shenzhen.aliyuncs.com/pic/2020/1/5/1.png)\n\n2.接着查询下有哪些进程在强资源  select * from information_schema.innodb_trx  如果找的到的话Kill trx_mysql_thread_id\n\n![avatar](https://wxg-blog.oss-cn-shenzhen.aliyuncs.com/pic/2020/1/5/2.png)\n\n3.仍然不行的话 select * from performance_schema.events_statements_current  查找失败的语句，kill掉记录，也可以结合着下面两条命令分析\n\n	查看正在锁的事务: SELECT * FROM INFORMATION_SCHEMA.INNODB_LOCKS;\n	查看等待锁的事务: SELECT * FROM INFORMATION_SCHEMA.INNODB_LOCK_WAITS;\n	\n### 参考资料\n\n- https://www.jianshu.com/p/9aa8408acad3\n- https://blog.csdn.net/hpulfc/article/details/88169428\n- https://www.cnblogs.com/digdeep/p/4892953.html', '1', 16, '数据库', '', 'material-14.jpg', '2020', '01', '05', '2020/01/05/mysql死锁记录/', '2020-01-05', '2020-01-05 18:31:16', '2020-01-05 18:48:45');
INSERT INTO `t_post` VALUES (45, 'mysql一些命令', '', NULL, '> 本文主要记录mysql中除curd之外的一些其他命令\n\n	查询mysql的一些系统变量\n	show variables like \'default%\';\n	\n	展示mysql的字符集编码（注mysql中的utf-8其实是为了节省空间阉割的版本，实际叫做utf8mb3，存储使用1-3个字节，而真正的utf-8编码应该选择 utf8mb4 使用1-4个字节存储字符）\n	show charset (like ...);\n	show character set;\n	\n	查询mysql支持的字符比较规则\n	show collation;\n	\n	创建数据库并指定特定编码和字符比较规则\n	create database charset_demo_db\n 	charset gb2312\n 	collate gb2312_chinese_ci;\n		\n	查看当前数据库的编码和比较规则\n	show variables like \'%database%\'\n	\n	SET NAMES 字符集名\n	相等于\n	SET character_set_client = 字符集名;\n	SET character_set_connection = 字符集名;\n	SET character_set_results = 字符集名;', '1', 16, '数据库', '', 'material-12.jpg', '2020', '03', '02', '2020/03/02/mysql一些命令/', '2020-03-02', '2020-03-02 10:38:21', '2020-03-02 10:40:05');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '昵称',
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `status` tinyint(4) NOT NULL COMMENT '状态 1：正常 0：禁用',
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'admin', '超级管理员', '72a95471e3bf2d3891ccc98f30e6f6bb', 1, '2018-05-24 10:00:09', '2020-03-11 16:07:12');

SET FOREIGN_KEY_CHECKS = 1;
