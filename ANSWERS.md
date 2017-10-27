# Q0: Why is this error being thrown?
The migrations are missing and we haven't created the Pokemon model and migration yet. 

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The home_controller is generating the pokemon from the database, and the common factor is all of the pokemon are trainerless.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
When we click the button, it calls a patch method to "capture_path" and looks for the corresponding route. 

# Question 3: What would you name your own Pokemon?
Patricksucksasaur

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in the ID of the trainer because the path needs to return to the trainer's profile. 

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
The validation adds errors to errors.full_messages and to_sentence puts them together. 

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
