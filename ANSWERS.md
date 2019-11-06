# Q0: Why are these two errors being thrown?
The first error is occuring because we are not migrating to the initialized table. We should use db migrate to fix this. The second error is coming from the fact that we haven't created a Pokemon model yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? * 
The Pokemon are appearing through the rails db:seed which seeds the random Pokemon to the database. The common factor between them all is that none of them have a trainer. 

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It's basically enabling a button where we can look for a particular method we want to use by starting a route from capture alongside the pokemon id which instigates a patch method.

# Question 3: What would you name your own Pokemon? 
Pokie!

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in the trainer_path which required a trainer id to source to a specific trainer path. 

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
This should print out the errors in the form of a message. 

# Give us feedback on the project and decal below!
Fun!

# Extra credit: Link your Heroku deployed app
