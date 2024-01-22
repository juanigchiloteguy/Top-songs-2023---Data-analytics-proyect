Hi people! 

Today I want to share with you my first ever made project for my portfolio in data analytics. In which, as my first personal project and in order to make it bearable, I wanted to work with something related to one of the things I enjoy doing the most: listening to music. For this reason, I decided to work with a public dataset uploaded in the website Kaggle, about the most streamed songs in Spotify in the past year 2023. 
Hope you all like it!

This project was made using the following softwares/languages:
-Excel
-Python (Jupyter Notebook)
-SQL (PostgreSQL)
-Power BI

Development: 

1- Data cleaning and transformation with Python

![image](https://github.com/wampachata/Top-songs-2023---Data-analytics-proyect/assets/113558076/94359dfa-0729-4db8-99b5-c2fda46900e5)


As I learned in the diverse courses I've been doing to get introduced in the world of data analytics and data science, the first thing to do is making the data cleaning and data transformation of the dataset (stored in a CSV file), mostly known just as "data cleaning process". This means, among other things, delete/fulfill null or NaN (Not a Number) values, delete duplicate values, change data formats (for example, date format MM/DD/YYYY to YYYY-MM-DD), etc. For it, I used the language Python to carry out all this process of data cleaning, using Jupyter Notebook to run Python and the Pandas library for data management. 

Particularly I made the following changes:

- Deleted the following columns: in_spotify_playlists, in_spotify_charts, in_apple_playlists, in_apple_charts, in_deezer_playlists, in_deezer_charts, in_shazam_charts, key, danceability_%, valence_%, energy_%, speechiness_%.
- Transformed the columns released_year, released_month and released_day in one only column called "released_date", and added the format YYYY-MM-DD.
- There was no null, NaN or duplicated values in the dataset, so there was no need of deleting or fulfilling data.

2- SQL and queries generation 

![image](https://github.com/wampachata/Top-songs-2023---Data-analytics-proyect/assets/113558076/8729fc16-5ac1-4f40-9d31-74591fb36c8f)

Once done with the process of data cleaning, the next thing to do is import the clean dataset to SQL. There, I would be able to manage the data in order to transform it into useful information. Using PostgreSQL to run SQL. 
Then, I managed to define some redundant or relevant requests to be obtained by SQL queries:
- A table with the amount of songs released per each month in 2023.
- Show the month with the most songs released in 2023.
- Show the total number of released songs per artist.
- Show the total number of songs.
- Show the total number of artists.
- Show the most streamed song.
- Show the most relevant artist (the one with the most number of songs appearing in the top)
- Average values of: bpm, acousticness, liveness and instrumentalness.
Among other things.
After obtaining all these requested queries, the next and final thing to do was to visualize all this new generated information and present it in good looking charts and tables.

3- Data visualization and dashboard generation with Power BI 

![image](https://github.com/wampachata/Top-songs-2023---Data-analytics-proyect/assets/113558076/28e035b3-fec4-419c-b5c2-a8a8eedc05a2)


As I mentioned earlier, the following task to complete was to visualize the information we previously generated. For it, it was necessary to use a graphic tool or visualization software of choice. There are a lot of different softwares and tools in the market, even being able to use Python for all the plotting process. But at last I decided to use the business intelligence software Power BI because of its intuitive interface and easy manipulation for beginners such as me. On the other hand, another reason for choosing Power BI was because, as a tool published by Microsoft and having been working previously with Excel sheets, I thought it would be more comfortable to use softwares of the same environment. 

Once defined the tool, the next thing to do was generate the dashboard and start all the visualization process. Trying to use all kinds of charts, tables and graphics available on Power BI.

By the end, the final result was the following: 

![dashborad_gif](https://github.com/wampachata/Top-songs-2023---Data-analytics-proyect/assets/113558076/c5c64788-ef2d-43bb-9da9-c6695f7db72f)

After finishing the dashboard, this project comes to an end. 

As I said in the beginning this was my first ever project working with all the tools and softwares mentioned in the development so all kinds of feedback are welcome. 
All the 

Thanks for taking your time to read all this documentation and I really hope you liked my work :)

-- Juan Ignacio Chiloteguy.
