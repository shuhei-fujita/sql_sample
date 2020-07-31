# MySQL performance(inner join v.s. subquery)

-- テーブルを作成
create table users (
-- カラムを定義
    user_id int not null primary key,
    name varchar(30) not null,
    time timestamp not null default current_timestamp
);

create table reward (
id int not null primary key,
    id int not null,
    reward int not null,
    time timestamp not null default current_timestamp
);

show tables;

-- レコードの挿入a
INSERT INTO users (user_id, name) values (1, '山田 太郎');
INSERT INTO users (user_id, name) values (2, '上原 一郎');
INSERT INTO users (user_id, name) values (3, '鈴木 二郎');
INSERT INTO users (user_id, name) values (4, '稲村 琢磨');
INSERT INTO users (user_id, name) values (5, '秋好 大輔');

-- 特定のカラムのみ表示
-- select * from users;
-- select user_id, name from users;

-- 特定のカラムの値を表示
select * from users where user_id = 1;

-- select sum(1) from users;
-- select sum(2) from users;
-- select sum(3) from users;
-- select sum(4) from users;
-- select sum(5) from users;

