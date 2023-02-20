-- extract the first 4 characters of each publisher
select left(publisher, 4) from games;

-- display all console platforms which were released either just before black
-- friday or just before christmas (in any year)

select * from console_dates
where (
	date_part('day', first_retail_availability) < 25
	and
	date_part('month', first_retail_availability) = 12
) or
(
	date_part('day', first_retail_availability) < 24
	and
	date_part('month', first_retail_availability) = 11
);

-- order platforms by their longevity from shortest to longst

select *, age(discontinued, first_retail_availability) as longevity
from console_dates
where age(discontinued, first_retail_availability) is not null
order by longevity asc;

