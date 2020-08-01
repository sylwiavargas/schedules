## Classes, Instances, Attributes

## Learning Goals:
- [ ] Pass arguments to `new` by defining an `initialize` method in class
- [ ] Define instance variable
- [ ] Define attribute readers and writers
- [ ] Use `attr_` macros instead of reader and writer methods

## Pass arguments to `new` by defining an `initialize` method in class
* Every dog needs some info:
    * breed
    * name 
    How we assign those values?

    ```ruby
    def initialize(name_argument, breed_argument)
        @name = name_argument
        @breed = breed_argument
    end
    ```
    Now, try getting only the name:
    ```ruby
        floofy = Dog.new("Floof", "corgi")
        puts floofy
        puts floofy.name
    ```

* How do we access these values?
    * Getter method allows us to only read the value
    ```ruby
    def breed
    @breed
    end
    ```

    * Setter/writer method allows us to overwrite the value;
    ```ruby
    def breed=(breed)
        @breed = breed
    end
    ```

    * What is `@breed`? //instance variable
    * Define instance variable
    * `floofy.breed = “maltese”`
    * `floofy.breed`

## Define attribute readers and writers
* if you want to have an access to an attribute but don't want to change its value later -> getter/reader method
* if you want to have an opportunity to change the attribute's value -> setter/writer method
* if you want to have both an access and an ability to change its value -> both

#### Define attribute readers and writers using attr_ macros
* Problem: dog1.breed is not returning dog’s breed.
* To read attributes: attr_reader
* To write attributes: attr_writer
* For reading & writing: attr_accessor

**TASK:**
* What is the difference between attr_reader, attr_writer and attr_accessor?