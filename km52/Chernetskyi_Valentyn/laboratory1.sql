-- LABORATORY WORK 1
-- BY Chernetskyi_Valentyn
/*---------------------------------------------------------------------------
1.Створити схему даних з назвою – прізвище студента, у якій користувач може:
змінювати структуру таблиць та видаляти дані.
4 бали
---------------------------------------------------------------------------*/
--Код відповідь:
CREATE USER chernetskyi IDENTIFIED D BY chernetskyi DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP";
  ALTER USER chernetskyi QUOTA 100M ON USERS;
  GRANT "CONNECT" TO chernetskyi;
  GRANT
CREATE ANY TABLE TO chernetskyi;
  GRANT ALTER ANY TABLE TO chernetskyi;
  GRANT
  SELECT ANY TABLE TO chernetskyi;
  /*---------------------------------------------------------------------------
  2. Створити таблиці, у яких визначити поля та типи. Головні та зовнішні ключі
  створювати окремо від таблиць використовуючи команди ALTER TABLE.
  Турист забронював готель.
  4 бали
  ---------------------------------------------------------------------------*/
  --Код відповідь:
  CREATE TABLE HOTELS
    (
      hotel_name VARCHAR2(30) NOT NULL
    );
  ALTER TABLE HOTELS ADD CONSTRAINT hotel_pk PRIMARY KEY (hotel_name);
  CREATE TABLE CLIENTS
    ( client_name VARCHAR2(30) NOT NULL
    );
  ALTER TABLE CLIENTS ADD CONSTRAINT client_pk PRIMARY KEY (client_name);
  /* ---------------------------------------------------------------------------
  3. Надати додаткові права користувачеві (створеному у пункті № 1) для створення таблиць,
  внесення даних у таблиці та виконання вибірок використовуючи команду ALTER/GRANT.
  Згенерувати базу даних використовуючи код з теки OracleScript та виконати запити:
  ---------------------------------------------------------------------------*/
  --Код відповідь:
  GRANT INSERT ANY TABLE TO chernetskyi;
  /*---------------------------------------------------------------------------
  3.a.
  Як звуть покупця, що не купив найдорожчий продукт.
  Виконати завдання в Алгебрі Кодда.
  4 бали
  ---------------------------------------------------------------------------*/
  --Код відповідь:
  /*---------------------------------------------------------------------------
  3.b.
  Вивести номер замовлення та назву товару у даному замовленні, що має найнижчу ціну у рамках замовлення.
  Виконати завдання в SQL.
  4 бали
  ---------------------------------------------------------------------------*/
  --Код відповідь:
  SELECT Orders.ORDER_NUM,
    Products.PROD_NAME,
    
  FROM Orders, Products
  WHERE MIN(Products.PROD_PRICE)
  /*---------------------------------------------------------------------------
  c.
  Вивести країну та пошту покупця, як єдине поле client_name у нижньому регістрі, для тих покупців, що купляли продукти у постачальника з іменем "James".
  Виконати завдання в SQL.
  4 бали
  ---------------------------------------------------------------------------*/
  --Код відповідь:
  
  SELECT 
  TRIM  (cust_country)
    || ', '
    || TRIM  (cust_email) AS "client_name"
  FROM Customers, Vendors
  WHERE VENDORS.VEND_NAME='James';
