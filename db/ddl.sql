DROP TABLE IF EXISTS reads CASCADE;
drop SEQUENCE IF EXISTS seq_read_id;

DROP TABLE IF EXISTS users_books CASCADE;

DROP TABLE IF EXISTS books CASCADE;
drop SEQUENCE IF EXISTS seq_book_id;

DROP TABLE IF EXISTS users CASCADE;
drop SEQUENCE IF EXISTS seq_user_id;

drop index IF EXISTS reads_idx1;
drop index IF EXISTS reads_idx2;

----------------------------------------------------------
----------------------------------------------------------

CREATE SEQUENCE seq_book_id;
CREATE SEQUENCE seq_coverage_id;

CREATE TABLE users(
    id integer PRIMARY KEY DEFAULT nextval('seq_user_id')
  , name text NOT NULL
  );

CREATE TABLE books(
    id integer PRIMARY KEY DEFAULT nextval('seq_book_id')
  , name text NOT NULL
  , words_count bigint NOT NULL
  );

CREATE TABLE users_books(
    user_id integer NOT NULL references users(id)
  , book_id integer NOT NULL references books(id)
  , active boolean NOT NULL default true
  , PRIMARY KEY (user_id, book_id)
  );
  
CREATE TABLE reads(
    id bigint PRIMARY KEY DEFAULT nextval('seq_read_id')
  , book_id integer NOT NULL
  , user_id integer NOT NULL
  , start_w bigint NOT NULL
  , end_w bigint NOT NULL
  , ts timestamp NOT NULL
  , FOREIGN KEY (user_id, book_id) REFERENCES users_books (user_id, book_id)
  );

CREATE INDEX reads_idx1 ON reads(book_id);
CREATE INDEX reads_idx2 ON reads(book_id, user_id);