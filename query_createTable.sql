CREATE TABLE events (

    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    date_start DATE,
    date_end DATE,
    time_start TIME,
    time_end TIME,
    id_operator VARCHAR(50)

)