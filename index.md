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


![](images/download%20(1).png)

![](images/download%20(2).png)


### Purchase Modeling using Clickstream Data and Markov Chains


One of the key questions for a business owner selling products online is, How to recognize the web site browsers who will convert to customers? 
As the owner of an escape room in Brooklyn, I am no exception. In what will follow I will try to show how to use a technique we extensively discussed to try to answer this very question!

Imagine having a very nice day and feeling happy, and for some unknown reason, only possessing the emotional capacity to either be happy or sad. Can you predict what your feelings will be tomorrow? We know that our feelings tomorrow will be dependent on our feelings today; a function where the input is today’s mood and only today’s mood. Or in other words, a Markov chain! Usually, a web site user considering a product might either add the product to the shopping cart, view detailed product pages, scroll further down the main page. The probability for a transition to either of the possible next states depends on the mode (browsing, buying...) the user is currently in. This mode can be identified when considering the recent k states (pages) of a user rather than only the last state. Higher-order Markov chains are hence more promising when analyzing clickstream data.

The Markov property specifies that the probability of a state depends only on the probability of the previous state. We can build more “memory” into our states by using a higher order Markov model: ![image](https://user-images.githubusercontent.com/7216946/126002980-27c5d7e7-8dd2-42a8-a227-40428a16831b.png)