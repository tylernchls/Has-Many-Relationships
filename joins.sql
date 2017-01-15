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

-- query 7
select comments.*, posts.title as post_title
  from comments
    inner join posts on comments.posts_id = posts.id;

-- query 8?
select posts.title as post_title, posts.url as post_url , comments.body as comment_body
  from posts
    inner join comments on comments.posts_id = posts.id
      where posts.created_at < 'January 1, 2015';

-- query 9
select posts.title as post_title, posts.url as post_url , comments.body as comment_body
  from posts
    inner join comments on comments.posts_id = posts.id
      where posts.created_at > 'January 1, 2015';

-- query 10
select posts.title as post_title, posts.url as post_url , comments.body as comment_body
  from posts
    inner join comments on comments.posts_id = posts.id
      where comments.body like '%USB%';

-- query 11
select posts.title as post_title, users.first_name, users.last_name, comments.body as comment_body
  from users
    inner join posts on posts.users_id = users.id
      inner join comments on comments.posts_id = posts.id
        where comments.body like '%matrix%';

-- query 12
select users.first_name, users.last_name, comments.body as comment_body, posts.content
  from users
    inner join posts on posts.users_id = users.id
      inner join comments on comments.posts_id = posts.id
        where comments.body like '%SSL%' and posts.content like '%dolorum%';

-- query 13
select users.first_name as post_author_first_name,
  users.last_name as post_author_last_name,
  posts.title as post_title, users.username as comment_author_username,
  comments.body as comment_body
    from users
    inner join posts on posts.users_id = users.id
      inner join comments on comments.posts_id = posts.id
        where (comments.body like '%SSL%' or comments.body like '%firewall%')
         and posts.content like '%nemo%';
