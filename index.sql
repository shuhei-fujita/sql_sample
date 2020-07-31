-- # MySQL performance(inner join v.s. subquery)

-- テーブル users を作成
create table users (
    user_id int not null primary key,
    name varchar(30) not null,
    time timestamp default current_timestamp
);

-- テーブル reward を作成
create table reward (
    id int not null primary key,
    user_id int not null,
    reward int default 0,
    created timestamp default current_timestamp
);

-- レコードの挿入
INSERT INTO users (user_id, name) values (1, '山田 太郎');
INSERT INTO users (user_id, name) values (2, '上原 一郎');
INSERT INTO users (user_id, name) values (3, '鈴木 二郎');
INSERT INTO users (user_id, name) values (4, '稲村 琢磨');
INSERT INTO users (user_id, name) values (5, '秋好 大輔');

INSERT INTO reward (id, user_id, reward, created) values (1, 1, 8000, 20181101);
INSERT INTO reward (id, user_id, reward, created) values (2, 1, 1500, 20190115);
INSERT INTO reward (id, user_id, reward, created) values (3, 1, 2500, 20190120);
INSERT INTO reward (id, user_id, reward, created) values (4, 2, 3000, 20190201);
INSERT INTO reward (id, user_id, reward, created) values (5, 4, 1000, 20190311);
INSERT INTO reward (id, user_id, reward, created) values (6, 2, 2000, 20190312);
INSERT INTO reward (id, user_id, reward, created) values (7, 5, 1800, 20190411);
INSERT INTO reward (id, user_id, reward, created) values (8, 5, 1200, 20190412);

-- テーブルを表示
-- select * from users;
-- select * from reward;

-- 特定のカラムの値を表示
-- select user_id, reward from reward where user_id = 1;

-- 要件1
-- select * from reward where created >= 20190101;

-- 要件２
-- select * from reward order by reward desc;

-- 要件３
-- 内部結合
select b.user_id, a.name, b.reward, b.created from users a, reward b where a.user_id = b.user_id;

select b.user_id, a.name, sum(reward) from users a, reward b where a.user_id = b.user_id and b.user_id = 1 and created >= 20190101;
select b.user_id, a.name, sum(reward) from users a, reward b where a.user_id = b.user_id and b.user_id = 2 and created >= 20190101;
select b.user_id, a.name, sum(reward) from users a, reward b where a.user_id = b.user_id and b.user_id = 3 and created >= 20190101;
select b.user_id, a.name, sum(reward) from users a, reward b where a.user_id = b.user_id and b.user_id = 4 and created >= 20190101;
select b.user_id, a.name, sum(reward) from users a, reward b where a.user_id = b.user_id and b.user_id = 5 and created >= 20190101;

-- select user_id, sum(reward) from reward where user_id = 1 and created >= 20190101;
-- select user_id, sum(reward) from reward where user_id = 2;
-- select user_id, sum(reward) from reward where user_id = 3;
-- select user_id, sum(reward) from reward where user_id = 4;
-- select user_id, sum(reward) from reward where user_id = 5;

