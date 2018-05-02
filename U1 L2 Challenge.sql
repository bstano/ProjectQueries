with rain as (
select 
	date
from 
	weather
where 
	events = 'Rain'
group by 1
),

rain_trips as (
select
	trip_id,
	duration,
	DATE(start_date) trip_date
from 
	trips
join
	rain
on rain.date = trip_date
order by duration DESC
)

select 
	trip_date,
	max(duration)
from 
	rain_trips
group by 1