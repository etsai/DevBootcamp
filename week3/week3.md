# End Week 3 Reflection

### Lessons Learned
- This week was focused on databases. We spent the whole week using SQL, Sqlite, and Active Record.
- It was super interesting to think about how to design a database and the different schema's to set up for each table within the db.
- One of the ideas we had to practice was looking at a table and figuring how and if the data could be broken up into separate tables. Looking at all the different categories that the data might be related and involved with within a table and how different sets of data and tables might be related to one another.
- Learned about the rule of 3, where when there are 3 or more of the same data repeated, split it up into different tables. For example, when 30 students are all taking the same 2 teachers, instead of having one table that repeats the same teacher's name, you can create a separate table just for teachers and connect the two tables together.
- I can see how organization is key when you've got so many different files and moving parts you are working with.


### The Good
- I had a lot of fun learning Active Record and the new methods that can do magic. One of the parts I love about programming is learning the new technologies and apply them. It was also fun to every once in a while open up the hood and see how that method was created and move up the chain of inheritance. Definitely need to remind myself not to do this too often though.
- I am getting better at breaking up a problem into multiple pieces and figuring out what is needed for each part. This has always been something I've enjoyed so this is just playing to my benefit now, which is really nice.
- Making tests pass in rspec is so much fun. It's the little rewards of having an application behave the way you want it to.
- It's also been super interesting to see how the same request can be done in different languages in different way. And the way active record encapsulates SQL commands.
- This was also the first week where we got to work with all the different components of a somewhat full fledged Ruby app. Gems, git, rspec, rakefiles, a database, your MVC the whole shabang. It was great to finally see the whole picture and all the different parts working together. This was awesome.

### The Ugly
- SQL and Active Record seems so simple and easy on the surface level, but I know that once you get into more complex databases and want to pull more complex data things can get very complicated very quickly. Right now, we're focused on piecing together our application with databases and retrieving the right data. I'm excited yet a bit nervous about how much my head will spin when I want my application to do more complicated calculations to the already complex db schema. Should be exciting, but at the same time, I have no idea what that's going to look like.
- It seems strange to me but makes sense that you want to split up and break up your tables into more relevant little tables of the correct category but then you may have to write very complicated operations to get the right data you need. I guess it's a fine balance between having your database be scalable as well as being relevant and easy to use for the information you need and the data you constantly need to pull.
- Associations is a topic that I know will only be easier after practice. Right now we're not making enough associates in our apps for this to be hard yet, but I know that this will only be harder as the database grows.
- Metaprogramming is like writing code that writes code... I think? Definitely a concept I'm still trying to get my head around. We were just introduces to it and it seems cool, but honestly, I have no idea when I am doing it, if I am, or how to intentionally apply it. Seems like an awfully cool concept though. Looking forward to studying it some more.

#### Day to Day Challengs
- The major themes of this week were: Database Schema, Active Record Migrations, Active Record Associations, Queries (Both in Sqlite and Active Record)
- Great surface level introduction to using them with basic sets of data, now it's about being a master of these tools.

