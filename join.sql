

CREATE Table "user"(
    id SERIAL primary key,
    username VARCHAR(50)
);


CREATE Table post (
    id SERIAL PRIMARY KEY,
    title TEXT,
    userId INTEGER REFERENCES "user"(id) on delete cascade
)

INSERT INTO "user" (username) VALUES
 ('John'),
 ('Jane'),
 ('Michael'),
 ('Emily'),
 ('Chris');

INSERT INTO post (title, userId)
VALUES
    ('The Future of AI in Tech', 1),
    ('How to Master JavaScript', 2),
    ('10 Tips for Learning React', 1),
    ('Understanding Blockchain Basics', 3),
    ('The Rise of Quantum Computing', 2);


SELECT * FROM "user";

 SELECT * FROM post; 

-- Join
SELECT  title, username FROM post
JOIN "user" ON post.userid = "user".id;
SELECT  * FROM post
JOIN "user" ON post.userid = "user".id;

-- left join
SELECT  * FROM post 
LEFT JOIN "user" ON post.userid = "user".id;

-- right join
SELECT  * FROM post 
RIGHT JOIN "user" ON post.userid = "user".id;

-- full join
SELECT  * FROM post 
FULL OUTER JOIN "user" ON post.userid = "user".id;