


SELECT DATE_ADD(NOW(), INTERVAL 10 YEAR); # date in 10 years
SELECT DATE_SUB(NOW(), INTERVAL 10 YEAR); # date back 10 years


SELECT DATEDIFF("2022-9-28", "2021-9-28"); # date difference

SELECT sourcename, coalesce() as teacherid from courses; #coalesce: accepts null values

SELECT coursename, teachdrid, maxstudents,
	case
		when maxstudents <= 10 then "small"
		when maxstudents <= 10 then "small"
		when maxstudents <= 10 then "small"
		when maxstudents <= 10 then "small"
        else
			"dasdf"
        end as class_size
	from courses;


