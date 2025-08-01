CREATE DATABASE IF NOT EXISTS prueba;

USE prueba;

-- Crear tabla de autores
CREATE TABLE if not exists Author (
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL
);

-- Crear tabla de publicaciones
CREATE TABLE if not exists Post (
    post_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    word_count INT NOT NULL,
    views INT NOT NULL,
    author_id INT NOT NULL,
    FOREIGN KEY (author_id) REFERENCES Author(author_id)
);

-- Insertar autores (únicos)
INSERT INTO Author (name) VALUES
('Maria Charlotte'),
('Juan Perez'),
('Gemma Alcocer');

-- Insertar publicaciones
INSERT INTO Post (title, word_count, views, author_id) VALUES
('Best Paint Colors', 814, 14, 1),
('Small Space Decorating Tips', 1146, 221, 2),
('Hot Accessories', 986, 105, 1),
('Mixing Textures', 765, 22, 1),
('Kitchen Refresh', 1242, 307, 2),
('Homemade Art Hacks', 1002, 193, 1),
('Refinishing Wood Floors', 1571, 7542, 3);
