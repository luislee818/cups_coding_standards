JavaScript Coding Standards
===========================

This is a sample file illustrating the coding standard of JavaScript for CUPS team. When contributing
to the Design Studio, this coding standard must be complied.

* We use [RequireJS](http://requirejs.org/) to manage modules in our code.
* We use [JSHint](http://www.jshint.com/) to carry on our code quality check, the rules are in [here](https://github.com/luislee818/dotfiles/blob/master/jshintrc).
* We partially comply with [Google JavaScript Style Guide](http://google-styleguide.googlecode.com/svn/trunk/javascriptguide.xml), you can follow the code convention by imitating previous code.

This annotated source was generated with [Docco](http://jashkenas.github.io/docco/).

Package Management:
-------------------
Use "define" from RequireJS to define your module. Note: one file should always contain one module.
    Note: some of the examples below are pseudo-code

    define(["studio/utils", "studio/configs"], function (utils, configs)) {
        var myExampleModule;

        myExampleModule.functionA = function () {
            return undefined;
        };

Return your module at last, it can be a object.

        return myExampleModule;
    }

Or a class constructor
    define(["studio/utils", "studio/configs"], function (utils, configs)) {
        var exampleClassConstructor;

        exampleClassConstructor = function (a, b, c) {
            this.a = a;
            this.b = b;
            this.c = c;
        };

        return exampleClassConstructor;
    }

Coding Style Rules
------------------
**Declarations with "var" always.**

When you fail to specify var, the variable gets placed in the global context, potentially clobbering existing values. Also, if there's no declaration, it's hard to tell in what scope a variable lives (e.g., it could be in the Document or Window just as easily as in the local scope). So always declare with var.

    var variableExample;

**Always use semicolons**
Relying on implicit insertion can cause subtle, hard to debug problems.

Naming
------
Use names like this:
    function theFunctionName () { };
    var variableName = 42;
    var ClassName = function (a) {
        this.a = a;
    };
    var CONSTANT_VALUES = "constant";

Code Formatting
--------------
**Indentation**
We use *tabs* for indentation. Please change settings of your editor properly.
    if (something) {
        statements;
        if (somethingElse) {
            statements;
        }
    }
**Curly Braces**
Because of implicit semicolon insertion, always start your curly braces on the same line as whatever they're opening. _DON'T_ omit curly braces even if there's only one statement. For example:
    if (something) {
        statements;
    } else {
        statements;
    }
**Blank lines**
Use newlines to group logically related pieces of code. For example:
    doSomethingTo(x);
    doSomethingElseTo(x);
    andThen(x);

    nowDoSomethingWith(y);

    andNowWith(z);

**Spaces**
Use spaces before and/or after _if_, _for_, _function_, _return_ keywords, braces, curly braces and commas. For example:

    var a = function (x, y, z) {
        if (x === y) {
            return z;
        }
    };

**Strings**
Prefer **"** over **'**.

    var message = "This is some text message";
Use **'** when output some html.
    var htmlText = '<div href="#">This is some html</div>';

**Use JSHint**

**Tips and Tricks**
Please see [here](http://google-styleguide.googlecode.com/svn/trunk/javascriptguide.xml?showone=Tips_and_Tricks#Tips_and_Tricks) for JavaScript tips and tricks.

**Useful Links from Li Dapeng**

* Part 1: Learn the language<br>
Recommended books on learning JavaScript programming language:
JavaScript, the Good Parts: download here: http://d.pr/f/h6e9 , Amazon [link](http://www.amazon.com/JavaScript-The-Good-Parts-ebook/dp/B0026OR2ZY/ref=sr_1_6?ie=UTF8&qid=1374126438&sr=8-6&keywords=javascript)<br>
Eloquent JavaScript: download here: http://d.pr/f/Kvze,  Amazon [link](http://www.amazon.com/Eloquent-JavaScript-Introduction-Programming-ebook/dp/B004OEJNQ0/ref=sr_1_26?ie=UTF8&qid=1374126449&sr=8-26&keywords=javascript)<br>
JavaScript, the Definitive Guide: download here: http://d.pr/f/hDZr,  Amazon [link](http://www.amazon.com/JavaScript-Definitive-Guide-Guides-ebook/dp/B004XQX4K0/ref=sr_1_2?ie=UTF8&qid=1374126438&sr=8-2&keywords=javascript)<br>

* Just Enough JavaScript series on Dapeng Li's blog (shamelessly promoted by himself):<br>
Intro: http://www.dapengli.com/2012/05/15/just-enough-javascript-introduction/<br>
Variable scope and object: http://www.dapengli.com/2012/05/15/just-enough-javascript-variable-scope-and-object/<br>
Function: http://www.dapengli.com/2012/05/16/just-enough-javascript-function/<br>
Prototype and inheritance: http://www.dapengli.com/2012/05/17/just-enough-javascript-prototype-and-inheritance/<br>

* Part 2: Module Pattern<br>
Module Pattern
http://addyosmani.com/resources/essentialjsdesignpatterns/book/#modulepatternjavascript

* RequireJS (which Design Studio uses to manage module dependencies):
http://requirejs.org/

* Part 3: Unit Test and Test-Driven<br>
Recommended book: download here: http://d.pr/f/xN4f, Amazon [link](http://www.amazon.com/The-Art-Unit-Testing-Examples/dp/1933988274/ref=sr_1_1?ie=UTF8&qid=1374126377&sr=8-1&keywords=art+of+unit+testing)

* Bonus: Learning Chrome DevTools<br>
Code School Chrome Dev Tools course: http://www.codeschool.com/courses/discover-devtools

