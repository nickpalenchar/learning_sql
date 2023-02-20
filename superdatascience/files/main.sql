/* Arithmetic can be perfomed on dates, by default sums and differences are returned
in number of days */
/* first_retail_availability and days_existed are days */

/* date_part('part', col) returns a year, month, or day of the date */
select *, 
  date_part('year', discontinued) - DATE_PART('year', first_retail_availability) 
as years_existed from console_dates;