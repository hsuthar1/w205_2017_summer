drop table best_hosp;
create table best_hosp as
select hospital_name, avg(score) as avg_score
from te_care
group by hospital_name
;

select *
from best_hosp
order by avg_score desc
limit 10
;
