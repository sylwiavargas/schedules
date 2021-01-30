Intro to ActiveRecord
---

## SWBATs
- [ ] Implement ActiveRecord in a project
- [ ] Practice creating migrations for updating the database structure
- [ ] Explain how `rake` works and how to run rake tasks
- [ ] Distinguish between and define "model", "class", and "table"
- [ ] Practice with ActiveRecord::Base instance and class methods
- [ ] Perform persistent CRUD actions on one model using ActiveRecord

### Outline
- watch [lecture intro](https://youtu.be/OBTIgTf6Ozw)
- Demonstrate Mass Assignment
  - Mass Assignment is how AR works under the hood -- it is a way to dynamically/programatically assign arguments to attributes and create a record;
  - watch and code: [Mass Assignment 1 (9 min)](https://youtu.be/gCgDmuhtuuQ)
  - watch and code: [Mass Assignment 2 (8 min)](https://youtu.be/fk3HvZ6MZT0)
  - watch and code: [Mass Assignment 3 (1 min)](https://youtu.be/-ZpFScAi5hg)
- Review project setup
  - watch: [File Structure (15 min)](https://youtu.be/uEJ61QAK6G0)
  - add [faker gem](https://github.com/faker-ruby/faker) to your Gemfile -- you will use it later
- Show how to use `rake` tasks
  - create one rake task that will be specific to your app
  - use `rake -T` to check if your task is visible and run it
- Demonstrate how to work with migration files: `migrate` and `rollback`
  - watch and code: [ActiveRecord (46 min)](https://youtu.be/omlbOfDqZBY)
  - watch and code: [Seeds file and faker gem (10 min)](https://youtu.be/96QdM4rDEiU)
  - define: 
    - `active record`,
    - `migration` (as well as "to write a migration", to run a migration") 
    - `rollback`, 
    - `database`, `table`, `column`,
    - `logger`,
    - `schema`
    - `CRUD`
  - read [this part of the docs about different types of migrations](https://edgeguides.rubyonrails.org/active_record_migrations.html#using-the-change-method)
  - read [this super-helpful guide to column types](https://stackoverflow.com/a/22725797)
  - read about [ActiveRecord `where` method](https://api.rubyonrails.org/v6.1.1/classes/ActiveRecord/QueryMethods.html#method-i-where)
  - read this [comparison between `where`, `find` and `find_by`](https://stackoverflow.com/a/41337619)
- Write CRUD on a model using ActiveRecord
  - practice:
    - create migration for a `PlantParent` class; each PlantParent should be instantiated with the following attributes: `name` (string), `responsible` (boolean) and `age` (integer); run the migration and check if the changes are visible in the schema;
    - hook up the model;
    - in `db/seeds.rb` file create 10 instances of PlantParent using [faker gem](https://github.com/faker-ruby/faker) -- see that they have whole collections of book and movie characters, as well as random name generators;
    - in the `rake console` create an instance of the PlantParent and:
      - change the second PlantParent's name and third PlantParent's age;
      - find a PlantParent by a given id and delete their record;
      - find a PlantParent by a given attribute; 
      - see all the PlantParents;
      - see the last PlantParent;
  
## ActiveRecord CRUD Methods 

- **C: create**
  * `Model.new` - creates a new instance in local memory without persistence
  * `Model#save` - inserts or updates instance in db
  * `Model.create` - Model.new + Model#save
- **R: read**
  * `Model.all` - all instances
  * `Model.first` - instance with the lowest ID in the db
  * `Model.last` - instance with the highest ID in the db
  * `Model.find` - find one instance by id
  * `Model.find_by`(attribute: value) - can find one instance by attribute-value pair(s)
  * `Model.where`(attribute: value) - can find many instances by attribute-value pair(s)
- **U: update**
  * `Model#update` - takes a hash and updates an instance in db
- **D: delete**
  * `Model#destroy` - delete a row in the database
  * `Model.destroy_all` - delete all rows in a table