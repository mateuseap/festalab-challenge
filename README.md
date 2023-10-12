# FestaLab Challenge

## 🔧 Pre-requisites

Before running the project, you must have the following tools installed on your machine:
* [Git](https://git-scm.com/downloads)
* [Docker](https://docs.docker.com/get-docker/)
* [Ruby 3.2.2](https://www.ruby-lang.org/en/news/2023/03/30/ruby-3-2-2-released/)
* [Rails 7.0.8](https://rubyonrails.org/2023/9/9/Rails-7-0-8-has-been-released) 

Also, you will need to clone the repository:

```bash
# Clone the repository
git clone https://github.com/mateuseap/festalab-challenge

# Enter the root directory
cd festalab-challenge
```

## 🚀 Project Setup

### 🐳 Database Configuration with Docker

Set up a PostgreSQL Docker container to manage the project's database:

```docker
# Run the Postgres Docker container
docker run --name festalab-pg -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=docker -p 5432:5432 -d postgres
```

### ⚙️ Setting the Environment Variables

Create a file named `.env` in the project directory and copy the contents of `.env.example` into it. Fill in the necessary credentials in the `.env` file.

### ⬇️ Installing Dependencies

Now, it's time to install the project dependencies. Just run the command below:

```bash
# Install dependencies
bundle install
```

Ensure you are located in the correct project directory (`/festalab-challenge`) when executing the above command. Once the dependencies are installed, you're ready to proceed to the next steps of the setup process.

### 🛠️ Database Initialization and Migrations

Initialize the databases and apply migrations with a single command:

```bash
# Create databases and run migrations
rails db:create db:migrate
```

This command ensures the databases are set up correctly and applies any pending migrations.

### 🏃 Running the App

To run the App, just use the command below (make sure you're in `/festalab-challenge` directory):

```bash
# Running the Rails server
bin/dev
```

Then, open [http://localhost:3000/](http://localhost:3000/) to view it in the browser.

![App](https://i.imgur.com/RhJIus8.png)

## 🧪 Running Tests

Use the following commands to run tests, once you've completed the project setup process:

```bash
# Run controllers tests
rails test:controllers

# Run models tests
rails test:models

# Run all tests
rails test
```

![Tests](https://i.imgur.com/iqILIYJ.png)

## 🛠️ Database Operations

#### 🌱 Database Seeding

Seed the database with initial data using the following command:

```bash
# Seed the database
rails db:seed
```

This command will populate the database with predefined users from the `seeds.rb` file.

#### 🔄 Apply Pending Migrations

If you need to apply any pending migrations, use the command below:

```bash
# Run migrations
rails db:migrate
```

This command will run any pending migrations that haven't been applied to the databases yet, ensuring your database schema is up-to-date.

#### ⛔ Reset Databases

If you need to reset your databases by dropping the existing ones and recreating them, use the following command:

```bash
# Drop existing databases and recreate
rails db:drop db:create db:migrate
```

> Note: Resetting databases will delete all existing data. Use with caution.