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
- create! and save! will through an error and make an error page, would then have to begin and rescue validation error
- example of customising a message:   validates :name, presence: { message: "Hello!" }

# Rails Associations and Nested Forms

Recipe - Ingredient 

ingredient belongs_to :recipe
recipe has_many :ingredients

Where do we see the association between objects?
when setting up db, recipe:belongs to vs recipe_id:integer
  schema will set up recipe_id column regardless
      t.index ["recipe_id"], name: "index_ingredients_on_recipe_id"
      using belongs_to makes querying faster because of how the table is organised
  needs associations macros has_many and belongs_to in models, this gives us methods; this association works because of the recipe_id column in the ingredients table
    the thing that belongs_to gets a method #recipe_build
- has_many, through: (used for setting up a many to many relationship)

- * In rails, if something belongs_to something else, it will NOT save to the database, unless it has the foreign_key filled in, because Rails treats belongs_to sort of like a validation