/* *********************************************
 *  Drop all tables in the sessions_event_db
 *  database if they already exist.
 ********************************************* */

USE sessions_event_db;

DROP TABLE IF EXISTS session_speaker_xref;
DROP TABLE IF EXISTS session;
DROP TABLE IF EXISTS speaker;
