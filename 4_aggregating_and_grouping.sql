--section 4 drills
---What was the hottest day in our data set? Where was that?
select zip, max(maxtemperaturef) as max_of_max
	from weather
	group by zip
	order by max_of_max desc;
	
	--The max temperature was 134 degrees Farenheit and 
		--it occurred in 94063
		
---How many trips started at each station?
select count(*) as trip_numbers
	from trips
	group by start_station;
	
	--The above query gives the number of trips per station

---What's the shortest trip that happened?
select min(duration) as shortest_trip
	from trips
	group by duration
	order by duration;
	
	--The shortest trip was 60.

---What is the average trip duration, by end station?
select end_station, avg(duration) as average_duration
	from trips
	group by end_station
	order by end_station;
	
	--The above qery produces a list of end stations
		--and their respective average durations.
 