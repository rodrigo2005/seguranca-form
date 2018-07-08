create database seguranca;

use seguranca;
	
create table user(
id int primary key not null auto_increment,
email varchar(30) not null,
password varchar(32) not null);
 
create table role(
id int primary key not null,
name varchar(30) not null
);
 
create table user_role(
user_id int not null,
role_id int not null,
    PRIMARY KEY(user_id,role_id),
    FOREIGN KEY (user_id) REFERENCES user(id),
    FOREIGN KEY (role_id) REFERENCES role(id)
);


-- adicionar roles

INSERT INTO role(id,name) VALUES (1,'APLICATIVO-R');
 
INSERT INTO role(id,name) VALUES (2, 'APLICATIVO-X');

INSERT INTO role(id,name) VALUES (3,'APLICATIVO-Y');

-- adicionar usuario

INSERT INTO user (email,password)VALUES('user1@gmail.com','passwd1');
INSERT INTO user (email,password)VALUES('user2@gmail.com','passwd2');

-- adicionar relação entre user e role
 
INSERT INTO user_role(user_id,role_id)VALUES(1,3);
INSERT INTO user_role(user_id,role_id)VALUES(2,2);