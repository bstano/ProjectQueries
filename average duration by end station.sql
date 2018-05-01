select
	end_station,
	avg(duration) duration
from
	trips
group by end_station