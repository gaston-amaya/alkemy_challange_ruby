# Documentation

https://gaston-amaya.github.io/


# Installation

Clone the repository, CD in to it and run the commands below

1. bundle install
2. rake db:create
3. rake db:migrate
4. rails s

# Tests

made CRUD tests for genre, movie and character

to try the tests, run the below command in the respository directory:

- rspec spec


Content of this project:

- Login & Register with devise-jwt gem

- Welcome email after registering done with Action Mailer

- SQLite, has many/belongs to/many through associations

- Filter what information is displayed in GET requests with Active Model Serializer gem

- Model validations: presence, uniqueness, length, specific characters, error messages for all validations

- Flash messages for controllers on POST/UPDATE/DELETE

- Documentation of endpoints done with insomnia

- CRUD tests done with the RSpec gem
