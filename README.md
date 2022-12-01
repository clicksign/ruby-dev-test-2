## README

Hi, This project is a [Rails](http://rubyonrails.org/) application for the album-musics project.

## Prerequisites

Have the following features with their respective versions installed on the machine:

* Ruby `2.4.1` - You can use [RVM](http://rvm.io) or [asdf](https://asdf-vm.com/)
* Bundler `2.3.36`

## Setup the project

After you get all the [prerequisites](#prerequisites), simply execute the following commands in sequence:

```bash
1. Install the dependencies above
2. $ git clone  # Clone the project
3. $ cd album-musics # Go into the project folder
4. $ gem install bundler # Bundler install
5. $ bin/bundle install # Install the gem dependencies
7. $ bin/rake db:create ; bin/rake db:migrate ; bin/rake db:seed # Reset and seed the database
8. $ bin/rspec # Run the specs to see if everything is working fine
```

## Running the project

1. `$ rake start` - Opens the server
2. Open [http://localhost:3000](http://localhost:3000)

#### Running specs and checking coverage
To run the tests it is necessary to have the [prerequisites](#prerequisites) and have also completed the [installation](#installation) of dependencies.

`$ bin/bundle rspec` to run the specs.

## Thanks for the opportunity :+1:
