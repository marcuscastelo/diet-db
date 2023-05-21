-- ------------------------------
-- OPTION
-- ------------------------------

OPTION IMPORT;

-- ------------------------------
-- TABLE: day
-- ------------------------------

DEFINE TABLE day SCHEMALESS PERMISSIONS NONE;

-- ------------------------------
-- TABLE: food
-- ------------------------------

DEFINE TABLE food SCHEMALESS PERMISSIONS NONE;

-- ------------------------------
-- TABLE: meal
-- ------------------------------

DEFINE TABLE meal SCHEMALESS PERMISSIONS NONE;

-- ------------------------------
-- TABLE: mealitem
-- ------------------------------

DEFINE TABLE mealitem SCHEMALESS PERMISSIONS NONE;

-- ------------------------------
-- TRANSACTION
-- ------------------------------

BEGIN TRANSACTION;

-- ------------------------------
-- TABLE DATA: day
-- ------------------------------

UPDATE day:today CONTENT { id: day:20230520 };

-- ------------------------------
-- TABLE DATA: food
-- ------------------------------

UPDATE food:frango CONTENT { id: food:frango };

-- ------------------------------
-- TABLE DATA: meal
-- ------------------------------

UPDATE meal:breakfast CONTENT { id: meal:breakfast };
UPDATE meal:dinner CONTENT { id: meal:dinner };
UPDATE meal:lunch CONTENT { id: meal:lunch };
UPDATE meal:snack CONTENT { id: meal:snack };

-- ------------------------------
-- TABLE DATA: mealitem
-- ------------------------------

UPDATE mealitem:teste CONTENT { id: mealitem:teste };


-- ------------------------------
-- TRANSACTION
-- ------------------------------

COMMIT TRANSACTION;

