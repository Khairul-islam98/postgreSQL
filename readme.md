# Database Schema 

Pratice PostgreSQL.

## Tables

### 1. `user`
- **Description**: This table stores user information.
- **Columns**:
  - `id` (SERIAL PRIMARY KEY): Unique identifier for each user.
  - `name` (TEXT NOT NULL): Name of the user.
  - `email` (TEXT NOT NULL UNIQUE): Email address of the user.
  
### 2. `post`
- **Description**: This table stores posts created by users.
- **Columns**:
  - `id` (SERIAL PRIMARY KEY): Unique identifier for each post.
  - `title` (TEXT NOT NULL UNIQUE): The title of the post. Each post title must be unique.
  - `userId` (INTEGER NOT NULL REFERENCES "user"(id)): Foreign key referencing the `user` table.

## Relationships

- Each `post` is created by a user, and the `userId` field in the `post` table links back to the `id` of the `user` table.
  
## Sample Data

- The database includes sample data for testing purposes:

### Sample Users
| id  | name          | email               |
| --- | ------------- | ------------------- |
| 1   | John Doe      | john@example.com     |
| 2   | Jane Smith    | jane@example.com     |
| 3   | Alice Johnson | alice@example.com    |

### Sample Posts
| id  | title                        | userId |
| --- | ---------------------------- | ------ |
| 1   | The Future of AI in Tech      | 1      |
| 2   | How to Master JavaScript      | 2      |
| 3   | 10 Tips for Learning React    | 1      |
| 4   | Understanding Blockchain Basics | 3    |
| 5   | The Rise of Quantum Computing | 2      |

