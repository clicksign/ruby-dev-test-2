## Setup
Make sure you have Ruby on Rails and SQLite installed on your system.

### Installing using Docker
Run the following command to install the project dependencies:

Inside folder Run to build the project

```bash
docker compose build
```

### Database configuration
Make sure you have correctly configured the database information in the `config/data_base.yml` file.

Build the application
```bash
docker compose up --build
```

```bash
docker compose run web rake db:create db:migrate db:seed
```

The project will be accessible at `http://localhost:3000`.

## Usage
Start the application
```bash
docker compose up
```
Stop the application
```bash
docker compose down
```

### Installing without Docker
Run the following command to install the project dependencies:

Inside folder Run to build the project

```bash
bundle install
```

```bash
rake db:create db:migrate db:seed
```

```bash
bundle exec rails s -p 3000 -b 0.0.0.0
```

## Observations about refactory

 - Updated the 1-to-N relationship between Player and Album to an N-to-N relationship in Ruby on Rails.
 - The update was performed by changing the association in the Player and Album models to has_and_belongs_to_many.
 - An intermediate table called albums_players was created to represent the association between the models.
 - A migration was generated to create the albums_players table with the foreign keys album_id and player_id.
 - The Player and Album models were updated to reflect the new association.
 - Removed unnecessary old fields in order to keep the database clean.
 - Created tests with RSpec to verify the associations and validations of the Player and Album models.
 - Tests were created to ensure the associations are correctly configured in the models.
 - The tests were written using RSpec syntax and appropriate testing methods.
 - I decided to remove the Selenium reference as I believe RSpec better suits this specific scenario.
 - In addition, I decided  to update the ruby version to 2.7.1 to keep the integrity of the gems but also provide more compatibility for the new gems.

>  This is a challenge by [Clicksign](https://www.clicksign.com/)
