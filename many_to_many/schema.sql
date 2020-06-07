CREATE TABLE services (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    category VARCHAR(30) NOT NULL,
    subCategory VARCHAR(30) NOT NULL,
    year_firstOffered YEAR(4)
) ;

CREATE TABLE rates (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    charge DECIMAL(10,2),
    expense DECIMAL(10,2)
) ;

CREATE TABLE serviceRates (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    isDefault TINYINT,
    id_rate INT,
    id_service INT,
    FOREIGN KEY (id_rate) REFERENCES rates(id) ON DELETE CASCADE,
    FOREIGN KEY (id_service) REFERENCES services(id) ON DELETE CASCADE
) ;