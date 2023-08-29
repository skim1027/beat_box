# LinkedList

**Append Method**
- This method is used to add a node at the end of the list. 
- The method is creating a new node, and if there is no head, it will add the new node created as a head.
- If there is a head, now it needs to go through the while loop. 
  - The while loop is going to run until the current.next_node is nil. (aka while the current.next_node != nil)
  - While my current.next_node !=nil, I am assigning the current variable to be the current.next_variable.
    (ex. if my current is #<Node:0x0000000102ed76e8 @data="doop", @next_node=#<Node:0x0000000102ed7238 @data="deep", @next_node=nil>, my current is now being reassinged to #<Node:0x0000000102ed7238 @data="deep", @next_node=nil>).
  - The loop will continue until current.next_node is nil.

