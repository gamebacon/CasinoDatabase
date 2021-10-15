
CREATE TABLE products
(
id int not null primary key auto_increment,
name VARCHAR(255) not null,
price float not null
);
alter table products auto_increment = 100;
select * from products;

insert into products (name, price) values
("Banana", 0.8),
("Milk", 1.4),
("Apple", .4),
("Bread", 2),
("Butter", 3),
("Beef", 5)
;

######################################### 1
select * from products where price > ( select avg(price) from products);
############################################## 2
alter table products add column section varchar(255) after id;

update products set section = "Bakery" where name = "Bread";
update products set section = "Dairy" where name = "Butter";
update products set section = "fruit" where name = "Banana";
update products set section = "fruit" where name = "Apple";
update products set section = "Dairy" where name = "Milk";
update products set price = null where name = "Milk";

alter table products modify column price float;


select * from products p where price >= (
	select avg(price) from products where section = p.section
);

################################################################ 3

select * from products p 
where not exists(select name from products where name = p.name ); 

################################################################ 4

create table arbetare
(
	namn varchar(255) not null,
    slutatJobba DATE,
    planerarAttSlutaJobba DATE
);


insert into arbetare (namn, slutatJobba, planerarAttSlutaJobba) values
	("Peter", null, "2021-12-31"),
	("Amanda", null, null),
	("William", "2021-9-10", null);

select namn, coalesce(slutatJobba, planerarAttSlutaJobba, "Jobbar fortfarande") as Slutar from arbetare;


################################################################ 5
create table kunder (
	namn varchar(255),
    balance float,
    önskadProdukt varchar(255)
);

insert into kunder values
 ("William", 7000.98, "Milk"),
 ("Oskar", 4.98, "Banana"),
 ("Emil", 0, "Apple"),
 ("Michael", 200000, "Bread");
 

create table transactionResult (
namn varchar(255), 
wantedProduct varchar(255), 
remainingBalance float, 
succesfull boolean
);
describe transactionResult;



insert into transactionResult (namn, wantedProduct, remainingBalance, succesfull)
	select * from kunder kund, products product where 
    (namn = kund.namn, wantedProduct = product.name, remainingBalance = kund.balance-product.price, succesfull = remainingBalance >= 0);




 ################################################################# 7
 create table productReview(
 name varchar(255),
 price float,
 review varchar(45)
 );
 
 
 insert into productReview
 select name, price,
	case 
		when price <= 1 then "Cheap"
        when price <= 2 then "Normal"
        when price <= 4 then "Expensive"
        else "Overpriced"
	end as review
from products;
 
 
 select * from productReview;
 ################################################################### 8
 create view productsView as
	select * from products;

select * from productsView;
 
	select * from kunder kund inner join products product where kund.balance >= product.price;
    #select * from products p inner join kunder k where k.balance >= p.price;

 ################################################################### 9
	DELIMITER $$
		create procedure get_products()
        begin 
			select * from products;
		end$$
	DELIMITER ;
    
 ################################################################### 
 
 
 
 
 




