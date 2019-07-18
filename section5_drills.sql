--section 5 drills
--question 1 - what are the three longest trips on rainy days?
select * 
from weather;

select * 
from trips;

select trip_id, count(*)
from trips
group by trip_id
order by count desc;

select --a.precipitationin, 
		b.duration, b.trip_id
	from weather a
		 join trips b
			on date(a.date) = date(b.start_date)
	where a.events like '%Rain%' and a.precipitationin > 0
	group by b.trip_id, b.duration
	order by duration desc;

--the longest trips are trip 1173890, 1009870, and 1210487

--question 2 - what station is full most often?
select *
from status;

select station_id, docks_available, 
	count(docks_available) as no_docks_available
from status
where docks_available = 0
group by station_id, docks_available
order by no_docks_available desc;

--station 4 is full most often, with zero docks 
---available the most


--question 3 - Return a list of stations with a 
---count of number of trips starting at that station 
--but ordered by dock count.
select *
from stations;

select *
from trips;

with 
trip_count_by_station
as (
	select start_station, count(*) as trip_count
	from trips
	group by start_station
	)
select a.start_station, a.trip_count, b.dockcount
from trip_count_by_station a
	join stations b
		on a.start_station = b.name
order by dockcount;

--challenge - What's the length of the longest trip 
---for each day it rains anywhere?
select *
from trips;

select * 
from weather
where precipitationin > 0;

with
longest_trip
as(
	select date(start_date), 
		max(duration) as longest_trip
	from trips
	group by date(start_date)
	)
select date(a.date), a.longest_trip,
	b.precipitationin
from longest_trip a
	join weather b
	on date(a.date) = date(b.date)
where b.precipitationin > 0
order by date, longest_trip desc;

