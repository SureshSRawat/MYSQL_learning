#Select all the movies with minimum and maximum release_year. Note that there
#can be more than one movie in min and a max year hence output rows can be more than 2

select * from movies
where release_year in ((select min(release_year) from movies), 
						(select max(release_year) from movies));


#Select all the rows from the movies table whose imdb_rating is 
#higher than the average rating

select * from 
movies where imdb_rating >(
select  round(avg(imdb_rating),2) from movies)
order by imdb_rating desc;
 

