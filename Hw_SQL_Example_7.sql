-- SET search_path = my_schema, "$user", salesordersexample;
-- SET search_path = my_schema, "$user", entertainmentagencyexample;
SET search_path = my_schema, "$user", recipesexample;
-- 1 - Ex
-- select orderdate, custlastname
-- from orders
-- join customers using (customerid)
-- order by orderdate

-- 2 - Ex
-- select distinct vendors.VendorID, 
-- vendors.VendName,
-- product_vendors.wholesaleprice
-- from vendors 
-- join product_vendors 
-- on vendors.VendorID = product_vendors.VendorID
-- where product_vendors.wholesaleprice < 100

-- 3 - Ex
-- select distinct customers.custlastname, employees.emplastname
-- from customers, employees 
-- where customers.custlastname = employees.emplastname
-- order by customers.custlastname 

-- 4 - Ex
-- SELECT entertainers.EntStageName,
-- agents.AgtZipCode
-- FROM agents
-- inner join entertainers
-- on agents.AgtZipCode = entertainers.EntZipCode

-- 5 - Ex
-- select distinct recipeTitle, ingredientname from recipes 
-- inner join recipe_ingredients
-- on Recipes.recipeID = recipe_ingredients.ingredientid
-- inner join ingredients
-- on recipe_ingredients.ingredientid = ingredients.ingredientid 
-- where ingredientname = 'Beef'

-- 6 - Ex
-- select distinct i.ingredientname
-- from ingredients as i
-- inner join recipes as r 
-- on r.recipeid = i.ingredientid
-- where i.ingredientname like 'Milk'

-- 7 - Ex
-- select distinct o.CustomerID
-- from Orders as o
-- inner join Order_Details as od 
-- on od.OrderNumber= o.OrderNumber
-- inner join Products as p 
-- on p.ProductNumber=od.ProductNumber
-- inner join Categories as cp 
-- on cp.CategoryID=p.CategoryID
-- where cp.CategoryDescription = 'Bikes'