CREATE DATABASE posttest_db;

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `isbn` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `sinopsis` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `genre` varchar(255) NOT NULL,
  PRIMARY KEY (id)
);

ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `isbn` (`isbn`);

--PERINTAH CRUD

-- create books baru
INSERT INTO `books` (`id`, `isbn`, `judul`, `sinopsis`, `penulis`, `genre`) VALUES
(1, 12340, 'buku1', 'ini adalah sinopsis buku 1', 'ani', 'romance'),
(2, 12341, 'buku2', 'ini adalah sinopsis buku 2', 'ani', 'action');

-- read semua books
SELECT * FROM books;

-- read judul book dengan penulis ani
SELECT judul FROM books WHERE penulis = 'ani';

--Update satu book
UPDATE books
SET judul = 'editbuku1', sinopsis = 'edit sinopsis buku1'
WHERE id = 1;

--Delete satu book
DELETE FROM books WHERE judul = 'buku2';

