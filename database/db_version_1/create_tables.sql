-- Use the correct database
USE sessions_event_db;

-- ======================================
-- Create Speakers Table
-- ======================================
CREATE TABLE IF NOT EXISTS speakers (
    speaker_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL
    
);

-- ======================================
-- Create Sessions Table
-- ======================================
CREATE TABLE IF NOT EXISTS sessions (
    session_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    session_date DATE,
    session_time TIME
);

-- ======================================
-- Create Session-Speakers Link Table
-- ======================================
CREATE TABLE IF NOT EXISTS session_speakers (
    session_id INT NOT NULL,
    speaker_id INT NOT NULL,
    PRIMARY KEY (session_id, speaker_id),
    FOREIGN KEY (session_id) REFERENCES sessions(session_id),
    FOREIGN KEY (speaker_id) REFERENCES speakers(speaker_id)
);














