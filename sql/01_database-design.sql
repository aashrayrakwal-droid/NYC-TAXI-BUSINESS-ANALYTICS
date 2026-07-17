/*
==========================================================
Project  : NYC Taxi Analytics Platform
Author   : Aashyra Rakwal
Database : PostgreSQL
Purpose  : Database design for the NYC Taxi Analytics
           project.
==========================================================
*/


/*
==========================================================
DATABASE ARCHITECTURE
==========================================================

Database
--------
nyc_taxi_analytics

Schema
------
taxi

Tables
------
fact_trips
dim_vendor
dim_payment_type
dim_rate_code
*/

/*
==========================================================
TABLE RESPONSIBILITIES
==========================================================

fact_trips
Stores one record for every taxi trip.

dim_vendor
Stores taxi vendor information.

dim_payment_type
Stores payment method descriptions.

dim_rate_code
Stores trip rate code descriptions.
*/
