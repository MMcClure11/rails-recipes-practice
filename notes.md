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
-can run "rails routes --expanded" to get pretty version of routes in console

## URL Helper/Named Routes
What are the benefits?
-Dynamic - if we change the route, we will not need to change every single place that we are referencing the route
-cleaner and more readable
-no more interpolation
-route helpers translate directly into HTML-friendly paths. In other words, if you have any weird characters in your URLs, the route helpers will convert them so they can be read properly by browsers

# Rails Validations

- data before it goes into the database, any time we are dealing with our database we are using ActiveRecord
- set up in our models

When are these validations run?
- valid?/invalid? (not actually sending data to database, just checking if conditions valid)
- create (call save for us)
- update (call save for us)
- save