## One to Many Relationships
---

### LGs:

* Implement one object to many objects relationship
  * One object _has many_ objects
  * One object _belongs to_ another object
* Demonstrate the concept of an Entity Relationship Diagram
* Practice passing custom objects as arguments to methods
* Demonstrate Single Source of Truth
* Infer type of method (class or instance) through naming conventions

### Outline

* Quick review of OOP:
  * we created classes
  * we created instances of classes using `initialize`
  * we created instance and class methods
  * we used `attr_` macros for getters and setters
  * we looked at `self`

### Define

What do the following mean in plain English? What do they mean in programming?

* Model
* Domain
* Domain modeling
* Relationships
  * One to many relationship
  * Many to many relationship

_Why do we care so much about codifying and being really specific about the terminology of has-many/belongs-to?_ The terms are very powerful because we can use the same idea to describe relationships across many different types of domains. The relationship between artist and song, is the same as book and author, user and tweets, etc.

* Schema
* Single Source of Truth
  * How can we start thinking about the data in our models?

### How to think about relationships
1. For every one (x), how many (y)? 
2. For every one (y), how many (x)?

### Deliverables

- [ ] Create a User class. The class should have these methods:
  - [ ] `User#initialize` takes a username and a bio
  - [ ] `User#username` returns a string for the username. _Should not_ be able to change after the user is created.
  - [ ] `User#bio` returns a short biography for the user. _Should_ be able to change after the user is created.
  - [ ] `User#tweets` returns an array of Tweet instances
  - [ ] `User#post_tweet` takes a message, creates a new tweet, and adds it to the user's tweet collection

- [ ] Create a Tweet class. The class should have these methods:
  - [ ] `Tweet#message` returns a string
  - [ ] `Tweet#user` returns an instance of the user class
  - [ ] `Tweet.all` returns all the Tweets created.
  - [ ] `Tweet#username` returns the username of the tweet's user

### Discussion Questions

- What is a one-many-relationship? How would we draw that in an ERD?
- What does Single Source of Truth mean?
- What is a model? Domain? Domain model?
- What is the relationship between a class and an instance?

### Homework
- Create all the remaining deliverables that we did not cover in the lecture
- `Tweet.all_tweet_messages` -- returns an array of messages only (please use an appropriate enumerable method)
- `Tweet.longest_tweets` -- returns an array of three longest tweets
- `User.most_tweets` returns the instance of the user who has made the most tweets
- `User#tweet_messages_only` -- returns an array of messages only (please use an association method and an appropriate enumerable method)