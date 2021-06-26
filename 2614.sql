select name, rentals_date from customers
join rentals on customers.id =rentals.id_customers
where rentals.rentals_date>='2016-09-01' and rentals.rentals_date<='2016-09-30'
