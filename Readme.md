From the Turing School tutorial [Intro to ActiveRecord in Sinatra](https://backend.turing.io/module2/lessons/intro_to_active_record_in_sinatra)

Setup:
* `git clone` and `bundle install`
* Create db with `rake db:create`
* Run db migrations with `rake db:migrate` and seed the db with `rake db:seed`

Tux:
use the terminal command `tux` or `bundle exec tux` to take a look at the development database now using ActiveRecord commands like `Song.all`

Test setup:
* Run TEST ENVIORNMENT db setup with `RACK_ENV=test bundle exec rake db:{migrate,seed}`
* In the terminal run `bundle exec rspec` to see if your tests are looking at a now migrated db

More Info:
Development
1. `bundle install`
1. Create a database by running `psql -d postgres -f scripts/create_databases.sql`
1. Run the migrations in the development database using `rake db:migrate`. If you would
like to migrate to a specific version you can do so using this rake task. Run `rake -T` for
details.
1. Run the migrations in the testing database using `RACK_ENV=test rake db:migrate`. 
1. `rerun rackup`
    * running rerun will reload app when file changes are detected
1. Run tests using `rspec`. The tests will clean up the database before each test run.

Migrations on Heroku
To run the migrations on heroku, run `heroku run 'rake db:migrate'`. If you
do not have a Heroku configuration variable named DATABASE_URL, then you will need to create one.
