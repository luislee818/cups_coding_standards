This is a sample file illustrating the coding standard of C# for CUPS team.
This annotated source was generated with [Docco](http://jashkenas.github.io/docco/).
	// Annotated source for C# coding standard

## Source Files

####The Namespace And Using Statements
The first non-comment line of most c# source files is the using statements.
After that, the namespace will follow: For example:
	using System;
	using System.Web;

	namespace TaylorCorp.TD.Travel.Ttrs.BO

####CLASS AND INTERFACE DECLARATIONS
Description of Class or Interface, comment with ///

Class (static) variables
1. Private variables
2. Protected variables
	private static object privateObject;

	protected static int CalculateSomething()
	{
	};
