use webshop;
#opgave1: mest solgt produkt
select s.productID,p.productName, max(s.quantity)  
from shoppingcart s join products p
on s.productID = p.productID
;
#opgave2:ordre der er ikke shipped. Her bruge vi status 
select o.orderID, c.customerName, o.orderStatus
from orders o join customers c 
on o.customerID = c.customerId
where orderStatus = "Pending"
;
#opgave3: shipping price:
#Join shipper til orders til shopping cart men glemt at indsæt prisen hos shipperen.  


	delimiter //
	create procedure inventoryalert(
    IN product int,
	OUT warning varchar(10)
	)
	begin
		if((select antal from inventory_table where productNr = product)<5) then
		set warning = "refill"; 
        else
			set warning = "fine";
		end if;
	select @warning;
	end//
    
    
    
	create trigger logger
	after insert on orders
	for each row
	insert into log_orders(orderNr, action, bruger, tidspunkt)
	values(20210226001, "insert", human, time);
    
    
    
    create trigger logger
	after delete on orders
	for each row
	insert into log_orders(orderNr, action, bruger, tidspunkt)
	values(20210226001, "delete", human, time)
    
    
    create trigger logger
	after update on orders
	for each row
	insert into log_orders(orderNr, action, bruger, tidspunkt)
	values(20210226001, "update", human, time)
    
    
    
    
    
    
    
    
    
    