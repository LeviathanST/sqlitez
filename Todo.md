[ ] Step 1: Define the core structure and scope 
    [x] Libraries: null
    [x] Programming language: Zig
    [ ] Create a basic database file structure.
        [ ] Metadata Head: Reserve at the beginning of main database file for metadata (version number, page size, number of pages):
            [ ] - Main file
            [ ] - Page
    [ ] Create a binary file:
        [ ] - Fixed-width.
        [ ] - Page types (table, index, freelist).
    [ ] Initial Page Layout: Implemting the layout for two types of pages - table and index:
        [ ] - Table
        [ ] - Index

[ ] Step 2: Implementing the page structure and access. 
    [ ] Page read/write operation: Implementing methods to read from and write to binary database file. Seeking to the correct offset in the file and reading or writing fixed-size chunks of size.
    [ ] Basic page header: Design a page header format (e.g., page type, size, number of rows, metadata).

[ ] Step 3: Develop the tokenizer and parser for basic SQL commands
    [ ] Tokenizer:
        [ ] - Create a simple tokenizer that can recognize basic SQL keywords (e.g., SELECT, INSERT, CREATE), identifiers, literals, and operators.
        [ ] - Store tokens in a list or array for further processing by the parser.
    [ ] Parser for Basic Commands:
        [ ] - Start with simple SQL commands like CREATE TABLE, INSERT, and SELECT.
        [ ] - Define a grammar that helps the parser break down these commands into components like table names, column definitions, and values.
        [ ] - The parser should generate an intermediate representation (IR) of each SQL command, which will later be interpreted by Virtual Machine.

[ ] Step 4: Build the Virtual Machine Instruction Set
    [ ] Define VM Instructions:
        [ ] - CreateTable, InsertRow and Select.
        [ ] - Each instruction should map to specific operations in code.
    [ ] Execute Instructions: 
        [ ] - Create a loop to execute instruction sequentially (e.g., InsertRow instruction, it should allocate space in the revalent page, populate it with row dataand update the page metadata).



