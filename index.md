## Gamliel Beyderman's Data Science Portfolio

### Modeling the Price of Airbnb Listings

Everyone knows Airbnb.  It has been increasingly gaining popularity since 2008 due to its moderate prices and the plentiful supply of often orignal, classy dwellings for a short-term rental. This project involves a detailed Exploratory Data Analysis (EDA), followed by a number of iterations of Linear Regression and two machine learning models to identify the key factors affecting Airbnb listing prices using data describing the listing activity and metrics in New York City for 2019 (https://www.kaggle.com/dgomonov/new-york-city-airbnb-open-data). The dataset contains almost 50 thousand unique listings. Since the city no longer exists (some local politics there from a hardened Brooklynite), everyone is now a New Yorker - we were all excited to try our new shiny Data Science toolkit to predict the price of listings based on the available data.

The results showed that for a rather rudimentary set of 13 variables one of which is free text, one is a date, 3 categorical, and the rest numeric, most inreases in model quality came from new feature engineering followed by variable transformation. For linear regression we were able to improve $`R^2`$  from 20% to almost 70%. It was cool to note that the consistent decrease in listing price that came with an increase in the distance from Midtown Manhattan, a tourism hub. Parsing the free text field for basic listing amenities was also quite successful.

## Project Structure
This project is structured as follows: 


1.   Introduction
2.   EDA
3.   Linear Regression Model
4.   Model Evaluation
5.   Machine Learning Models

## Data Dictionary

The original Kaggle dataset featured the following variables:
* Name of the Listing - a free text field with values such as "Clean & quiet apt home by the park"
* Neighborhood Group - a categorical variable specifying the 1 of 5 NYC boroughs (Brooklyn, Queens, Mahnattan...)
* Neighborhood - a categorical variable pinpointing the specific neighborhood such as 'Midtown' or 'Harlem'
* Room Type - a vetagorical variable describing the type of listing being offered ('Shared Room','Private Room','Entire Home')
* Last Review - a date field showing the when the last review was submitted by guests
* Latitude, Longitude - geographic coordinates of the listing allowing us to calculate the geographic distnace between the listing and the perceived tourism center.
* Price - listing price, our dependent variable.
* Minimum Nights - the least number of nights the host is willing to committ.
* Number of Reviews - the number of times the guests were willing to submit a review about their experience.
* Reviews Per Month - an aggregate field showing the the mean number of reviews for the months the listing was active.
* Calculated Listings Count - the number of other listings offered by the host.
* Avalability 365 - the number of days when listing is available for booking


![](https://github.com/gbeyderman/gbeyderman/blob/gh-pages/images/download%20(1).png)

![](https://github.com/gbeyderman/gbeyderman/blob/gh-pages/images/download%20(2).png)
