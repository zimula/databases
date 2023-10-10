use webshop;
insert into customers(customerName, mobile, email, addresse, points
)
values
("Mark", "0200234", "someMail", "some location", 10),
("Jack", "1111111", "someMail", "some location", 8)
;
insert into products(productName, unitPrice, productDescription
)
values
("bars", 10, "used for lifting"),
("weights",2, "to be combined with bars")
;
insert into stock(productID, quantity
)
values
(1, 20),
(2, 100)
;
insert into shippers(shipperName
)
values
("Fast"),
("Slow")
;
insert into orders(orderDate, customerID, shipperID, shipDate, deliverDate, orderStatus
)
values
("2022-08-11",1, 1,"2022-08-15", "2022-08-25", "Delivered"),
("2022-08-20", 2, 2, "2022-08-25", "2022-08-30", "Pending")
;
insert into shoppingCart(productID, quantity, price, orderID
)
values
(1, 15, 150, 1),
(2, 50, 100, 2 )
;
