-- Step 1: Add foreign key constraint
ALTER TABLE products
ADD CONSTRAINT fk_products_categories
FOREIGN KEY (category_id) REFERENCES categories(id);

-- Step 2: Allow NULL values
ALTER TABLE products
MODIFY COLUMN category_id INT NULL;
