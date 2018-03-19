Portfolio App
=============

This project is an example app for Ruby on Rails.

![homepage](/public/homepage.png "homepage")

## Requirements

- Ruby version: `2.4.1`
- Rails version: `5.1.5`
- Postgresql: `9.6.3`

## Installation

> If you are using rvm, you can create a gemset for the project:
> `rvm use 2.4.1@portafolio_app`

Install dependencies
```
$ bundle install
```
> You need bundler in order to run this command, you can install with: `gem install bundler`

## Database

In order to create the database:
```
$ rails db:create
$ rails db:migrate
```

To populate with the initial data of the app:
```
$ rails db:seed
```

> Don't forget to run the instance of postgresql before this steep.


## Run

To run the application

```
$ rails server
```

Open your web browser and go to `http://localhost:3000`

> For demonstration purposes only:
>
> username: administrator
>
> password: 123456

## License

Copyright (C) Diego Camacho (2018)

Licensed under the [Apache License](http://www.apache.org/licenses/LICENSE-2.0), Version 2.0
