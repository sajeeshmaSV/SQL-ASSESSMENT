CREATE TABLE books(
  book_id INT  AUTO_INCREMENT,
  title VARCHAR(100) NOT NULL,
  isbn VARCHAR(20)UNIQUE,
  price DECIMAL(10,2),
  published_date DATE,
  in_stock INT DEFAULT 1, PRIMARY KEY(book_id));
  
 INSERT INTO books(title,isbn,price,published_date,in_stock) 
 VALUES('Hidden Man','11A',566,'2014-04-18',TRUE),
 ('The Hobbit','12B',100,'2006-04-19',TRUE),
 ('Dune ','14A',300,'2013-03-15',TRUE),
 (' Crystal ','20A',999,'2004-07-13',TRUE),
 (' Rain Drops','18DA',500,'2024-02-11',TRUE);
 
 DESC books;
   
   ALTER TABLE books CHANGE COLUMN title  book_title VARCHAR(100);
   
   ALTER TABLE books MODIFY price FLOAT;
   
   ALTER TABLE books ADD COLUMN author_name VARCHAR(50) NOT NULL DEFAULT 'Unknown';
   
   UPDATE books SET price = price * 0.90 WHERE published_date < '2020-01-01';
   
   DELETE FROM books WHERE in_stock = 0;
   
   ALTER TABLE books AUTO_INCREMENT = 101;
   
   SELECT book_title, price, published_date FROM books WHERE book_title LIKE '%History%'
   AND price > 300 ORDER BY price DESC;
   
   CREATE TABLE members (
    member_id INT AUTO_INCREMENT ,
    member_name VARCHAR(100) NOT NULL,
    join_date DATE NOT NULL DEFAULT (CURDATE()),PRIMARY KEY(member_id ));
INSERT INTO members (member_name, join_date)
VALUES
('Alice', '2024-01-15'),
('Bob', '2024-05-20'),
('Charlie', '2023-09-12'),
('David', '2024-11-08'),
('Emma', '2025-02-14'),
('Frank', '2024-03-25'),
('Grace', '2022-07-30'),
('Helen', '2024-08-18');

SELECT * FROM members WHERE YEAR(join_date) = 2024 ORDER BY member_name ASC;
