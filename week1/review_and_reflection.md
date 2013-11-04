####Choose two of the hardest review challenges from this weekend, then read, dig into, and comment on 3 other members of your cohorts attempts for each of these challenges. Make sure you include:
  * Something you learned from their attempt
  * Something you think they did well
  * Something you think could be more in line with the four rules of simple design

Feel free to ask other people to explain things to you. Remember, your understanding is the most important part.

#####Include links to all three gists here.

https://gist.github.com/Absoludacris06/54e57469e1306021aa74
In Nick and Gary's answer, I liked how they used a hash to keep track of the player as the key and the value for the player's position. This allowed them to not have to hard code in any of the players.

I learn that they also made use of the fact that the driver code is already iterating through so they based their code making use of this iteration.

https://gist.github.com/Chucko89/0427c09cba9bf04eb217

In this example I liked how they just added the dice roll to the player's position. By focusing on the player's position they were able kept it short and simple. There's a lot of hard coding for what would be returned, for example when declaring the winner and when printing the boar. Cleaning this up would make this code more flexible.

https://gist.github.com/Ale1/d6922005e5dca6c1612a

This code makes great use of hashes as well allowing it to have many players. The definition of advance_player! was interupted differently than most people where they would advance all players instead of just one. I liked how he used the .min method to make sure that the player didn't pass the full length of the board.

##### Now, redo your most difficult week review challenge. Focus on applying the things you learned from the review you did as well as the four rules of simple design. Place links to the original gist and the new submission below.

Original:
https://gist.github.com/etsai/180fc262d41a19eb389d

New:
https://gist.github.com/etsai/180fc262d41a19eb389d/72dd3ebf2e18dbd88ede44ed7f5d3748eed9c804

##### Once you have re-completed the review challenge, answer the following questions:

#### How did reviewing other peoples code impact your second attempt?

It showed me the different types of data structures I could have also used and made me think about the benefits of each type. For example, some people used hashes as opposed to arrays. This was interesting because it allowed you to easily map the players position to the player as opposed to the index. This made me think more about the different types of data structures I could use to approach a solution.

It also taught me the different types of syntax available in Ruby and showed me what other methods are available to get to the same solution.

#### What questions did you dive into when reviewing the other code?

When method names and variable names are not detailed it got confusing. Especially when people used e or p instead of the actual name. Since we're still learning all the different tools in Ruby, when people used symbols instead of the word it was harder to follow.

#### Did you run into any dead ends that you don't understand? Enumerate 2 or 3 of the dead ends you dove into.







