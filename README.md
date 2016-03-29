# knmiR

A package to access KNMI data from within R.

## Homogenized precipitation data
To use this data please cite [Buishand et al. (2013): Homogeneity of precipitation series in the Netherlands and their trends in the past century](http://onlinelibrary.wiley.com/doi/10.1002/joc.3471/abstract)

`HomogenPrecip(550, "1910/2015")` obtains the homogenized preciptiation data for the station with stationId 550 for the period 1910 - 2015. The available stations are reported in the data.frame stationMetaData. From this we can see that stationId 550 belongs to De Bilt. With an object `area` (extending `SpatialPolygons`) we can get all precipitation data in the given area, using `HomogenPrecip(area, "1910/2015")`.
