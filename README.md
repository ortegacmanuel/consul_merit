# ConsulMerit

CONSULMerit adds reputation behavior to CONSUL citizen participation software in the form of Badges and Points/Social coins.

# Installation

1. Add `gem 'merit'` to your `Gemfile`
2. Run `rails g merit:install`. This creates several migrations.
3. Run `rails g merit MODEL_NAME` (e.g. `user`). This creates a migration and adds `has_merit` to MODEL_NAME.
4. Run `rake db:migrate`
5. Define badges in `config/initializers/merit.rb`. You can also define ORM:
   `:active_record` (default) or `:mongoid`.
6. Configure reputation rules for your application in `app/models/merit/*`
