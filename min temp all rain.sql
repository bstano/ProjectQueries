select
	MinTemperatureF,
	Events,
	ZIP
from
	weather
where
	Events = 'Rain' or 
	Events = 'Fog-Rain' or
	Events = 'Rain-Thunderstorm' and
	ZIP = 94301
	
