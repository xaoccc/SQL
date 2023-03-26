-- Step 1: Add foreign key constraint
ALTER TABLE products
ADD CONSTRAINT fk_products_categories
FOREIGN KEY (category_id) REFERENCES categories(id);

-- Step 2: Allow NULL values
ALTER TABLE products
MODIFY COLUMN category_id INT NULL;

-- The first statement adds a foreign key constraint to the category_id column in the products table, referencing the id column in the categories table.

-- The second statement modifies the category_id column to allow NULL values, which is necessary because foreign key constraints cannot be added to columns that are --defined as NOT NULL.

-- Note that if the category_id column already contains data that violates the foreign key constraint, the ALTER TABLE statement will fail. You will need to update the data in the category_id column to match the values in the referenced column in the categories table before adding the foreign key constraint.
