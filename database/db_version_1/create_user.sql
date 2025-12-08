/* *********************************************
 *  Create application user and grant privileges
 *  on the sessions_event_db database.
 ********************************************* */

CREATE USER IF NOT EXISTS 'sessions_user'@'localhost'
    IDENTIFIED BY 'Password123!';

GRANT ALL PRIVILEGES
ON sessions_event_db.*
TO 'sessions_user'@'localhost';

FLUSH PRIVILEGES;
