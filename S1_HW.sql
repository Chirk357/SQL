/* Задание 1.
Создайте таблицу с мобильными телефонами, используя графический интерфейс. 
Заполните БД данными. 
Добавьте скриншот на платформу в качестве ответа на ДЗ
*/

CREATE DATABASE IF NOT EXISTS Sem1_HW;
USE Sem1_HW;
CREATE TABLE IF NOT EXISTS phones
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    model VARCHAR(45),
    manufacturer VARCHAR(45),
    productCount INT,
    price INT
);
INSERT phones (model, manufacturer, productCount, price)
VALUES 
	("iphone Pro", "Apple", "5", "100000"),
    ("Galaxy89", "Samsung", "8", "75000"),
    ("Galaxy50", "Samsung", "2", "70000"),
    ("S7 Pro", "Huawei", "1", "40000"),
	("S9 Max", "Huawei", "6", "80000");

SELECT *
from phones;

/* Задание 2.
Выведите название, производителя и цену для товаров, количество которых превышает 2 (SQL - файл, скриншот, либо сам код)
*/

SELECT model, manufacturer, price
FROM phones
WHERE productCount > "2";

/* Задание 3. Выведите весь ассортимент товаров марки “Samsung” */

SELECT model, price
FROM phones
WHERE manufacturer = "Samsung";

/* Задание 4. Выведите информацию о телефонах, где суммарный чек больше 100 000 и меньше 145 000* */
SELECT *
FROM phones
WHERE productCount * price > "100000" AND
	productCount * price < "145000";

/* Задание 4.1 Товары, в которых есть упоминание "Iphone" */
SELECT *
FROM phones
WHERE model LIKE "Iphone%";

/* Задание 4.2 Товары, в которых есть упоминание "Galaxy" */
SELECT *
FROM phones
WHERE model LIKE "Galaxy%";

/* Задание 4.3 Товары, в которых есть ЦИФРЫ */
-- неа --

/* Задание 4.3 Товары, в которых есть ЦИФРА "8" */
SELECT *
FROM phones
WHERE model LIKE "%8%";