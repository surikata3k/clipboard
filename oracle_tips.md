# Oracle SQL Tips and Commands

```sql
-- Useful Oracle SQL commands for various tasks

-- Check current database user
SELECT USER FROM dual;

-- List all tables in the current schema
SELECT table_name FROM user_tables;

-- Show system date and time
SELECT SYSDATE FROM dual;

-- Create a basic table with ID as primary key
CREATE TABLE sample_table (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(50),
    created_at DATE DEFAULT SYSDATE
);

-- Insert sample data
INSERT INTO sample_table (id, name) VALUES (1, 'Sample Data');
```
    