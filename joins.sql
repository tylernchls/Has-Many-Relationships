-- query 1
select * from users;

-- query 2
select *
  from posts
    where users_id = 100;

-- query 3
select first_name, last_name, posts.*
  from users
  inner join posts on posts.users_id = users.id
      where users_id = 200;

-- query 4
select posts.*, users.username
  from users
  inner join posts on posts.users_id = users.id
      where first_name = 'Norene' and last_name = 'Schmitt';

-- query 5
select posts.*, users.username
  from users
    inner join posts on posts.users_id = users.id
      where posts.created_at > 'January 1, 2015';

-- query 6
select title, content, users.username
  from users
    inner join posts on posts.users_id = users.id
      where users.created_at < 'January 1, 2015';




