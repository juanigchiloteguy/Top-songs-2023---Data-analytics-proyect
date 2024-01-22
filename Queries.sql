--Table creation 
create table top (
	index int,
	track_name varchar,
	artist_name varchar,
	artist_count int,
	streams int,
	bpm int,
	mode char(10),
	acousticness int,
	instrumentalness int,
	liveness int,
	released_date, date
);

--Importation from CSV
Copy top from 'C:\Users\Juan Ignacio\Desktop\Proyecto 1° - Top Canciones 2023\spotify_act.csv' delimiter ',' csv header;

--Total number of released songs per artist
select artist_name, count(index) from top
group by artist_name
order by count(index) desc

--Total number of released songs per month in 2023
select count(released_date),
	case
		when released_date between date('2023-01-01') and date('2023-01-31') then 'January'
		when released_date between date('2023-02-01') and date('2023-02-28') then 'February'
		when released_date between date('2023-03-01') and date('2023-03-31') then 'March'
		when released_date between date('2023-04-01') and date('2023-04-30') then 'April'
		when released_date between date('2023-05-01') and date('2023-05-31') then 'May'
		when released_date between date('2023-06-01') and date('2023-06-30') then 'June'
		when released_date between date('2023-07-01') and date('2023-07-31') then 'July'
		when released_date between date('2023-08-01') and date('2023-08-31') then 'August'
		when released_date between date('2023-09-01') and date('2023-09-30') then 'September'
		when released_date between date('2023-10-01') and date('2023-10-31') then 'October'
		when released_date between date('2023-11-01') and date('2023-11-30') then 'November'
		when released_date between date('2023-12-01') and date('2023-12-31') then 'December'
		else 'Other year'
	end as songs_per_month
from top
group by songs_per_month
order by count(released_date) desc

--Total amount of artists
select count(distinct artist_name) as total_artists from top

--Top 10 most streamed songs
select streams, track_name, artist_name from top
order by streams desc
limit 10

--Average bpm
select avg(bpm) from top

--Average acousticness
select avg(acousticness) from top

--Average liveness
select avg(liveness) from top

--Average instrumentalness
select avg(instrumentalness) from top
