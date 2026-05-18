#  Advanced Ticket Booking System

## 📚 MCA Practical Mini Project

This project demonstrates a **high-concurrency ticket booking system** using advanced SQL transaction management and locking mechanisms.  
The system ensures **safe seat booking, no double booking, and consistent transactions** when multiple users access the database simultaneously.

---

# ✨ Features

✅ Transaction-safe seat booking  
✅ Row-level locking using `FOR UPDATE NOWAIT`  
✅ Parallel booking using `SKIP LOCKED`  
✅ Deadlock simulation & prevention  
✅ Optimistic locking using version control  
✅ Rollback handling on payment failure  
✅ Isolation level testing  
✅ Auto-release locked seats after timeout  
✅ Waiting queue mechanism for fully booked shows  

---

# 🗂️ Database Tables

## 👤 Users
Stores user information.

## 🎬 Shows
Stores show/trip details.

## 💺 Seats
Stores seat availability status.

## 🧾 Bookings
Stores booking records with timestamps and booking status.

---

# 📄 SQL Files

| 📁 File Name | 📌 Description |
|-------------|----------------|
| `schema.sql` | Database schema creation |
| `booking.sql` | Transaction-safe booking procedure |
| `locking.sql` | Row-level locking examples |
| `check_booking.sql` | Seat availability checking |
| `display_seat.sql` | Display available/booked seats |
| `rollback.sql` | Failure and rollback handling |
| `isolation.sql` | Isolation level analysis |
| `version_update.sql` | Optimistic locking using version column |
| `bonus.sql` | Auto-release & waiting queue mechanism |

---

#  Concepts Used

🔹 Transactions  
🔹 COMMIT & ROLLBACK  
🔹 Row-Level Locking  
🔹 Deadlock Handling  
🔹 Optimistic Locking  
🔹 Isolation Levels  
🔹 Concurrent Transactions  

---

#  Expected Outcomes

✔️ No double booking  
✔️ Safe concurrent transactions  
✔️ Consistent booking records  
✔️ Efficient multi-user handling  

---

#  OUTPUTS

Execution screenshots and outputs are available in the `OUTPUTS` folder.

---

#  Technologies Used

💻 SQL  
💻 MySQL / PostgreSQL  
💻 Transaction Management  
💻 Concurrency Control  

---

#  Author

MCA Practical Mini Project Submission
