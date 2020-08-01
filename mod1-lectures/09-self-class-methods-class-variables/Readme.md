# Class & Methods

## LGs:
- [ ] Create instance methods and class methods
- [ ] Call methods on the implicit or explicit self
- [ ] Explain the need for variable scope and why it's important to not utilize global variables

## Create instance methods and class methods
* What is an instance method?
    * "An instance method provides functionality to one instance of a class. A method that we run on an instance"
* Create methods that display message about a pet
    * pet1.display_info
* What is a class method?
    * "A class method provides functionality to a class itself. A method that we run on a class and method's name start with self."
* Create a class method that puts information about a class

## Call methods on the implicit or explicit self
* What is self?
    * "Self is a special variable that points to the object/class that "owns" the currently executing code."
* What is implicit self?
    * "If you call a method in the same object as the context without mentioning 'self', that's implicite self*."
* What is explicit self?
    * "Using self keyword use class/object properties"

### Task: Create a class method which puts "Hi I am from class method!"
* Are you using explicit self to create class method or implicit self?
    * Your options are:
        * Implicit
        * Explicit
        * I don't know


## Explain the need for variable scope and why it's important to not utilize global variables
* Class variable
* Instance Variable
* Class vs Instance variable
* why it's important to not utilize global variables 
    * “Un-ruby”
    * So why is this "un-Ruby" and why don't you see global variables very often? Put simply, it breaks encapsulation. If any one class or method can modify the state of the global variables at will with no interface layer, any other classes or methods that rely on that global variable may behave in an unexpected and undesirable manner.

