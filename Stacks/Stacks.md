#Stacks

A Stack is another way of storing data.

A stack is like several dishes piled on top of each other.  You can only add or take away dishes to the top of the pile.

![Dishes Stack](http://www.dabillgh.com/wp-content/gallery/kitchen-and-crockery/DbillGH2343466.jpg)

A more traditional representation looks like:

![CS Stack](http://stanford.edu/class/archive/cs/cs106b/cs106b.1158/images/stack-figure.png)

##Last In First Out

Because we can only interact with the top of the stack, the last thing we put into the stack is the first thing that will come out.  This is called Last In First Out or LIFO.

In our dish stack above, the last dish that we put away will be the first one we pick back up when need to use another dish.

##Methods

A stacks has the following methods:

**push()** : Adds a new element to the top of the stack

**pop()** : Removes and returns the top element of the stack

**peek()** : Returns the top element of the stack without removing it

**isEmpty()** : Returns whether or not the stack has any elements inside of it

##Performance 

<details>
	<summary>Access an element</summary>
	O(n)
</details>	

<details>
	<summary>Find an element</summary>
	O(n)
</details>	

<details>
	<summary>Insert an element </summary>
	O(1)
</details>	

<details>
	<summary>Delete an element</summary>
	O(1)
</details>

##Use cases

1. Back button in a browser
2. Undo feature in a text editor
3. Backtracking

![Maze](https://www.cs.cmu.edu/~adamchik/15-121/lectures/Stacks%20and%20Queues/pix/maze.bmp)


##Implementations

We can implement a stack two different ways.

1. Using an array
2. Using a linked list

This illustrates the difference between an *abstract data type* and a *data structure*

An **abstract data type** speaks only to the conceptual behavior and not to the specific implementation.

A **data structure** is talking about how information is actually stored in memory.

More reading: [Stack Overflow](http://stackoverflow.com/questions/13965757/what-is-the-difference-between-an-abstract-data-typeadt-and-a-data-structure)

##Implement a stack using an array

See playground

##Implement a stack using a linked list

See playground
