create database mobiles;
use mobiles;
select * from mobile;


-- check mobile features and price
select phone_name , price from mobile ;

-- price and name of 5 most expensive phones
select phone_name , price from mobile order by price desc limit 5;

-- price and name of 5 cheapest phones
select phone_name , price from mobile order by price asc limit 5;

-- list of top 5 samsung phones with price and all features
select phone_name , price from mobile where brands="samsung" order by price desc limit 5;

-- must have android phone then top 5 high price android phones 
select phone_name , price from mobile where Operating_System_Type="android" order by price desc limit 5;

-- must have android phone , list then top 5 lower price android phone
 select phone_name , price from mobile where Operating_System_Type="android" order by price asc limit 5;
 
-- must have ios phone , list then top 5 high price ios phone 
select phone_name , price from mobile where Operating_System_Type="ios" order by price desc limit 5;

-- must have ios phone , list then top 5 lower price ios phone 
select phone_name , price from mobile where Operating_System_Type="ios" order by price asc limit 5;

-- write a query which phone supports 5G and also top 5 phones with 5G support
 select * from mobile where 5G_Availability="yes" order by price desc limit 5;
 
 -- total price of all mobile is to be found with brand name
 select brands , sum(price) from mobile group by brands;