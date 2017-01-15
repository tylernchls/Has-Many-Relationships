drop database if exists has_many_blogs;

drop user if exists has_many_user;

create user has_many_user;

create database has_many_blogs with owner has_many_user;