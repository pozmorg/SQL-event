-- Users table
CREATE TABLE users (
                       id INT AUTO_INCREMENT PRIMARY KEY,
                       email VARCHAR(255) NOT NULL UNIQUE COMMENT 'User email address',
                       password_hash VARCHAR(255) NOT NULL COMMENT 'Hashed user password',
                       created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Registration date and time'
);

-- Events table
CREATE TABLE events (
                        id INT AUTO_INCREMENT PRIMARY KEY,
                        title VARCHAR(255) NOT NULL COMMENT 'Event title',
                        description TEXT COMMENT 'Event description',
                        date DATETIME NOT NULL COMMENT 'Event date and time',
                        location VARCHAR(255) NOT NULL COMMENT 'Event location',
                        organizer_id INT NOT NULL COMMENT 'User ID of the event organizer',
                        FOREIGN KEY (organizer_id) REFERENCES users(id) ON DELETE CASCADE
);

-- Comments table
CREATE TABLE comments (
                        id INT AUTO_INCREMENT PRIMARY KEY,
                        user_id INT NOT NULL COMMENT 'ID of the user who posted the comment',
                        event_id INT NOT NULL COMMENT 'ID of the related event',
                        comment_text TEXT NOT NULL COMMENT 'Comment text',
                        created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Comment creation date and time',
                        FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
                        FOREIGN KEY (event_id) REFERENCES events(id) ON DELETE CASCADE
);

-- Event participants table
CREATE TABLE event_participants (

                        id INT AUTO_INCREMENT PRIMARY KEY,
                        user_id INT NOT NULL COMMENT 'ID of the user participating in the event',
                        event_id INT NOT NULL COMMENT 'ID of the event',
                        FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
                        FOREIGN KEY (event_id) REFERENCES events(id) ON DELETE CASCADE
);