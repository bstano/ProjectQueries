select
	start_station,
	count(*) trip_count
from 
	trips
group by start_station