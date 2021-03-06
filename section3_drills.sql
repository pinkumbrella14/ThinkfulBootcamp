--section 3 drills

---The IDs and durations for all trips 
----of duration greater than 500, ordered by duration.
select  trip_id,
		duration
from trips
where duration > 500
order by duration;

---Every column of the stations table for station id 84.
select *
from stations
where station_id = 84;

---The min temperatures of all the occurrences 
----of rain in zip 94301.
select mintemperaturef
from weather
where zip = 94301;
