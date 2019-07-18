--tables of interest are:
--sfo_calendar, sfo_listings, sfo_reviews

--explore the data
select * from sfo_calendar limit 25
select * from sfo_listings limit 5
select * from sfo_reviews limit 5

--what's the most expensive listing?
select *
	from sfo_listings
	order by price desc
--answer
	--The most expensive listing is a house listed to $10K.
	--It is an entire home in the Western Addition neighbourhood.

--What neighbourhood seems to be the most popular?
select neighbourhood, count(*)
	from sfo_listings
	group by neighbourhood
--answer
	--The most popular neighbourhood is Potrero Hill.
	--It has 192 listings.

--What time of year is the cheapest to go to San Fran?
select date_part('month', calender_date) as mon, 
sum(replace(replace(price, ',', ''), '$', '')::numeric) as price_sum
	from sfo_calendar
	group by date_part('month', calender_date) 
	order by price_sum
--answer
	--The cheapest time to go to San Fran is in September,
	--the total cost of the listing is the smallest during 
	--that time ($15,865,476).
	
--What time is the busiest?
select date_part('month', calender_date) as mon, 
		count(*) as number_of_listings
	from sfo_calendar
	where available = 'f'
	group by date_part('month', calender_date)
	order by number_of_listings desc
--answer
	--The busiest month is September, with 145,379 
	--booked listings.
	
