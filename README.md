# Bookmark Manager

This week, you will build a web app that stores web bookmarks in a database.

## The project

You're going to build a bookmark manager.  A bookmark manager is a website to maintain a collection of bookmarks (URLs). You can use it to save a webpage you found useful. You can add tags to the webpages you saved to find them later. You can browse bookmarks other users have added. You can comment on the bookmarks.

## User stories

As a user
So that I can access my frequently visited websites 
I want to see a list of bookmarks

As a user
So that I can save a frequently visited website
I would like to add the site's address and title to bookmark manager

As a user
So I can save a new bookmark
I would like to add a bookamrk to the original list of bookmarks


## Database table setup
To create the database please do the following:
1. Connect to psql
2. Create the database using the psql command CREATE DATABASE bookmark_manager;
3. Connect to the database using the psql command \c bookmark_manager;
4. Run the query we have saved in the file 01_create_bookmarks_table.sql

## Database bookmark_manager_test setup
1. Connect to psql
2. Create the database using the psql command CREATE DATABASE "bookmark_manager_test";
3. Connect to the database using the psql command \c bookmark_manager_test;
4. Create a table using the command CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));