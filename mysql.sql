-----------
-- user 用户表
-----------
CREATE TABLE user (
user_id int NOT NULL AUTO_INCREMENT COMMENT '用户ID',
user_name varchar(32) NOT NULL COMMENT '用户名',
user_pwd varchar(32) NOT NULL COMMENT '用户密码',
user_phone int(12) NOT NULL COMMENT '用户手机号码',
user_gender varchar(6) NOT NULL COMMENT '用户性别',
user_email varchar(64) NOT NULL COMMENT '用户EMAIL地址',
PRIMARY KEY (user_id)
)ENGINE=MyISAM DEFAULT CHARSET=utf8 ;



--------------------
--stay_message 用户留言表
--------------------
CREATE TABLE stay_message (
 stay_id smallint(5) NOT NULL AUTO_INCREMENT COMMENT '留言表自增ID',
 user_id mediumint(8) NOT NULL COMMENT '用户ID',
 stay_user_id mediumint(8) NOT NULL COMMENT '留言者ID',
 message_content varchar(255) NOT NULL COMMENT '留言内容',
 stay_user_ip varchar(15) NOT NULL COMMENT '留言用户的IP地址',
 message_stay_time int(13) NOT NULL COMMENT '留言时间',
 place varchar(64) NOT NULL COMMENT '地区',
 PRIMARY KEY (stay_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;


----------------------
--about_blog 博客信息表
----------------------
CREATE TABLE about_blog (
 blog_id mediumint(8) NOT NULL  COMMENT '用户Id',
 blog_description varchar(255) NOT NULL COMMENT '博客描述',
 blog_name varchar(36) NOT NULL COMMENT '博客名称',
 PRIMARY KEY (blog_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;



-------------------------
--shuoshuo 用户心情说说表
-------------------------
CREATE TABLE shuoshuo (
 shuo_id mediumint(8) NOT NULL AUTO_INCREMENT COMMENT '说说记录ID',
 user_id mediumint(8) NOT NULL COMMENT '用户ID',
 shuo_time int(13) NOT NULL DEFAULT 0 COMMENT '发布时间',
 shuo_ip varchar(15) NOT NULL COMMENT '说说发布时的IP地址',
 shuoshuo varchar(255) NOT NULL COMMENT '说说内容',
 type_id tinyint(3) NOT NULL DEFAULT 3 COMMENT '栏目ID,默认为3',
 PRIMARY KEY (shuo_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;



----------------------------
--article 文章表
----------------------------
CREATE TABLE article (
 article_id smallint(5) NOT NULL AUTO_INCREMENT COMMENT '日志自增ID号',
 article_name varchar(128) NOT NULL COMMENT '文章名称',
 article_time int(13) NOT NULL COMMENT '发布时间',
 article_ip varchar(15) NOT NULL COMMENT '发布IP',
 article_click int(10) NOT NULL COMMENT '查看人数',
 user_id mediumint(8) NOT NULL COMMENT '所属用户ID',
 type_id tinyint(3) NOT NULL DEFAULT 1 COMMENT '栏目ID 1:食の 2:音楽 3:技術',
 article_type int(13) NOT NULL DEFAULT 1 COMMENT '文章的模式:0为私有，1为公开，2为仅好友查看',
 article_content text NOT NULL COMMENT '文章内容',
 article_up tinyint(3) NOT NULL DEFAULT 0 COMMENT '是否置顶:0为否，1为是',
 article_support tinyint(3) NOT NULL DEFAULT 0 COMMENT '是否博主推荐:0为否，1为是',
 PRIMARY KEY (article_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;






