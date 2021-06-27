select movies.id, movies.name from movies 
join prices 
on movies.id_prices = prices.id and prices.value<2.00
