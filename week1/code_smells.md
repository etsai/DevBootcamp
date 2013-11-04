##### 1. Read this [article on code smells](http://martinfowler.com/bliki/CodeSmell.html)

##### 2. Reference this [list of smells and refactorings](http://www.industriallogic.com/wp-content/uploads/2005/09/smellstorefactorings.pdf)

##### 3. List each smell that is dealt with by the "Extract Method" refactoring

###### Extract Method

- Feature Envy: Data and behavior that act together belong with each other. When a method makes too many calls to other classes to obtain data or functionality, Feature Envy is in the air.
- Long Method: Short methods are superior to long methods. Breaking up long methods to shorter methods allows you to find other ways the shorter methods share the same logic. Also explains the code better and are easier to maintain.
- Message Chains: Long sequence of method calls or temporary variables to get some data. This chain makes the code dependent on the relationships between many potentially unrelated objects.
- Comments: When you feel like writing a comment to explain what you are doing, then refactor your code so that the comment is unnecessary.
- Duplicated Code: Lots of identical code or subtle duplication in structure or processing steps.

##### 4. Find a piece of code you wrote earlier that has one of these smells. Place the old code below and name the smell.


##### 5. Apply the Extract Method refactoring to clean up the smell. Place the new code below.
