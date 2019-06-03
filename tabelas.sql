-- CLeans all the schema
DROP SCHEMA public CASCADE;
CREATE SCHEMA public;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO public;
COMMENT ON SCHEMA public IS 'standard public schema';

-- Activate UUID extension
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Item and dependents creation
CREATE TABLE Item (
    id UUID PRIMARY KEY UNIQUE NOT NULL DEFAULT uuid_generate_v4(),
    name VARCHAR(80) NOT NULL,
    release_date DATE NOT NULL,
    price NUMERIC(5,2),
    is_promotion BOOLEAN NOT NULL,
    promotion_price NUMERIC(5,2),
    about VARCHAR(1000) NOT NULL,
    type CHAR(5) NOT NULL
);

CREATE TABLE Attachment (
    filepath VARCHAR(100) PRIMARY KEY UNIQUE NOT NULL,
    item_id UUID NOT NULL,
    name VARCHAR(50) NOT NULL,
    type_attachment CHAR(6) NOT NULL,
    extension CHAR(5) NOT NULL,
    FOREIGN KEY (item_id) REFERENCES Item (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);



-- User and dependents creation
CREATE TABLE "User" (
    email VARCHAR(50) PRIMARY KEY UNIQUE NOT NULL,
    name VARCHAR(80) NOT NULL,
    password VARCHAR NOT NULL,
    cpf CHAR(11) NOT NULL,
    date_of_birth DATE NOT NULL
);

CREATE TABLE CreditCard (
    card_number CHAR(16) PRIMARY KEY UNIQUE NOT NULL,
    user_email VARCHAR(50) NOT NULL,
    card_name VARCHAR(80) NOT NULL,
    due_date DATE NOT NULL,
    FOREIGN KEY (user_email) REFERENCES "User" (email)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

CREATE TABLE WishList (
    user_email VARCHAR(50) NOT NULL,
    item_id UUID NOT NULL,
    date DATE NOT NULL,
    UNIQUE (user_email, item_id),
    PRIMARY KEY (user_email, item_id),
    FOREIGN KEY (user_email) REFERENCES "User" (email)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (item_id) REFERENCES Item (id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

CREATE TABLE Review (
    user_email VARCHAR(50) NOT NULL,
    item_id UUID NOT NULL,
    comment CHAR(256),
    date DATE NOT NULL,
    rating SMALLINT NOT NULL,
    UNIQUE (user_email, item_id),
    PRIMARY KEY (user_email, item_id),
    FOREIGN KEY (user_email) REFERENCES "User" (email)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
    FOREIGN KEY (item_id) REFERENCES Item (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE Download (
    user_email VARCHAR(50) NOT NULL,
    item_id UUID NOT NULL,
    credit_card_number CHAR(16),
    first_download_date DATE,
    last_download_date DATE,
    downloaded BOOLEAN,
    UNIQUE (item_id, user_email),
    PRIMARY KEY (item_id, user_email),
    FOREIGN KEY (item_id) REFERENCES Item (id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    FOREIGN KEY (credit_card_number) REFERENCES CreditCard (card_number)
        ON DELETE SET NULL
        ON UPDATE RESTRICT,
    FOREIGN KEY (user_email) REFERENCES "User" (email)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- General tables creation (tables without foreign keys and related)
CREATE TABLE Language (
    name VARCHAR(20) PRIMARY KEY UNIQUE NOT NULL
);

CREATE TABLE Developer (
    email VARCHAR(50) PRIMARY KEY UNIQUE NOT NULL,
    name VARCHAR(80) NOT NULL,
    address VARCHAR NOT NULL,
    password VARCHAR NOT NULL
);

CREATE TABLE Artist (
    name VARCHAR(80) PRIMARY KEY UNIQUE NOT NULL
);

CREATE TABLE Author (
    name VARCHAR(80) PRIMARY KEY UNIQUE NOT NULL
);

CREATE TABLE "Cast" (
    name VARCHAR(80) PRIMARY KEY UNIQUE NOT NULL,
    function CHAR(8) NOT NULL
);

CREATE TABLE Category (
    name VARCHAR(25) NOT NULL,
    item_type CHAR(5) NOT NULL,
    UNIQUE (name, item_type),
    PRIMARY KEY (name, item_type)
);

CREATE TABLE Categorization (
    item_id UUID NOT NULL,
    category_name VARCHAR(25) NOT NULL,
    category_item_type CHAR(5) NOT NULL,
    UNIQUE (item_id, category_name),
    PRIMARY KEY (item_id, category_name),
    FOREIGN KEY (category_name, category_item_type) REFERENCES Category (name, item_type)
        ON DELETE RESTRICT
        ON UPDATE RESTRICT,
    FOREIGN KEY (item_id) REFERENCES Item (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- App specification
CREATE TABLE App (
    item_id UUID PRIMARY KEY UNIQUE NOT NULL,
    developer_email VARCHAR(50) NOT NULL,
    size BIGINT NOT NULL,
    version VARCHAR NOT NULL,
    FOREIGN KEY (item_id) REFERENCES Item (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (developer_email) REFERENCES Developer (email)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

-- Album and dependents specification
CREATE TABLE Album (
    item_id UUID PRIMARY KEY UNIQUE NOT NULL,
    artist_name VARCHAR(80) NOT NULL,
    FOREIGN KEY (item_id) REFERENCES Item (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (artist_name) REFERENCES Artist (name)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

CREATE TABLE Track (
    name VARCHAR(50) NOT NULL,
    album_id UUID NOT NULL,
    duration INT NOT NULL,
    UNIQUE (name, album_id),
    PRIMARY KEY (name, album_id),
    FOREIGN KEY (album_id) REFERENCES Album (item_id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

-- Book and dependents specification
CREATE TABLE Book (
    item_id UUID PRIMARY KEY UNIQUE NOT NULL,
    author_name VARCHAR(80) NOT NULL,
    language_name VARCHAR(20) NOT NULL,
    ISBN CHAR(13) NOT NULL,
    number_of_pages SMALLINT NOT NULL,
    FOREIGN KEY (item_id) REFERENCES Item (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (author_name) REFERENCES Author (name)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    FOREIGN KEY (language_name) REFERENCES Language (name)
        ON DELETE RESTRICT
        ON UPDATE RESTRICT
);
 
-- Movie and dependents specification
CREATE TABLE Movie (
    item_id UUID PRIMARY KEY UNIQUE NOT NULL,
    duration INT NOT NULL,
    FOREIGN KEY (item_id) REFERENCES Item(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE Movie_Language (
    movie_id UUID NOT NULL,
    language_name VARCHAR(20) NOT NULL,
    type CHAR(7) NOT NULL,
    UNIQUE (type, language_name, movie_id),
    PRIMARY KEY (type, language_name, movie_id),
    FOREIGN KEY (language_name) REFERENCES Language (name)
        ON DELETE RESTRICT
        ON UPDATE RESTRICT,
    FOREIGN KEY (movie_id) REFERENCES Movie (item_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE Movie_Cast (
    movie_id UUID NOT NULL,
    cast_name VARCHAR(80) NOT NULL,
    UNIQUE (movie_id, cast_name),
    PRIMARY KEY (movie_id, cast_name),
    FOREIGN KEY (movie_id) REFERENCES Movie (item_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (cast_name) REFERENCES "Cast" (name)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);