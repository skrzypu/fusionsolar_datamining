# FusionSolar datamining

This is project to collect and process data from FusionSolar inverter from Huaweii

Project is done in python

## Depend project to make work faster and not break door twice
https://github.com/burnash/gspread  
https://github.com/SirSiggi/FusionSolar  

## Resourcess
SolarFusion API: https://forum.huawei.com/enterprise/en/communicate-with-fusionsolar-through-an-openapi-account/thread/591478-100027  
Open weather API: https://openweathermap.org/api  
  
Google Sheet API: https://developers.google.com/sheets/api  

Find API to work with eLicznik from Tauron to collect data
## Libraries to Use
https://pandas.pydata.org/ <-- library to work with data. Should be used to work with results of requests, saving to google and reading it. Will be easy to change endpoint to store data (from spread to sql for example)

## Future
https://www.home-assistant.io/ <-- use to store data and read information about home
https://jupyter.org/index.html <-- use to generate reports with solar gathering data

## Other connected things
Collect data from heat pomp (Panasonic)
Example projects: https://github.com/lsochanowski/Aquarea2mqtt  
  
TODO: Need find other projects, is there an open API?
