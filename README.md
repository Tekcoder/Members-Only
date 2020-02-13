# Name of Project: 

Members Only

# Table of contents:

1. About The Project
2. Built With
3. Getting Started With The Project
4. Contributing
5. License
6. Contact/Contributors
  i. Link To Project On Github
7. What Was Learnt During The Project  
8. Acknowledgements

# About The Project:

In these projects, we will be working to implement authentication systems so users can only access areas of a site they are authorized to use.

# Built With:

Ruby On Rails.

# Getting Started With The Project:

1. Think about and spec out how to set up your data models for this application. You’ll need users with the usual simple identification attributes like name and email and password but also some sort of indicator of their member status. They’ll need to create posts as well. Given what you know about passwords, you’ll be using a :password_digest field instead of a :password field.

2. Create your new members-only Rails app and Github repo. Update your README.

3. Start by migrating and setting up your basic User model (no membership attributes yet).

4. Include the bcrypt-ruby gem in your Gemfile. $ bundle install it. (note: This might just be bcrypt)

5. Add the #has_secure_password method to your User file.

6. Go into your Rails console and create a sample user to make sure it works properly. It probably looks something like: User.create(:name => "foobar", :email => "foo@bar.com", :password => "foobar", :password_confirmation => "foobar")

7. Test the #authenticate command which is now available on your User model (thanks to #has_secure_password) on the command line – does it return the user if you give it the correct password?

8. Get more on the getting started [here](https://www.theodinproject.com/courses/ruby-on-rails/lessons/authentication) 

# Contributing:

In this project, your contributions towards helping in improving this project is woild be well accomodated. With that, the project will get better rating and give programmers at any level the ability learn, be inspired and create better content.

After you are done with your contributions, you can: 

i.   Fork The project.
ii.  Create your feature branch using git checkout -b feature/anyfeature(for example)
iii. Commit your changes following git commit -m 'Name it as it pleases you', when you are done,
iv.  Push to the branch you have created using git push origin feature/anyfeature and finally
v.   Open a pull request.

# License:

Distributed under the MIT Licence. See [Licence](https://opensource.org/licenses/MIT) for more informaton

# Contributor(s):

[Kingsley McSimon O.](https://github.com/KingsleyMcSimon) and
[Roheem Olayemi](https://github.com/Tekcoder)

# Link To The Project On Github:

[Project On Github](https://github.com/Tekcoder/Members-Only)

# What Was Learnt During The Project:

We implemented a signin and signout functionality for the user, which opens the door to allow more destructive user behaviors like editing and deleting things (which should only be allowed for a given user or admin).

# Acknowledgements/References:

[Odin Project](https://www.theodinproject.com/courses/ruby-on-rails/lessons/authentication)

[Michael Hartl - Basic Login](https://www.learnenough.com/ruby-on-rails-4th-edition-tutorial/basic_login)
[Michael Hartl - Advanced Login](https://www.learnenough.com/ruby-on-rails-4th-edition-tutorial/advanced_login)
[Michael Hartl - Updating, showing, and deleting users](https://www.learnenough.com/ruby-on-rails-4th-edition-tutorial/updating_and_deleting_users)
[Michael Hartl - Account Activation](https://www.learnenough.com/ruby-on-rails-4th-edition-tutorial/account_activation)
[Michael Hartl - Password Rese](https://www.learnenough.com/ruby-on-rails-4th-edition-tutorial/password_reset)
