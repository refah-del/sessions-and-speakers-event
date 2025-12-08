/****************************************************
 *  Insert test data for Sessions and Speakers Event.
 *  Database: sessions_event_db
 ****************************************************/

-- Use the correct database
USE sessions_event_db;

/****************************************************
 *  Insert Speakers
 ****************************************************/
INSERT INTO speakers (first_name, last_name) VALUES
('John',  'Smith'),
('Sarah', 'Johnson'),
('Michael', 'Brown'),
('Emily', 'Davis');

/****************************************************
 *  Insert Sessions
 ****************************************************/
INSERT INTO sessions (title, description, session_date, session_time) VALUES
('Introduction to AI',
 'Overview of artificial intelligence concepts.',
 '2025-04-01', '10:00:00'),

('Cybersecurity Basics',
 'Fundamentals of protecting digital systems.',
 '2025-04-01', '13:00:00'),

('Cloud Computing Trends',
 'Discussion of modern cloud technologies.',
 '2025-04-02', '11:00:00'),

('Machine Learning Workshop',
 'Hands-on machine learning exercises.',
 '2025-04-02', '15:00:00');

/****************************************************
 *  Link Sessions and Speakers (Many-to-Many)
 ****************************************************/
INSERT INTO session_speakers (session_id, speaker_id) VALUES
(1, 1),
(1, 2),
(2, 2),
(2, 3),
(3, 3),
(3, 4);
