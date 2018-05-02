select
	f.station_id,
	s.name,
	count(case when f.docks_available = 0 then 1 end) as full_count
from
	status f
join
	stations s
on s.station_id = f.station_id
group by 1
order by full_count desc