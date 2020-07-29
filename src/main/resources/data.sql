insert into users ( email , full_name , nickname , password ) values ('email1@email.com', 'name full 1', 'nick1', '1231');
insert into users ( email , full_name , nickname , password ) values ('email2@email.com', 'name full 2', 'nick2', '1232');
insert into users ( email , full_name , nickname , password ) values ('email3@email.com', 'name full 3', 'nick3', '1233');
insert into users ( email , full_name , nickname , password ) values ('email4@email.com', 'name full 4', 'nick4', '1234');
insert into users ( email , full_name , nickname , password ) values ('email5@email.com', 'name full 5', 'nick5', '1235');
insert into users ( email , full_name , nickname , password ) values ('email6@email.com', 'name full 6', 'nick6', '1236');
insert into users ( email , full_name , nickname , password ) values ('email7@email.com', 'name full 7', 'nick7', '1237');

insert into challenge ( name, slug) values ('challenge 1', 'slugcha1');
insert into challenge ( name, slug) values ('challenge 2', 'slugcha2');
insert into challenge ( name, slug) values ('challenge 3', 'slugcha3');
insert into challenge ( name, slug) values ('challenge 4', 'slugcha4');
insert into challenge ( name, slug) values ('challenge 5', 'slugcha5');

insert into submission ( score, user_id , challenge_id ) values (90, 1, 1);
insert into submission ( score, user_id , challenge_id ) values (90, 1, 2);
insert into submission ( score, user_id , challenge_id ) values (92, 3, 3);
insert into submission ( score, user_id , challenge_id ) values (93, 2, 3);
insert into submission ( score, user_id , challenge_id ) values (70, 3, 1);

insert into acceleration (name, slug, challenge_id) values ('acc1', 'aaa', 1);
insert into acceleration (name, slug, challenge_id) values ('acc2', '22222', 2);
insert into acceleration (name, slug, challenge_id) values ('acc3', '333', 3);
insert into acceleration (name, slug, challenge_id) values ('acc4', '444', 4);
insert into acceleration (name, slug, challenge_id) values ('acc5', '555', 1);

insert into company (name, slug) values ('company 1', 'c111');
insert into company (name, slug) values ('company 2', 'c222');
insert into company (name, slug) values ('company 3', 'c333');
insert into company (name, slug) values ('company 4', 'c444');

insert into candidate (user_id , company_id , acceleration_id , status ) values (1,1,1,1);
insert into candidate (user_id , company_id , acceleration_id , status ) values (1,1,2,1);
insert into candidate (user_id , company_id , acceleration_id , status ) values (2,3,4,1);
insert into candidate (user_id , company_id , acceleration_id , status ) values (2,4,3,1);
insert into candidate (user_id , company_id , acceleration_id , status ) values (4,1,3,1);
insert into candidate (user_id , company_id , acceleration_id , status ) values (3,1,1,1);