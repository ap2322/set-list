# set the database based on the current environment
database_name = "set-list-#{SetList.environment}"

# connect ActiveRecord with the current database
ActiveRecord::Base.establish_connection(
  :adapter  => "postgresql",
  :database => "db/#{database_name}",
)
