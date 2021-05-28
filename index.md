## Welcome to Gamliel Beyderman's Data Science Portfolio

You can use the [editor on GitHub](https://github.com/gbeyderman/gbeyderman/edit/gh-pages/index.md) to maintain and preview the content for your website in Markdown files.

### Modeling the Price of Airbnb Listings

Everyone knows Airbnb.  It has been increasingly gaining popularity since 2008 due to its moderate prices and the plentiful supply of often orignal, classy dwellings for a short-term rental. This project involves a detailed Exploratory Data Analysis (EDA), followed by a number of iterations of Linear Regression and two machine learning models to identify the key factors affecting Airbnb listing prices using data describing the listing activity and metrics in New York City for 2019 (https://www.kaggle.com/dgomonov/new-york-city-airbnb-open-data). The dataset contains almost 50 thousand unique listings. Since the city no longer exists (some local politics there from a hardened Brooklynite), everyone is now a New Yorker - we were all excited to try our new shiny Data Science toolkit to predict the price of listings based on the available data.

The results showed that for a rather rudimentary set of 13 variables one of which is free text, one is a date, 3 categorical, and the rest numeric, most inreases in model quality came from new feature engineering followed by variable transformation. For linear regression we were able to improve $R^2$ from 20% to almost 70%. It was cool to note that the consistent decrease in listing price that came with an increase in the distance from Midtown Manhattan, a tourism hub. Parsing the free text field for basic listing amenities was also quite successful.

Markdown is a lightweight and easy-to-use syntax for styling your writing. It includes conventions for

```markdown
Syntax highlighted code block

# Header 1
## Header 2
### Header 3

- Bulleted
- List

1. Numbered
2. List

**Bold** and _Italic_ and `Code` text

[Link](url) and ![Image](src)
```

For more details see [GitHub Flavored Markdown](https://guides.github.com/features/mastering-markdown/).
