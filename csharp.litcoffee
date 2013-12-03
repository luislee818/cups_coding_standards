C# Coding Standards
===================

This is a sample file illustrating the coding standard of C# for CUPS team.
This annotated source was generated with [Docco](http://jashkenas.github.io/docco/).

File Organization
-----------------

####The Namespace And Using Statements
The first non-comment line of most c# source files is the using statements.
After that, the namespace will follow: For example:
    using System;
    using System.Web;

    namespace TaylorCorp.TD.Travel.Ttrs.BO

####CLASS AND INTERFACE DECLARATIONS
Description of Class or Interface, comment with ///
    /// Documentations for SomeRandomClass
    public class SomeRandomClass
    {

Class (static) variables
1. Private variables
2. Protected variables
        private static object privateObject;
        protected static string protectedString;

Instance variables
1. Private variables
2. Protected variables
        private const string FixedString;
        protected readonly int someReadonlyNumber;
        private int randomNumber;

Constructors
        public SomeRandomClass()
        {
        }

Properties
        public int PropertyOne
        {
            return randomNumber;
        }

        public int PropertyTwo
        {
            get; set;
        }

Methods
        protected static int CalculateSomething()
        {
        }

        public void DoSomethingCool()
        {
        }
    }

Indentation
-----------
#### Standard Indentation
Maintain strict indentation using **tabs**. ***Do not use spaces*** for formatting.  A tab is the equivalent of **4 spaces**.
    public int PropertyOne
    {
        return randomNumber;
    }

#### Line Length
Avoid lines of code longer than **100 characters**, since they’re not handled well by many terminals and tools.  This eliminates the need for horizontal scrolling on lower resolution monitors.
See [this link on StackOverflow](http://stackoverflow.com/a/9894411) on setting up in Visual Studio.

#### Wrapping Lines
When an expression will not fit on a single line, break it according to these general principles:
* Break after a comma
* Break after an operator
* Prefer higher-level breaks to lower-level breaks
* levelIf the above rules lead to a confusing code or to code that’s squished up against the right margin, just indent with a Tab instead
* Indentationent with a Tab from the primary/first line
* Avoid breaking up parenthesized expressions

Comments
--------
C# programs can have two kinds of comments: implementation comments and documentation comments. Implementation comments are delimited by /*…*/ and //. Documentation comments are delimited by ///.

Avoid block comments, for they make formatting and reading difficult.
    /* should avoid this kind of comment */

Short comments can appear on a single line indented to the level of the code that follows. If a comment needs to be written in multiple lines use single line comments.
    // Use comments
    // in
    // this style

Use tab (equals to 4 spaces) between statement and trailing comments
    var mysteryVariable;    // trailing comments

Naming Conventions
------------------
####General naming conventions
Files should be in Pascal case
    // Filename: SomeClassFile.cs

Namespaces should be in Pascal case, and in the following convention (*department* is optional):

TaylorCorp.&lt;Company&gt;.&lt;Department&gt;.&lt;Solution&gt;.&lt;Project&gt;
    namespace TaylorCorp.NorthernLights.CUPS.Services

Interfaces should be in Pascal case, and always begins with the prefix "I"
    public interface IPdfExpert
    {
Methods should be in Pascal case
        void DrawPdfByHand();
    }
Enum types and values should be in Pascal case
    public enum OutputFileType
    {
        PreviewImage
        ProofPdf,
        PressPdf
    }

Classes should be in Pascal case, Business Logic and Data Access classes should have BL and DA suffixes respectively, like **PersonBL** and **PersonDA**; Business Object classes should *NOT* have a BO suffix.
    public class FooClass
    {
Read-only static variables should be in Pascal case
        private static readonly SomePrivateVariable;

Constants should be in Pascal case
        public const string InternalProcedureName = "foo";

Instance variables should be in Camel case
        private string someString;
        protected string anotherString;

Events should be in Pascal case
        public event Action<int> ValueChange;

Parameters should be in Camel case
        public void BazMethod(string quxx) { //... }

Properties should be in Pascal case
        public string SomeString { get; set; }

Exception classes should be in Pascal case, and always ends with the suffix "Exception"
        public class AuthorNotFoundException: Exception { //... }

Attributes should be in Pascal case, and ends in the word "Attribute"
        public class EditAttribute: Attribute { //... }

Extension classes should be in Pascal case, and always ends with the suffix "Extensions"
        public static class StringExtensions

Type T in Generics should be ALL CAPS
        public class MyGeneric<KEY, ENTITY> { //... }
    }

####Acronyms and Abbreviations
Acronyms shorter than three letters should be all uppercase, acronyms longer than two letters should have only the first letter capitalized.
    validateXmlDocument
    stringHtml
    httpContext
Avoid abbreviations, except for "Identifier" (use of "id" is accepted) and "Okay" (use of "Ok" is accepted). Use meaningful, descriptive words to name methods and variables. Do not use abbreviations.
    // correct
    string address;
    int number;

    // avoid
    string addr;
    int num;

####More conventions
Use descriptive variable names.

Do not use single character variable names, except in loops.
    // correct
    for (int i = 0; i < numberOfLoops; i++)
    {
    }

    // avoid
    int m;
    string s;

Do not use [Hungarian notation.](http://en.wikipedia.org/wiki/Hungarian_notation).
    // correct
    int age;
    string name;
    bool married;

    // avoid
    int iAge;
    string strName;
    bool bMarried;

Do not use underscore (_) for local variable names or to prefix member variables.
    // avoid
    int m_age;
    string m_name;

Do prefix Boolean variables, properties and methods with words like "is", "has", "can", etc.
    bool isValid;
    bool hasChildEntries;
    bool canFinish;

Do name methos with a verb-object pairing.
    public void ShowReceipt();
    public void ValidateInputs();

Do name methods with return types to describe the object being returned.
    private int CalculateDaysSinceMoonLanding();
    protected string GetUsername();

Do suffix user controls with the word "control".
    CoolCalendarControl.ascx
    CustomSuperCrazyAjaxTextBoxControl.ascx

Do suffix UI elements with the control's name.
    FirstNameTextBox
    CompanyDropDownList

Do always use the C# keywords rather than the aliases in System namespace
    // correct
    object item1;
    string item2;
    int item3;

    // avoid
    Object item1;
    String item2;
    Int32 item3;

Declarations
------------

One declaration per line is recommended since it encourages commenting.
    // correct
    int level;    // level of the indentations
    int size;    // size of the table

    // avoid
    int level, size;

Try to initialize local variables where they're declared. The only reason not to initialize a variable where it's declared is if the initial value depends on some computation occuring first.
    int indentationInSpaces = 4;

Avoid declarations that hide declarations at higher levels. For example, do not declare the same variable name in an inner block.

Declare variables as close as possible to where it is first used.
    // avoid
    int level = 1;
    if (shouldProceed)
    {
        int level = 20;
    }

When coding C# classes and interfaces, the following formatting rules should be followed.
    // some formatting rules
* Open brace "{" appears on the line after the declaration statement
    public class MyClass
    {
* No space between a method name and the parenthesis "(" starting its parameter list
        public void ShowAge(int age)
        {
            // ...
        }
* Methods are separated by one blank line
        public void ShowName(string name)
        {
            // ...
        }
* Closing brace "}" starts a line by itself indented to match its corresponding opening statement, except when it is a null statement the "}" should appear immediately after the "{"
        public void DoNothing() { }
    }

Statements
----------

Each line should contain at most one statement.
    // correct
    int variableA = 1;

    // avoid
    int variableB = 1; variableB += 1;

Compound statements are statements that contain lists of statements enclosed in braces: "{ statements }"
* The enclosed statements should be indented one more level than the compound statement.
* The opening brace should immediately follow the line that begins the compound statement; the closing brace should match the column of the opening brace.
* Braces are used around all statements, even single statements, when they are part of a control structure, such as an if-else or for statement. This makes it easier to add statements without accidentally introduction bugs due to forgetting to add braces.
    for (int i = 0; i < 10; i++)
    {
        if (someListOfBools[i])
        {
            return;
        }
    }

A **return** statement with a value should not use parentheses unless they make the return value more obvious in some way.
    return foo;
    return (likeMusic && likeMovies);

More example on compound statements.
    // some of the examples below are pseudo-code

The **if-else** class of statements should have the following form, ***always use braces***.
    string masks = "XXXXXX";

    if (accountNumberLength >= 6)
    {
        return masks + accountNumber.Remove(0, 6);
    }
    else
    {
        return masks;
    }

A **for** statement should have the following form.
    for (initialization; condition; update)
    {
        statement;
    }

An empty **for** statement (one in which all the work is done in the initialization, condition, and update clauses) should have the following form:
    for (initialization; condition; update);

A **while** statement should have the following form.
    while (condition)
    {
        statements;
    }

An empty **while** statement should have the following form.
    while (condition);

A **do-while** statement should have the following form.
    do
    {
        statements;
    }
    while (condition);

A **switch** statement should have the following form.
    switch (condition)
    {
        case ABC:
        {
            statements;
            // falls through (add this comment everytime the case falls through)
        }
        case DEF:
        {
            statements;
            break;
        }
        default:
        {
            statements;
            break;
        }
    }

A **try-catch** statement should have the following form.
    try
    {
        statements;
    }
    catch (ExceptionClass e)
    {
        statements;
    }
    finally
    {
        statements;
        // Use finally only if needed
    }
