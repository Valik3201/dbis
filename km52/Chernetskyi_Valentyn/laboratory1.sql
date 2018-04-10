/*---------------------------------------------------------------------------
1.Ñòâîðèòè ñõåìó äàíèõ ç íàçâîþ – ïð³çâèùå ñòóäåíòà, ó ÿê³é êîðèñòóâà÷ ìîæå:
çì³íþâàòè ñòðóêòóðó òàáëèöü òà âèäàëÿòè äàí³.
4 áàëè
---------------------------------------------------------------------------*/
--Êîä â³äïîâ³äü:
CREATE USER chernetskyi IDENTIFIED D BY chernetskyi DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP";
  ALTER USER chernetskyi QUOTA 100M ON USERS;
  GRANT "CONNECT" TO chernetskyi;
  GRANT
CREATE ANY TABLE TO chernetskyi;
  GRANT ALTER ANY TABLE TO chernetskyi;
  GRANT
  SELECT ANY TABLE TO chernetskyi;
  /*---------------------------------------------------------------------------
  2. Ñòâîðèòè òàáëèö³, ó ÿêèõ âèçíà÷èòè ïîëÿ òà òèïè. Ãîëîâí³ òà çîâí³øí³ êëþ÷³
  ñòâîðþâàòè îêðåìî â³ä òàáëèöü âèêîðèñòîâóþ÷è êîìàíäè ALTER TABLE.
  Òóðèñò çàáðîíþâàâ ãîòåëü.
  4 áàëè
  ---------------------------------------------------------------------------*/
  --Êîä â³äïîâ³äü:
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
  3. Íàäàòè äîäàòêîâ³ ïðàâà êîðèñòóâà÷åâ³ (ñòâîðåíîìó ó ïóíêò³ ¹ 1) äëÿ ñòâîðåííÿ òàáëèöü,
  âíåñåííÿ äàíèõ ó òàáëèö³ òà âèêîíàííÿ âèá³ðîê âèêîðèñòîâóþ÷è êîìàíäó ALTER/GRANT.
  Çãåíåðóâàòè áàçó äàíèõ âèêîðèñòîâóþ÷è êîä ç òåêè OracleScript òà âèêîíàòè çàïèòè:
  ---------------------------------------------------------------------------*/
  --Êîä â³äïîâ³äü:
  GRANT INSERT ANY TABLE TO chernetskyi;
  /*---------------------------------------------------------------------------
  3.a.
  ßê çâóòü ïîêóïöÿ, ùî íå êóïèâ íàéäîðîæ÷èé ïðîäóêò.
  Âèêîíàòè çàâäàííÿ â Àëãåáð³ Êîääà.
  4 áàëè
  ---------------------------------------------------------------------------*/
  --Êîä â³äïîâ³äü:
  /*---------------------------------------------------------------------------
  3.b.
  Âèâåñòè íîìåð çàìîâëåííÿ òà íàçâó òîâàðó ó äàíîìó çàìîâëåíí³, ùî ìàº íàéíèæ÷ó ö³íó ó ðàìêàõ çàìîâëåííÿ.
  Âèêîíàòè çàâäàííÿ â SQL.
  4 áàëè
  ---------------------------------------------------------------------------*/
  --Êîä â³äïîâ³äü:
  SELECT Orders.ORDER_NUM,
    Products.PROD_NAME,
    MIN(Products.PROD_PRICE)    
  FROM Orders, Products
  
  /*---------------------------------------------------------------------------
  c.
  Âèâåñòè êðà¿íó òà ïîøòó ïîêóïöÿ, ÿê ºäèíå ïîëå client_name ó íèæíüîìó ðåã³ñòð³, äëÿ òèõ ïîêóïö³â, ùî êóïëÿëè ïðîäóêòè ó ïîñòà÷àëüíèêà ç ³ìåíåì "James".
  Âèêîíàòè çàâäàííÿ â SQL.
  4 áàëè
  ---------------------------------------------------------------------------*/
  --Êîä â³äïîâ³äü:
  
  SELECT 
  TRIM  (cust_country)
    || ', '
    || TRIM  (cust_email) AS "client_name"
  FROM Customers, Vendors
  WHERE VENDORS.VEND_NAME='James';
