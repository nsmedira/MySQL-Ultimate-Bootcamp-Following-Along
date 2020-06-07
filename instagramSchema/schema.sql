USE data ;

# create users table
CREATE TABLE users (
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    pass_word VARCHAR(30),
    email VARCHAR(100),
    name_first VARCHAR(30),
    name_last VARCHAR(50),
    timestamp_creation TIMESTAMP DEFAULT NOW(),
    timestamp_modification TIMESTAMP DEFAULT NOW() ON UPDATE NOW()
) ;

# create photos table
CREATE TABLE photos (
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    id_user INT NOT NULL,
    img_url VARCHAR(255) NOT NULL,
    caption VARCHAR(1000),
    timestamp_creation TIMESTAMP DEFAULT NOW(),
    timestamp_modification TIMESTAMP DEFAULT NOW() ON UPDATE NOW(),
    FOREIGN KEY (id_user) REFERENCES users(id)
) ;

# create comments table
CREATE TABLE comments (
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    id_event INT,
    id_project INT,
    id_task INT,
    id_photo INT,
    id_user INT,
    content VARCHAR(500),
    timestamp_creation TIMESTAMP DEFAULT NOW(),
    timestamp_modification TIMESTAMP DEFAULT NOW() ON UPDATE NOW(),
    FOREIGN KEY (id_event) REFERENCES events(id),
    FOREIGN KEY (id_project) REFERENCES projects(id),
    FOREIGN KEY (id_task) REFERENCES tasks(id),
    FOREIGN KEY (id_photo) REFERENCES photos(id),
    FOREIGN KEY (id_user) REFERENCES users(id)
) ;

# create likes (join between users and photos)
CREATE TABLE likes (
    
    # set the primary key as the combination of id_photo and id_user so that a user can like a photo only once
    # id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    id_photo INT,
    
    # this is the user doing the liking
    id_user INT,
    
    timestamp_creation TIMESTAMP DEFAULT NOW(),
    timestamp_modification TIMESTAMP DEFAULT NOW() ON UPDATE NOW(),
    
    FOREIGN KEY (id_user) REFERENCES users(id),
    FOREIGN KEY (id_photo) REFERENCES photos(id),
    PRIMARY KEY (id_user, id_photo)
) ;

# create hashtags ()
CREATE TABLE hashtags (
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    content VARCHAR(100) UNIQUE,
    timestamp_creation TIMESTAMP DEFAULT NOW(),
    timestamp_modification TIMESTAMP DEFAULT NOW() ON UPDATE NOW()
) ;

# create photoTags (join between photos and hashtags)
CREATE TABLE photoTags (
    id_photo INT NOT NULL,
    id_hashtag INT NOT NULL,
    timestamp_creation TIMESTAMP DEFAULT NOW(),
    timestamp_modification TIMESTAMP DEFAULT NOW() ON UPDATE NOW(),
    
    FOREIGN KEY (id_photo) REFERENCES photos(id),
    FOREIGN KEY (id_hashtag) REFERENCES hashtags(id),
    PRIMARY KEY (id_photo, id_hashtag)
) ;

# create followers (join users and users)
CREATE TABLE follows (
    # set the primary key as the combination of id_photo and id_user so that a user can like a photo only once
    # id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    
    id_follower INT NOT NULL,
    id_followee INT NOT NULL,
    timestamp_creation TIMESTAMP DEFAULT NOW(),
    timestamp_modification TIMESTAMP DEFAULT NOW() ON UPDATE NOW(),
    FOREIGN KEY (id_follower) REFERENCES users(id),
    FOREIGN KEY (id_followee) REFERENCES users(id),
    PRIMARY KEY (id_follower, id_followee)
) ;