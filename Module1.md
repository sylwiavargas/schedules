# Mod 1 Instruction and Schedule for 071220: The Code Benders

## Table of contents
- [Mod1 Expectations](#mod1-expectations)
- [Week 1 Schedule](#week-1-schedule)
    - [W1 Monday](#w1-monday)
    - [W1 Tuesday](#w1-tuesday)
    - [W1 Wednesday](#w1-wednesday)
    - [W1 Thursday](#w1-thursday)
    - [W1 Friday](#w1-friday)
- [Code Challenge Rubric]()

---

## Mod1 Expectations
<link rel="stylesheet" type="text/css" media="all" href="schedules_stylesheet.css" />
Welcome to Module 1, where we will expand and deepen your understanding of Ruby. In the next three weeks, you should become more comfortable with writing Ruby in Object Oriented paradigm, combine it with a database and finally, create your own CLI. Please don't panic -- we will guide you through this process. 

In order to take most of this mod, please take these pieces of advice to heart:
- do your labs and make sure to at least skim the priority ones before the lecture;
- if anything is unclear, recognize it early and act on it: verbalize a question, google it, ask a peer or on [the questions channel](https://flatiron-school.slack.com/archives/C018TV7P7UG), ask a coach (in this order);
- check yourself for understanding -- in the schedule section you will find tasks/questions that help you self-check.

One thing to remember is that Ruby was designed to make your life easier. Now, because you don't have much experience with other programming languages, it may be difficult at times to trust that this is the best it gets but please take the best practices I share in the lecture to heart. It will all make sense. 

Lastly, a point that often frustrates students is that we first learn how something works under the hood, then only learn that Ruby has a handy-dandy tool/abstracted method for that, and then we learn that there's even more ✨ magic ✨ to it. "Why couldn't we just learn the magic?", we often hear. Well, think about it this way: 
- 🎂 you may just go to the bakery and buy **a ready-made Red Velvet cake**. Sure, eeveryone will be happy. However, does this make you a good pastry chef? No. 
- 🥣 Okay, so you can go to a store and buy **a cake mix** and you make it at home. That's better, you can customize it a bit. 
- 🥚 However, the true chef would **make Red Velvet cake from scratch**: using eggs, (gluten-free or standard) flour and other ingredients, control sugar measurements and the ultimate shape and height of the cake.

Same with Ruby and software development: you could just skip a few steps and get right to the magic but if you ever wanted to customize the magic, you need to know how it's working. 

In order to not leave you feeling tricked, I will gradually fill out this table marking how topics relate to each other:

<table>
<tr>
    <td style="text-align:center" width="150px"> 🥚 </td>
    <td style="text-align:center" width="150px"> 🥣 </td>
    <td style="text-align:center" width="150px"> 🎂 </td>
</tr>
<tr>
    <td style="text-align:center" width="150px"> <code>def name=(name)</code> </td>
    <td style="text-align:center" width="150px"> ? </td>
    <td style="text-align:center" width="150px"> ? </td>
</tr>
<tr>
    <td style="text-align:center" width="150px"> <code>def name</code> </td>
    <td style="text-align:center" width="150px"> ? </td>
    <td style="text-align:center" width="150px"> ? </td>
</tr>
</table>

Have a question? [Ask us!](https://flatiron-school.slack.com/archives/C018TV7P7UG)

---
## Week 1 Schedule

Week one of every module is designated for you to get exposure to different topics that you will consolidate over the following weekend and the days before the code challenge. In Mod1Week1 you will:
- write your own classes,
- create your own methods for strings,
- use getter and setter methods for attributes,
- explain what `self` is to each other,
- connect two (or more!) classes together,
- use `map`, `find`, `select` and `each` on instances of classes.

<p style="margin-left:20%">👾 👾 👾 👾 👾 👾 👾 👾 👾 👾 👾 👾 👾 👾 </p> 
### W1 Monday

| Time | Activity |
| - | - |
|9:00 - 9:30| Take attendance on Slack |
|9:00 - 10:00| Day Labs: Introduction To Object-Orientation In Ruby|
|10:00 - 11:00| Workshop: Growth Mindset ([link](https://us02web.zoom.us/j/8326679493?pwd=c0dGSWFPaHlTV0tGNW5HVHNwdDdKZz09))|
|11:15 - 12:00| Lecture: Intro to Object-Oriented Programming in Ruby|
|12:00 - 12:30| Day Labs: Introduction To Object-Orientation In Ruby|
|12:30 - 1:30| Lunch break|
|1:30 - 2:30| Day Labs: Introduction To Object-Orientation In Ruby|
|2:30 - 2:15| Lecture: classes, instances and attributes|
|2:15 - 5:30| Homework Labs |
|5:30 - 6:00| Stand Down |

#### Self-check questions
- What are objects in Ruby? What is "behavior" and "data"?
- What are "getter" and "setter" methods? How are they different? Why do we need them? What is the danger of mistaking them?
- If I create two instances of a Dog class with exactly same attributes, will they be the same attribute?

#### Day labs list
Introduction To Object-Orientation In Ruby:
- **Intro To Classes And Instances** ⭐️
- **Classes And Instances Lab** ⭐️
- **Instance Methods** ⭐️
- **Instance Methods Lab** ⭐️
- **Instance Variables** ⭐️
- **Object Initialization** ⭐️
- **Object Initialization Lab** ⭐️
- Variables And Scope Quiz
- **Object Attributes** ⭐️
- **Object Attributes Lab** ⭐️
- Object Accessors
- **Meowing Cat** ⭐️
- OO Email Parser
- **Ruby Object Orientation Fundamentals Quiz** ⭐️
- **Object-Orientation In Ruby Bookend** ⭐️

#### Homework Labs
Topics In OO - Building Complex Class Objects In Ruby
- Introduction To Building Complex Class Objects In Ruby
- OO Basics
- OO School Domain
- OO Design
- Building Complex Class Objects In Ruby Quiz
- Building Complex Class Objects In Ruby Bookend

Topics In OO - Self In Ruby
- **Introduction To Self In Ruby** ⭐️
- The Fundamentals Of Self
- **OO Cash Register** ⭐️
- OO Counting Sentences
- **Self Quiz** ⭐️
- **Self Bookend** ⭐️

<p style="margin-left:20%">👾 👾 👾 👾 👾 👾 👾 👾 👾 👾 👾 👾 👾 👾 </p> 
### W1 Tuesday

| Time | Activity |
| - | - |
|9:00 - 9:30| Take attendance on Slack |
|9:00 - 10:00| Day Labs|
|10:00 - 11:00| Lecture: self, class variables and class methods|
|11:05 - 11:35| Discussion Questions: Object Orientation in Ruby|
|11:35 - 12:30| Day Labs|
|12:30 - 1:30| Lunch break|
|1:30 - 1:45| Pairing Contract |
|1:45 - 4:00| Pairing Lab: OO Person|
|4:00 - 4:15| Feedback form + feedbacking your partner |
|4:00 - 6:00| Homework Labs |

#### Self-check questions
- How do I recognize a class variable? How do I recognize an instance variable? 
- How do I write a class method? And instance method?
- What is `self`? How do I know if the `self` will be a class or an instance?
- How can I check what `self` denotes?
- How can I store all instances of the same class? 

#### Day labs list
Topics In OO - Class Variables And Methods In Ruby
- Introduction To Class Variables And Methods In Ruby
- **Class Variables And Methods** ⭐️
- **Remembering Objects** ⭐️
- **Class Variables And Methods Lab** ⭐️
- OO Basics With Class Constants
- Private Methods
- **Class Variables And Methods Quiz** ⭐️
- **Class Variables And Methods Bookend** ⭐️

Topics In OO - Advanced Class Methods In Ruby
- Introduction To Advanced Class Methods In Ruby
- **Advanced Class Methods** ⭐️
- Advanced Class Methods Lab
- **Puppy Lab** ⭐️
- **Advanced Class Methods Quiz** ⭐️
- **Advanced Class Methods Bookend** ⭐️

#### Homework Labs
Topics In OO - Object Relationships In Ruby
- **Introduction To Object Relationships In Ruby** ⭐️
- Basics Of Object Relationships
- **Belongs To Object Lab** ⭐️
- **Has Many Object** ⭐️
- **Has Many Object Lab** ⭐️
- Collaborating Objects
- Collaborating Objects Lab

<p style="margin-left:20%">👾 👾 👾 👾 👾 👾 👾 👾 👾 👾 👾 👾 👾 👾 </p> 
### W1 Wednesday

| Time | Activity |
| - | - |
|9:00 - 9:30| Take attendance on Slack |
|9:00 - 10:00| Day Labs|
|10:00 - 11:00| Lecture: Ruby relations (one-to-many)|
|11:05 - 11:35| Discussion Questions: Self|
|11:35 - 12:30| Day Labs|
|12:30 - 1:30| Lunch break|
|1:30 - 3:30 | Pairing lab: OO My pets |
|3:30 - 6:00| Homework Labs |

#### Self-check questions
- 

#### Day labs list
- Catch up on previous labs

#### Homework Labs
- OO Banking
- **Has Many Objects Through** ⭐️
- **Has Many Objects Through Lab** ⭐️
- **Object Relationships Quiz** ⭐️
- **Object Relationships Bookend** ⭐️

<p style="margin-left:20%">👾 👾 👾 👾 👾 👾 👾 👾 👾 👾 👾 👾 👾 👾 </p> 
### W1 Thursday

| Time | Activity |
| - | - |
|9:00 - 9:30| Take attendance on Slack |
|9:00 - 10:00| Day Labs|
|10:00 - 11:00| Lecture: Ruby relations (many-to-many)|
|11:05 - 12:30| Discussion Questions: Ruby Collections and Classes Group|
|12:30 - 1:30| Lunch break|
|1:30 - 4:00| Pairing Lab: OO Boating School|
|4:00 - 6:00| Homework Labs |

#### Self-check questions
- 

#### Day labs list
- Catch up on previous labs

#### Homework Labs
Additional Practice: Object Oriented Ruby (Practice labs for Code Challenge)
- **OO Art Gallery** ⭐️
- **Animal Zoo** ⭐️
- **OO Challenge Relationships Practice(all easy ones)** ⭐️
- OO Has Many Through Template

<p style="margin-left:20%">👾 👾 👾 👾 👾 👾 👾 👾 👾 👾 👾 👾 👾 👾 </p>

### W1 Friday

| Time | Activity |
| - | - |
|9:00 - 9:30| Take attendance on Slack |
|9:00 - 10:00| Day Labs|
|10:00 - 11:00| Lecture: Boating School Review|
|11:05 - 12:30| AMA: Mod5 folks|
|12:30 - 1:30| Lunch break|
|1:30 - 3:30| Small group review: OO Kickstarter |
|3:45 - 4:45| Kahoot quiz |
|4:45 - 5:45| Feelings |


#### Self-check questions
- 

#### Day labs list
- Catch up on previous labs

#### Homework Labs
**TOP PRIORITY: Code Challenge Practice Labs** ⭐️⭐️⭐️
Metaprogramming In Ruby: all
Configuring Ruby Applications: all
Topics In OO - Object Inheritance In Ruby:
- Introduction To Object Inheritance In Ruby
- **Intro To Inheritance** ⭐️
- **Intro To Inheritance Lab** ⭐️
- Intro To Modules
- Intro To Modules Lab
- **Super** ⭐️
- **Super Lab** ⭐️
- **Object Inheritance Quiz** ⭐️
- **Object Inheritance Bookend** ⭐️

---