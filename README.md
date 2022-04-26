# UCD Professional Academy Assessment

## Introduction
[The National Centers for Environment Information](https://www.ncei.noaa.gov) maintains one of the most significant archives on Earth, managing more than 30 petabytes of data and information that spans the entire spectrum of Earth’s environmental systems and cycles with comprehensive oceanic, atmospheric, and geophysical data.

The [Storm Events Database](https://www.ncei.noaa.gov/access/metadata/landing-page/bin/iso?id=gov.noaa.ncdc:C00773) is an integrated database of severe weather events across the United States from 1950 to this year, with information about a storm event's location, azimuth, distance, impact, and severity, including the cost of damages to property and crops, loss of life, injuries, property damage, disruption to commerce, etc.

This dataset will allow us to identify the most severe storms and damage caused by them, as define correlations between the features that compose the dataset.

## Dataset
The dataset is provided via [bulk download](https://www1.ncdc.noaa.gov/pub/data/swdi/stormevents/csvfiles/)
There are 3 files for each year: Details, locations and fatalities. Each file is linked by event id column.
Each feature is described below:

### Event Details file

* `begin_yearmonth` Ex: 201212 (YYYYMM format) The year and month that the event began
* `begin_day` Ex: 31 (DD format) The day of the month that the event began
* `begin_time` Ex: 2359 (hhmm format) The time of day that the event began
* `end_yearmonth` Ex: Ex: 201301 (YYYYMM format) The year and month that the event ended
* `end_day` Ex: 01 (DD format) The day of the month that the event ended
* `end_time` Ex: 0001 (hhmm format) The time of day that the event ended
* `episode_id` Ex: 61280, 62777, 63250 ID assigned by NWS to denote the storm episode;
* `event_id` Ex: 383097, 374427, 364175 ID assigned by NWS for each individual storm event contained within a storm episode; links
the record with the same event in the storm_event_details, storm_event_locations and
storm_event_fatalities tables (Primary database key field).
* `state` Ex: GEORGIA, WYOMING, COLORADO The state name where the event occurred (no State ID’s are included here; State Name is spelled out in ALL CAPS).
* `state_fips` Ex: 45, 30, 12 A unique number (State Federal Information Processing Standard) assigned to the county by the National Institute for Standards and Technology (NIST).
* `year` Ex: 2000, 2006, 2012 The four digit year for the event in this record.
* `month_name` Ex: January, February, March The name of the month for the event in this record (spelled out; not abbreviated).
* `event_type` Ex: Hail, Thunderstorm Wind, Snow, Ice (spelled out; not abbreviated)
* `cz_type` Ex: C, Z , M
Indicates whether the event happened in a (C) County/Parish, (Z) NWS Public Forecast Zone
or (M) Marine.
* `cz_fips` Ex: 245, 003, 155
The county FIPS number is a unique number assigned to the county by the National Institute
for Standards and Technology (NIST) or NWS Forecast Zone Number (See addendum)
* `cz_name` Ex: AIKEN, RICHMOND, BAXTER
County/Parish, Zone or Marine Name assigned to the county FIPS number or NWS Forecast
Zone.
* `wfo` Ex: CAE, BYZ, GJT
The National Weather Service Forecast Office’s area of responsibility (County Warning Area)
in which the event occurred.
* `begin_date_time` Ex: 04/1/2012 20:48:00
MM/DD/YYYY hh:mm:ss (24 hour time usually in LST)
* `cz_timezone` Ex: EST-5, MST-7, CST-6
Time Zone for the County/Parish, Zone or Marine Name. Eastern Standard Time (EST),
Central Standard Time (CST), Mountain Standard Time (MST), etc.
* `end_date_time` Ex: 04/1/2012 21:03:00
MM/DD/YYYY hh:mm:ss (24 hour time usually in LST)
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
* `source` Ex: Public, Newspaper, Law Enforcement, Broadcast Media, ASOS, Park and Forest
Service, Trained Spotter, CoCoRaHS, etc.
The source reporting the weather event (can be any entry; isn’t restricted in what’s allowed)
* `magnitude` Ex: 0.75, 60, 0.88, 2.75
The measured extent of the magnitude type ~ only used for wind speeds (in knots) and hail size
(in inches to the hundredth).
magnitude_type Ex: EG, MS, MG, ES
EG = Wind Estimated Gust; 
ES = Estimated Sustained Wind; 
MS = Measured Sustained Wind;
MG = Measured Wind Gust (no magnitude is included for instances of hail).
* `flood_cause` Ex: Ice Jam, Heavy Rain, Heavy Rain/Snow Melt
Reported or estimated cause of the flood.
category
Unknown (During the time of downloading this particular file, NCDC has never seen anything
provided within this field.)
* `tor_f_scale` Ex: EF0, EF1, EF2, EF3, EF4, EF5
Enhanced Fujita Scale describes the strength of the tornado based on the amount and type of
damage caused by the tornado. The F-scale of damage will vary in the destruction area;
therefore, the highest value of the F-scale is recorded for each event.
EF0 – Light Damage (40 – 72 mph)
EF1 – Moderate Damage (73 – 112 mph)
EF2 – Significant damage (113 – 157 mph)
EF3 – Severe Damage (158 – 206 mph)
EF4 – Devastating Damage (207 – 260 mph)
EF5 – Incredible Damage (261 – 318 mph)
* `tor_length` Ex: 0.66, 1.05, 0.48
Length of the tornado or tornado segment while on the ground (in miles to the tenth).
* `tor_width` Ex: 25, 50, 2640, 10
Width of the tornado or tornado segment while on the ground (in feet).
* `tor_other_wfo` Ex: DDC, ICT, TOP,OAX
Indicates the continuation of a tornado segment as it crossed from one National Weather
Service Forecast Office to another. The subsequent WFO identifier is provided within this
field.
* `tor_other_cz_state` Ex: KS, NE, OK
The two-character representation for the state name of the continuing tornado segment as it
crossed from one county or zone to another. The subsequent 2-Letter State ID is provided
within this field.
* `tor_other_cz_fips` Ex: 41, 127, 153
The FIPS number of the county entered by the continuing tornado segment as it crossed from
one county to another. The subsequent FIPS number is provided within this field.
* `tor_other_cz_name` Ex: DICKINSON, NEMAHA, SARPY
The FIPS name of the county entered by the continuing tornado segment as it crossed from one
county to another. The subsequent county or zone name is provided within this field in ALL
CAPS.
* `begin_range` Ex: 0.59, 0.69, 4.84, 1.17 (in miles)
The distance to the nearest tenth of a mile, to the location referenced below.
* `begin_azimuth` Ex: ENE, NW, WSW, S
16-point compass direction from the location referenced below.
* `begin_location` Ex: PINELAND, CENTER, ORRS, RUSK
The name of city, town or village from which the range is calculated and the azimuth is
determined.
* `end_range` see begin_range
* `end_azimuth` see begin_azimuth
* `end_location` see begin_location
* `begin_lat` Ex: 29.7898
The latitude in decimal degrees of the begin point of the event or damage path.
* `begin_lon` Ex: -98.6406
The longitude in decimal degrees of the begin point of the event or damage path.
* `end_lat` Ex: 29.7158
The latitude in decimal degrees of the end point of the event or damage path. Signed negative (-)
if in the southern hemisphere.
* `end_lon` Ex: -98.7744
The longitude in decimal degrees of the end point of the event or damage path. Signed negative
* `episode_narrative` Ex: A strong upper level system over the southern Rockies lifted northeast
across the plains causing an intense surface low pressure system and attendant warm front to
lift into Nebraska.
The episode narrative depicting the general nature and overall activity of the episode. The
National Weather Service creates the narrative.
* `event_narrative` Ex: Heavy rain caused flash flooding across parts of Wilber. Rainfall of 2 to
3 inches fell across the area.
The event narrative provides descriptive details of the individual event. The National Weather
Service creates the narrative. 

### Storm Data Location File 
* `episode_id` Ex: 61280, 62777, 63250
ID assigned by NWS to denote the storm episode; Episodes may contain multiple Events
The occurrence of storms and other significant weather phenomena having sufficient intensity
to cause loss of life, injuries, significant property damage, and/or disruption to commerce.
* `event_id` Ex: 383097, 374427, 364175
ID assigned by NWS for each individual storm event contained within a storm episode; links
the record with the same event in the storm_event_details, storm_event_locations and
storm_event_fatalities tables (Primary database key field)
* `location_index` Ex: 1-8
Number assigned by NWS to specific locations within the same Storm event. Each event’s
sequentially increasing location index number will have a corresponding lat/lon point
* `range` Ex: 0.59, 0.69, 4.84, 1.17 (used with azimuth and location fields)
Distance (to the tenth of a mile) to the geographical center or primary post office of a particular
village/city, providing that the reference point is documented in the Storm Data software location
database table.
* `azimuth` Ex: ENE, NW, WSW, S (used with range and location fields)
16-point compass direction from the reference point is documented in the Storm Data software
location database table of > 130,000 locations.
* `location` Ex: ASHEVILLE, DAVENPORT, SAN DIMAS
The name of city, town or village from which the range is calculated and the azimuth is
determined
* `lat` Ex: 31.25, 31.79, 32.76, 31.80
The latitude where the event occurred (Signed negative (-) if it’s in the southern hemisphere)
* `lon` Ex: -93.97, -94.18, -94.52, -95.13
The longitude where the event occurred (Signed negative (-) if it’s in the western hemisphere)

### Storm Data Fatality File 

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
Direct Fatality Location Table
BF Ball Field
BO Boating
BU Business
CA Camping
CH Church
EQ Heavy Equip/Construction
GF Golfing
IW In Water
LS Long Span Roof
MH Mobile/Trailer Home
OT Other/Unknown
OU Outside/Open Areas
PH Permanent Home
PS Permanent Structure
SC School
TE Telephone
UT Under Tree
VE Vehicle and/or Towed Trailer


## Results

## References
* The Severe Weather Data Inventory (SWDI): a Geospatial Database of Severe Weather Data at the NOAA National Centers for Environmental Information (NCEI)
* DOC/NOAA/NESDIS/NCEI > National Centers for Environmental Information, NESDIS, NOAA, U.S. Department of Commerce
