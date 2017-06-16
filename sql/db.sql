DROP DATABASE IF EXISTS db_library;
CREATE DATABASE db_library;

DROP TABLE IF EXISTS db_library.user;
CREATE TABLE db_library.user (
  id       INT                          AUTO_INCREMENT PRIMARY KEY
  COMMENT 'ID PK',
  username VARCHAR(191) UNIQUE NOT NULL
  COMMENT '用户名',
  password VARCHAR(255)        NOT NULL
  COMMENT '密码',
  role     VARCHAR(255)        NOT NULL DEFAULT '用户'
  COMMENT '角色:用户;管理员'
)
  COMMENT '用户表';

DROP TABLE IF EXISTS db_library.book;
CREATE TABLE db_library.book (
  id     INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'ID PK',
  title  VARCHAR(255)  NOT NULL
  COMMENT '书名',
  author VARCHAR(255)  NOT NULL
  COMMENT '作者',
  pub    VARCHAR(255)  NOT NULL
  COMMENT '出版社',
  time   DATE          NOT NULL
  COMMENT '出版时间',
  price  DECIMAL(8, 2) NOT NULL
  COMMENT '定价',
  amount INT           NOT NULL
  COMMENT '数量'
)
  COMMENT '图书表';

INSERT INTO  db_library.user(username, password, role) VALUES ('admin','123','管理员');

SELECT *
FROM db_library.user;

SELECT *
FROM db_library.book;