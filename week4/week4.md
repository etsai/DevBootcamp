# End Week 4 Reflection

#### Recap
  This week we focused on building web apps with Sinatra in addition to practicing our Active Record skills. It was nice to finally put together all the different parts of a fully working web applications. A full MVC with a fully functioning database, your nicely stylized CSS, and well defined RESTful routes.

  While we now have a lot less challenges to get through the challenges are a lot bigger and have to be broken down into smaller parts. I find that this also makes all the different parts more manageable.

### Lessons Learned

- ActiveRecord associations was probably the most important concept that was practiced through the challenges this week. While one to many associations is easy to build, building many to many associations that allows you to query data through a join table is much harder.
- Also keeping track of the ways to design your associations so that you can be more expressive with the way you query data.
- One important concept that I learn was the difference between Active Record's has_many_and_belongs_to versus has_many :something through => :else. Both will create a join table (thanks ActiveRecord) however the join table for has_many_and_belongs_to is a many to many join table that only includes the id's and helps with cross association while the through allows you to include other columns with additional data in that table in addition to the ability to access data through the join table. For me these two concepts were hard to differentiate because ActiveRecord does so much work behind the scenes. But this is pretty powerful once you understand it.
- Got the chance to learn BCyrpt and how to hash passwords so that the actual password is never actually stored in your database.
- Most of the challenges also got us comfortable with passing data around Sinatra applications. I seem to always forget how REST is Stateless and how when you are switching routes you may have to store the state. I wish I had a better sense of the different ways to persist data other than in sessions or a database.

### The Good

- It was nice to concentrate on using similar concepts throughout the week. This helped me get a lot more comfortable using Active Record and sending data through params without always needing to refer to the documentation, which is really nice.
- I found it super interesting to use params to query the right information in your database and then to manipulate that data in different ways. This has always been an area of programming that I struggled with. I love data but I had a hard time figure out the process of collecting data through a web application put it into the database, then retrieve that same data in a way that makes it manipulable. It's starting to click for me on the way this can be done in a more complex manner.


### The Bad

- One part that I was finding difficult was keeping track of exactly what type of variables and data are available as you move between files. I want to work on knowing exactly what is available in your views as it interacts with your controller as well as the models as that interacts with the controller. I think one pit fall that I fall into is that I forget and try to send things from the view straight to the controller or from one route to another incorrectly.

### The Ugly

- This was probably the most frustrating week in terms of just getting code written. Postgres was being a pain and stole more than half a day in addition to providing me the gift of annoyance, anger, sadness and the want of throwing my computer out the window. The rest of the time, I got the sense that I wasn't coding much. This might be because the amount of physical code is coming less and the amount of thinking and planning is becoming more in terms of getting a application running.
- The amount of time spent just to debug environment errors takes so long just because often times these errors make very little sense. They're also under the hood which makes it even more difficult to know exactly what to fix.

