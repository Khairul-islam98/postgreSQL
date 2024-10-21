

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


DROP TABLE "user";

DROP TABLE  post;

SELECT * FROM "user";

 SELECT * FROM post; 

-- cross post delete user 
 DELETE FROM "user"
   WHERE id = 1;