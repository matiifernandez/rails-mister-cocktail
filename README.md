# Mister Cocktail

This is a Ruby on Rails application that allows users to create and manage their own cocktail recipes. You can create a cocktail, add ingredients and specify the dose for each ingredient.

## Features

*   View a list of all cocktails.
*   View the details of a specific cocktail, including the ingredients and doses.
*   Create a new cocktail with a name and an optional photo.
*   Add ingredients and doses to an existing cocktail.
*   Delete a cocktail.
*   Delete an ingredient from a cocktail.

## Technologies Used

*   **Backend:** Ruby on Rails 7
*   **Database:** PostgreSQL
*   **Frontend:**
    *   HTML, ERB
    *   Sass for styling
    *   Bootstrap 5
    *   Font Awesome
*   **Image Uploads:** Active Storage and Cloudinary

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

*   Ruby 3.3.5
*   Bundler
*   PostgreSQL
*   Node.js
*   Yarn

### Installation

1.  Clone the repository:
    ```bash
    git clone https://github.com/matiifernandez/rails-mister-cocktail.git
    cd rails-mister-cocktail
    ```

2.  Install the gems:
    ```bash
    bundle install
    ```

3.  Install JavaScript dependencies:
    ```bash
    yarn install
    ```

4.  Set up the database:
    ```bash
    rails db:create
    rails db:migrate
    ```
5. Set up Cloudinary:
    This project uses Cloudinary for image uploads. You will need to sign up for a free Cloudinary account and get your API credentials.

    Create a `.env` file in the root of the project and add your Cloudinary credentials like this:
    ```
    CLOUDINARY_URL=cloudinary://<your_api_key>:<your_api_secret>@<your_cloud_name>
    ```

6.  Seed the database with ingredients from The Cocktail DB API:
    ```bash
    rails db:seed
    ```

### Running the application

To start the local server, run the following command:

```bash
rails s
```

Then, open your browser and navigate to `http://localhost:3000`.

## Database

The application uses a PostgreSQL database. The schema is defined in `db/schema.rb` and consists of three main tables:

*   `cocktails`: Stores the cocktail's name and other details.
*   `ingredients`: Stores the name of each ingredient.
*   `doses`: A join table that connects cocktails and ingredients, and includes a description of the dose (e.g., "2 oz", "a dash").

The database is seeded with a list of ingredients from [The Cocktail DB API](https://www.thecocktaildb.com/api.php).

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.