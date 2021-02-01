# Mod 1 Instruction and Schedule for 020121 

## Table of contents
- [Phase 1 Expectations](#phase-1-expectations)
- [Week 1 Description](#week-1)
    - [W1 Monday](#w1-monday)
    - [W1 Tuesday](#w1-tuesday)
    - [W1 Wednesday](#w1-wednesday)
    - [W1 Thursday](#w1-thursday)
    - [W1 Friday](#w1-friday)
    - [W1 Weekend](#w1-weekend)
- [Week 2 Description](#week-2)
    - [W2 Monday](#w2-monday)
    - [W2 Tuesday](#w2-tuesday)
    - [W2 Wednesday](#w2-wednesday)
    - [W2 Thursday](#w2-thursday)
    - [W2 Friday](#w2-friday)
    - [W2 Weekend](#w2-weekend)
- [Week 3 Description](#week-3)
    - [Project Week Roadmap](#project-week-roadmap)

---

## Phase 1 Expectations
Welcome to Phase 1, where we will expand and deepen your understanding of Ruby. In the next three weeks, you should become more comfortable with writing Ruby in Object Oriented paradigm, combine it with a database and finally, create your own CLI. Please don't panic -- I will guide you through this process. 

In order to take most of this mod, please take these pieces of advice to heart:
- do your labs and make sure to at least skim the priority ones before the lecture;
- if anything is unclear, recognize it early and act on it: verbalize a question, google it, ask a peer or on the slack channel, come to the office hours;
- do the homeworks and post your answer on Canvas;
- check yourself for understanding -- you will find tasks/questions in the schedule section that help you self-check.

One thing to remember is that **Ruby was designed to make your life easier**. Now, because you don't have much experience with other programming languages, it may be difficult at times to trust that this is the best it gets but please take the best practices I share in the lecture to heart. It will all make sense. 

Lastly, a point that often frustrates students is that we first learn how something works under the hood (or, do it the long way), then learn that Ruby has a handy-dandy tool/abstracted method to do it all in just one line, and only then we learn that there's even more ✨ magic ✨ to use. "Why couldn't we just learn the magic?", I often hear. Well, think about it this way: 
- 🎂 you may just go to the bakery and buy **a ready-made Red Velvet cake**. Sure, everyone will be happy. However, does this make you a good pastry chef? No. 
- 🥣 Okay, so you can go to a store and buy **a cake mix** and you bake it at home. You can customize it a bit and while that doesn't make you a chef, you certainly know at least how the oven works. 
- 🥚 However, the true chef would **make a Red Velvet cake from scratch**: using eggs, flour (gluten-free or wholewheat) and other ingredients, control sugar measurements and the ultimate shape and height of the cake.

Same with Ruby and software development: you could just skip a few steps and get right to the magic but if you ever wanted to customize the magic, you need to know how it's working. 

In order to not leave you feeling tricked, I will gradually fill out this table marking how topics relate to each other so you see how what you learn actually has a purpose:

<table>
<tr>
    <td style="text-align:center" width="150px"> 🥚 </td>
    <td style="text-align:center" width="150px"> 🥣 </td>
    <td style="text-align:center" width="150px"> 🎂 </td>
</tr>
<tr>
    <td style="text-align:center" width="150px"> <code>def name=(name)</code> </td>
    <td style="text-align:center" width="150px"> <code>attr_writer</code> </td>
    <td style="text-align:center" width="150px"> 🦸🏻‍♀️ ActiveRecord 🦸🏻‍♀️ </td>
</tr>
<tr>
    <td style="text-align:center" width="150px"> <code>def name</code> </td>
    <td style="text-align:center" width="150px"> <code>attr_reader</code> </td>
    <td style="text-align:center" width="150px"> 🦸🏻‍♀️ ActiveRecord 🦸🏻‍♀️  </td>
</tr>
<tr>
    <td style="text-align:center" width="150px"> <code>name</code> + <code>name=</code> </td>
    <td style="text-align:center" width="150px"> <code>attr_accessor</code> </td>
    <td style="text-align:center" width="150px"> 🦸🏻‍♀️ ActiveRecord 🦸🏻‍♀️  </td>
</tr>
<tr>
    <td style="text-align:center" width="150px"> <code>User.new() </code> </td>
    <td style="text-align:center" width="150px"> <code>User.new("Hasibul")</code> </td>
    <td style="text-align:center" width="150px"> <code>User.new(username: "Hasibul")</code>  </td>
</tr>
<tr>
    <td style="text-align:center" width="150px"> - </td>
    <td style="text-align:center" width="150px"> <code>User.all</code>, that needs to be written out manually</td>
    <td style="text-align:center" width="150px"> <code>User.all </code> <br>given to us by <br> 🦸🏻‍♀️ ActiveRecord 🦸🏻‍♀️ </td>
</tr>
<tr>
    <td style="text-align:center" width="150px"> - </td>
    <td style="text-align:center" width="150px"> <code>User.all.find</code>, that needs <code>User.all</code> to be written out</td>
    <td style="text-align:center" width="150px"> <code>User.find </code> <br>given to us by <br> 🦸🏻‍♀️ ActiveRecord 🦸🏻‍♀️ </td>
</tr>
<tr>
    <td style="text-align:center" width="150px"> - </td>
    <td style="text-align:center" width="150px"> <code>User#appointments</code>, that needs to be written out manually</td>
    <td style="text-align:center" width="150px"> <code>?</code>  </td>
</tr>
<tr>
    <td style="text-align:center" width="150px"> - </td>
    <td style="text-align:center" width="150px"> <code>User#doctors</code>, that needs to be written out manually</td>
    <td style="text-align:center" width="150px"> <code>?</code>  </td>
</tr>
</table>

Have a question? [Ask us!](https://flatiron-school.slack.com/archives/C018TV7P7UG)

---

## Week 1

Week one of every module is designated for you to get exposure to different topics that you will consolidate over the following weekend and the days before the code challenge and then practice further in the project week. Usually, you will get **A LOT** of labs in the first days -- please know you will have time to finish them by the end of the week and focus initially on the priority ones. In Phase 1 Week 1 you should:
- become VERY comfortable with using `binding.pry`,
- use `map`, `find`, `select` and `each` on instances of classes and be able to explain this choice and guess what the datatype the return value will be,
- write your own classes,
- use getter and setter methods for attributes,
- add instance and class methods,
- be able to check what `self` denotes,
- connect two (or more!) classes together,
- draw domain models,
- become aware of how stress manifests for you in this program setting and find ways to deal with it (or reach out to your instructors for help),
- be proficiently using Slack channels, DMs, emoji responses and threads to seek help, offer support and build commmunity.

These are the skills you need to prioritize when studying this week. Please take every opportunity to write code. If you're lacking prompts from labs, just look around yourself and write a code description of your room (your room being one class, with other classes being furniture, people, plants, etc. -- add aspecific behaviors and interdependencies, etc.).

---

### W1 Monday

#### Self-check questions for "Lecture: Intro to OO Ruby"
   - What are objects in Ruby? What is "behavior" and "data"?
   - How do I write a class in Ruby?
   - What is a class and instance? 
   - How do I create a new instance of the class?
   - How can I hack Ruby classes (e.g. String)? Why would I? 

#### Post-Lecture Homework: 
- In the `housemate.rb` create a `Housemate` class and add four behaviors to its instances; in the same file, create two instances of the Housemate class and check using `binding.pry` if they do have the behaviors;
- 💯 Extend the `String` class (monkey-patching) to include a new exciting method; you can test it in `irb` by pasting the code containing the class with the method and then invoking it

#### Labs
Start here:
- **Welcome to Phase 1** ⭐️
- **What Makes an effective programmer?** ⭐️
- **Module Assessments** ⭐️

Introduction to Object-Orientation in Ruby:
- **Object Orientation** ⭐️
- **Classes And Instances** ⭐️
    - **Classes And Instances Lab Ruby** ⭐️
- **Instance Methods Ruby** ⭐️
    - **Instance Methods Lab Ruby** ⭐️
- **Instance Variables** ⭐️
- **Instantiating with `initialize`** ⭐️
    - **Ruby Object Initialize Lab** ⭐️
- **Object Attributes and Methods: A Deeper Dive** ⭐️
    - **Ruby Object Attributes Lab** ⭐️
- **Macros and Abstraction** ⭐️
- **Meowing Cat** ⭐️
- OO Email Parser
- Ruby Object Orientation Fundamentals Quiz
- Object-Orientation In Ruby Bookend

---

### W1 Tuesday

#### Self-check questions for "Lecture: classes, instances and attributes"
- What are "getter/reader" and "setter/writer" methods? How are they different? Why do we need them? What is the danger of mistaking them?
- What is the difference between `attr_reader`, `attr_writer` and `attr_accessor`? What do these macros do, really, under the hood? What is a macro?
- If I create two instances of a Dog class with exactly same attributes and compare them (using `==` or `.equal?`), will I see `true` or `false` as a return value?

#### Post-Lecture Homework:
- Building on the previous housemate homework, add some attributes to your housemate, decide which should be reader/accessors; add a comment explaining your decision

#### Labs
Topics in OO - Advanced Class Methods in Ruby
- Introduction To Building Complex Class Objects In Ruby
- **Object Orientation Basics** ⭐️
- **Principles of Object-Oriented Design** ⭐️
- Building Complex Class Objects In Ruby Quiz
- Building Complex Class Objects In Ruby Bookend

Topics In OO - Self In Ruby
- **Introduction To Self In Ruby** ⭐️
- **Ruby Self** ⭐️
- **OO Cash Register** ⭐️
- OO Counting Sentences
- **Self Quiz** ⭐️
- Self Bookend

Topics In OO - Class Variables And Methods In Ruby
- Introduction to Class Variables and Methods in Ruby
- **Class Variables and Class Methods** ⭐️
- **Ruby Object Remembrance** ⭐️
- **Ruby Class Variables And Class Methods Lab** ⭐️
- Object Orientation Basics With Class Constants
- Private Methods
- Class Variables And Methods Quiz
- Class Variables And Methods Bookend

---

### W1 Wednesday

#### Self-check questions for "Lecture: self, class variables and class methods"
- How do I recognize a class variable? How do I recognize an instance variable?
- How is an instance variable (`@name`) different from just a regular variable (`name`)?
- How do I write a class method? And instance method?
- What is `self`? How do I know if the `self` will denote a class or an instance?
- How can I check what `self` denotes?
- How can I store all instances of the same class? 

#### Labs
- Homework lab: Enumerables
- Pairing Lab: OO Person

Topics In OO - Advanced Class Methods In Ruby
- Introduction To Advanced Class Methods In Ruby
- **Ruby Advanced Class Methods** ⭐️
- **Puppy Lab - Remembering Class Instances** ⭐️
- **Advanced Class Methods Quiz** ⭐️
- Ruby Advanced Class Methods Conclusion

Topics In OO - Object Relationships In Ruby
- Introduction To Object Relationships In Ruby
- **Ruby Intro To Object Relationships: "Belongs To"** ⭐️
- **Ruby Objects Belong To Lab** ⭐️
- **Ruby Objects: The "Has-Many" Relationship** ⭐️
- **Ruby Objects Has Many Lab** ⭐️
- OO Banking

---

### W1 Thursday

#### Self-check questions for "Lecture: Ruby relationships (one-to-many)"
- What examples (at least three) are there for one-to-many relationship type?
- How do I draw Entity Relationship Diagram (ERD, or domain model) to represent this type of the relationship?
- What does Signle Source of Truth Principle mean?
- What steps do I need to do to connect two classes
- What is the naming convention for a class method and for an instance method?

#### Post-Lecture Homework:
- Create all the remaining deliverables that we did not cover in the lecture
- `Tweet.all_tweet_messages` -- returns an array of messages only (please use an appropriate enumerable method)
- `Tweet.longest_tweets` -- returns an array of three longest tweets
- `User.most_tweets` returns the instance of the user who has made the most tweets
- `User#tweet_messages_only` -- returns an array of messages only (please use an association method and an appropriate enumerable method)

#### Labs
- Pairing Lab: OO My Pets

Topics In OO - Object Relationships In Ruby
- **Ruby Object Relations: Has-Many-Through** ⭐️
- **Ruby Object Relations: Has-Many-Through Lab** ⭐️
- **Object Relationships Quiz** ⭐️
- Object Relationships Bookend

---


### W1 Friday

#### Self-check questions for "Lecture: Ruby relationships (many-to-many)"
- What examples (at least three) are there for many-to-many relationship type?
- How do I draw Entity Relationship Diagram (ERD, or domain model) to represent this type of the relationship?
- How many models do I need to represent the relationship between e.g. flights and passengers, where one passenger for sure has been on many flights and each flight clearly have many passengers? 
- Where should the data about the passengers "live"? Where should the data about the flights live? 
- Can I store same piece of data in two places? 

#### Labs
- OO Boating School
- Show&Tell Labs

---

### W1 Weekend

#### Self-check questions
- How am I feeling?
- What is my process when approaching a lab?
- How much time does a lab takes me? 
- Where am I losing time when doing a lab?
- How many times am I using `binding.pry` (the more, the better)?
- How many instances of seed data should I create for each model? (2-4 for each main model and at 4 for joiners; you should have different number of joiners for different models; some models should have no joiners at all)

#### Labs
**TOP PRIORITY: Code Challenge Practice Labs** ⭐️⭐️⭐️

---

## Week 2 Schedule

Week two of every module is usually marked by two very important events: a code challenge and the beginning of the project week. 
The days before the code challenge are calmer lab-wise. It is all about solidifying what you have learned so far, discovering new blank spots and asking more of the clarifying questions. Then, you have a code challenge and individual personalized feedback and a few days later you start the project week. 
In Phase 1 Week 2 you will:
- solidify what you learned in Phase 1 Week 1;
- write some SQL;
- set up your first databases and become more familiar with database design;
- become familiar with ActiveRecord design pattern and use ActiveRecord gem for database management;
- create non-trivial domain models;
- practice intermediate and advanced ActiveRecord features;
- get to know who your partner and deliverables are for the project week;

### W2 Monday

#### Self-check questions
- Can I explain what I am doing when writing code for a deliverable?

Phase 1 code challenge tests the following concepts and skills (and you have been practicing them since you started):
- **code structure and maintainability**: are your variables properly named? is your code indented? do you use helper methods or at least try to?
- **class vs instance**: how do we define a class (class Dog; end)? how do we instantiate an instance (initialize)? how do we define #instance and .class methods? how do we use @instance and @@class variables?
domain model: can you differentiate and properly draw different types of relationships (one-to-many and many-to-many)?
- **associations**: can you hook up all the models in many-to-many relationship? is it instinctive that a joiner is needed? and that the joiner needs to be instatiated with the instances of the two other models?
- **traversing the domain**: can you get the information from one end of the domain to the other (e.g. doctor.patients)? Do you know that you need to go through the joiner (first, find all the appointments that belong to the doctor, then take the patients from that array)?
- **enumerables**: do you know when to use map and select? do you know that find will return an instance and map/select will return the new array? do you know that you should not use each unless nothing else works?
- **self**: do you kinda know what self is and how to check it?
- **pry**: do you know what pry is and how/why/when to invoke pry inside a pry?
- **tools for dealing with being lost**: do you pseudocode? do you google?

#### Labs
- **TOP PRIORITY: Code Challenge Practice Labs ⭐️⭐️⭐️**

IF YOU ARE COMFORTABLE WITH THE MATERIAL SO FAR:
- Topics in OO - Object Inheritance in Ruby:
    - Code Along: An Intro to Inheritance
    - Modules and Mixins in Ruby
    - Refactoring with Modules
- Metaprogramming in Ruby: 
    - Keyword Arguments and Mass Assignment
    - Mass Assignment as Metaprogramming

---
### W2 Tuesday

#### Self-check questions for praciticing SQL
- What are primary keys? What are foreign keys? How are they related with one another?
- What is the purpose of SQL?
- Why do we need to use databases?
- How do we CRUD on rows of a table?

#### Labs
- Topics in OO - Object Inheritance in Ruby:
    - **Code Along: An Intro to Inheritance** ⭐️
    - Modules and Mixins in Ruby
    - Refactoring with Modules
- Metaprogramming in Ruby: 
    - **Keyword Arguments and Mass Assignment** ⭐️
    - **Mass Assignment as Metaprogramming** ⭐️
- Getting Started With SQL
    - Introduction To Getting Started With SQL
    - **Introduction To Structured Query Language** ⭐️
    - **Setting up SQLite** ⭐️
    - **SQL Database Basics** ⭐️
    - Databases and Text Editors
    - SQL Column Data Types
    - Inserting, Selecting, Updating, and Deleting Database Rows
    - Basic SQL Queries
    - Grouping and Sorting Data 
    - SQL Bear Organizer
    - SQL Aggregate Functions
    - SQL Quiz 
- Table Relations With SQL
    - **Edgar Codd And Table Relations** ⭐️
    - **Table Relations** ⭐️
    - SQL JOINS
    - **SQL Join Tables** ⭐️
    - SQL Crowdfunding Lab
    - SQL Complex Joins
    - Sql Relations Quiz
- Object-Relational Mapping
    - **Introduction To Object-Relational Mapping** ⭐️ 
    - **Object Relational Mapping** ⭐️ 
    - Using Active Record
- Introduction To Using Active Record
    - **Intro To Rake** ⭐️ 
    - **Let's Learn About Migrations** ⭐️ 

IF YOU ARE DONE, there’s this [amazing SQL practice thread that uses real-world data](https://dev.to/zchtodd/sql30-day-1-wildfires-2b02)

---
### W2 Wednesday

#### Self-Check questions for "Lecture: Intro to ActiveRecord"
- Why do we have a Seeds file? 
- Why do we have a Gemfile? 
- Why do we have a Rakefile?
- What is ActiveRecord?
- How does AR relate to SQL and Ruby?
- What is `rake console`?
- What's the difference between a model and a table?
- Can a database have many tables?
- What is meant by migration?
- What's the difference between `.new` and `.create`?
- How do I check if I saved an instance to the database?
- What does CRUD mean?
- What are examples of ActiveRecord methods associated with each of the CRUD actions? 

#### Self-Check questions for "Lecture: ActiveRecord Associations"
- How do I create a table?
- How do I add a column to a table?
- How do I change a table?
- How do I create an instance?
- How do I find an instance given an id or name?
- How do I update an instance?
- How do I update all instances at once?
- How do I delete an instance?
- How do I delete all instances at once?

#### Labs
tba

---
### W2 Thursday

#### Self-Check questions for "Lecture: ActiveRecord Associations"
- How do I associate two models? And three?
- What do `has_many` and `belongs_to` do under the hood? What do they return?
- Where is an association happening: in the database, or through the methods?
- What is the syntax of the has-many-through relationship in ActiveRecord?
    - What is `through:` in this syntax: `has_many :friends, through: :meetings`?
- How can I access all the instances associated with another model?

#### Self-Check questions for "Solo Lab: More Models"
- How many models is correct? When does it make sense to make something a separate model instead of an attribute?
- What are aliases?
- What are lifecycle methods? What's an example of a lifecycle method?


---
### W2 Friday

Your two main objectives today are:
- practice ActiveRecord and use the association methods whenever possible
- discuss the project ideas with your partner

---

## Week 3

As you enter Project Week, your main two goals are:
- practice ActiveRecord and become REALLY comfortable with it: it is more important that you are comfortable with migrations, database changes and querying a database than that you end up with a nice-looking CLI;
- nurture good pairing practices -- this is your chance to practice for the job interviews in the future;

### Project Week Roadmap
- Monday: get the project pitch approved; set up the database;
- Tuesday-Wednesday: meet your MVP;
- Thursday: add stretch goals;
- Friday: project presentations

### Self-pace Lectures for the week
- TTY::Prompt setup
- Ruby and the Internet

#### Labs for the Week
- Getting Data From Remote Sources
    - **Introduction To Getting Data From Remote Sources** ⭐️
    - **Sending GET Requests**  ⭐️
    - Working With APIs Code-Along
    - Accessing (Fake) Remote Data Lab
    - Getting Data From Remote Sources Quiz
    - Getting Data From Remote Sources Bookend
    - Additional Practice: Getting Data From Remote Sources
- **Introduction To Getting Data From Remote Sources - Additional Practice**  ⭐️
    - **Scraping**  ⭐️
    - Scraping Lab
    - Kickstarter Scraping Lab
    - Student Scraper
    - Review Of Object Orientation And Scraping

#### Additional Labs for the Curious Souls
- Additional Practice: Using Yield And Blocks
    - Introduction To Using Yield And Blocks - Additional Practice
    - Understanding Yield
    - My All
    - My Find
    - My Each
    - My Collect
    - My Select
    - Blocks Vs. Procs Vs. Lambdas
- Additional Practice: Regex
    - Introduction To Regex - Additional Practice
    - What Is A Pattern - Introduction To Regular Expressions
    - Regex Basics
    - Ruby Methods With Regex
    - Regex Lab