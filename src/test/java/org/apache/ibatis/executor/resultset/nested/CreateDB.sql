--
--    Copyright 2009-2020 the original author or authors.
--
--    Licensed under the Apache License, Version 2.0 (the "License");
--    you may not use this file except in compliance with the License.
--    You may obtain a copy of the License at
--
--       http://www.apache.org/licenses/LICENSE-2.0
--
--    Unless required by applicable law or agreed to in writing, software
--    distributed under the License is distributed on an "AS IS" BASIS,
--    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--    See the License for the specific language governing permissions and
--    limitations under the License.
--

DROP TABLE subject
IF EXISTS;

DROP TABLE match1
IF EXISTS;

CREATE TABLE subject (
  id     INT NOT NULL,
  name   VARCHAR(20),
  pid     INT NOT NULL,
);

insert into subject (id, name, pid) values (1, 'zhangsan', 0);
insert into subject (id, name, pid) values (2, 'lisi', 1);
insert into subject (id, name, pid) values (3, 'wangwu', 1);

CREATE TABLE match1 (
  id        INT NOT NULL,
  user_id   INT,
  score     INT
);

insert into match1 (id, user_id, score) VALUES (1, 1, 1000);
insert into match1 (id, user_id, score) VALUES (2, 1, 300);
insert into match1 (id, user_id, score) VALUES (3, 2, 500);
insert into match1 (id, user_id, score) VALUES (4, 3, 500);
