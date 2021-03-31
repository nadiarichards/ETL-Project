# ETL-Project

### Languages and Technologies used:
* Python (Pandas, Numpy libraries)
* Jupyter Notebook
* SQL Alchemy for connecting to PostreSQL
* PG Admin
* PostreSQL

For our ETL-Project (Extract, Transform, and Load), we chose to analyze various datasets about movies. Luckily, much data is available on the topic, and we ended up choosing 5 datasets in total. These include:
1.	IMBD Data – Data from an IMBD dataset that includes fields including movie title, year, genre, duration (length), director, description, average vote, number of reviews from users, and number of reviews from critics. We selected this dataset as the review columns could be interesting in analysis.
2.	Netflix Data – Data from a Netflix dataset that includes, movie title, director, actors, year, rating, duration (length), description. We chose this data set for the details including the description, which could be valuable for a scraping analysis. 
3.	Oscar wins – Data from Oscar winning films including movie title, year, and if the film won best picture, best director, best actor, best actress, best supporting actor, and best supporting actress. We selected this dataset as there could be interesting analysis done on which films won awards, using data from other datasets to perform statistical analysis.
4.	Oscar Data – Data from Oscars Academy including movie title, certificate (parental rating), duration, genre, Oscar rating, number of votes, count of user review, count of critic review, and if the movie was a cartoon. We selected this database to corroborate with the Oscar wins database, gathering more datapoints on the voting process. The Boolean field for cartoon could also be used to perform additional analysis.
5.	Wiki Data – Data from Wikipedia including movie title, year, country, genre, and Wikipedia page. We selected this dataset as the Wikipedia page links could be utilized to scrape and pull-down additional data points.

![](https://github.com/jgriffin1314/ETL-Project/blob/main/Images/diagram.png)

For the "extract" aspect of our analysis, our data sources were CSV files predominantly from Kaggle. We were fortunate enough to have many options on movie-related data.

For the "transform" aspect of our analysis, we first downloaded the datasets into Pandas and then cleaned the data. This included checking variable types, checking for NaNs, and checking for consistency. As many of our datasets contained many unnecessary fields, we deleted many columns for the sake of simplicity. For the sake of our analysis and filtering, we opted to filter for only movies that were produced in the U.S between 2000 and 2017.

[For the transform aspect, please see our Jupyter Notebook.](https://github.com/jgriffin1314/ETL-Project/blob/main/Nadia/Nadias_ETL_notebook.ipynb)

For the "load" aspect of our analysis, we loaded our various datasets into SQL / Postgres. We also found it useful to create the tables first in postgres, stating the variable type, and then working to push the  dataframe to Postgres. This helped us further clean and assess our data. Once our data was in Postgres, we performed a join, as if we were to do further analysis, we would likely have done many joins on the movie title key.

![](https://github.com/jgriffin1314/ETL-Project/blob/main/Images/final_join_sql.png)

