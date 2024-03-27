// Package weather forecasts the current weather condition of various cities in Goblinocus.
package weather

// CurrentCondition contains a string describing the current weather conditions.
var CurrentCondition string

// CurrentLocation contains a the name of the current city for the forecast.
var CurrentLocation string

// Forecast takes strings for the city name and current weather condition and
// returns a string describing the forecast.
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}
