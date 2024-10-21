-- Active: 1729099285669@@127.0.0.1@5432@practicedb

SELECT * FROM persons2;


ALTER TABLE persons2
    ADD COLUMN email VARCHAR(50) DEFAULT 'default@gmail.com' NOT NULL


ALTER TABLE persons2
    DROP COLUMN address

ALTER TABLE persons2
    RENAME COLUMN age to user_age

ALTER TABLE persons2
   ALTER COLUMN name type VARCHAR(50)

ALTER TABLE persons2
   ALTER COLUMN name set not null

ALTER TABLE persons2
  ALTER COLUMN name drop not null

ALTER TABLE persons2
    ADD constraint unique_persons2_id UNIQUE(id)


ALTER TABLE persons2
    ADD constraint unique_persons2_name UNIQUE(name)

ALTER TABLE persons2
   DROP  constraint unique_persons2_name