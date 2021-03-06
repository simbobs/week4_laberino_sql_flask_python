PRAGMA FOREIGN_KEYS = ON;

DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS authors;

CREATE TABLE authors (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR,
    last_name VARCHAR
);

CREATE TABLE books (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title VARCHAR,
    synopsis VARCHAR,
    rating INTEGER,
    author_id INTEGER NOT NULL,
        FOREIGN KEY (author_id)
            REFERENCES authors (id)
);

