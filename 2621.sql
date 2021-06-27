select products.name from providers
join products on providers.id=products.id_providers
where products.amount between 10 and 20 and providers.name like 'P%'
