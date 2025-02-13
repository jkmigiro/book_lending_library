# Book Lending Library Application

## Ruby Version
- Ruby 3.2+
- Rails 8+

## System Dependencies
- SQLite3
- Git
- Import Maps
- Turbo
- Stimulus

## Installation
1. Clone the repository:
   ```sh
   git clone https://github.com/jkmigiro/book_lending_library
   cd book_lending_library
   ```
2. Install dependencies:
   ```sh
   bundle install
   ```
3. Set up the database:
   ```sh
   rails db:setup
   ```
4. Install additional packages:
   ```sh
   rails importmap:install
   rails turbo:install stimulus:install
   ```
5. Start the server:
   ```sh
   rails server
   ```
6. Open `http://localhost:3000` in your browser.

## Configuration
- Ensure that `config/database.yml` is set up for SQLite3.
- Add necessary environment variables if needed.

## Database Creation & Initialization
- Run migrations:
  ```sh
  rails db:migrate
  ```

## Endpoints

### Books
- `GET /books` - List all books
- `GET /books/:id` - Show a book
- `POST /books` - Create a book
- `POST /books/:id` - Update a book
- `DELETE /books/:id` - Delete a book
- '
### Borrowings
- `GET /borrowings` - List all borrowings
- `GET /borrowings/new` - New borrowing form
- `POST /borrowings` - Create a borrowing
- `GET /borrowings/:id/return_book` - Return a borrowed book
- `DELETE /borrowings/:id` - Delete a borrowing
### Borrowers
- `GET /borrowers` - List all borrowers
  
## Running Tests
- Run all tests:
  ```sh
  rails test
  ```  


## License
MIT License.
