# Writing our 1st Ruby Program!

## Sending a secret message using ROT-13.

### Basic Setup

Make sure you have Ruby installed. You need to be able to access irb, as well as run a Ruby program file.

To test the running of the program file:

* Open your text editor
* Type: ```puts "Hello World!"```
* Save the file as: ```hello_world.rb``` in a folder on your computer.
* Go into that folder in your command line, either Terminal or the Windows command prompt.
* Enter: ```ruby hello_world.rb```
* Did you see the Hello World! output?

### Defining our Cypher

You need to create a ROT-13 character set. This means, taking the normal alphabet and placing next to each normal letter position the letter that is 13 places forward of it, wrapping around when you pass "z".

This is the start:

    "a" => "n",
    "b" => "o",
    "c" => "p",
    "d" => "q",

### The Exercises

Create a Ruby program that answers these questions:

1. What is the encrypted result of "Hello World"?
2. What is the decrypted result of "anqn"?

### Building Our Program

