# Event Management Database

This project defines a relational database structure for an event management system using MySQL.

## Database Structure

The database consists of four main tables:

- **users** – Stores user data (email, password, registration date).
- **events** – Stores event details (title, description, date, location, organizer).
- **comments** – Stores user comments on events.
- **event_participants** – Tracks which users are attending which events.

## Installation

1. Clone the repository:
   ```sh
   git clone https://github.com/YOUR_USERNAME/YOUR_REPOSITORY.git
   cd YOUR_REPOSITORY
   
2. Run the SQL script in your database:
   sh
   mysql -u your_user -p your_database < database.sql
