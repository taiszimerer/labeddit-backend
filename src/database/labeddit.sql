-- Active: 1673874119312@@127.0.0.1@3306
 CREATE TABLE 
users (
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL,
    role TEXT NOT NULL,
    created_at TEXT DEFAULT (DATETIME()) NOT NULL
);

INSERT INTO users (id, name, email, password, role)
VALUES
	("nick01","tais01", "tais@email.com", "tais123", "role"),
	("nick02","labaluno13", "joao@email.com", "joao123", "role"),
	("nick03","labaluno55", "lucas@email.com", "lucas123", "role");

DROP TABLE users;

CREATE TABLE 
posts (
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    creator_id TEXT NOT NULL,
    content TEXT NOT NULL,
    created_at TEXT DEFAULT (DATETIME()) NOT NULL,
    updated_at TEXT DEFAULT (DATETIME()) NOT NULL, 
    FOREIGN KEY (creator_id) REFERENCES users (id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

INSERT INTO posts (id, creator_id, content)
VALUES
	("p001", "nick01", "Se voce pudesse ter apenas um animal no mundo, qual seria?"),
	("p002", "nick02", "Porque algumas empresas não dão oportunidades para os juninhos?"),
	("p003", "nick02", "Porque algumas pessoas preferem celulares sansung do que Apple?");

DROP TABLE posts;

SELECT * FROM users;
SELECT * FROM posts;