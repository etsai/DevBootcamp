# End Week 6 Reflection

#### Recap
- This week was focused on APIs, OAuth, as well as a bit of Rspec and background jobs(Redis/Sidekiq). We also deployed an application onto Heroku which was both fun and painful.

### Lessons Learned
- Good documentation is so important but it often doesn't exist. The ability to read documentation is such an important skill, it's the ability to be a faster learner. To me, being good at reading not so good documentation means you can understand it enough to a point where you can explore and play around with what you are working with, with ease.
- We spent a day refactoring and working with another groups existing code. Boy, that was hard. Throughout the process, whenever we change one little thing a ton of other functionalities would just break. Everything was tied together in all sorts of different ways and since we didn't build the application no one really knew. It also wasn't very obviously what every variable and method did so we often had to use global finds for just to see if it existed in other places. I now see the importance of just breaking down every little bit into explicit objects. It seems you could never be too obvious. Also compartmentalizing your application so that you don't have to change a variable in 18 different places.

### The Good
- I had a lot of fun working with Twitter's API and getting everything set up on Heroku. Getting to this stage has been a huge goal of mine and it was nice to finally see how a full working web application is built with all the different pieces.
- A lot of the conceptual knowledge I had about web apps is now actually making sense because I'm able to see it in code.
- I also really like the way applications are structured and split up. The smaller pieces make coding so much more manageable pieces. For instance focusing on the you database scheme and the associations. Then on your model and how you may need it to interact with your controller. Then on your controller and the routes. Isolating the parts into single responsibility has really helped me conceptualize everything.
- Working with frameworks and all sorts of different API's seems to be getting easier and easier. In the past, I understood Twilio's API really well but then when I tried to switch gears and use another API or another gem, I would quite exactly understand how to implement what I wanted to do exactly. Probably been too spoiled by the awesome documentation of Twilio's API as well. This stuff has been making more sense though now that I am more familiar with building full web applications.

### The Bad
- I still don't have a great handle on OOJS and really want to build out my JavaScript skills better. Javascript has been something I've really been enjoying but there's still so much to learn there.
- Sometimes I feel a bit scattered and distracted. We've covered and learned so many different topics that I'm not sure what to concentrate on and improve in. I guess the trade off is that I finally get to build full applications now.

### The Ugly
- Environments are so are to debug! The error messages just don't seem to make sense and I haven't quite got a sense of how to Google the right solution. Definitely been some of the root of my frustration this week cause I always have a hard time telling if I'm moving in the right direction or not.
