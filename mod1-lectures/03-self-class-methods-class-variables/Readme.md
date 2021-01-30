# Class & Methods

## LGs:
- [ ] Revise what we did yesterday: create a class and an instance with data (attributes) and instance methods (a behavior)
- [ ] Practice reading existing code base
- [ ] Create class methods
- [ ] Check what `self` is
- [ ] Call methods on the implicit or explicit `self`
- [ ] Explain the difference between `variable`, `@variable` and `@@variable`
- [ ] Learn one programming joke, see an example of recursion and stack overflow

## Practice reading existing code base
1. Read code in `run.rb` and answer this question:
- what are `attr_reader` and `attr_accessor` doing?
- how many instance variables is every instance holding? 
- how many instance methods each instance can perform?
2. Run the methods that are at the bottom of the file and answer these questions:
- which method is invoked incorrectly and why?
- why are we able to run `sit` if `@number_of_legs` does not have an `attr_reader`?

## Be able to check what `self` is
* What is `self`?
    * "`self` is a special variable that points to the object/class that "owns" the currently executing code."
* Let's check what `self` is in the `initialize` method

## Let's see the difference between the two:
```ruby
def who_am_i
    puts "I am #{self}"
end

def self.who_am_i
    puts "I am #{self}"
end
```
* how do we know what `self` is? Look where it's placed: if it's placed only inside a method body, `self` will be what you call the method on; if it's placed in the class (e.g. in the method name), `self` will denote the class;
    * if you want your method to act on the whole class -- name it beginning with `self` (e.g. `self.all`)
    * if you want your method to act on an instance -- you just need the method name (e.g. `bark`)

Now, will any of these work?
```ruby
def who_am_i
    puts "I am #{self.name}" #this is an example of explicit self
    puts "I am #{name}" #implicit self: name is actually a method given in attr_accessor that returns the instance variable @name
    puts "I am #{@name}" #no self is called in this case: it is just an instance variable
    puts "I am #{self.@name}" #this won't work because there's no method called "@name" not can there be as "@" is reserved for instance variables
end
```

## Call methods on the implicit or explicit `self`
* What is explicit self?
    * "Using `self` keyword use class/object properties"
* What is implicit self?
    * "If you call a method in the same object as the context without mentioning `self`, that's implicit self."
* Which one to use? It's your preference! 


## Create instance methods and class methods
* What is an **instance method**?
    * "An instance method provides functionality to one instance of a class. A method that we run on an instance"
* Create methods that display message about an instance (a dog)
```ruby
    def bark
        puts "woof"
    end
```
We invoke it by chaining it to the Dog variable: `chaos.bark`

* What is a **class method**?
    * How can we keep track of all the dogs we have created? For example:
    ```ruby
        dogs = []
    ```
    However, this is not efficient -- maybe we can find a better location for the dogs? 
    * Now, we need to store all our objects in one place. Let's create a class variable (`@@all`) that will become a box in which we can put all instance variables:
    ```ruby
        class Dog
            @@all = []
        end
    ```
    Let's think about this variable as if it were a big box for the instances:
    <img src="open-box.jpg" height="200px" width="auto" style="display:inline"  alt="a stock picture of an open box on the grass">
    * "A class method provides functionality to a class itself. A method that we run on a class and method's name start with self."
    * Let's create a method that when called on the class, will return the variable:
    ```ruby
        def self.all
            @@all
        end
    ```


## Be able to add each instance to a class variable
* Let's add each new dog to the box of all dogs:
```ruby
    def initialize(name, breed)
        @name = name
        @breed = breed
        @@all << self
    end
```
Now, after we've run this method a couple of times, we will have a couple of instances in that array:
    <img src="box-of-puppies.jpg" height="200px" width="auto" style="display:inline"  alt="a picture of box with cute puppies">

```ruby
    Dog.all
# => [#<Dog:0x00007fad90835500 @breed="bone", @name="chaos">,#<Dog:0x00007fad8e27f6f8 @breed="bone", @name="Mitzi">,#<Dog:0x00007fad8e3963e8 @breed="fish", @name="Jewel">,#<Dog:0x00007fad8f11cb70 @breed="snacks", @name="Chaos">]
```


## Variable vs instance variable vs class variable
- `variable` -> this is just standard locally-scoped variable that disappears as soon as the method encapsulating it runs; 
- `@variable` -> this is an instance variable containing its individual data; as long as the instance exists, the instance will carry this variable with itself (e.g. if it's a dog, think about its medallion on its collar) -- this data is available only to the instance;
- `@@variable` -> this is a class variable; it is used to e.g. store all the instances (think of the box with puppies); 

Read more about variables [here](https://medium.com/swlh/hitchhikers-guide-to-ruby-variables-1b4cf83d540c)
