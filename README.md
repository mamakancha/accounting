# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation
Created table using the following commands : 
```
rails generate model Company name:string email:string password_digest:string
rails generate model FiscalYear year:integer company:references
rails generate model MonthlyReport month:integer fiscal_year:references
rails generate model Category name:string
rails generate model ExpenseRevenue amount:decimal category:references monthly_report:references
```


* Database initialization

* Generating Controllers
Either manually or `rails generate controller ExpenseRevenues --no-helper --no-assets --no-controller-specs --no-view-specs --no-tests`

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
