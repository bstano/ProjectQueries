select
	ZIP,
	max(MaxTemperatureF) MAX
from
	weather
group by zip
