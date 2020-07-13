# Models in Rails and RESTful Routing

Models
-classes
-mapped to the database
-ActiveRecord

What do we set up in our Models?
-macros for our associations
-validations
-scope methods
-instance methods that aren't built in with the application

Migrations - ie setting up the Database
-connection to db is in database.yml as opposed to environment.rb in Sinatra

#RESTful Routing

-CONVENTION - rails intentionally makes it difficult to deviate from REST, but we can write our own routes
-Routes should be descriptive
-Map HTTP verbs to CRUD actions