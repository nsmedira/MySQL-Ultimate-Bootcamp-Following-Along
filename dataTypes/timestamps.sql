CREATE TABLE tasks (
    content VARCHAR(500),
    creation_timestamp TIMESTAMP DEFAULT NOW()
);

INSERT INTO tasks (content) VALUES('figure out how to use python in the back end');

ALTER TABLE tasks
ADD modification_timestamp TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP ;

ALTER TABLE tasks
ADD status VARCHAR(30) NOT NULL DEFAULT 'not started' ;

UPDATE tasks SET status = 'in progress' WHERE content LIKE 'create%' ;