# 📚 Book Lending Library

## 📖 Overview
The **Book Lending Library** is a web application built using **Ruby on Rails 8**, allowing users to browse books, borrow them, and return them. The application implements a borrowing system where each user can borrow books for a period of **two weeks** before returning them. The project follows best practices, including model validations, error handling, and high test coverage.

## ✨ Features
- 📌 **User Authentication**: Users can register, log in, and log out using Rails 8's default authentication system.
- 📚 **Book Management**: List all available books with details (title, author, ISBN) and borrowing status.
- ⏳ **Borrowing System**: Users can borrow a book if it's available, and a due date is assigned (2 weeks from borrowing date).
- 🔄 **Returning System**: Users can return books from their profile.
- 👤 **User Profile**: Users can view the books they have borrowed and their due dates.
- ✅ **Model Validations**: Ensures data integrity (e.g., unique ISBN, required fields for books and users).
- 🚨 **Error Handling**: Prevents borrowing an already borrowed book and other logical errors.
- 🛠 **Testing**: Comprehensive test coverage for models, controllers, and views using Rails' default testing framework.
- 📊 **Admin Dashboard (Optional Future Feature)**: Manage books, users, and borrowed books.
- 📩 **Email Notifications** for overdue books.
- 📊 **Admin Dashboard** to manage users and books.
- 💰 **Fine System** for overdue returns.

## 🛠 Technologies Used
- **Ruby on Rails 8** (backend framework)
- **PostgreSQL** (database)
- **Bootstrap** (for styling)
- **Rails 8 Authentication Generator** (authentication)
- **Stimulus.js** (for interactive UI elements)
- **Minitest** (for testing)

## 🚀 Installation & Setup

### 1️⃣ Prerequisites
Ensure you have the following installed:
- Ruby `>= 3.3.5`
- Rails `>= 8.0.1`
- PostgreSQL
- Bundler

### 2️⃣ Clone the Repository
```bash
 git clone https://github.com/njonge9/book_lending_library.git
 cd book_lending_library
```

### 3️⃣ Install Dependencies
```bash
bundle install
```

### 4️⃣ Setup Database
```bash
rails db:create db:migrate db:seed
```

### 5️⃣ Start the Server
```bash
rails server
```
Visit `http://localhost:3000` in your browser.

## 🧪 Running Tests
To run the test suite, execute:
```bash
rails test
```

## 🔥 Future Enhancements
- 🛒 **Payment Integration** (M-Pesa/PayPal) for fines.
- 📊 **Admin Dashboard** to manage users and books.
- 📈 **Analytics** for fines and payments.

## 👥 Contributors
- **Fred Njonge** - [GitHub](https://github.com/njonge9)

## 📄 License
This project is open-source and available under the [MIT License](LICENSE).

