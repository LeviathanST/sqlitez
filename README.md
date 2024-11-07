# Minimal SQLitez
## Overview
This project is minimal database with the purpose of learning and dive deep into SQL structure by Zig.
## Key Components
### SQL Basic Concepts
1. Data Definition Language (DDL): 
    + Can be known as Data Description Language but commonly, DDL is used for defining data structure (ex: database schemas).
    + Is a group of SQL statements that you can manage database object, including tables, views, and more.
    + Commonly example of DDL Statements include CREATE, ALTER, DROP, etc.
    More reference (https://en.m.wikipedia.org/wiki/Data_definition_language)
2. Data Manipulation Language (DML):
    + A sublanguage of a boarder database language such as SQL, comprising some of the operators in the language.
    + Is used for adding (inserting), deleting, and modifying (updating) data in database.
    More reference (https://en.m.wikipedia.org/wiki/Data_manipulation_language)
3. Data Control Language (DCL):
    + In the context SQL, DCL allow you to manage access control by either granting privileges to the users or revoking their privilegs.
    More reference (https://www.shiksha.com/online-courses/articles/dcl-commands-in-sql/) 
### Basic File Structure
- Database file: A binary file to store all your data. This will similar with .db files in sqlite.
- Page structure: Divide your database file into pages (commonly 4096 bytes each). SQLite operates on a page-based storage system, where each page can hold data like rows, indexes or metadata.
### Implement Data Storage with Pages
1. Page header: Each page start with a header specifying the page type (table, index, etc.), size and metadata.
2. B-Tree for tables: Implement B-tree to store data rows, making it easier to organize and retrieve rows by primary key
3. B-Tree for indexes: (research more)
### Parsing SQL Statement
1. Tokenizer: Start by creating a tokenizer that can break SQL statements into components like SELECT, FROM, WHERE, etc. 
2. Parser: After tokenizing, use a parser to interpret the SQL statement's structure.
### Building a Virtual Machine (VM) (research more)
1. Instruction set: Define a small set of instruction (like OpenTable, InsertRow, SearchIndex, etc.) for managing data.
2. Execution: The VM should interpret parsed SQL statements and execute the approciate instructions. Each SQL command translate into a set of instructions that the VM executes.
### Implement Transaction Management
#### ACID
- **Atomicity**: Use write-ahead log (WAL) to ensure that change will be rolled back if incomplete.
- **Consistency**: Ensure that each transaction moves the database from one valid state to another.
- **Isolation**: Implement locks to prevent transactions from intefering with each other. (Race condition)
- **Durability**: Write data to disk reliably so it remains available after a crash.
### Optiomize with Caching and Memory Management
1. Page Cache: Implement a page cache to store recently used pages in memory for faster access.
2. Memory Management: Efficently manage memory to avoid excessive usage, especially during complex queries.
### Error Handling and Testing
1. Error Codes: Implement consistent error code like syntax errors, type mismatches or out-of-bound data.
2. Testing: Test your database with simple queries like CREATE, SELECT, INSERT commands then expand more complex queries.
## Each of these component is an independent module, allowing you to iterate and improve.
