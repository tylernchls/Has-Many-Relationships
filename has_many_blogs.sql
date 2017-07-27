drop database if exists has_many_blogs;

drop user if exists has_many_user;

create user has_many_user;

create database has_many_blogs with owner has_many_user;

\c has_many_blogs has_many_user

drop table if exists comments;

drop table if exists posts;

drop table if exists users;

create table users (
  id serial not null primary key,
  username character varying(90) not null,
  first_name character varying(90),
  last_name character varying(90),
  created_at timestamp not null default now(),
  updated_at timestamp not null default now()
);

create table posts (
  id serial not null primary key,
  title character varying(180),
  url character varying(510),
  content text,
  created_at timestamp not null default now(),
  updated_at timestamp not null default now(),
  users_id integer references users(id) not null
);

create table comments (
  id serial not null primary key,
  body character varying(510),
  created_at timestamp not null default now(),
  updated_at timestamp not null default now(),
  users_id integer references users(id) not null,
  posts_id integer references posts(id) not null
);

\i scripts/blog_data.sql