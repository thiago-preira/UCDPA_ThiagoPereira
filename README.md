# UCD Professional Academy Assessment

## Introduction
[The National Centers for Environment Information](https://www.ncei.noaa.gov) maintains one of the most significant archives on Earth, managing more than 30 petabytes of data and information that spans the entire spectrum of Earth’s environmental systems and cycles with comprehensive oceanic, atmospheric, and geophysical data.

The [Storm Events Database](https://www.ncei.noaa.gov/access/metadata/landing-page/bin/iso?id=gov.noaa.ncdc:C00773) is an integrated database of severe weather events across the United States from 1950 to this year, with information about a storm event's location, azimuth, distance, impact, and severity, including the cost of damages to property and crops, loss of life, injuries, property damage, disruption to commerce, etc.

This dataset allows identify the most severe storms and damage caused by them, as define correlations between the features that compose the dataset.

## Dataset
The datasets are provided via [bulk download](https://www1.ncdc.noaa.gov/pub/data/swdi/stormevents/csvfiles/).
There are 3 files linked by the event ID number. Details, locations and fatalities

* Events Details file: The storm event description and data captured
* Events Location file: The storm location data
* Event fatalities file: the fatalities related to the storm

The full descripiotn of all features as described [here](https://www1.ncdc.noaa.gov/pub/data/swdi/stormevents/csvfiles/Storm-Data-Bulk-csv-Format.pdf). The datasets relevants to this project are Storm details and fatalities file with the set of features described below:

### Event Details file
Named as `StormEvents_details-ftp_v1.0_dYYYY_cYYYYMMdd.csv` where dYYYY = data year and cYYYYMMdd = file creation date 

* `begin_yearmonth`: Ex: 201212 (YYYYMM format) The year and month that the event began 
* `begin_day`: Ex: 31 (DD format) The day of the month that the event began 
* `begin_time`: Ex: 2359 (hhmm format) The time of day that the event began 
* `end_yearmonth` Ex: Ex: 201301 (YYYYMM format) The year and month that the event ended
* `end_day` Ex: 01 (DD format) The day of the month that the event ended
* `end_time` Ex: 0001 (hhmm format) The time of day that the event ended
* `episode_id` Ex: 61280, 62777, 63250 ID assigned by NWS to denote the storm episode;
* `event_id` Ex: 383097, 374427, 364175 ID assigned by NWS for each individual storm event contained within a storm episode; links
the record with the same event in the storm_event_details, storm_event_locations and
storm_event_fatalities tables (Primary database key field).
* `state` Ex: GEORGIA, WYOMING, COLORADO The state name where the event occurred (no State ID’s are included here; State Name is spelled out in ALL CAPS).
* `year` Ex: 2000, 2006, 2012 The four digit year for the event in this record.
* `month_name` Ex: January, February, March The name of the month for the event in this record (spelled out; not abbreviated).
* `event_type` Ex: Hail, Thunderstorm Wind, Snow, Ice (spelled out; not abbreviated)
* `injuries_direct` Ex: 1, 0, 56
The number of injuries directly caused by the weather event.
* `injuries_indirect` Ex: 0, 15, 87
The number of injuries indirectly caused by the weather event.
* `deaths_direct` Ex: 0, 45, 23
The number of deaths directly caused by the weather event.
* `deaths_indirect` Ex: 0, 4, 6
The number of deaths indirectly caused by the weather event.
* `damage_property` Ex: 10.00K, 0.00K, 10.00M
The estimated amount of damage to property incurred by the weather event (e.g. 10.00K =
$10,000; 10.00M = $10,000,000)
* `damage_crops` Ex: 0.00K, 500.00K, 15.00M
The estimated amount of damage to crops incurred by the weather event (e.g. 10.00K =
$10,000; 10.00M = $10,000,000).
* `magnitude` Ex: 0.75, 60, 0.88, 2.75
The measured extent of the magnitude type ~ only used for wind speeds (in knots) and hail size
(in inches to the hundredth).
* `magnitude_type`: Ex: EG, MS, MG, ES
EG = Wind Estimated Gust; 
ES = Estimated Sustained Wind; 
MS = Measured Sustained Wind;
MG = Measured Wind Gust (no magnitude is included for instances of hail).
* `tor_f_scale` Ex: EF0, EF1, EF2, EF3, EF4, EF5
Enhanced Fujita Scale describes the strength of the tornado based on the amount and type of
damage caused by the tornado. The F-scale of damage will vary in the destruction area;
therefore, the highest value of the F-scale is recorded for each event.
|F-sccale|
|-----------------------------------------|
|EF0 – Light Damage (40 – 72 mph)|
|EF1 – Moderate Damage (73 – 112 mph)|
|EF2 – Significant damage (113 – 157 mph)|
|EF3 – Severe Damage (158 – 206 mph)|
|EF4 – Devastating Damage (207 – 260 mph)|
|EF5 – Incredible Damage (261 – 318 mph)|

* `tor_length` Ex: 0.66, 1.05, 0.48
Length of the tornado or tornado segment while on the ground (in miles to the tenth).
* `tor_width` Ex: 25, 50, 2640, 10

### Storm Data Fatality File 
Named `StormEvents_fatalities-ftp_v1.0_dYYYY_cYYYYMMdd.csv.gz` where dYYYY = data year and cYYYYMMdd = file creation date

* `fatality_id` Ex: 17582, 17590, 17597, 18222
ID assigned by NWS to denote the individual fatality that occurred)
* `event_id` Ex: 383097, 374427, 364175
ID assigned by NWS for each individual storm event contained within a storm episode; links the
record with the same event in the storm_event_details, storm_event_locations and
storm_event_fatalities tables (Primary database key field)
* `fatality_type` Ex: D , I
(D = Direct Fatality; I = Indirect Fatality; assignment of this is determined by NWS software;
details below are from NWS Directve 10-1605 at
http://www.nws.noaa.gov/directives/sym/pd01016005curr.pdf, Section 2.6)
* `fatality_date` Ex: 4/3/2012 00:00
MM/DD/YYYY hh:mm (time is usually 00.00)
* `fatality_age` Ex: 38, 25, 69, 54
The age in years of the fatality (sometimes ‘null’ if unknown)
* `fatality_sex` Ex: M, F
The gender of the fatality (sometimes ‘null’ if unknown)
* `fatality_location` Ex: UT, OU, MH, PS
|Direct Fatality Location Table|
|------------------------------|
|BF Ball Field|
|BO Boating|
|BU Business|
|CA Camping|
|CH Church|
|EQ Heavy Equip/Construction\
|GF Golfing|
|IW In Water|
|LS Long Span Roof|
|MH Mobile/Trailer Home|
|OT Other/Unknown|
|OU Outside/Open Areas|
|PH Permanent Home|
|PS Permanent Structure|
|SC School|
|TE Telephone|
|UT Under Tree|
|VE Vehicle and/or Towed Trailer|


## Results

## References
* The Severe Weather Data Inventory (SWDI): a Geospatial Database of Severe Weather Data at the NOAA National Centers for Environmental Information (NCEI)
* DOC/NOAA/NESDIS/NCEI > National Centers for Environmental Information, NESDIS, NOAA, U.S. Department of Commerce
