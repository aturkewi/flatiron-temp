# Flatiron Temp

This app is meant to just start off as a rails API. It will make get requests to a Spark Core board once a minute or so to check the temp and humidity of the office and save the record in the DB. 

## Todo

 - Setup clockwork to hit the DB once a minute between 9pm and 4am (7 hour gap is designed to fit within the free Heroku hosting).
