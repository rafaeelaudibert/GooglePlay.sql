/* modeloLogico: */

CREATE TABLE Item (
    id UUID PRIMARY KEY UNIQUE,
    price NUMERIC(3,2),
    name VARCHAR(80),
    release_date DATE,
    is_promotion BOOLEAN,
    promotion_price NUMERIC(3,2),
    about VARCHAR(1000)
);

CREATE TABLE App (
    item_id UUID PRIMARY KEY UNIQUE,
    developer_email VARCHAR(50),
    size BIGINT,
    version VARCHAR
);

CREATE TABLE Album (
    tem_id UUID PRIMARY KEY,
    artist_name VARCHAR(80)
);

CREATE TABLE Book (
    item_id UUID PRIMARY KEY,
    author_name VARCHAR(80),
    language_name VARCHAR(20),
    ISBN CHAR(13) UNIQUE,
    number_of_pages INT
);

CREATE TABLE Movie (
    item_id UUID PRIMARY KEY,
    duration INT
);

CREATE TABLE Developer (
    email VARCHAR(50) PRIMARY KEY UNIQUE,
    name VARCHAR(80),
    address VARCHAR,
    password VARCHAR
);

CREATE TABLE User (
    email VARCHAR(50) PRIMARY KEY UNIQUE,
    date_of_birth DATE,
    cpf CHAR(11),
    password VARCHAR,
    name VARCHAR(80)
);

CREATE TABLE Attachment (
    filepath VARCHAR(100) PRIMARY KEY UNIQUE,
    item_id UUID,
    name VARCHAR(50),
    type_attachment CHAR(5),
    extension CHAR(5)
);

CREATE TABLE CreditCard (
    due_date DATE,
    card_name VARCHAR(80),
    card_number CHAR(16) PRIMARY KEY UNIQUE,
    user_email VARCHAR(50)
);

CREATE TABLE Track (
    name VARCHAR(50),
    album_id UUID,
    duration INT,
    PRIMARY KEY (name, album_id)
);

CREATE TABLE Artist (
    name VARCHAR(80) PRIMARY KEY
);

CREATE TABLE Author (
    name VARCHAR(80) PRIMARY KEY UNIQUE
);

CREATE TABLE Cast (
    name VARCHAR(80) PRIMARY KEY UNIQUE,
    function CHAR(8)
);

CREATE TABLE Language (
    name VARCHAR(20) PRIMARY KEY UNIQUE
);

CREATE TABLE Category (
    name VARCHAR(25),
    item_type CHAR(5),
    PRIMARY KEY (name, item_type)
);

CREATE TABLE WishList (
    user_email VARCHAR(50),
    item_id UUID,
    date DATE,
    PRIMARY KEY (user_email, item_id)
);

CREATE TABLE Movie_Language (
    language_name VARCHAR(20),
    movie_id UUID,
    type CHAR(7),
    PRIMARY KEY (type, language_name, movie_id)
);

CREATE TABLE Movie_Cast (
    movie_id UUID,
    cast_name VARCHAR(80),
    PRIMARY KEY (movie_id, cast_name)
);

CREATE TABLE Review (
    user_email VARCHAR(50),
    item_id UUID,
    comment CHAR(256),
    date DATE,
    rating NUMERIC(1,0),
    PRIMARY KEY (user_email, item_id)
);

CREATE TABLE Categorization (
    item_id UUID,
    category_name VARCHAR(25),
    category_item_type CHAR(5)
);

CREATE TABLE Download (
    item_id UUID,
    user_email VARCHAR(50),
    credit_card_number CHAR(16),
    PRIMARY KEY (item_id, credit_card_number)
);
 
ALTER TABLE App ADD CONSTRAINT FK_App_2
    FOREIGN KEY (item_id)
    REFERENCES Item (id)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE App ADD CONSTRAINT FK_App_3
    FOREIGN KEY (developer_email)
    REFERENCES Developer (email)
    ON DELETE RESTRICT ON UPDATE CASCADE;
 
ALTER TABLE Album ADD CONSTRAINT FK_Album_2
    FOREIGN KEY (tem_id)
    REFERENCES Item (id)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Album ADD CONSTRAINT FK_Album_3
    FOREIGN KEY (artist_name)
    REFERENCES Artist (name)
    ON DELETE RESTRICT ON UPDATE CASCADE;
 
ALTER TABLE Book ADD CONSTRAINT FK_Book_2
    FOREIGN KEY (item_id)
    REFERENCES Item (id)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Book ADD CONSTRAINT FK_Book_3
    FOREIGN KEY (author_name)
    REFERENCES Author (name)
    ON DELETE RESTRICT ON UPDATE CASCADE;
 
ALTER TABLE Book ADD CONSTRAINT FK_Book_4
    FOREIGN KEY (language_name)
    REFERENCES Language (name)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Movie ADD CONSTRAINT FK_Movie_2
    FOREIGN KEY (item_id)
    REFERENCES Item (id)
    ON DELETE CASCADE;
 
ALTER TABLE Attachment ADD CONSTRAINT FK_Attachment_2
    FOREIGN KEY (item_id)
    REFERENCES Item (id)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE CreditCard ADD CONSTRAINT FK_CreditCard_2
    FOREIGN KEY (user_email)
    REFERENCES User (email)
    ON DELETE CASCADE;
 
ALTER TABLE Track ADD CONSTRAINT FK_Track_2
    FOREIGN KEY (album_id)
    REFERENCES Album (tem_id)
    ON DELETE RESTRICT ON UPDATE CASCADE;
 
ALTER TABLE WishList ADD CONSTRAINT FK_WishList_1
    FOREIGN KEY (user_email)
    REFERENCES User (email)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE WishList ADD CONSTRAINT FK_WishList_2
    FOREIGN KEY (item_id)
    REFERENCES Item (id)
    ON DELETE SET NULL;
 
ALTER TABLE Movie_Language ADD CONSTRAINT FK_Movie_Language_2
    FOREIGN KEY (language_name)
    REFERENCES Language (name)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Movie_Language ADD CONSTRAINT FK_Movie_Language_3
    FOREIGN KEY (movie_id)
    REFERENCES Movie (item_id)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Movie_Cast ADD CONSTRAINT FK_Movie_Cast_1
    FOREIGN KEY (movie_id)
    REFERENCES Movie (item_id)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Movie_Cast ADD CONSTRAINT FK_Movie_Cast_2
    FOREIGN KEY (cast_name)
    REFERENCES Cast (name)
    ON DELETE RESTRICT ON UPDATE CASCADE;
 
ALTER TABLE Review ADD CONSTRAINT FK_Review_1
    FOREIGN KEY (user_email)
    REFERENCES User (email)
    ON DELETE SET NULL ON UPDATE CASCADE;
 
ALTER TABLE Review ADD CONSTRAINT FK_Review_2
    FOREIGN KEY (item_id)
    REFERENCES Item (id)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Categorization ADD CONSTRAINT FK_Categorization_1
    FOREIGN KEY (category_name, category_item_type)
    REFERENCES Category (name, item_type)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Categorization ADD CONSTRAINT FK_Categorization_2
    FOREIGN KEY (item_id)
    REFERENCES Item (id)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Download ADD CONSTRAINT FK_Download_1
    FOREIGN KEY (item_id)
    REFERENCES Item (id)
    ON DELETE RESTRICT ON UPDATE CASCADE;
 
ALTER TABLE Download ADD CONSTRAINT FK_Download_2
    FOREIGN KEY (credit_card_number)
    REFERENCES CreditCard (card_number)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Download ADD CONSTRAINT FK_Download_3
    FOREIGN KEY (user_email)
    REFERENCES User (email)
    ON DELETE CASCADE ON UPDATE CASCADE;