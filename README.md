# README

[![Maintainability][codeclimate-badge-maintainability]][codeclimate-maintainability] [![Test Coverage][codeclimate-badge-coverage]][codeclimate-coverage] [![Build Status][travis-badge]][travis]

## About this project

This project is the Back-end and should be work together with [sample_tracking](https://github.com/marcelotoledo5000/sample_tracking).

Is a Rails application to management Contacts and Data Tracking captured from another app (sample_tracking).

It should list all created Contacts and Data Tracking received bye REST API. This API allows receiving, via POST, both the Contacts and Data Tracking from other sites that using the [libTracking.js](https://github.com/marcelotoledo5000/sample_tracking/blob/master/public/assets/js/libTracking.js).

## Technical Informations and dependencies

* The Ruby language - version 2.6.0
* The Rails gem     - version 5.2.3
* RSpec             - version 3.8.2
* Rubocop           - version 0.67.2
* PostgreSQL        - version 10
* Docker            - version 18.09.4
* Docker Compose    - version 1.24.0

## To use

Clone the project:

``` Shell
git clone git@github.com:marcelotoledo5000/ContactList.git
cd ContactList
```

Needs to update `config/database.yml` to use in:

``` Yaml
host: localhost   # when using localhost
```

OR

``` Yaml
host: db          # when using docker
```

### With Docker

``` Shell
script/setup    # => development bootstrap, preparing containers
script/server   # => starts server
script/console  # => starts console
script/test     # => running tests
```

### Running Local

System dependencies:

* Install and configure the database: [Postgresql-10](https://www.postgresql.org/download/)

### To run app

To see the application in action, starts the rails server to able [http://localhost:3000/](http://localhost:3000.)

[codeclimate-badge-maintainability]: https://api.codeclimate.com/v1/badges/6c7b7281c2b791bb3b95/maintainability
[codeclimate-maintainability]: https://codeclimate.com/github/marcelotoledo5000/ContactList/maintainability

[codeclimate-badge-coverage]: https://api.codeclimate.com/v1/badges/6c7b7281c2b791bb3b95/test_coverage
[codeclimate-coverage]: https://codeclimate.com/github/marcelotoledo5000/ContactList/test_coverage

[travis-badge]: https://travis-ci.com/marcelotoledo5000/ContactList.svg?branch=master
[travis]: https://travis-ci.com/marcelotoledo5000/ContactList
