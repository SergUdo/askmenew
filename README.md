# README

## ¿Спроси вопрос?


## Description

Social networking site where users create profiles and can send each other questions. Anonymous questions are also possible.

reCAPTCHA is used to protect against spam.

Implemented in Ruby 2.6.5, Rails 6.0.2.

Language: Russian.

## Launching

Download or clone repo. Use bundler

```
$ bundle install
```

Create database

```
$ rails db:create
```

Run database migrations

```
$ rails db:migrate
```

You have to assign values to the environment variables RECAPTCHA_SITE_KEY and RECAPTCHA_SECRET_KEY. See .env.example for this purpose (Note: .env is ignored by Git as default).

For Rails server starting, type

```
$ rails s
```

Else visit to

https://askmenew.herokuapp.com/
