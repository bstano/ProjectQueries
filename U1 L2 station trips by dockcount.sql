select
	s.dockcount,
	t.start_station,
	count(*) trips_count
from
	trips t
join
	stations s
on 
	s.name = t.start_station
group by 2
order by 1 desc