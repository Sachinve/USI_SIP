# LinkNYC 

### Project Members
- Alan Polson
- Camelia Phan
- Sachin Verma
- Siying Zhang


## Introduction

LinkNYC is an innovative project being undertaken by NYC administration. It involves replacing the ~10,000 iconic payphones of New York City with a modern Hub device that can offer broadband wifi to all the passerby's in the vicinity of the post. This project has been designed suchthat it can recover the cost involved. There is a revenue generation model where these posts would be used for advertising. In a way it is a very good initiative because internet access in NYC is definitely **not** democratized. The wealthier neighborhoods of Manhattan can boast of Gigabit speed internet connections but the same is not true for a majority of Bronx or Queens Borough.

Essentially it is a multi year project where the replacement of the payphones with LinkNYC posts would be carried out in some order. Installation of these posts has started in Manhattan and at this juncture, we want to evaluate the order in which the rollout of these LinkNYC posts should be carried out so that the areas which need it the most should receive the installation first.



## Methodology

This project is an attempt to make use of open data available in NYC to calculate some sort of priority for each of the existing payphone locations which would be replaced. For this task we took into consideration following data sources:
- Census Data provided by ACS
- Existing Wifi coverage Map
- PUMS data set (Internet Availability in Households)

We based our analysis at the granularity of Census Tracts which paritions NYC in to reasonable analysis units ( ~2000 Census Tracts). We extracted Various features for each Census tract like Median Income, Education levels, Gender, Age, Availability of HSI (High Speed Internet). We used the Random Forest regressor to find out the most influencial factors. We thus create an ordered list of Census tracts which would be the most effective for LinkNYC rollout based on the need.


