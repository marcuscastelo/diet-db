-- ------------------------------
-- OPTION
-- ------------------------------

OPTION IMPORT;

-- ------------------------------
-- TABLE: food
-- ------------------------------

DEFINE TABLE food SCHEMALESS PERMISSIONS NONE;

-- ------------------------------
-- TRANSACTION
-- ------------------------------

BEGIN TRANSACTION;

-- ------------------------------
-- TABLE DATA: food
-- ------------------------------

UPDATE food:0yo0pwfgk7webon8pcwk CONTENT { id: food:0yo0pwfgk7webon8pcwk, name: 'Pizza0.99861422424639', price: 11.87970542311925 };
UPDATE food:93bjztj6p6opfzzu3cre CONTENT { id: food:93bjztj6p6opfzzu3cre, name: 'Pizza0.11911392309568591', price: 11.355079835421721 };
UPDATE food:a0uwycneb9bqyj1jrrey CONTENT { id: food:a0uwycneb9bqyj1jrrey, name: 'Pizza0.40470246327232884', price: 11.201792391791415 };
UPDATE food:h2reo5cu32bth6j2n0o1 CONTENT { id: food:h2reo5cu32bth6j2n0o1, name: 'Pizza0.3514632551374717', price: 11.391311715878889 };
UPDATE food:l9ypnukq52xp6j2vcmdb CONTENT { id: food:l9ypnukq52xp6j2vcmdb, name: 'Pizza0.7046233375614237', price: 11.571490336821098 };
UPDATE food:mrsq0g7oa7t66advpqrf CONTENT { id: food:mrsq0g7oa7t66advpqrf, name: 'Pizza0.09105934577125852', price: 11.49460600148304 };
UPDATE food:vnh7uwverc8rp1c83wq8 CONTENT { id: food:vnh7uwverc8rp1c83wq8, name: 'Pizza0.630223982481547', price: 11.098545130423492 };

-- ------------------------------
-- TRANSACTION
-- ------------------------------

COMMIT TRANSACTION;

