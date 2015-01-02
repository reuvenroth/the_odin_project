SQL_Stanford_exercises

/* the models:
Movie
mID	title	year	director
101	Gone with the Wind	1939	Victor Fleming
102	Star Wars	1977	George Lucas
103	The Sound of Music	1965	Robert Wise
104	E.T.	1982	Steven Spielberg
105	Titanic	1997	James Cameron
106	Snow White	1937	<null>
107	Avatar	2009	James Cameron
108	Raiders of the Lost Ark	1981	Steven Spielberg

Reviewer
rID	name
201	Sarah Martinez
202	Daniel Lewis
203	Brittany Harris
204	Mike Anderson
205	Chris Jackson
206	Elizabeth Thomas
207	James Cameron
208	Ashley White

Rating
rID	mID	stars	ratingDate
201	101	2	2011-01-22
201	101	4	2011-01-27
202	106	4	<null>
203	103	2	2011-01-20
203	108	4	2011-01-12
203	108	2	2011-01-30
204	101	3	2011-01-09
205	103	3	2011-01-27
205	104	2	2011-01-22
205	108	4	<null>
206	107	3	2011-01-15
206	106	5	2011-01-19
207	107	5	2011-01-20
208	104	3	2011-01-02 */

Correct answers:

1) select title
from Movie
where director = "Steven Spielberg"

2) select year
from Movie
where mID in (select mID from rating where stars >= 4)
order by year

3) select distinct title
from Movie
where mID not in (select mID from Rating)

4) select name
from Reviewer
where rID in (select rID from Rating where ratingDate is null)

5) select name, title, stars, ratingDate
from Reviewer, Movie, Rating
where Movie.mID = Rating.mID and Reviewer.rID = Rating.rID
order by name, title, stars

6) SELECT
   R.name,
   M.title
FROM
   reviewer AS R, -- comma/both inner join & natural join produce the correct result 
   movie AS M
      WHERE EXISTS ( -- there is at least one rating
         SELECT *
         FROM rating AS G
         WHERE
            -- by the reviewer and movie in question
            R.rID = G.rID
            AND M.mID = G.mID
            AND EXISTS ( -- for which another rating exists
               SELECT *
               FROM rating AS G2
               WHERE
                  -- for the same reviewer and movie
                  R.rID = G2.rID
                  AND M.mID = G2.mID
                  AND G.stars < G2.stars -- but rated higher
                  AND G.ratingDate < G2.ratingDate -- and later
            )
      )
; -- found and modified from stackoverflow

7)

8)

9)