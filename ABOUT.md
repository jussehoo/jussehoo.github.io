## OBSOLETE: updated version in web editor folder

<img src="https://jussehoo.github.io/logo.png" alt="title" width=450 height=100 align=center />

Meanscript is a multi-platform scripting language, still on prototyping level.
It can be used for data saving and transfer, and programming as an interpreted programming language.
Data can be represented in both script (human-readable) and binary format.

<!-- This text is aimed for programmers, but some parts may be readable for others too. -->

Couple of examples: print text and define a recursive function that returns _n_ th Fibonacci number.

<pre>
print “Hello world!”`
</pre>		
<pre>
func int Fibonacci [int n] {
    if (n < 3) { return 1 }
    return (sum 
        (Fibonacci (n - 1))
        (Fibonacci (n - 2)))  
}
print (Fibonacci 7)
</pre>		


## Featuring

 * Application programming interface
    * **Meanscript compiler** translates script to bytecode (binary format)
    * Meanscript **interpreter** reads and executes bytecode by iterative, non-blocking execution
    * Read and write values from/to Meanscript variables and data structures
    * Call Meascript functions from your source code, or your callbacks from Meanscript.
 * Basic data types: integer, string, boolean.
 * Define your own, additional data types from your source code
 * Define data structures (struct/class)
 * Built-int data structures: array, list, map (dictionary).
 * Programming: basic functions with argument lists and return values, conditions ("if"), loops ("while"), etc.
 * Support C++, Java, and JavaScript. C# coming soon!

## Meanscript's design fundamentals

 * **Practical**. All-in-one language supporting programming, structured data in many forms, and script and binary formats.
 * **Minimal** core and syntax, easy to write and read. <!-- Most minimalistic language you can do anything with!--> 
 * **Easy to set up, stand-alone**. Copy Meanscript source code to your project/solution and start scripting.
 * **Convenient**. Simple interface, easy to debug, and strong typing and type checking to avoid elusive bugs. Smooth crashing by exception catching and with informative error messages.
 * **Iterative**, non-blocking script execution (instead of recursive, blocking execution). You can run the script step-by-step, and do other things between, as the interpreter saves it’s own state.<!-- It enables waiting, triggers, events etc. without using threads or other platform support.-->

<!-- 
## What can it be used for?

 * Serializing and transmitting structured data, in byte code or script
 * Run scripts
 * Access data and code from your source code (Java, C#, etc.)
 * Make native call from script, using callbacks.
 * Make remote procedure calls.
-->
 
## Examples

<i>(Future plans)</i>

You can access Meanscript data from your source code.
For example compile the next script to a binary file called <i>example.bin</i>.

<pre>
text name: "John"
int age: 38
</pre>

Read and access data from your scource code, for example (in pseudo-Java)

<pre>
Meanscript ms = Meanscript.compile("example.bin");
String name = ms.getText("name");
int age = ms.getInt("age");
</pre>

Define data structure with generated API for your source code, e.g.

<pre>
struct Person [text name, int age]
</pre>

Generate API with a Meanscript generation tool. In pseudo-Java:

<pre>
namespace MyMS {
  class Person {
    public Person();
    
    void    set_name(String name)  { ... }
    String  get_name()             { ... }
    void    set_age(int age)       { ... }
    int     get_age()              { ... }
  }
}
</pre>

Create data using the new struct <i>Person</i>.

<pre>
Person boss: ["John", 38]
Person janitor: ["Jack", 65]
</pre>

Access data from your source code.

<pre>
MyMS.Person bossData ms.getData<MyMS.Person>("boss"); // auto-generated class
print(bossData.get_name() + " is the boss"); // 'get_name' is generated from member 'name' by adding 'get_'
                                             // The code above would print "John is the boss".
</pre>

Create data using data strutures, for example <i>Person</i> above and built-in Meascript list:

<pre>
list [Person] personList
personList.add ["John", 38]
personList.add ["Jane", 57]
// ...
personList.add ["Jack", 45]
</pre>

Access data from your source code.

<pre>
MS.MList list = ms.getList("personList"); // Class MS.MList is part of Meanscript core
Person second = list.getAt<MyMS.Person>(1);
Person last = list.getLast<MyMS.Person>();
print(second.get_name() + " is the second on the list"); // prints "Jane is the second on the list"
</pre>

<!--

## Future plans

 * Optimize: minimalize dynamic memory allocation and variable fetch times.
 * Meanscript editor
 * Support language's own serialization
 * Wait/pause, triggers, events, etc.
 * Unit tests
 * Class-like features: struct ( → class) includes funtions that can be overridden by changing function body, etc.
 * Map with an integer key

-->
<!-- 
How does it work?

Meanscript parser takes in the script text, read it, and make a parse tree of it.
Parse tree consists of tokens which are variable names, values, function calls, etc.
Parse tree’s sub-trees can be expressions, code blocks, structure definitions, etc.
When you execute the script Meanscript interpreter iterate through the parse tree and execute the commands in it.
Commands add data to Meanscript’s data map, and the data can be accessed by the script itself or external calls.
Data consists of atomic variables (integers, text, reference to a code block), data structures (maps, lists, etc.) and functions.

Meanscript’s Java implementation uses following language features (considering things that can cause problems when porting from Java to other languages):
Exceptions
LinkedList
TreeMap
assert
console print (can be overridden)
-->
