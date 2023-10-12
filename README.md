# FestaLab Challenge

## 🔧 Pre-requisites

Before running the project, you must have the following tools installed on your machine: 
* [Ruby 3.2.2](https://www.ruby-lang.org/en/news/2023/03/30/ruby-3-2-2-released/)
* [Rails 7.0.8](https://guides.rubyonrails.org/v5.0/getting_started.html/) 
* [Docker](https://www.docker.com/)

Also, you will need to clone the repository:

```bash
# Cloning the repository
git clone https://github.com/mateuseap/festalab-challenge

# Entering the directory
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

### 🛠️ Database Management, Migrations, and Seeding

#### Create Databases and Run Migrations

To create databases and apply any pending migrations, execute the following command:

```bash
# Create databases and run migrations
rails db:create db:migrate
```

This command will initialize the databases and apply any pending migrations.


#### Seed the Database

To populate your database with initial data, run the following command:

```bash
# Seed the database
rails db:seed
```

Executing `rails db:seed` will populate your database with the `users` defined in `seeds.rb` file.

#### Apply Pending Migrations

If you only need to apply any pending migrations, use the command below:

```bash
# Run migrations
rails db:migrate
```

This command will run any pending migrations that haven't been applied to the databases yet, ensuring your database schema is up-to-date.

#### Reset Databases

If you need to reset your databases by dropping the existing ones and recreating them, use the following command:

```bash
# Drop existing databases and recreate
rails db:drop db:create db:migrate
```

> Note: Resetting databases will delete all existing data. Use with caution.

### 🏃 Running the App

To run the App, just use the command below:

```bash
# Running the Rails server
rails server
```

Then, open [http://localhost:3000/](http://localhost:3000/) to view it in the browser.

![App](https://i.imgur.com/5BJXL5u.png)

## 🧪 Running Tests

Use the following commands to run tests after setting up the database:

```bash
# Run controllers tests
rails test:controllers

# Run models tests
rails test:models

# Run all tests
rails test
```

![Tests](https://i.imgur.com/iqILIYJ.png)
