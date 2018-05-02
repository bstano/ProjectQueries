with rain as (
select
	date
from
	weather
where
	events = 'Rain'
group by 1
)
select
	duration,
	trip_id,
	date(start_date) trip_date
from
	trips
join
	rain
on rain.date = trip_date
order by 1 desc
limit 3
