#03
select * from orders where OrderDate between '1996-11-01' and '1996-11-30';

#04
select Distinct(ShipperName)  from orders
join shippers using (ShipperID)
where OrderDate between '1996/11/01' and '1996/11/30' ;


#05
select employeeID , format(sum(quantity*price),2) as total from 
employees join orders using (EmployeeID)
join order_details using (OrderID)
join products using (ProductID)
group by EmployeeID
order by sum(quantity*price) desc ;

#06
select OrderID, ProductID from order_details
where ProductID in 
(select ProductID from products where SupplierID in
(select SupplierID from suppliers where SupplierName = 'Tokyo Traders' ));

#652110066 Kriitapol Parnsa-ngard
#652110135 Pannicha Na lampang
#652110182 Annop Oonnom
