-- # MySQL performance(inner join v.s. subquery)

-- テーブルを作成
create table users (
-- カラムを定義
    user_id int not null primary key,
    name varchar(30) not null,
    time timestamp not null default current_timestamp
);

-- レコードの挿入a
INSERT INTO users (user_id, name) values (1, '山田 太郎');
INSERT INTO users (user_id, name) values (2, '上原 一郎');
INSERT INTO users (user_id, name) values (3, '鈴木 二郎');
INSERT INTO users (user_id, name) values (4, '稲村 琢磨');
INSERT INTO users (user_id, name) values (5, '秋好 大輔');

select * from users;
select name from users;
select user_id from users;
select user_id, name from users;

-- select sum(1) from users;
-- select sum(2) from users;
-- select sum(3) from users;
-- select sum(4) from users;
-- select sum(5) from users;
