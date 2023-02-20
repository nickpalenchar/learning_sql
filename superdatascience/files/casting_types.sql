
/* CAST(<col> as <type>) convert a column to a different type */

/* game_year is an int, make it varchar */
select CAST(game_year as varchar(4)) from games
order by game_rank;

/* <col>::<type> is sugar for above */
select game_year::varchar(4) from games
order by game_rank;

/* FUNC: to_date(<col>, <datefmt>) converts to date*/
select to_date(game_year::varchar(4), 'yyyy')
from games;