--- Primary user database
CREATE TABLE IF NOT EXISTS users (
	user_id SERIAL PRIMARY KEY NOT NULL,
	name VARCHAR (60) NOT NULL,
	hash VARCHAR NOT NULL
);

--- Database containing authorized clients
CREATE TABLE IF NOT EXISTS clients (
	user_id INT REFERENCES users(user_id),
	client_hash VARCHAR NOT NULL
);
