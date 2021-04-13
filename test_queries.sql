select batch_id, count(*) from review_id_table GROUP BY batch_id;

select  * from review_id_table limit 10;

select batch_id, count(*) from products GROUP BY batch_id;

select  * from products limit 10;

select batch_id, count(*) from customers GROUP BY batch_id;

select  * from customers limit 10;

select batch_id, count(*) from reviews GROUP BY batch_id;

select  * from reviews limit 10;

select batch_id, count(*) from vine_table GROUP BY batch_id;

select  * from vine_table limit 10;

SELECT DISTINCT t2.star_rating, t2.helpful_votes, t2.total_votes, t2.vine, t1.verified_purchase
FROM reviews AS t1 INNER JOIN vine_table AS t2 ON t1.review_id = t2.review_id;

SELECT DISTINCT t2.star_rating, t2.helpful_votes, t2.total_votes, t2.vine, t1.verified_purchase
FROM reviews AS t1 INNER JOIN vine_table AS t2 ON t1.review_id = t2.review_id
AND t2.total_votes>=10 AND t2.helpful_votes/t2.total_votes >= 0.5 AND t2.batch_id =2;