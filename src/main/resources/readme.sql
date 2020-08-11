drop table people

create table people (
  id int(10) primary key auto_increment comment '编号',
  name varchar(20) comment '姓名',
  age int(3) comment '年龄'
) COMMENT'人员信息表';
insert into people values(default,'王五',23);
insert into people values(default,'赵六',31);