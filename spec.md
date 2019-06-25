# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
Used Sinatra to build the app.  Using corneal to create framework.
- [x] Use ActiveRecord for storing information in a database
Database was created using ActiveRecord and creates and stores data using this.
- [x] Include more than one model class (e.g. User, Post, Category)
Project includes two models.  Users and Bplans (business plans).
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts)
Users has_many Posts.
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
Bplans belongs_to User.
- [x] Include user accounts with unique login attribute (username or email)
User accounts have username, e-mail and password attributes.  Username is used as the unique attribute to search for the User.
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
BplansController has routes to create ('bplans/new'), read ('bplans/:id'), update ('bplans/:id/edit') and destroy ('bplans/:id/delete').
- [x] Ensure that users can't modify content created by other users
Users cannot modify posts created by other users.  In 'bplans' page, you can see all existing 'bplans' but the only ones that can be edited are for the `is_logged_in?` user.  This is accomplished by using sessions which are set to a `user_id`.
- [x] Include user input validations
User cannot sign up without entering all information (username, e-mail and password).  If any items are missing, the user is redirected to a '/signup_error' page.  Once properly signed up and logged in, the user can create a business plan.  The 'bplan' requires a minimum of a 'problem' and a 'solution' or it will not allow User to create plan.
- [x] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
Not currently implemented for belongs_to model.  Only error message is for User creation.
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code
See README.md file.

Confirm
- [ ] You have a large number of small Git commits

- [ ] Your commit messages are meaningful

- [ ] You made the changes in a commit that relate to the commit message

- [ ] You don't include changes in a commit that aren't related to the commit message
