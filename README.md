Introduction
============

This is a skeleton Sinatra application. It incorporates common gems and best practices to quickly start the building an API.

The idea was to be able to create a Sinatra application that could use ActiveRecord with PostgreSQL in an non-blocking fashion. I have many APIs that I have built where the overhead was just waiting for the database. Honestly this is a proof of concept and has not been used and benchmarked, yet.

Highlights
==========
* [Sinatra Synchrony](https://github.com/kyledrake/sinatra-synchrony) loads Sinatra with Fibers and EventMachine.
* [EM Postgres Adapter](https://github.com/leftbee/em-postgresql-adapter) loads ActiveRecord connection adapter to use Postgres in non-blocking mode.

