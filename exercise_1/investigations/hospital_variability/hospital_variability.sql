drop table conditions;

create table conditions as
select h.condition, count(h.avg_score) as count_score, avg(h.avg_score) as avg_score, stddev(h.avg_score) as std_score
from
(select condition, hospital_name, avg(score) as avg_score
from te_care
group by condition, hospital_name
order by condition
) h
group by h.condition
;

select *
from conditions
order by std_score desc
;
