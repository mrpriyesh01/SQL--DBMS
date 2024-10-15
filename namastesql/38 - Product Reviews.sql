Your task is to write an SQL query to find all product reviews containing the word "excellent" or "amazing"
in the review text. However, you want to exclude reviews that contain the word "not" immediately before "excellent" or "amazing". 
Please note that the words can be in upper or lower case or combination of both. 

Your query should return the review_id,product_id, and review_text for each review meeting the criteria, display the output in
ascending order of review_id.


code=
SELECT review_id, product_id, review_text
FROM product_reviews
WHERE review_text LIKE '%excellent%' 
   OR review_text LIKE '%amazing%'
ORDER BY review_id
limit 6;


 
