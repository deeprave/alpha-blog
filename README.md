# README

Building a rails 6.x example app TDD style

* Ruby version
  - ruby 2.7.1 or later
* System dependencies
  - Gemfile, summary:
    - standard gems for a v6 rails app
    - add figaro gem for env config
    - add rails-rspec gem for test support
    - add rails-controller-testing gem for rails controller tests
* Configuration
  - Using figaro env configuration, using (not commited) `config/application.yml` or env variables
```
  AB_DATABASE_USER: abuser
  AB_DATABASE_PASSWORD: <elided, same as below>
  AB_DATABASE_HOST: localhost
  AB_DATABASE_PORT: "5432"
  AB_DATABASE_MSGLEVEL: notice
```
* Database creation (postgresql) via SQL script:
  - The database may be run out of docker or on current host (or change host above)
```
  create role abadmin createdb createrole;
  create user abuser createdb inherit password '<elided, same as above>';
  grant abadmin to abuser;
  alter role abadmin set client_encoding to 'utf8';
  alter role abadmin set default_transaction_isolation to 'read committed';
  alter role abadmin set timezone to 'UTC';
```
* Database initialization
```
  rake db:create
  rake db:migrate
```
* How to run the test suite
```
  rake spec
```
* Services (job queues, cache servers, search engines, etc.)
```
  not yet
```
* Deployment instructions
```
  not yet
 ```
